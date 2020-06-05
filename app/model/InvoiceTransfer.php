<?php
/**
 * InvoiceTransfer模型
*/

namespace app\model;

use think\Model;
use think\facade\Db;
use app\model\InvoiceItem;

class InvoiceTransfer extends Model
{

    public function saveItem($new_invoice_id, $new_invoice_item_id, $data)
    {
        $item = new InvoiceItem();

        foreach ($data as $key => $value){
            $old = $item->find($value['old_invoice_item_id']);

            if (isset($value['id']) && $value['id']) {
                $transfer = $this->find($value['id']);

                $used = $old['package_value_used'] - ($transfer['transfer_value'] - $value['transfer_value']);

                $transfer->save($data[$key]);

            }else{
                $data[$key]['new_invoice_id'] = $new_invoice_id;
                $data[$key]['new_invoice_item_id'] = $new_invoice_item_id;
                $this->create($data[$key]);

                $used = $old['package_value_used'] + $value['transfer_value'];
            }

            $used_up = 0;
            if ($used >= $old['package_value']) {
                $used_up = 1;
            }
            $old->save(['package_value_used' => $used, 'used_up' => $used_up]);

        }
    }

    public function findItems($id)
    {
        $items = $this->where('invoice_id', $id)->order('id ASC')->select()->toArray();

        return $items;
    }

    public function delItem($id)
    {
//        $this->where('new_invoice_item_id', $id)->delete();
        $transfer = $this->find($id);
        $item = new InvoiceItem();
        $old = $item->find($transfer['old_invoice_item_id']);

        $delete = $transfer->delete();
        if ($delete) {
            $used = $old['package_value_used'] - $transfer['transfer_value'];
            $used_up = 0;
            $old->save(['package_value_used' => $used, 'used_up' => $used_up]);
            return true;
        } else {
            return false;
        }
    }
}
