<?php
/**
 * Product模型
*/

namespace app\model;


class CombinationItem extends Model
{
    public function options($combination_id)
    {
    	$where = ['cp.combination_id' => $combination_id];
    	$list = $this->alias('cp')->leftJoin('combination c', 'cp.combination_id = c.id')->leftJoin('product p', 'cp.product_id = p.id')->where($where)->field('cp.*, p.code as product_code, p.name as product_name, p.price as product_price')->order('cp.ordering asc')->select();
    	return $list;
    }
    
    public function saveItem($id, $data)
    {

//        $this->where('combination_id', $id)->delete();

        foreach ($data as $key => $value){
            $data[$key]['combination_id'] = $id;
        }
        $this->saveAll($data);
    }

    public function deleteItem($combination_id)
    {
        $this->where('combination_id', $combination_id)->delete();
    }
}
