<?php


namespace app\model;


class TransferItem extends Model
{
    public function saveItem($id, $param)
    {
        //记录转仓 产品仓库实现替换
        $updateProduct = [];
        $product = new Product();

        $data = $param['item'];

        foreach ($data as $key => $value) {
            $data[$key]['transfer_id'] = $id;
            $updateProduct[] = [
                'id' => $data[$key]['product_id'],
                'warehouse' => $param['to_wh_id'],
            ];
        }
        $this->where('transfer_id', $id)->delete();
        $this->insertAll($data);
        $product->saveAll($updateProduct);

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