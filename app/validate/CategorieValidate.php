<?php
/**
 * Categorie验证器
 */

namespace app\validate;
use think\Validate;

class CategorieValidate extends Validate
{
    protected $rule = [
            'name|Name' => 'require',

    ];

    protected $message = [
            'name.require' => 'Name is required!',

    ];

    protected $scene = [
        'add'  => ['name',],
'edit' => ['name',],

    ];

    

}
