<?php
/**
 * Account模型
*/

namespace app\model;
use think\facade\Db;



class Invoice extends Model
{
    public $store = 0.0;
    public $reward = 0.0;

    //消費記錄list
    public function transactionList($param)
    {
        $cate = isset($param['cate']) ? $param['cate'] : '';  //項目分類 1-服務套票, 2-產品, 3-產品組合, 4-儲值增值
        $where = [];
        $list = [];
        $total_amount = 0.0;
        $store = [];
        $store_amount = 0.0;

        $where[] = ['i.invoice_date', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date']. ' 23:59:59']];
        $where[] = ['i.member_id', '=', $param['member_id']];

        if (in_array($cate, [1,2,3])) {
            $where[] = ['it.service_type', '=', $cate];
        }

        $list = Db::name('invoice_item')->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->where($where)->field('it.*, i.invoice_date as udate, i.code as code, i.total_amount as amount')->order('invoice_date', 'desc')->select()->toArray();

        $total_amount = Db::name('invoice_item')->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->where($where)->sum('it.total');

        if ($cate == 0 || $cate == 4){
            $where[] = ['member_store', '>', 0];

            $store = Db::name('invoice')->alias('i')->field('i.id, id as invoice_id, i.invoice_date as udate, i.code as code, i.total_amount as amount, i.member_store as item_total, 0 as service_type')->where($where)->select()->toArray();
            $store_amount = Db::name('invoice')->alias('i')->where($where)->sum('i.member_store');
        }

        if ($cate == 4) {
            $list = $store;
        } else {
            $list = array_merge($list, $store);
        }

        foreach ($list as $key => $value) {

            $list[$key]['type'] = 1;
            $list[$key]['type_id'] = '發票' . $value['invoice_id'];

            $item = [];
            if ($value['service_type'] > 0) {
                if ($value['service_type'] == 1) {  //服務套票
                    $item = Db::name('service_package')->find($value['service_id']);

                    $unit = Db::name('mapping')->where('id', $value['package_unit'])->value('val');
                    $list[$key]['item_value'] = $value['package_value'].' '.$unit;

                }
                elseif ($value['service_type'] == 2) {   //產品
                    $item = Db::name('product')->find($value['service_id']);

                    $unit = Db::name('mapping')->where('id', $item['unit'])->value('val');
                    $list[$key]['item_value'] = $value['quantity'].' '.$unit;
                }
                elseif ($value['service_type'] == 3) {   //產品組合
                    $item = Db::name('combination')->find($value['service_id']);

                    $unit = Db::name('mapping')->where('id', $item['unit'])->value('val');
                    $list[$key]['item_value'] = $value['quantity'].' '.$unit;
                }

                if($param['code'] && stripos($item['code'], $param['code']) === false){
                    unset($list[$key]);
                    $total_amount -= $value['total'];
                    continue;
                }

                $list[$key]['item_code'] = $item['code'];
                $list[$key]['item_name'] = $item['name'];
                $list[$key]['item_total'] = $value['total'];
            }
        }

        $ids = array_column($list, 'invoice_id');
        array_multisort($ids, SORT_DESC , $list);

        $total_amount += $store_amount;

        return ['list' => $list, 'total_amount' => $total_amount];
    }

    //套票記錄list
    public function treatmentList($where, $whereOr)
    {
        $where[] = ['it.service_type', '=', 1];

        if (!empty($whereOr)) {
            $list = Db::name('invoice_item')->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->whereOr([$where, $whereOr])->field('it.*, it.id as item_id, it.invoice_id as parent_id, i.invoice_date, i.code as invoice_no, i.member_id, i.store_id, sp.code, sp.name, it.expiration_date, sp.service_type, sp.deducted_percent, 1 as package_type')->order('invoice_date', 'desc')->select()->toArray();

        }else{
            $list = Db::name('invoice_item')->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->field('it.*, it.id as item_id, i.invoice_date, i.code as invoice_no, i.member_id, i.store_id, sp.code, sp.name, it.expiration_date, sp.service_type, sp.deducted_percent, 1 as package_type')->order('invoice_date', 'desc')->select()->toArray();

        }

        foreach ($list as $key => $value) {
            if ($value['expiration_date'] == '0000-00-00 00:00:00') {
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
                ['upi.service_package_id', '=', $value['service_id']],
                ['upi.package_type', '=', 1]
            ];
            $items = Db::name('use_package_item')->alias('upi')->leftJoin('use_package up', 'up.id = upi.use_package_id')->field('up.id, up.use_time, upi.total_deduction, up.code, "使用" as action, "2" as type')->where($itemWhere)->select()->toArray();

            $transfers = Db::name('invoice_transfer')->alias('it')->leftJoin('invoice i', 'it.new_invoice_id = i.id')->field('i.id, i.invoice_date as use_time, it.transfer_value as total_deduction, i.code as code, "轉套票" as action, "1" as type')->where(['it.old_invoice_id' => $value['invoice_id'], 'i.store_id' => $value['store_id'], 'i.member_id' => $value['member_id'], 'it.old_invoice_item_id' => $value['id']])->select()->toArray();

            $list[$key]['items'] = array_merge($items, $transfers);

            if ($value['service_type'] == 2) {
                $services = Db::name('service_package_item')->alias('spi')->leftJoin('service s', 's.id = spi.service_id')->field('spi.service_id, spi.deduct_val, s.code, s.name, s.price')->where('service_package_id', $value['service_id'])->select();
                $list[$key]['services'] = $services;
            }

        }

        return $list;
    }

    //服務記錄list
    public function serviceList($where)
    {
        $where[] = ['upi.package_type', '=', 1];

        $list = Db::name('use_package_item')
            ->alias('upi')
            ->leftJoin('use_package up', 'upi.use_package_id = up.id')
            ->leftJoin('service s', 'upi.service_id = s.id')
            ->leftJoin('invoice_item it', 'it.invoice_id = upi.parent_id and it.service_id = upi.service_package_id and it.service_type = 1')
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

    public function invoiceStore($where)
    {
        $store = 0.0;
        $reward = 0.0;

        $list = Db::name('invoice')->alias('i')->field('i.id, i.invoice_date as date_time, i.code as code, i.member_store, i.member_reward')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '增值';
            $list[$key]['type'] = 1;
            $list[$key]['member_store'] = number_format($value['member_store'], 1);
            $list[$key]['member_reward'] = number_format($value['member_reward'], 1);

            $store += floatval($value['member_store']);
            $reward += floatval($value['member_reward']);
        }

        return ['list' => $list, 'store' => $store, 'reward' => $reward];
    }

    public function storeUsed($where)
    {
        $store = 0.0;

        $where[] = ['m.type_id', '=', 'payment_method'];
        $where[] = ['m.name', '=', '儲值'];
        $list = Db::name('invoice_payment')->alias('ip')->leftJoin('invoice i', 'i.id = ip.invoice_id')->leftJoin('mapping m', 'm.id = ip.method')->field('i.id, i.invoice_date as date_time, i.code as code, ip.amount as member_store')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '使用';
            $list[$key]['type'] = 1;
            $list[$key]['member_store'] = number_format($value['member_store'], 1);

            $store += floatval($value['member_store']);
        }

        return ['list' => $list, 'store' => $store];
    }

    public function rewardUsed($where)
    {
        $reward = 0.0;

        $where[] = ['m.type_id', '=', 'payment_method'];
        $where[] = ['m.name', '=', '獎賞'];
        $list = Db::name('invoice_payment')->alias('ip')->leftJoin('invoice i', 'i.id = ip.invoice_id')->leftJoin('mapping m', 'm.id = ip.method')->field('i.id, i.invoice_date as date_time, i.code as code, ip.amount as member_reward')->where($where)->select()->toArray();
        foreach ($list as $key => $value) {
            $list[$key]['action'] = '使用';
            $list[$key]['type'] = 1;
            $list[$key]['member_reward'] = number_format($value['member_reward'], 1);

            $reward += floatval($value['member_reward']);
        }

        return ['list' => $list, 'reward' => $reward];
    }

    public function findInvoice($member_id)
    {
        return $this->field('id,code as invoice_no')->where('member_id','=',$member_id)->select()->toArray();
    }
}
