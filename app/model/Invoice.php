<?php
/**
 * Account模型
*/

namespace app\model;



class Invoice extends Model
{
    public function findInvoice($member_id)
    {

        return $this->field('id,invoice_no')->where('member_id','=',$member_id)->select()->toArray();
    }
    
}
