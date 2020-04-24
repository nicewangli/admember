<?php
/**
 * QuotationItem模型
*/

namespace app\model;

use think\Model;
use think\facade\Db;

class PackageStagingItem extends Model
{
    public function packageStaging()
    {
        return $this->belongsTo(PackageStaging::class);
    }

    public function saveItem($id, $data)
    {
        foreach ($data as $key => $value){
            if (isset($value['id'])) {
                $this->update($data[$key]);
            }else{
                $data[$key]['package_staging_id'] = $id;
                $this->insert($data[$key]);
            }
        }
    }

    public function findItems($id)
    {
        $items = $this->alias('psi')->leftJoin('service_package sp', 'psi.service_package_id = sp.id')->field('psi.*, sp.code, sp.name')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select()->toArray();

        return $items;
    }

    public function delItems($id)
    {
        $this->where('package_staging_id', $id)->delete();
    }


}
