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
        $result = $this->alias('is')->leftJoin('users u', 'is.seller_id = u.uid')->field('is.*, u.for_short as seller_name')->where('is.invoice_id', $id)->order('is.id ASC')->select();
        $consultant = '';
        $beautician = '';
        foreach ($result as $key => $value) {
            if ($value['seller_type'] == 1) {  //顧問
                $consultant .= $value['seller_name'] . '<span class="text-primary">(' . $value['commission_rate'] . '%)</span>, ';
            }
            elseif($value['seller_type'] == 2) {  //美容師
                $beautician .= $value['seller_name'] . '<span class="text-primary">(' . $value['commission_rate'] . '%)</span>, ';
            }
        }

        $consultant = empty($consultant) ? '' : mb_substr($consultant, 0, mb_strlen($consultant)-2);
        $beautician = empty($beautician) ? '' : mb_substr($beautician, 0, mb_strlen($beautician)-2);

        $consultantId = $this->where(['invoice_id' => $id, 'seller_type' => 1])->column('seller_id');
        $beauticianId = $this->where(['invoice_id' => $id, 'seller_type' => 2])->column('seller_id');

        return ['result' => $result, 'consultant' => $consultant, 'beautician' => $beautician, 'consultantId' => implode(',', $consultantId), 'beauticianId' => implode(',', $beauticianId)];
    }

    public function delSellers($id)
    {
        $this->where('invoice_id', $id)->delete();
    }
}
