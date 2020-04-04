<?php
/**
 * Document模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Ar extends Model
{
    protected $name = 'ars';


    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];


    

    
}
