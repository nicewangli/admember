<?php
/**
 * Document模型
 */

namespace app\model;

use think\model\concern\SoftDelete;

class Document extends Model
{

    //可搜索字段
    protected $searchField = [];


    //格式化大小
    public function getFileSizeAttr($value)
    {
        $units = array(' B', ' KB', ' MB', ' GB', ' TB');
        for ($i = 0; $value >= 1024 && $i < 4; $i++) {
            $value /= 1024;
        }
        return round($value, 2) . $units[$i];
    }



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
