<?php
/**
 * ListField验证器
 */

namespace app\validate;
use think\Validate;
class ListFieldValidate extends Validate
{
    protected $rule = [
            'ordering|Ordering' => 'require',

    ];

    protected $message = [
            'ordering.require' => 'Ordering is required!',

    ];

    protected $scene = [
        'add'  => ['ordering',],
        'edit' => ['ordering',],
    ];

    

}
