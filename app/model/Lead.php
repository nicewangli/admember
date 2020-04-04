<?php
/**
 * Contact模型
 */

namespace app\model;

use think\model\concern\SoftDelete;

class Lead extends Model
{
    protected $name = 'leads';

    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];


}
