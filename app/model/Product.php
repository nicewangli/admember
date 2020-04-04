<?php
/**
 * Product模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Product extends Model
{
    
	//是否为软删除
    public $softDelete = true;
    
}
