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


    public function transactionList($param)
    {
        $sort = isset($param['sort']) ?  $param['sort'] :  'package_staging_id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $limit = isset($param['limit']) ?  $param['limit'] : 10;
        $offset = isset($param['offset']) ?  $param['offset'] : 0;
        $cate = isset($param['cate']) ? $param['cate'] : '';  //項目分類 1-服務套票, 2-產品, 3-產品組合, 4-儲值增值
        $where = [];
        $whereStore = [];

        $list = [];
        $total = 0;
        $total_amount = 0.0;
        $store = [];
        $store_amount = 0.0;

//        $where[] = ['ps.staging_time', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date']. ' 23:59:59']];
        $where[] = ['ps.member_id', '=', $param['member_id']];

        if ($cate == 0 || $cate == 4) {
            $whereStore = $where;
            $whereStore[] = ['ps.member_store', '>', 0];

            $store = Db::name('package_staging')->alias('ps')->field('ps.id, ps.id as package_staging_id, ps.ps_no as code, ps.staging_time as udate, ps.total_amount as amount, ps.member_store as item_total')->where($whereStore)->select()->toArray();

            $store_amount = Db::name('package_staging')->alias('ps')->where($whereStore)->sum('ps.member_store');
        }

        if ($cate < 2){
            $where[] = ['sp.code', 'like', '%'.$param['code'].'%'];

            $list = Db::name('package_staging_item')->alias('psi')->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')->leftJoin('service_package sp', 'sp.id = psi.service_package_id')->where($where)->field('psi.*, ps.ps_no as code, ps.staging_time as udate, sp.code as item_code, sp.name as item_name, ps.total_amount as amount, psi.current_payment as item_total')->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

            $total = Db::name('package_staging_item')->alias('psi')->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')->leftJoin('service_package sp', 'sp.id = psi.service_package_id')->where($where)->count();

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

        $total += count($store);
        $total_amount += $store_amount;

        return ['list' => $list, 'total' => $total, 'total_amount' => $total_amount];
    }

    public function stagingStore($where)
    {
        $store = 0.0;
        $reward = 0.0;

        $list = Db::name('package_staging')->alias('ps')->field('ps.id, ps.staging_time as date_time, ps.ps_no as code, ps.member_store, ps.member_reward')->where($where)->select()->toArray();
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
        $list = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->field('ps.id, ps.staging_time as date_time, ps.ps_no as code, psp.amount as member_store')->where($where)->select()->toArray();
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
        $list = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->field('ps.id, ps.staging_time as date_time, ps.ps_no as code, psp.amount as member_reward')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '使用';
            $list[$key]['type'] = '套票分期';
            $list[$key]['member_reward'] = number_format($value['member_reward'], 1);
        
            $reward += $value['member_reward'];
        }

        return ['list' => $list, 'reward' => $reward];
    }
}
