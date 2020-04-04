<?php
/**
 * Document验证器
 */

namespace app\validate;
use think\Validate;
class RoomValidate extends Validate
{
    protected $rule = [
            'store_id' => 'require',
            'name' => 'require',
    ];


    protected $scene = [
        'add'  => ['store_id','name'],
        'edit' => ['store_id','name'],
    ];

    

}
