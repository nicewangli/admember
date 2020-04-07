<?php


namespace app\index\controller;


use app\Application;
use app\model\Stockin;
use app\model\StockinItem;
use app\model\TransferItem;
use app\model\Warehouse;
use app\Request;
use app\validate\StockinValidate;
use app\validate\TransferValidate;
use think\facade\View;
use app\model\Transfer;
class Transfers extends Application
{
    public function index(Request $request, Transfer $model)
    {
        $search = input('get.search');
        $data = $model->alias('t')->leftJoin('warehouse w','t.from_wh_id = w.id')->leftJoin('warehouse sw','t.to_wh_id = sw.id')
            ->field('t.*,w.name as from_wh_name,sw.name as to_wh_name')
//            ->whereOr([
//                ['description', 'like', $search . '%'],
//            ])
            ->paginate();
//        dump($data);die;
        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);
        return View::fetch();
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'name';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where['account_id'] = $param['account_id'];
        }
        $items = Stockin::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Stockin::count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }



    public function panel()
    {
        $supplier_id = input('get.supplier_id');
        View::assign([
            'grid_url' => url('lists',['supplier_id' => $supplier_id]),
            'supplier_id' => $supplier_id
        ]);

        return View::fetch();
    }

    //添加
    public function add(Request $request, Transfer $model, TransferValidate $validate, TransferItem $transferItem)
    {
        //查询仓库数据，用于页面显示下拉框
       $warehouse = Warehouse::select();

        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
//            dump($param['item']);die;
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            $result = $model::create($param);
            $transfer_id = $result->id;
            $transferItem->saveItem($transfer_id, $param);
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item['supplier_id'] = input('get.supplier_id');
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
            'warehouse' => $warehouse,
        ]);
        return view('form');
    }



    //修改
    public function edit($id, Request $request, Transfer $model, StockinValidate $validate, TransferItem $transferItem)
    {
        //查询仓库数据，用于页面显示下拉框
        $warehouse = Warehouse::select();

        $referer= $request->header('Referer');
        $action= getAction($referer);
        if ($action == 'Transfer'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
//        $item=$model->alias('q')->leftJoin('suppliers a','q.supplier_id = a.id')->leftJoin('quotation p','q.quotation_id = p.id')->field('q.*,a.first_name as account_name, p.name as quotation_name')->find($id);
        $item = $model->find($id);
        if ($request->isPost()) {
            $param = input('post.');
//            $validate_result = $validate->scene('edit')->check($param);
//            if (!$validate_result) {
//                return $this->error($validate->getError());
//            }
            $result = $item->save( );
            $transferItem->saveItem($id, $param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }
        }
        $quo_items=$transferItem->findItems($id);
//        dump($quo_items);die;
        $service_product = $transferItem->options($id);
//        dump($service_product);die;
        View::assign([
            'item' => $item,
            'act' => url('edit'),
            'service_product' => $service_product,
            'warehouse' => $warehouse,
        ]);
        return view('form',['data'=>$item,'quo_items'=>$quo_items,'service_product'=>$service_product,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);



    }

    //删除
    public function del($id, Transfer $model)
    {

        $data = $model::find($id);
        $res = $data->delete();
        if ($res) {
            return json(['code' => 200,'msg' => 'Delete success.']);
        } else {
            return json(['code' => 0,'msg' => 'Delete fail']);
        }
    }

}