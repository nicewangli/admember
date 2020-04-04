<?php
/**
 * Quotation验证器
 */

namespace app\validate;
use think\Validate;
class PurchaseOrderValidate extends Validate
{
    protected $rule = [
            'account_id|Account_id' => 'require',

    ];

    protected $message = [
            'account_id.require' => 'Account_id is required!',

    ];

    protected $scene = [
        'add'  => ['account_id',],
'edit' => ['account_id',],

    ];

    

}
