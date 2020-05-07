<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Store extends Model
{

    public function getStoreArr($ids)
    {

        $this->whereIn('id',$ids)->select()->toArray();
    }

    
}
