<?php


namespace app\model;


class UserDuty extends Model
{
    //TODO：插入多职位记录
    public function saveDuty($uid,$items)
    {
        //删除旧数据
        $this->where('user_id',$uid)->delete();
        foreach ($items as &$item) {
            $item['user_id'] = $uid;
        }
        $data = $items;
        $this->insertAll($data);
    }
}