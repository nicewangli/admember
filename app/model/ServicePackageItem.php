<?php
/**
 * Product模型
*/

namespace app\model;
use think\facade\Db;


class ServicePackageItem extends Model
{
    public function options($service_package_id)
    {
    	$where = ['spi.service_package_id' => $service_package_id];
    	$list = $this->alias('spi')->leftJoin('service_package sp', 'spi.service_package_id = sp.id')->leftJoin('service s', 'spi.service_id = s.id')->where($where)->field('spi.*, s.code as service_code, s.name as service_name, s.price as service_price')->order('spi.ordering asc')->select();
    	return $list;
    }
    
    public function saveItem($id, $data)
    {

//        $this->where('service_package_id', $id)->delete();

        foreach ($data as $key => $value){
            $data[$key]['service_package_id'] = $id;
        }
        $this->saveAll($data);
    }

    public function deleteItem($service_package_id)
    {
        $this->where('service_package_id', $service_package_id)->delete();
    }

    //查詢會員所購買的套票對應的服務信息
    public function service($service_type, $service_package_id, $parent_id, $type)
    {
        $where[] = ['spi.service_package_id', '=', $service_package_id];
        if ($service_type == 2) {
            $service = $this->alias('spi');
            if ($type == 1) {
                $where[] = ['it.invoice_id', '=', $parent_id];

                $service->leftJoin('invoice_item it', 'spi.service_package_id = it.service_id');
            }
            elseif ($type == 2) {
                $where[] = ['it.package_staging_id', '=', $parent_id];

                $service->leftJoin('package_staging_item it', 'spi.service_package_id = it.service_package_id');
            }

            $items = $service->leftJoin('service s', 'spi.service_id = s.id')
                ->field('spi.*, s.code, s.name, s.beautician_pay, s.price, it.id as item_id')
                ->where($where)
                ->order('id', 'desc')
                ->select()
                ->toArray();


        }

        if ($service_type == 1 || empty($items)) {
            $items = Db::name('service')->where('status', '發售中')->field('id as service_id, code, name, beautician_pay, price as deduct_val')->order('id', 'desc')->select()->toArray();

        }

        return $items;
    }
}
