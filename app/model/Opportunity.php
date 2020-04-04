<?php
/**
 * opportunity模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Opportunity extends Model
{
    protected $name = 'opportunities';

    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];





    public function lead()
    {
        return $this->belongsTo(Lead::class)->bind([
            'lead_name'	=> 'name',
        ]);
    }

    public function contact()
    {
        return $this->belongsTo(Contact::class)->bind([
            'contact_name' => 'full_name',
        ]);
    }



    
}
