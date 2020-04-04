<?php
/**
 * Activity验证器
 */

namespace app\validate;
use think\Validate;
class ActivityValidate extends Validate
{
    protected $rule = [
            'name|Name' => 'require',

    ];

    protected $message = [
            'name.require' => 'Name is required!',
    ];

    

}
