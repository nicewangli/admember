<?php
/**
 * Expense验证器
 */

namespace app\validate;
use think\Validate;
class ExpenseValidate extends Validate
{
     protected $rule = [
         // 'code' => 'require',
         // 'expense_time' => 'require',
         // 'store_id' => 'require',

     ];

     protected $message = [
         // 'code.require' => 'Code is required!',
         // 'expense_time.require' => 'Expense Time is required!',
         // 'store_id.require' => 'Store is required!',

     ];

     protected $scene = [
         // 'add'  => ['code', 'expense_time', 'store_id'],
         // 'edit' => ['code', 'expense_time', 'store_id'],

     ];

    

}
