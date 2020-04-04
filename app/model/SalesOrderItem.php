<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class SalesOrderItem extends Model
{

    public function saveItem($id, $param)
    {

        $this->where('salesorder_id', $id)->delete();

        $data = $param['item'];
        foreach ($data as $key => $value){
            $data[$key]['salesorder_id'] = $id;
        }
        $this->insertAll($data);
    }

    public function findItems($id)
    {
        return $this->where('salesorder_id', $id)->order('id ASC')->select();
    }

    public function delItems($id)
    {
        $this->where('salesorder_id', $id)->delete();
    }
}
