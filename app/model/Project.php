<?php
/**
 * Project模型
*/

namespace app\model;



class Project extends Model
{




public function getDelteTimeAttr($value)
{
    return date('Y-m-d H:i:s',$value);
}

//修改器
public function setDelteTimeAttr($value)
{
    return strtotime($value);
}

    public function account()
    {
        return $this->belongsTo(Booking::class, 'account_id');
    }



}
