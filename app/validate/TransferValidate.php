<?php


namespace app\validate;


use think\Validate;

class TransferValidate extends Validate
{
    protected $rule = [
        'from_wh_id|from_wh_id' => 'require',
        'to_wh_id|to_wh_id' => 'require',

    ];

    protected $message = [
        'from_wh_id.require' => '請選擇起始倉庫',
        'to_wh_id.require' => '請選擇到達倉庫',

    ];

    protected $scene = [
        'add'  => ['from_wh_id','to_wh_id'],
        'edit' => ['from_wh_id','to_wh_id'],

    ];
}