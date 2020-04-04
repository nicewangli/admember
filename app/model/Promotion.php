<?php
/**
 * Document模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Promotion extends Model
{
    protected $name = 'promotions';


    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];


    

    
}
