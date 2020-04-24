<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class PackageStagingPayment extends Model
{

    public function savePayment($id, $data)
    {
        foreach ($data as $key => $value){
            
            if (isset($value['id']) && !empty($value['id'])) {
                $this->update($data[$key]);
            }else{
                $data[$key]['package_staging_id'] = $id;
                $this->insert($data[$key]);
            }
        }
    }

    public function findPayments($id)
    {
        $result = $this->alias('psi')->leftJoin('mapping m', 'psi.method = m.id')->field('psi.*, m.val as payment_method')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select()->toArray();
        return $result;
    }

    public function delPayments($id)
    {
        $this->where('package_staging_id', $id)->delete();
    }
}
