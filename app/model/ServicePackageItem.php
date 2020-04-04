<?php
/**
 * Product模型
*/

namespace app\model;


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

        $this->where('service_package_id', $id)->delete();

        foreach ($data as $key => $value){
            $data[$key]['service_package_id'] = $id;
        }
        $this->insertAll($data);
    }

    public function deleteItem($service_package_id)
    {
        $this->where('service_package_id', $service_package_id)->delete();
    }
}
