<?php

namespace app\model;

use think\Model;

class User extends Model
{
    protected $table = 'users';
    protected $pk = 'uid';

    
    protected $updateTime = false;
    
    public function team()
    {
        return $this->hasOne('Team', 'id', 'ugid');
    }
}
