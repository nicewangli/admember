<?php
/**
 * QuotationItem模型
*/

namespace app\model;


use think\Model;

class PackageStagingSeller extends Model
{

    public function saveSeller($id, $data)
    {
        $this->delSellers($id);

        foreach ($data as $key => $value){
            // if (isset($value['id'])) {
            //     $this->update($data[$key]);
            // }else{
                $data[$key]['package_staging_id'] = $id;
                // $this->insert($data[$key]);
            // }
        }
        $this->insertAll($data);
    }

    public function findSellers($id)
    {
        $result = $this->alias('psi')->leftJoin('users u', 'psi.seller_id = u.uid')->field('psi.*, u.username as seller_name')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select();
        return $result;
    }

    public function delSellers($id)
    {
        $this->where('package_staging_id', $id)->delete();
    }
}
