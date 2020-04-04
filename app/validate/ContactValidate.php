<?php
/**
 * Contact验证器
 */

namespace app\validate;
use think\Validate;
class ContactValidate extends Validate
{
    protected $rule = [
            'first_name|Name' => 'require',

    ];

    protected $message = [
            'first_name.require' => 'Name is required!',

    ];

    protected $scene = [
        'add'  => ['name',],
        'edit' => ['name',],

    ];

    

}
