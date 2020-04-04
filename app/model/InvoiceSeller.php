<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class InvoiceSeller extends Model
{

    public function saveSeller($id, $data)
    {
        $this->delSellers($id);

        foreach ($data as $key => $value){
            // if (isset($value['id'])) {
            //     $this->update($data[$key]);
            // }else{
                $data[$key]['invoice_id'] = $id;
                // $this->insert($data[$key]);
            // }
        }
        $this->insertAll($data);
    }

    public function findSellers($id)
    {
        $result = $this->alias('is')->leftJoin('users u', 'is.seller_id = u.uid')->field('is.*, u.username as seller_name')->where('is.invoice_id', $id)->order('is.id ASC')->select();
        return $result;
    }

    public function delSellers($id)
    {
        $this->where('invoice_id', $id)->delete();
    }
}
