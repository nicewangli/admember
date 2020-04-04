<?php
/**
 * SalesOrder验证器
 */

namespace app\validate;
use think\Validate;
class SalesorderValidate extends Validate
{
    protected $rule = [
            'from_email|Form_Email' => 'require',

    ];

    protected $message = [
            'from_email.require' => 'Email is required!',

    ];

    protected $scene = [
        'add'  => ['from_email',],
'edit' => ['from_email',],

    ];

    

}
