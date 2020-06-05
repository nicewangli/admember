<?php


namespace app\model;


class UserDuty extends Model
{
    //TODO：插入多职位记录,不删除，修改和新增
    public function saveDuty($uid,$items)
    {
        $createArr = [];
        foreach ($items as $item) {
            if(!isset($item['id'])) {
                $item['user_id'] = $uid;
                $createArr[] = $item;
            }
        }
        $this->insertAll($createArr);

    }
}