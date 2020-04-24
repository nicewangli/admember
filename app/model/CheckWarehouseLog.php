<?php


namespace app\model;


use think\facade\Session;

class CheckWarehouseLog extends Model
{
    /**
     * 封裝写入库存日志方法
     * @param WarehouseProduct $warehouseProduct
     * @param $quantity
     */
    public function addCheckLog(WarehouseProduct $warehouseProduct,$quantity)
    {
        $checkWarehouseLog = [
            'warehouse_id' => $warehouseProduct->warehouse_id,
            'product_id'   => $warehouseProduct->product_id,
            'from_quantity'=> $warehouseProduct->quantity,
            'to_quantity' => $quantity,
            'operator_id' => Session::get('uid'),
            'create_time' => date('Y-m-d H:i:s', time()),
        ];
        $this->insert($checkWarehouseLog);
    }

}