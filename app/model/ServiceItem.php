<?php
/**
 * Product模型
*/

namespace app\model;


class ServiceItem extends Model
{
    public function options($service_id)
    {
    	$where = ['si.service_id' => $service_id];
    	$list = $this->alias('si')->leftJoin('service s', 'si.service_id = s.id')->leftJoin('product p', 'si.product_id = p.id')->where($where)->field('si.*, p.code as product_code, p.name as product_name, p.price as product_price')->order('si.ordering asc')->select();
    	return $list;
    }
    
    public function saveItem($id, $data)
    {

//        $this->where('service_id', $id)->delete();

        foreach ($data as $key => $value){
            $data[$key]['service_id'] = $id;
        }
        $this->saveAll($data);
    }

    public function deleteItem($service_id)
    {
        $this->where('service_id', $service_id)->delete();
    }
}
