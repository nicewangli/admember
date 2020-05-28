<?php
/**
 * Product模型
*/

namespace app\model;

use think\model\concern\SoftDelete;
use think\facade\Db;

class Combination extends Model
{
    
	//是否为软删除
    public $softDelete = true;

    public function parentCategory()
    {
        return $this->belongsTo('ProductCategory','parent_category_id');
    }

    public function category()
    {
        return $this->belongsTo('ProductCategory','category_id');
    }

    public function brand()
    {
        return $this->belongsTo('mapping','brand');
    }

}
