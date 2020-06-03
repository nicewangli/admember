<?php


namespace app\model;


class RefundPackageItem extends Model
{
    public function saveItem($id, $param)
    {
        $invoice = new Invoice();
        $psi = new PackageStagingItem();
        $invoiceArr = [];
        $psiArr = [];
        $result = [];
        //TODO:保存退款時  对psi  对应psi的发票id   进行金额上的修改 需要有一个差值 （原先退款 - 修改后退款）
        $data = $param['service'];
        foreach ($data as $key => $value){
            $data[$key]['refund_package_id'] = $id;
            $invoiceArr[] = ['id' =>$value['invoice_id'],'change'=>$value['refund']-$value['change_refund'],'final_total'=>$value['final_total']];
            $psiArr[] = ['id' => $value['package_staging_item_id'],'usable_value'=> $value['total']-($value['refund']-$value['change_refund'])];
            unset($data[$key]['final_total']);
            unset($data[$key]['total']);
            unset($data[$key]['change_refund']);
            if (isset($value['id'])) {
                $this->update($data[$key]);
            } else{
                $this->insert($data[$key]);
            }
        }

        foreach($invoiceArr as $k => $array){
            if(isset($result[$array['id']]['change'])){
                $result[$array['id']]['change'] += $array['change'];
            }else{
                $result[$array['id']]['id'] = $array['id'];
                $result[$array['id']]['change'] = $array['change'];
                $result[$array['id']]['final_total'] = $array['final_total'];
            }
        }
        foreach ($result as &$value) {
            $value['final_total'] = (int) $value['change'] + (int) $value['final_total'];
        }
        $psi->saveAll($psiArr);
        $invoice->saveAll($result);
    }

    public function findItems($id)
    {
        //TODO:退款查询的修改
        $items = $this->alias('rpi')->leftJoin('invoice i','i.id = rpi.invoice_id')->leftJoin('member m','m.id = rpi.member_id')->leftJoin('package_staging_item psi','psi.id = rpi.package_staging_item_id')->leftJoin('package_staging ps','psi.package_staging_id = ps.id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->field('rpi.*,sp.name as sp_name,i.code as invoice_no,psi.total,ps.code as ps_no,psi.payment,psi.package_value_used,psi.usable_value,psi.id as package_staging_item_id,i.final_total')->where('rpi.refund_package_id','=',$id)->select()->toArray();
//        $items = $this->alias('psi')->leftJoin('service_package sp', 'psi.service_package_id = sp.id')->field('psi.*, sp.code, sp.name')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select()->toArray();
        return $items;
    }

    public function delItems($id)
    {
        //TODO: 退款的删除
        $invoice = new Invoice();
        $packageStagingItem = new PackageStagingItem();
        $psiArr = [];
        $invoiceArr = [];
        $updateInvoiceArr = [];
        $result = $this->where('refund_package_id',$id)->select()->toArray();
        foreach ($result as $item) {
            $invoiceResult = $invoice->find($item['invoice_id'])->toArray();
            $psiResult = $packageStagingItem->find($item['package_staging_item_id'])->toArray();
            $usable_value = $psiResult['usable_value']+$item['refund'];
            $psiArr[] = ['id'=>$item['package_staging_item_id'],'usable_value'=>$usable_value];
            $invoiceArr[] = ['id'=>$item['invoice_id'],'change'=>$item['refund'],'final_total'=>$invoiceResult['final_total']];
        }

        foreach($invoiceArr as $k => $array){
            if(isset($updateInvoiceArr[$array['id']]['change'])){
                $updateInvoiceArr[$array['id']]['change'] += $array['change'];
                $updateInvoiceArr[$array['id']]['final_total'] = $array['final_total'];
            }else{
                $updateInvoiceArr[$array['id']]['id'] = $array['id'];
                $updateInvoiceArr[$array['id']]['change'] = $array['change'];
                $updateInvoiceArr[$array['id']]['final_total'] = $array['final_total'];
            }
        }
        foreach ($updateInvoiceArr as &$value) {
            $value['final_total'] =(int) $value['final_total'] - (int) $value['change'];
        }
        $packageStagingItem->saveAll($psiArr);
        $invoice->saveAll($updateInvoiceArr);

        $this->where('refund_package_id', $id)->delete();
    }
}