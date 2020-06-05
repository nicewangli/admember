<?php
/**
 * ExpenseItem模型
 */

namespace app\model;

use think\Model;
use think\facade\Db;

class ExpenseItem extends Model
{


    public function saveItem($id, $data)
    {
        foreach ($data as $key => $value){
            if (isset($value['id'])) {
                $this->update($data[$key]);
            }else{
                $data[$key]['expense_id'] = $id;
                $this->insert($data[$key]);
            }
        }
    }

    public function delItems($id)
    {
        $this->where('expense_id', $id)->delete();
    }

}
