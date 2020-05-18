<?php
/**
 * UsePackage模型
 */

namespace app\model;

use think\Model;
use think\model\concern\SoftDelete;

class UsePackage extends Model
{

    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $defaultSoftDelete = 0;
}
