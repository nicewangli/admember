<?php

namespace app\model;

use think\Model;

class Permission extends Model
{
    protected $table = 'permissions';

    public function father()
    {
        return $this->hasOne('Permission', 'id', 'pid');
    }
}
