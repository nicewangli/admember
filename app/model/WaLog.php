<?php
/**
 * Document模型
*/

namespace app\model;


class WaLog extends Model
{
    protected $name = 'whatsapps';
    //处理wa_log数据
    public function setWaLogArray($waLogInfoArr)
    {
        foreach ($waLogInfoArr as &$wli) {
            $wli['now'] = date('Y-m-d',time());
            $wli['if_eq_now'] = date('Y-m-d',$wli['created_time']);
            if($wli['now'] == $wli['if_eq_now']) {
                $wli['created_time'] = date('H:i',$wli['created_time']);
            } else {
                $wli['created_time'] = date('Y-m-d H:i',$wli['created_time']);
            }
        }
        return $waLogInfoArr;
    }
    
}
