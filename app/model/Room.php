<?php
/**
 * Document模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Room extends Model
{
    protected $name = 'room';


    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];

    //格式化大小
    public function getFileSizeAttr($value)
    {
        $units = array(' B', ' KB', ' MB', ' GB', ' TB');
        for ($i = 0; $value >= 1024 && $i < 4; $i++) {
            $value /= 1024;
        }
        return round($value, 2) . $units[$i];
    }


    

    
}
