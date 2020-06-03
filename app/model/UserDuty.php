<?php


namespace app\model;


class UserDuty extends Model
{
    //TODO：插入多职位记录
    public function saveDuty($uid,$param)
    {
        $saveArr = [];
        //删除旧数据
        $this->where('user_id',$uid)->delete();
        $data = $param['duty'];
        return $this->insertAll($data);
    }
}