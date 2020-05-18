<?php


namespace app\validate;


use think\Validate;

class WarehouseValidate extends Validate
{
    protected $rule = [
        // 'quantity|quantity' => 'require',

    ];

    protected $message = [
  /*       'quantity.require' => '請填寫點倉數量', */

    ];

    protected $scene = [
        'edit' => [''],

    ];

}