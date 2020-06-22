<?php


namespace app\model;


class RefundPackageItem extends Model
{
    public function saveItem($id, $param)
    {
        $psi = new PackageStagingItem();
        $psiArr = [];
        $updateArr = [];
        $insertArr = [];
        //TODO:保存退款時 psi_id  member_id  对psi  对应psi的发票id   进行金额上的修改 需要有一个差值 （原先退款 - 修改后退款）
        $data = $param['service'];
        foreach ($data as $key => $value){
            $value['refund_package_id'] = $id;
            $psiArr[] = ['id' => $value['package_staging_item_id'],'usable_value'=> $value['total']-($value['refund']-$value['change_refund'])];
            if (isset($value['id'])) {
                $updateArr[] = $value;
            } else{
                $insertArr[] = $value;
            }
        }
        $this->saveAll($insertArr);
        $this->saveAll($updateArr);
        $psi->saveAll($psiArr);
    }

    public function findItems($id)
    {
        //TODO:退款查询的修改
        return $this->alias('rpi')->leftJoin('package_staging_item psi','psi.id = rpi.package_staging_item_id')->leftJoin('package_staging ps','psi.package_staging_id = ps.id')->field('rpi.*,psi.total,psi.service_name,ps.code as ps_no,psi.payment,psi.package_value_used,psi.usable_value,psi.id as package_staging_item_id')->where('rpi.refund_package_id','=',$id)->select()->toArray();
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