<?php

namespace app\model;

use think\Model;
use think\facade\Db;

class User extends Model
{

    public function commL(){
        return $this->hasMany('Attendances');
    }

    protected $table = 'users';
    protected $pk = 'uid';

    
    protected $updateTime = false;
    
    public function team()
    {
        return $this->hasOne('Team', 'id', 'ugid');
    }

//    public function getSexAttr($value)
//    {
//        $sex = [0=>'保密',1=>'男',2=>'女'];
//        return $sex[$value];
//    }

    public function getTeamTitleAttr($value, $data)
    {
        $title = Db::name('teams')->where('id', $data['ugid'])->value('title');
        return $title;
    }
}
