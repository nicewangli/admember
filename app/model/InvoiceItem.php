<?php
/**
 * QuotationItem模型
*/

namespace app\model;

use think\Model;
use think\facade\Db;
use app\model\InvoiceTransfer;

class InvoiceItem extends Model
{

    public function saveItem($invoice_id, $data)
    {
        foreach ($data as $key => $value){
            if (isset($value['id']) && $value['id']) {
                $this->update($data[$key]);
                $new_invoice_item_id = $value['id'];
            }else{
                $data[$key]['invoice_id'] = $invoice_id;
                $item = $this->create($data[$key]);
                $new_invoice_item_id = $item->id;
            }

            if (isset($value['transfer'])) {
                $transfer = new InvoiceTransfer();
                $transfer->saveItem($invoice_id, $new_invoice_item_id, $value['transfer']);
            }
        }
    }

    public function findItems($id)
    {
        $items = $this->where('invoice_id', $id)->order('id ASC')->select()->toArray();

        $service_packages = [];
        $products = [];
        $combinations = [];

        foreach ($items as $key => $value) {
            $items[$key]['index'] = $key;

            $where['id'] = $value['service_id'];

            if ($value['service_type'] == 1) {
                $items[$key]['code'] = Db::name('service_package')->where($where)->value('code');
                $items[$key]['name'] = Db::name('service_package')->where($where)->value('name');

                $items[$key]['transfer'] = Db::name('invoice_transfer')
                    ->alias('it')
                    ->leftJoin('invoice_item ni', 'it.new_invoice_item_id = ni.id')
                    ->leftJoin('invoice_item oi', 'it.old_invoice_item_id = oi.id')
                    ->leftJoin('service_package sp', 'oi.service_id = sp.id')
                    ->field('it.*, sp.name, sp.code, oi.package_value - oi.package_value_used + it.transfer_value as max_value, oi.total - it.package_avg * (oi.package_value_used - it.transfer_value) as max_deduction')
                    ->where(['it.new_invoice_item_id' => $value['id'], 'ni.service_type' => 1, 'oi.service_type' => 1])
                    ->select()->toArray();

                $deduction = Db::name('invoice_transfer')->where('new_invoice_item_id', $value['id'])->sum('deduction');

                $items[$key]['deduction'] = sprintf('%.1f', $deduction);

                array_push($service_packages, $items[$key]);
            }
            if ($value['service_type'] == 2) {
                $items[$key]['code'] = Db::name('product')->where($where)->value('code');
                $items[$key]['name'] = Db::name('product')->where($where)->value('name');
                array_push($products, $items[$key]);
            }
            if ($value['service_type'] == 3) {
                $items[$key]['code'] = Db::name('combination')->where($where)->value('code');
                $items[$key]['name'] = Db::name('combination')->where($where)->value('name');
                array_push($combinations, $items[$key]);
            }
            
        }
        return ['service_packages' => $service_packages, 'products' => $products, 'combinations' => $combinations];
    }

    public function delItems($id)
    {
        $this->where('invoice_id', $id)->delete();
    }
}
