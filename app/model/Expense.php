<?php
/**
 * Document模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Expense extends Model
{
    protected $name = 'expense';

    use SoftDelete;

    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];

    public function items()
    {
        return $this->hasMany(ExpenseItem::class);
    }


    

    
}
