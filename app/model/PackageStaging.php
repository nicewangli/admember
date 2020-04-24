<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;


class PackageStaging extends Model
{
	
	use SoftDelete;
    public $softDelete = true;
    protected $defaultSoftDelete = 0;
    protected $autoWriteTimestamp = true;

    public function invoice()
    {
        return $this->belongsTo(Invoice::class);
    }
    
}
