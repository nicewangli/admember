<?php
/**
 * Salesorder控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\SalesOrderItem;
use think\facade\View;
use think\Request;
use app\model\SalesOrder;

use app\validate\SalesorderValidate;

class SalesOrders extends Application
{

    //列表
    public function index(Request $request, SalesOrder $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Salesorder No', 'Create Date', 'Payment Terms', 'Billing Booking', 'Billing Phone', 'Ship To', 'Sales Rep',
                'Fax', 'POL', 'Seller Company', 'Seller Bank', 'Billing Bank', 'Revision', 'Currency', 'Your Ref.', 'Contact', '	Billing Fax', 'Shipping Phone',
                'Direct Line', 'Mobile', 'Place of Dest.', 'Seller Postal Code', 'Seller Bank A/C', 'Billing Bank A/C', 'C.C. to', 'Billing Address', 'Shipping Address', 'E-mail',
                'Shipment Method', 'Seller Address', 'Total:', 'Special Discount (%):', 'Special Discount Amt:', 'Tax rate (%):', 'Net Amount:', 'Terms and Conditions', '
Add standard terms'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['salesorder_no'] = $item->salesorder_no;
                $record['created_at'] = $item->created_at;
                $record['payment_term'] = $item->payment_term;
                $record['account_id'] = $item->account_id;
                $record['billing_phone'] = $item->billing_phone;
                $record['attn_to'] = $item->attn_to;
                $record['from_user'] = $item->from_user;
                $record['from_fax'] = $item->from_fax;
                $record['port_of_loading'] = $item->port_of_loading;
                $record['from_company'] = $item->from_company;
                $record['from_bank'] = $item->from_bank;
                $record['billing_bank'] = $item->billing_bank;
                $record['revision_no'] = $item->revision_no;
                $record['default_currency'] = $item->default_currency;
                $record['reference_po'] = $item->reference_po;
                $record['contact_id'] = $item->contact_id;
                $record['billing_fax'] = $item->billing_fax;
                $record['shipping_phone'] = $item->shipping_phone;
                $record['from_phone'] = $item->from_phone;
                $record['from_mobile'] = $item->from_mobile;
                $record['place_of_destination'] = $item->place_of_destination;
                $record['from_postalcode'] = $item->from_postalcode;
                $record['from_bank_ac'] = $item->from_bank_ac;
                $record['billing_bank_ac'] = $item->billing_bank_ac;
                $record['cc'] = $item->cc;
                $record['billing_address'] = $item->billing_address;
                $record['shipping_address'] = $item->shipping_address;
                $record['from_email'] = $item->from_email;
                $record['shipment_method'] = $item->shipment_method;
                $record['from_address'] = $item->from_address;
                $record['total'] = $item->total;
                $record['total_discount'] = $item->total_discount;
                $record['deduction'] = $item->deduction;
                $record['final_total'] = $item->final_total;
                $record['terms_conditions'] = $item->terms_conditions;
                $record['terms'] = $item->terms;

                $body[] = $record;
            }
            return exportData($header, $body, 'Salesorder-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['salesorder_no', 'like', $search . '%'],
            ['billing_phone', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);
        return View::fetch();
    }


    public function panel(Request $request)
    {
        session('sales_order_type',"0");
        $param = $request->param();
        $items = SalesOrder::select();
        $data = SalesOrder::find();
        View::assign('data',$data);
        return View::fetch();
    }



    //添加
    public function add(Request $request, SalesOrder $model, SalesorderValidate $validate,SalesOrderItem $salesOrderItem)
    {
        $fromdetail = input('fromdetail', 0);
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $model::create($param);
            $SalesOrder_id = $result->id;
            $salesOrderItem->saveItem($SalesOrder_id, $param);

            if($fromdetail){
                return $this->redirect(url("projects/detail?id=".$param['project_id']));
            }
            return $this->redirect(url("index"));
        }
        return view('add');
    }


    //修改
    public function edit($id, Request $request, SalesOrder $model, SalesorderValidate $validate, SalesOrderItem $salesOrderItem)
    {
        $referer=$request->header('Referer');
        $action= getAction($referer);
        if ($action == 'SalesOrders'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
        $item=$model->alias('q')->leftJoin('bookings a','q.account_id = a.id')->leftJoin('sales_order p','q.salesorder_id = p.id')->field('q.*,a.name as account_name, p.name as salesorder_name')->find($id);

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $item->save($param);
            $salesOrderItem->saveItem($id,$param);
            if ($fromdatail){
                return $this->redirect(url("projects/detail?id=".$item['id']));
            }
        }
        $sal_items =$salesOrderItem->findItems($id);
        return view('add',['data'=>$item,'sal_items'=>$sal_items,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);

    }

    //删除
    public function del($id, SalesOrder $model)
    {

        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
