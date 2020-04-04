<?php


namespace app\index\controller;


use app\Application;
//use think\view;
use app\model\CheckWarehouseLog;
use app\model\Product;
use app\model\Store;
use app\model\User;
use app\model\Warehouse;
use app\model\WarehouseProduct;
use app\Request;
use app\validate\WarehouseValidate;
use think\facade\Session;
use think\facade\View;

class WarehouseProducts extends Application
{

    /**
     * @param WarehouseProduct $warehouseProduct
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function index(WarehouseProduct $warehouseProduct)
    {
        //获取仓库id
        $warehouseId = getWarehouse();

        $result = $warehouseProduct->alias('wp')
            ->leftJoin('product p','wp.product_id = p.id')
            ->where('wp.warehouse_id',$warehouseId)
            ->field('p.code,p.type,p.name,wp.quantity,wp.description,wp.id')->paginate();
        //查询仓库数据，用于页面显示下拉框
        $warehouse = Warehouse::select();

        View::assign([
            "warehouse" => $warehouse,
            "result"  => $result,
//            "default_id" => $result->id,
        ]);
        return View::fetch();
}

    //點倉
    public function edit(Request $request,WarehouseValidate $validate,CheckWarehouseLog $cwLog)
    {
        if($request->isPost()) {
           $param = input('post.');
           $model = WarehouseProduct::find($param['id']);
//           $from_quantity = $model->quantity;
           $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            //插入日志表数据处理
            $checkWarehouseLog = [
                'warehouse_id' => $model->warehouse_id,
                'product_id'   => $model->product_id,
                'from_quantity'=> $model->quantity,
                'to_quantity' => $param['quantity'],
                'operator_id' => Session::get('uid'),
            ];
            //库仓表的修改
            $result = $model->save($param);

            //日志表插入
            $cwResult = $cwLog->insert($checkWarehouseLog);
            if ($result&&$cwResult) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }

        }
    }
}