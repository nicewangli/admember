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
        $service = $data['service'];
        $updateArr = [];
        //新增分期item
        if ($act != 'edit') {
            foreach ($service as $key => $value) {
                $service[$key]['payment'] = $value['current_payment'];
                $service[$key]['usable_value'] = $value['current_payment'];
                $service[$key]['package_staging_id'] = $id;
                $updateArr[] = $service[$key];
                if ($data['is_first'] != '1') {
                    //当--新增--旧分期数据，需要更新首次付款记录的已支付金额
                    Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('payment', (float)$value['current_payment'])->update();
                    Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('usable_value', (float)$value['current_payment'])->update();
                }
            }
        } else { //修改
            $deleteOutArr = [];
            foreach ($service as $key => $value) {
                if (!isset($value['id'])) {//修改页面(首次分期新增服务套票) 新增的psi
                    $service[$key]['payment'] = $value['current_payment'];
                    $service[$key]['usable_value'] = $value['current_payment'];
                    $service[$key]['package_staging_id'] = $id;
                    //判断新增的是首次分期的服务套票还是付款的旧分期
                    if (isset($value['psi_id'])) {
                        Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('payment', (float)$value['current_payment'])->update();
                        Db::table('package_staging_item')->where('id', $value['psi_id'])->inc('usable_value', (float)$value['current_payment'])->update();
                    }
                    $updateArr[] = $service[$key];
                } else {
                    $updatePayment = $value['current_payment'] - $value['temp_current_payment']; //修改后支付金额的变化差值，用于更新
                    if (isset($value['first_psi_id'])) {  //旧分期的数据有设置首次付款item的id（first_psi_id）便于计算支付金额
                        Db::table('package_staging_item')->where('id', $value['first_psi_id'])->inc('payment', (float)$updatePayment)->update();
                        Db::table('package_staging_item')->where('id', $value['first_psi_id'])->inc('usable_value', (float)$updatePayment)->update();
                    }
                    Db::table('package_staging_item')->where('id', $value['id'])->inc('payment', (float)$updatePayment)->update();
                    Db::table('package_staging_item')->where('id', $value['id'])->inc('usable_value', (float)$updatePayment)->update();
                    $deleteOutArr[] = (int)$value['id'];
                }
            }
            //记录被删除的ps_item,
            $deleteArr = $this->delAllItem($id);
            $deleteArr = array_diff($deleteArr, $deleteOutArr);
            $this->where('id', 'in', $deleteArr)->delete();
        }
        $this->saveAll($updateArr);
    }


    public function findItems($id)
    {
        $items = $this->where('package_staging_id', $id)->order('id ASC')->select()->toArray();

        return $items;
    }

    /**
     * 修改分期时对被删除的item进行psi表数据的删除
     * @param $id
     * @return array
     */
    public function delAllItem($id)
    {
        $result = $this->findItems($id);
        $delArr = [];
        foreach ($result as $key => $value) {
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

    //查詢會員所購買的套票信息
    public function service_package($where)
    {
        $items = $this->alias('psi')
            ->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')
            ->leftJoin('service_package sp', 'sp.id = psi.service_package_id')
            ->leftJoin('mapping m', 'm.id = psi.package_unit')
            ->field('psi.package_staging_id as parent_id, psi.total, ps.member_id, sp.id, psi.service_code, psi.service_name, sp.price, sp.expiration_date as expiration_month, psi.package_value, sp.service_type, m.val as package_unit, psi.package_value_used, ps.staging_time, ps.final_total as arrears, 2 as type')
            ->where($where)
            ->order('id', 'desc')
            ->select()
            ->toArray();

        foreach ($items as $key => $value) {
            $items[$key]['package_value_unit'] = $value['package_value'] . $value['package_unit'];
            $items[$key]['avg_price'] = $value['package_value'] ? $value['total'] / $value['package_value'] : 0;

            if ($value['expiration_month'] == 0) {
                $items[$key]['expiration_date'] = '';
            } else {
                $items[$key]['expiration_date'] = date('Y-m-d H:i:s', strtotime("+{$value['expiration_month']} month", strtotime($value['staging_time'])));
            }
        }

        return $items;
    }

}
