<?php
/**
 * Project验证器
 */

namespace app\validate;
use think\Validate;
class ProjectValidate extends Validate
{
    protected $rule = [
            'name|Name' => 'require',
    'expected_start_date|Est. Start Date' => 'require',

    ];

    protected $message = [
            'name.require' => 'Name is required!',
    'expected_start_date.require' => 'Est. Start Date is required!',

    ];

    protected $scene = [
        'add'  => ['name','expected_start_date',],
'edit' => ['name','expected_start_date',],

    ];

    

}
