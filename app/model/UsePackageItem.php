<?php
/**
 * UsePackageItem模型
*/

namespace app\model;
use think\facade\Db;
use think\model\concern\SoftDelete;



class UsePackageItem extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $defaultSoftDelete = 0;
    protected $autoWriteTimestamp = true;

    public function saveItem($id, $member_id, $data)
    {
        foreach ($data as $key => $value){
            if (isset($value['id']) && $value['id']) {
                $this->update($data[$key]);
            }else{
                $data[$key]['use_package_id'] = $id;
                $this->insert($data[$key]);
            }

            $total_deduction = $this::withTrashed()->where(['service_package_id' => $value['service_package_id'], 'invoice_id' => $value['invoice_id']])->sum('total_deduction');

            $invoice_item = Db::name('invoice_item')->alias('it')->rightJoin('invoice i', 'i.id = it.invoice_id')->where(['it.invoice_id' => $value['invoice_id'], 'it.service_id' => $value['service_package_id'], 'it.service_type' => 1, 'i.member_id' => $member_id])->field('it.id, it.package_value')->find(); 

            if ($invoice_item['package_value'] == $total_deduction){
                $up['used_up'] = 1;
            } else {
                $up['used_up'] = 0;
            }
            $up['package_value_used'] = $total_deduction;
            
            Db::name('invoice_item')->where('id', $invoice_item['id'])->update($up);
        }
    }

    public function findItems($id, $member_id)
    {
        $items = $this->where('use_package_id', $id)->order('id ASC')->select()->toArray();

        foreach ($items as $key => $value) {
            $items[$key]['index'] = $key;

            $items[$key]['beautician1_name'] = Db::name('users')->where('uid', $value['beautician1'])->value('for_short');
            $items[$key]['beautician2_name'] = Db::name('users')->where('uid', $value['beautician2'])->value('for_short');

            $items[$key]['service_package'] = Db::name('invoice')->alias('i')->leftJoin('invoice_item it', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->leftJoin('mapping m', 'm.id = it.package_unit')->field('sp.code, sp.name, it.package_value, it.package_value_used, m.val as package_unit')->where(['sp.id' => $value['service_package_id'], 'it.service_type' => 1, 'i.member_id' => $member_id])->find();

            $items[$key]['service'] = Db::name('service')->field('code, name')->find($value['service_id']);
        }
        return $items;
    }

    public function delItems($use_package_id)
    {
        
        return $this->where('use_package_id', $use_package_id)->delete();
        
    }

    public function total_deduction($use_package_id, $invoice_id, $member_id)
    {
        $service_package_id = $this->where('use_package_id', $use_package_id)->value('service_package_id');

        $find = $this->where(['use_package_id' => $use_package_id, 'service_package_id' => $service_package_id])->find();


        if ($find) {
            $total_deduction = $this->where(['use_package_id' => $use_package_id, 'service_package_id' => $service_package_id])->sum('total_deduction');
        }else{
            $total_deduction = 0.0;
        }
        

        $invoice_item_id = Db::name('invoice_item')->alias('it')->rightJoin('invoice i', 'i.id = it.invoice_id')->where(['it.invoice_id' => $invoice_id, 'it.service_id' => $service_package_id, 'it.service_type' => 1, 'i.member_id' => $member_id])->value('it.id');

        // $used = $info['package_value_used'] + $value['total_deduction'];
        $up['package_value_used'] = $total_deduction;
        
        Db::name('invoice_item')->where('id', $invoice_item_id)->update($up);
    }
}
