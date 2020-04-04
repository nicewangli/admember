<?php
/**
 * Document验证器
 */

namespace app\validate;
use think\Validate;
class EquipmentValidate extends Validate
{
    protected $rule = [
            'regarding|Regarding' => 'require',

    ];

    protected $message = [
            'regarding.require' => 'regarding is required!',

    ];

    protected $scene = [
        'add'  => ['regarding',],
'edit' => ['regarding',],

    ];

    

}
