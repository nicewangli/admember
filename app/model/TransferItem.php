<?php


namespace app\model;


class TransferItem extends Model
{
    public function saveItem($id, $param)
    {

        $this->where('transfer_id', $id)->delete();

        $data = $param['item'];
        foreach ($data as $key => $value){
            $data[$key]['transfer_id'] = $id;

        }

        $this->insertAll($data);
    }

    public function findItems($id)
    {
        return $this->where('transfer_id', $id)->order('id ASC')->select();
    }

    public function delItems($id)
    {
        $this->where('transfer_id', $id)->delete();
    }

    public function options($transfer_id)
    {
        $where = ['ti.transfer_id' => $transfer_id];
        $list = $this->alias('ti')->leftJoin('transfer t', 'ti.transfer_id = t.id')->leftJoin('product p', 'ti.product_id = p.id')->where($where)->field('ti.*, p.code as product_code, p.name as product_name, p.price as product_price')->select()->toArray();
        return $list;
    }

}