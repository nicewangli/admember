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

    public function saveItem($id, $data, $act = '')
    {
        //TODO 旧分期页面-》付款分期 psi-》psi.ps_id  只跟踪首次付款ps_id  ps.paid += payment
        //TODO 判斷是否存在发票对应的服务套票，如果有就加payment没有就直接
        $service = $data['service'];
        $updateArr = [];


        //新增分期item
        if ($act != 'edit') {
            if ($data['is_first'] == '1') {
                foreach ($service as $key => $value) {
                    $service[$key]['payment'] = $value['current_payment'];
                    $service[$key]['package_staging_id'] = $id;
                    $updateArr[] = $service[$key];
                }
            } else {
                //psi_id  ps
                foreach ($service as $key => $value) {
                    $service[$key]['payment'] = $value['current_payment'];
                    $service[$key]['package_staging_id'] = $id;
                    $updateArr[] = $service[$key];
                    //当新增旧分期数据，需要更新首次付款记录的已支付金额
                    Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('payment', (float)$value['current_payment'])->update();
                }
            }
        } else { //修改
            //psi_id  首次分期item_id
            $deleteOutArr = [];
            $item = $data['service'];
            foreach ($item as $key => $value) {
                if(!isset($value['id'])) {
                    //修改页面 新增的psi
                    $service[$key]['payment'] = $value['current_payment'];
                    $service[$key]['package_staging_id'] = $id;
                    $updateArr[] = $service[$key];
                    //当新增旧分期数据，需要更新首次付款记录的已支付金额
                    Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('payment', (float)$value['current_payment'])->update();

                } else {
                $updatePayment = $value['current_payment'] - $value['temp_current_payment'];
                if (isset($value['first_psi_id'])) {
                    Db::table('package_staging_item')->where('id', $value['first_psi_id'])->inc('payment', (float)$updatePayment)->update();
                }
                Db::table('package_staging_item')->where('id', $value['id'])->inc('payment', (float)$updatePayment)->update();
                $deleteOutArr[] = $value['id'];
            }

            }
            $deleteArr = $this->delAllItem($id);
            $deleteArr = array_diff($deleteArr,$deleteOutArr);
            $this->where('id','between',$deleteArr)->delete();
        }
        $this->saveAll($updateArr);

//        $item = $this->alias('psi')->leftJoin('package_staging ps', 'psi.package_staging_id = ps.id')->field('psi.service_package_id,SUM(current_payment) as sum_payment,psi.id')->group('psi.service_package_id')->where('ps.invoice_id', '=', $invoice_id)->select()->toArray();
//        $updateArr = [];
//        if (count($item) == 0) {
//            foreach ($data as $key => $value) {
//                $data[$key]['package_staging_id'] = $id;
//                $data[$key]['payment'] = $data[$key]['current_payment'];
//                $data[$key]['usable_value'] = $data[$key]['current_payment'];
//
//                $this->insert($data[$key]);
//            }
//
//        } else {
//            foreach ($item as $keys => $row) {
//                foreach ($data as $key => $value) {
//                    if (isset($value['id'])) {
//                        $this->update($data[$key]);
//                    } else {//分期  当前发票下 多个ps_id -》psi_id
//                        $data[$key]['package_staging_id'] = $id;
//                        if ($row['service_package_id'] == $data[$key]['service_package_id']) {
//                            $data[$key]['payment'] = $row['sum_payment'] + $data[$key]['current_payment'];
//                            $data[$key]['usable_value'] = $data[$key]['payment'];
//                            $this->insert($data[$key]);
//                            //TODO:根据i_id找出psi数据集，批量更新
//                            $updateArr[$keys] = ['id' => $row['id'], 'payment' => $data[$key]['payment'], 'usable_value' => $data[$key]['usable_value']];
//                        }
//
//                    }
//                }
//            }
//        }
//        $this->saveAll($updateArr);
    }


    public function findItems($id)
    {
        $items = $this->alias('psi')->leftJoin('service_package sp', 'psi.service_package_id = sp.id')->field('psi.*, sp.code, sp.name')->where('psi.package_staging_id', $id)->order('psi.id ASC')->select()->toArray();

        return $items;
    }

    /**
     * 修改分期时对被删除的item进行psi表数据的删除
     * @param $id
     * @return array
     */
    public function delAllItem($id){
        $result = $this->findItems($id);
        $delArr = [];
        foreach ($result as $key=>$value) {
            $delArr[] = $value['id'];
        }
        return $delArr;
    }
    public function delItems($id)
    {
        $this->where('package_staging_id', $id)->delete();
    }

    public function saveAllItem()
    {

    }

}
