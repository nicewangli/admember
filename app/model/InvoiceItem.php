<?php
/**
 * QuotationItem模型
*/

namespace app\model;

use think\Model;
use think\facade\Db;

class InvoiceItem extends Model
{

    public function saveItem($id, $data)
    {
        foreach ($data as $key => $value){
            if (isset($value['id']) && $value['id']) {
                $this->update($data[$key]);
            }else{
                $data[$key]['invoice_id'] = $id;
                $this->insert($data[$key]);
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
