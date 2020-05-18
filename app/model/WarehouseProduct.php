<?php


namespace app\model;


class WarehouseProduct extends  Model
{
    //需要接收的数据  仓库id，items信息
    /**
     * @param $params
     * @param $type 出库 or 入库
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function saveChangeWP($params,$type)
    {
        //获取传来的仓库id和物品列表信息
        $warehouse_id = $params['warehouse_id'];
        $items = $params['item'];
        //查询条件数组
        $where = [['warehouse_id','=',$warehouse_id]];
        //写入数据表的数组拼凑
        $warehouseProduct['warehouse_id'] = $warehouse_id;
        $model =new CheckWarehouseLog();
        foreach ($items as $k => $value) {
            $where['product_id'] = ['product_id','=',$items[$k]['product_id']];
            $result = $this->where($where)->find();
            if($result!=null) {
                if($type == 'stockin') {
                    $quantity = $result->quantity + (int) $items[$k]['quantity'];
                    $model->addCheckLog($result,$quantity);
                    $result->quantity += (int) $items[$k]['quantity'];
                } else if($type == 'stockout') {
                    $quantity = $result->quantity - (int) $items[$k]['quantity'];
                    $model->addCheckLog($result,$quantity);
                    $result->quantity -= (int) $items[$k]['quantity'];
                }

                $result->save();
            } else {
                $warehouseProduct['product_id'] = $items[$k]['product_id'];
                $warehouseProduct['quantity'] = $items[$k]['quantity'];
                $this->save($warehouseProduct);
                $result = $this->where($where)->find();
                $model->addCheckLog($result,$result->quantity);
            }

        }
    }

}