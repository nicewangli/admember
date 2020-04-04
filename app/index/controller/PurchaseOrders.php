<?php
/**
 * Quotation控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\PurchaseOrderItem;
use app\validate\PurchaseOrderValidate;
use think\Request;
use app\model\PurchaseOrder;
use think\facade\View;

class PurchaseOrders extends Application
{

    //列表
    public function index()
    {
      /*  $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Purchase order no', 'Create Date', 'Payment Terms', 'Account', 'Supplier phone', 'Sales Rep', 'Fax',
                'Delivery to','Port of delivery','Revision','Delivery Date','Currency','Contact','Supplier fax','Direct','Mobile',
                'Delivery phone','Shipped by','C.C. to','Supplier address','Email','Address','Delivery address','Forwarder','Total:	',
                'Special Discount (%):','Special Discount Amt:','Tax rate (%):','Net Amount:','Terms and Conditions','Add standard terms'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['supplier_id'] = $item->supplier_id;
                $record['created_at'] = $item->created_at;
                $record['payment_term'] = $item->payment_term;
                $record['account_id'] = $item->account_id;
                $record['supplier_phone'] = $item->supplier_phone;
                $record['from_user'] = $item->from_user;
                $record['from_fax'] = $item->from_fax;
                $record['attn_to'] = $item->attn_to;
                $record['port_of_delivery'] = $item->port_of_delivery;
                $record['revision_no'] = $item->revision_no;
                $record['delivery_date'] = $item->delivery_date;
                $record['default_currency'] = $item->default_currency;
                $record['supplier_id'] = $item->supplier_id;
                $record['supplier_fax'] = $item->supplier_fax;
                $record['from_phone'] = $item->from_phone;
                $record['from_mobile'] = $item->from_mobile;
                $record['delivery_phone'] = $item->delivery_phone;
                $record['shipped_by'] = $item->shipped_by;
                $record['cc'] = $item->cc;
                $record['supplier_address'] = $item->supplier_address;
                $record['from_email'] = $item->from_email;
                $record['from_primary_address'] = $item->from_primary_address;
                $record['delivery_address'] = $item->delivery_address;
                $record['forwarder'] = $item->forwarder;
                $record['total'] = $item->total;
                $record['total_discount'] = $item->total_discount;
                $record['deduction'] = $item->deduction;
                $record['tax_rate'] = $item->tax_rate;
                $record['final_total'] = $item->final_total;
                $record['terms_conditions'] = $item->terms_conditions;
                $record['terms'] = $item->terms;


                $body[] = $record;
            }
            return exportData($header, $body, 'PurchaseOrder-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['supplier_id', 'like', $search . '%'],
            ['from_email', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);
        return View::fetch();*/
        $supplier_id = input('get.$supplier_id');
        View::assign([
            'grid_url' => url('lists',['$supplier_id' => $supplier_id]),
        ]);
        return View::fetch();

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
        $items = PurchaseOrder::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = PurchaseOrder::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }



    //添加
    public function add(Request $request, PurchaseOrder $purchaseOrder, PurchaseOrderValidate $validate,PurchaseOrderItem $purchaseOrderItem)
    {
/*        $fromdetail = input('fromdetail', 0);
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $purchaseOrder::create($param);
            $PurchaseOrder_id = $result->id;
            $purchaseOrderItem->saveItem($PurchaseOrder_id, $param);

            if($fromdetail){
                return $this->redirect(url("projects/detail?id=".$param['project_id']));
            }
            return $this->redirect(url("index"));
        }


        return view('add');*/

        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            $result = $purchaseOrder::create($param);
            $account_id = $result->id;
            $purchaseOrderItem->saveItem($account_id, $param);
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
        ]);
        return view('form');
    }

    //修改
    public function edit($id, Request $request, PurchaseOrder $model, PurchaseOrderValidate $validate,PurchaseOrderItem $purchaseOrderItem)
    {
        $referer=$request->header('Referer');
        $action= getAction($referer);
        if ($action == 'PurchaseOrders'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
        $item=$model->alias('q')->leftJoin('accounts a','q.account_id = a.id')->field('q.*,a.name as account_name, q.name as purchaseorder_name')->find($id);


        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $item->save();
            $purchaseOrderItem->saveItem($id, $param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }
        }
        $quo_items =$purchaseOrderItem->findItems($id);
        $service_product = $purchaseOrderItem->options($id);
        View::assign([
            'item' => $item,
            'act' => url('edit'),
            'service_product' => $service_product

        ]);
        return view('form',['data'=>$item,'quo_items'=>$quo_items,'service_product'=>$service_product,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);


    }

    //删除
    public function del($id, PurchaseOrder $model)
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
