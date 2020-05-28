<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Service extends Model
{

    public function parentCategory()
    {
        return $this->belongsTo('ProductCategory','parent_category_id');
    }

    public function category()
    {
        return $this->belongsTo('ProductCategory','category_id');
    }

//    public function getStatusAttr($value)
//    {
//        $status = [1 => '可用', 0 => '停用'];
//        return $status[$value];
//    }

    
}
