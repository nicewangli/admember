<?php


namespace app\index\controller;

use app\Application;
use app\model\Service;
use app\model\Store;
use app\model\UsePackage;
use app\model\UsePackageItem;
use think\facade\View;
use think\facade\Request;


class Commissions extends Application
{
    public function index(UsePackage $model, UsePackageItem $modelItem, Store $store)
    {
        $param = input('get.');

        $current_store = getStore();
        $stores = $store->field('id, name')->select();

        if (!empty($param)) {
            $store_id = $param['store'];
            $start_date = $param['start_date'];
            $end_date = $param['end_date'];
            $use_package_code = $param['use_package_code'];
            $service_code = $param['service_code'];

            if ($use_package_code) {
                $where[] = ['up.code', '=', $use_package_code];
                $data['use_package_code'] = $use_package_code;
            }
            if ($service_code) {
                $where[] = ['s.code', '=', $service_code];
                $data['service_code'] = $service_code;
                $data['service_name'] = $param['service_name'];
                $data['current_commissioin'] = $param['current_commissioin'];
            }
        }else{
            $start_date = $params["start_date"] ?? date('Y-m-01');
            $end_date  =  $params["end_date"] ??  date('Y-m-t');
            $store_id = $current_store['id'];
        }

        $data['start_date'] = $start_date;
        $data['end_date'] = $end_date;
        $data['store_id'] = $store_id;

        $where[] = ['up.store_id', '=', $store_id];
        $where[] = ['up.use_time', 'between', [$start_date, $end_date]];

        $list = $modelItem->alias('upi')->leftJoin('use_package up', 'up.id = upi.use_package_id')->leftJoin('service_package_item spi', 'spi.id = upi.service_package_item_id')->leftJoin('service s', 's.id = spi.service_id')->field('upi.*, up.use_time, up.code as use_package_code, s.code as service_code, s.name as service_name')->where($where)->select();

        View::assign([
            'current_store' => $current_store,
            'stores' => $stores,
            'data' => $data,
            'list' => $list
        ]);

        return view();
    }

    public function update(UsePackageItem $modelItem)
    {
        $params = input('post.');
        $modelItem->saveAll($params['item']);
	
        return redirect('index');
    }

    public function services(Service $model)
    {
        return View::fetch('services');
    }
}