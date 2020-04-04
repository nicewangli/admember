<?php
/**
 * Document验证器
 */

namespace app\validate;
use think\Validate;
class DocumentValidate extends Validate
{
    protected $rule = [
            'regarding|Regarding' => 'require',

    ];

    

}
