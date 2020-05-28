<?php
/**
 * Product模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class ServicePackage extends Model
{

    public function parentCategory()
    {
        return $this->belongsTo('ProductCategory','parent_category_id');
    }

    public function category()
    {
        return $this->belongsTo('ProductCategory','category_id');
    }
    
}
