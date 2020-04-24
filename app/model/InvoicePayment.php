<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class InvoicePayment extends Model
{

    public function savePayment($id, $data)
    {
        foreach ($data as $key => $value){
            
            if (isset($value['id']) && !empty($value['id'])) {
                $this->update($data[$key]);
            }else{
                $data[$key]['invoice_id'] = $id;
                $this->insert($data[$key]);
            }
        }
    }

    public function findPayments($id)
    {
        $result = $this->alias('ip')->leftJoin('mapping m', 'ip.method = m.id')->field('ip.*, m.val as payment_method')->where('ip.invoice_id', $id)->order('ip.id ASC')->select()->toArray();        return $result;
        return $result;
    }

    public function delPayments($id)
    {
        $this->where('invoice_id', $id)->delete();
    }
}
