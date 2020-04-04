<?php
/**
 * Opportunity验证器
 */

namespace app\validate;
use think\Validate;
class OpportunityValidate extends Validate
{
    protected $rule = [
            'lead_id|Lead_id' => 'require',

    ];


    

}
