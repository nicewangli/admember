<?php
/**
 * PurchaseOrder验证器
 */

namespace app\validate;
use think\Validate;
class QuotationValidate extends Validate
{
    protected $rule = [
            'contact_id|Contact_id' => 'require',

    ];

    protected $message = [
            'contact_id.require' => 'Contact_id is required!',

    ];

    protected $scene = [
        'add'  => ['contact_id',],
'edit' => ['contact_id',],

    ];

    

}
