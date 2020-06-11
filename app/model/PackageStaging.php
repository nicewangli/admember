<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;
use think\facade\Db;


class PackageStaging extends Model
{
	
	use SoftDelete;
    public $softDelete = true;
    protected $defaultSoftDelete = 0;
    protected $autoWriteTimestamp = true;

    protected $store = 0.0;
    protected $reward = 0.0;

    //消費記錄
    public function transactionList($param)
    {
        $cate = isset($param['cate']) ? $param['cate'] : '';  //項目分類 1-服務套票, 2-產品, 3-產品組合, 4-儲值增值
        $where = [];
        $whereStore = [];

        $list = [];
        $total_amount = 0.0;
        $store = [];
        $store_amount = 0.0;

        $where[] = ['ps.staging_time', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date']. ' 23:59:59']];
        $where[] = ['ps.member_id', '=', $param['member_id']];

        if ($cate == 0 || $cate == 4) {
            $whereStore = $where;
            $whereStore[] = ['ps.member_store', '>', 0];

            $store = Db::name('package_staging')->alias('ps')->field('ps.id, ps.id as package_staging_id, ps.code as code, ps.staging_time as udate, ps.total_amount as amount, ps.member_store as item_total')->where($whereStore)->select()->toArray();

            $store_amount = Db::name('package_staging')->alias('ps')->where($whereStore)->sum('ps.member_store');
        }

        if ($cate < 2){
            $where[] = ['sp.code', 'like', '%'.$param['code'].'%'];

            $list = Db::name('package_staging_item')->alias('psi')->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')->leftJoin('service_package sp', 'sp.id = psi.service_package_id')->where($where)->field('psi.*, ps.code as code, ps.staging_time as udate, sp.code as item_code, sp.name as item_name, ps.total_amount as amount, psi.current_payment as item_total')->order('staging_time', 'desc')->select()->toArray();

            $total_amount = Db::name('package_staging_item')->alias('psi')->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')->leftJoin('service_package sp', 'sp.id = psi.service_package_id')->where($where)->sum('psi.current_payment');

        }

        if ($cate == 4) {
            $list = $store;
        } else {
            $list = array_merge($list, $store);
        }


        foreach ($list as $key => $value) {
            $list[$key]['type'] = '套票分期';
            $list[$key]['type_id'] = '套票分期' . $value['package_staging_id'];

            if (isset($value['package_unit'])) {

                $unit = Db::name('mapping')->where('id', $value['package_unit'])->value('val');

                $list[$key]['item_value'] = $value['package_value'].' '.$unit;
            }

        }

        $ids = array_column($list, 'package_staging_id');
        array_multisort($ids, SORT_DESC , $list);

        $total_amount += $store_amount;

        return ['list' => $list, 'total_amount' => $total_amount];
    }

    //套票記錄list
    public function treatmentList($where, $whereOr)
    {
        if (!empty($whereOr)) {
            $list = Db::name('package_staging_item')->alias('it')->leftJoin('package_staging i', 'i.id = it.package_staging_id')->leftJoin('service_package sp', 'sp.id = it.service_package_id')->whereOr([$where, $whereOr])->field('it.*, it.id as item_id, it.package_staging_id as parent_id, i.staging_time as invoice_date, i.code as invoice_no, i.member_id, i.store_id, sp.code, sp.name, it.expiration_date, sp.service_type, sp.deducted_percent, 2 as package_type')->order('staging_time', 'desc')->select()->toArray();

        }else{
            $list = Db::name('package_staging_item')->alias('it')->leftJoin('package_staging i', 'i.id = it.package_staging_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->field('it.*, it.id as item_id, i.staging_time, i.code as invoice_no, i.member_id, i.store_id, sp.code, sp.name, it.expiration_date, sp.service_type, sp.deducted_percent, 2 as package_type')->order('staging_time', 'desc')->select()->toArray();

        }

        foreach ($list as $key => $value) {
            if ($value['expiration_date'] == 0) {
                $list[$key]['expiration'] = '';
            } else {
                $list[$key]['expiration'] = $value['expiration_date'];
            }
            $list[$key]['code_name'] = $value['code']."<br>".$value['name'];
            $unit = Mapping::where('id', $value['package_unit'])->value('val');
            $list[$key]['package_value_lave'] = number_format(floatval($value['package_value']) - floatval($value['package_value_used']), 1).$unit;
            $list[$key]['package_unit'] = $unit;

            //套票使用item
            $itemWhere = [
                ['upi.parent_id', '=', $value['parent_id']],
                ['up.store_id', '=', $value['store_id']],
                ['up.member_id', '=', $value['member_id']],
                ['upi.service_package_id', '=', $value['service_package_id']],
                ['upi.package_type', '=', 2]
            ];
            $items = Db::name('use_package_item')->alias('upi')->leftJoin('use_package up', 'up.id = upi.use_package_id')->field('up.id, up.use_time, upi.total_deduction, up.code, "使用" as action, "使用套票" as type')->where($itemWhere)->select()->toArray();


            $list[$key]['items'] = $items;

            if ($value['service_type'] == 2) {
                $services = Db::name('service_package_item')->alias('spi')->leftJoin('service s', 's.id = spi.service_id')->field('spi.service_id, spi.deduct_val, s.code, s.name, s.price')->where('service_package_id', $value['service_package_id'])->select();
                $list[$key]['services'] = $services;
            }

        }

        return $list;
    }

    //服務記錄list
    public function serviceList($where)
    {
        $where[] = ['upi.package_type', '=', 2];
        $list = Db::name('use_package_item')
            ->alias('upi')
            ->leftJoin('use_package up', 'upi.use_package_id = up.id')
            ->leftJoin('service s', 'upi.service_id = s.id')
            ->leftJoin('package_staging_item it', 'it.package_staging_id = upi.parent_id and it.service_package_id = upi.service_package_id')
            ->leftJoin('mapping m', 'm.id = it.package_unit')
            ->field('upi.*, up.code, up.use_time, up.signature, s.code as service_code, s.name as service_name, it.total, it.package_value, m.val as package_unit')
            ->where($where)
            ->order('use_time', 'desc')
            ->select()
            ->toArray();

        $total_amount = 0.0;

        foreach ($list as $key => $value) {
            $list[$key]['beautician1_name'] = Db::name('users')->where('uid', $value['beautician1'])->value('for_short');
            $list[$key]['beautician2_name'] = Db::name('users')->where('uid', $value['beautician2'])->value('for_short');
            $list[$key]['service_code_name'] = $value['service_code'].'<br>'.$value['service_name'];
            $list[$key]['amount'] = number_format(($value['total'] / $value['package_value'] * $value['total_deduction']), 1);
            $list[$key]['deduction'] = $value['total_deduction'] . $value['package_unit'];

            $total_amount += $value['total'] / $value['package_value'] * $value['total_deduction'];
        }

        return ['rows' => $list, 'total_amount' => $total_amount];
    }

    public function stagingStore($where)
    {
        $store = 0.0;
        $reward = 0.0;

        $list = Db::name('package_staging')->alias('ps')->field('ps.id, ps.staging_time as date_time, ps.code as code, ps.member_store, ps.member_reward')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '增值';
            $list[$key]['type'] = '套票分期';
            $list[$key]['member_store'] = number_format($value['member_store'], 1);
            $list[$key]['member_reward'] = number_format($value['member_reward'], 1);

            $store += $value['member_store'];
            $reward += $value['member_reward'];
        }

        return ['list' => $list, 'store' => $store, 'reward' => $reward];
    }

    public function storeUsed($where)
    {
        $store = 0.0;

        $where[] = ['m.type_id', '=', 'payment_method'];
        $where[] = ['m.name', '=', '儲值'];
        $list = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->field('ps.id, ps.staging_time as date_time, ps.code as code, psp.amount as member_store')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '使用';
            $list[$key]['type'] = '套票分期';
            $list[$key]['member_store'] = number_format($value['member_store'], 1);
        
            $store += $value['member_store'];
        }

        return ['list' => $list, 'store' => $store];
    }

    public function rewardUsed($where)
    {
        $reward = 0.0;

        $where[] = ['m.type_id', '=', 'payment_method'];
        $where[] = ['m.name', '=', '獎賞'];
        $list = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->field('ps.id, ps.staging_time as date_time, ps.code as code, psp.amount as member_reward')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '使用';
            $list[$key]['type'] = '套票分期';
            $list[$key]['member_reward'] = number_format($value['member_reward'], 1);
        
            $reward += $value['member_reward'];
        }

        return ['list' => $list, 'reward' => $reward];
    }
}
