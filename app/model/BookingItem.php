<?php
/**
 * BookingItem
*/

namespace app\model;

use think\Model;
use think\facade\Db;

class BookingItem extends Model
{

    public function saveItem($booking_id, $data)
    {
        $datas = [];
        foreach ($data as $key => $value){
            $item = $data[$key];
            if (isset($value['id'])) {
                $this->update($item);
            }else{
                $item['booking_id'] = $booking_id;
                $item = $this->create($item);
            }
            $datas[] = $item;
        }
        return $datas;
    }

    public function findItems($booking_id)
    {
        $where = [
            ['booking_id', '=', $booking_id],
            ['invoice_id', '>', 0]
        ];
        $items = $this->where($where)->order('id ASC')->select()->toArray();

        foreach ($items as $key => $value) {
            $items[$key]['index'] = $key;
            $items[$key]['use_package_id'] = 0;
            $items[$key]['id'] = 0;

            $items[$key]['beautician1_name'] = Db::name('users')->where('uid', $value['beautician1'])->value('for_short');
            $items[$key]['beautician2_name'] = Db::name('users')->where('uid', $value['beautician2'])->value('for_short');

            $items[$key]['service_package'] = Db::name('invoice_item')->alias('it')
                ->leftJoin('service_package sp', 'sp.id = it.service_id')
                ->leftJoin('service_package_item spi', 'spi.service_package_id = sp.id')
                ->leftJoin('mapping m', 'm.id = it.package_unit')
                ->field('sp.code, sp.name, it.package_value, it.package_value_used, m.val as package_unit, spi.deduct_val')
                ->where(['sp.id' => $value['service_package_id'], 'it.service_type' => 1, 'it.invoice_id' => $value['invoice_id'], 'it.id' => $value['invoice_item_id']])
                ->find();

            $items[$key]['service'] = Db::name('service')->field('code, name, package_deduction')->find($value['service_id']);

            $items[$key]['deduction'] = $items[$key]['service_package'] ? $items[$key]['service_package']['deduct_val'] : 0;
            $items[$key]['total_deduction'] = $items[$key]['service_package'] ? $items[$key]['service_package']['deduct_val'] * $value['quantity'] : 0;

        }
        return $items;
    }

    public function delItems($id)
    {
        $this->where('invoice_id', $id)->delete();
    }



    public function booking()
    {
        return $this->belongsTo(Booking::class);
    }

    public function servicePackage()
    {
        return $this->belongsTo(ServicePackage::class);
    }

    public function service()
    {
        return $this->belongsTo(Service::class);
    }

    public function bt1()
    {
        return $this->hasOne('User', 'uid', 'beautician1');
    }

    public function bt2()
    {
        return $this->hasOne('User', 'uid', 'beautician2');
    }


}
