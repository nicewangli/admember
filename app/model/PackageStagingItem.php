<?php
/**
 * QuotationItem模型
 */

namespace app\model;

use think\Model;
use think\facade\Db;

class PackageStagingItem extends Model
{
    public function packageStaging()
    {
        return $this->belongsTo(PackageStaging::class);
    }

    public function saveItem($id, $data, $invoice_id = '')
    {
        //TODO 旧分期页面-》付款分期 psi-》psi.ps_id  只跟踪首次付款ps_id  ps.paid += payment
        //TODO 判斷是否存在发票对应的服务套票，如果有就加payment没有就直接
        if($data['is_first'] == '1') {
            $service = $data['service'];

        } else {
            //psi_id  ps
            $item = $data['service'];
            foreach ($item as $value) {
                Db::table('package_staging_item')->where('id',$value['psi_id'])->inc('payment',(float)$item['current_payment'])->update();

            }
        }

        $item = $this->alias('psi')->leftJoin('package_staging ps', 'psi.package_staging_id = ps.id')->field('psi.service_package_id,SUM(current_payment) as sum_payment,psi.id')->group('psi.service_package_id')->where('ps.invoice_id', '=', $invoice_id)->select()->toArray();
        $updateArr = [];
        if (count($item) == 0) {
            foreach ($data as $key => $value) {
                $data[$key]['package_staging_id'] = $id;
                $data[$key]['payment'] = $data[$key]['current_payment'];
                $data[$key]['usable_value'] = $data[$key]['current_payment'];

                $this->insert($data[$key]);
            }

        } else {
            foreach ($item as $keys => $row) {
                foreach ($data as $key => $value) {
                    if (isset($value['id'])) {
                        $this->update($data[$key]);
                    } else {//分期  当前发票下 多个ps_id -》psi_id
                        $data[$key]['package_staging_id'] = $id;
                        if ($row['service_package_id'] == $data[$key]['service_package_id']) {
                            $data[$key]['payment'] = $row['sum_payment'] + $data[$key]['current_payment'];
                            $data[$key]['usable_value'] = $data[$key]['payment'];
                            $this->insert($data[$key]);
                            //TODO:根据i_id找出psi数据集，批量更新
                            $updateArr[$keys] = ['id' => $row['id'], 'payment' => $data[$key]['payment'], 'usable_value' => $data[$key]['usable_value']];
                        }

                    }
                }
            }
        }
        $this->saveAll($updateArr);
    }


    public function findItems($id)
    {
        $items = $this->alias('psi')->leftJoin('service_package sp', 'psi.service_package_id = sp.id')->field('psi.*, sp.code, sp.name')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select()->toArray();

        return $items;
    }

    public function delItems($id)
    {
        $this->where('package_staging_id', $id)->delete();
    }

    public function saveAllItem()
    {

    }

}
