<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class StockinItem extends Model
{

    public function saveItem($id, $param)
    {

        $this->where('stockin_id', $id)->delete();

        $data = $param['item'];
        foreach ($data as $key => $value){
            $data[$key]['stockin_id'] = $id;
        }
        $this->insertAll($data);
    }

    public function findItems($id)
    {
        return $this->where('stockin_id', $id)->order('id ASC')->select();
    }

    public function delItems($id)
    {
        $this->where('stockin_id', $id)->delete();
    }

    public function options($stockin_id)
    {
        $where = ['si.stockin_id' => $stockin_id];
        $list = $this->alias('si')->leftJoin('stockin s', 'si.stockin_id = s.id')->leftJoin('product p', 'si.product_id = p.id')->where($where)->field('si.*, p.code as product_code, p.name as product_name, p.price as product_price')->order('si.ordering asc')->select()->toArray();
        return $list;
    }


}
