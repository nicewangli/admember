<?php
/**
 * LookupField验证器
 */

namespace app\validate;
use think\Validate;
class LookupFieldValidate extends Validate
{
    protected $rule = [
            'id|ID' => 'require',

    ];

    protected $message = [
            'id.require' => 'ID is required!',

    ];

    protected $scene = [
        'add'  => ['id',],
'edit' => ['id',],

    ];

    

}
