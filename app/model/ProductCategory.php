<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class ProductCategory extends Model
{

	public function option($where){
        $list = $this->field('id, name as text')->where($where)->select();
        return $list;
    }

    
}
