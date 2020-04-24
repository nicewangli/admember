<?php
/**
 * Invoice控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\Invoice;
use app\model\Member;
use app\model\Store;
use app\model\InvoiceItem;
use app\model\InvoicePayment;
use app\model\InvoiceSeller;
use app\validate\InvoiceValidate;

class Invoices extends Application
{

    //列表
    public function index(Request $request, Invoice $model)
    {

        $param = $request->param();
        $start_date = $params["start_date"] ?? date('Y-m-01');

        $invoice = $model->select();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Invoice No'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['invoice_no'] = $item->invoice_no;


                $body[] = $record;
            }
            return exportData($header, $body, 'Stockin-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['invoice_no', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search,
            'start_date' => $start_date,
            'invoice' => $invoice
        ]);
        return View::fetch();
    }

    public function lists(Invoice $model, Member $member, Store $store)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];

        if(isset($param['search'])){
            $where[] = ['invoice_no', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
             if(isset($filter['invoice_no'])){
                $where[] = ['invoice_no', 'like', '%'.$filter['invoice_no'].'%'];
            }

            if(isset($filter['start_date'])){
                $where[] = ['start_date', '=', $filter['start_date']];
            }

            if(isset($filter['end_date'])){
                $where[] = ['end_date', '=', $filter['end_date']];
            }


            if(isset($filter['invoice_date'])){
                $where[] = ['invoice_date', '=', $filter['invoice_date']];
            }

            if(isset($filter['store'])){
                $store_id = $store::where('name', $filter['store'])->value('id');
                $where[] = ['store_id', '=', $store_id];
            }
            if(isset($filter['member'])){
                $member_id = $member::where('first_name', $filter['member'])->value('id');
                $where[] = ['member_id', '=', $member_id];
            }
        }



        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $search = input('search');
            $where[] = ['invoice_no', 'like', $search .'%'];
            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();

        }else{
            $items = $model::where($where)->order($sort.' '.$order)->select();
        }
//        var_dump($where);

        $total = $model::where($where)->count();

        foreach ($items as $key => $value) {
            if($value['store_id']){
                $items[$key]['store'] = $store::where('id', $value['store_id'])->value('name');
            }
            if($value['member_id']){
                $items[$key]['member'] = $member::where('id', $value['member_id'])->value('first_name');
            }
        }



        $data = [
            'rows' => $items,
            'total' => $total,
            'search' => $search
        ];
        return json($data);
    }



    public function panel(Request $request)
    {
        session('invoice_type',"0");
        $param = $request->param();
        $items = Invoice::select();
        $data = Invoice::find();
        View::assign('data',$data);
        return View::fetch();
    }



    //添加
    public function add(Request $request, Invoice $model, InvoiceValidate $validate,InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();
            //编号
            $param['invoice_no'] = Invoices::getConfigNo('invoice','invoice');;
            $result = $model::create($param);
            $invoice_id = $result->id;
            if (isset($param['service'])) {
                $invoiceItem->saveItem($invoice_id, $param['service']);
            }
            if (isset($param['payment'])) {
                $invoicePayment->savePayment($invoice_id, $param['payment']);
            }
            if (isset($param['seller'])) {
                $invoiceSeller->saveSeller($invoice_id, $param['seller']);
            }

            return json(['code' => 200]);
        }

        $store = getStore();
        $data['store_id'] = $store['id'];
        $data['store_name'] = $store['name'];

        return view('add', ['data' => $data]);
    }

    //修改
    public function edit($id, Request $request, Invoice $model, InvoiceValidate $validate,InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller, Member $member)
    {
        $item=$model->alias('i')->leftJoin('store s','i.store_id = s.id')->leftJoin('member m','i.member_id = m.id')->field('i.*, s.name as store_name, m.first_name as member')->find($id);

        $member_info = [];
        if ($item['member_id']) {
            $where['id'] = $item['member_id'];
            $member_info = $member->findMember($where);
        }

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['new_customer'] = isset($param['new_customer']) ? isset($param['new_customer']) : 0;
            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();

            $item->save($param);
            if (isset($param['service'])) {
                $invoiceItem->saveItem($id,$param['service']);
            }
            if (isset($param['payment'])) {
                $invoicePayment->savePayment($id, $param['payment']);
            }
            if (isset($param['seller'])) {
                $invoiceSeller->saveSeller($id, $param['seller']);
            }

            return json(['code' => 200]);
        }

        $inv_items = $invoiceItem->findItems($id);
        $inv_payments = $invoicePayment->findPayments($id);
        $inv_sellers = $invoiceSeller->findSellers($id);

        $item['items_count'] = $invoiceItem->where('invoice_id', $id)->count();
        return view('add',['data' => $item, 'inv_items' => $inv_items, 'inv_payments' => $inv_payments, 'inv_sellers' => $inv_sellers, 'member' => $member_info]);

    }

    //删除
    public function del($id, Invoice $model, InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller)
    {
        $ids = explode(',', $id);

        foreach ($ids as $value) {
            $data = $model::find($value);
            $data->delete();
            $invoiceItem->delItems($value);
            $invoicePayment->delPayments($value);
            $invoiceSeller->delSellers($value);
        }

        return json(['code' => 200]);
    }

    //删除item
    public function del_item(InvoiceItem $invoiceItem)
    {
        $ids = input('ids');
        $result = $invoiceItem->whereIn('id', $ids)->delete();
        // if ($result) {
        //     return json(['code' => 200]);
        // }
    }

    public function find_invoice(Invoice $model)
    {
        $invoice_no = input('invoice_no');
        $invoice = $model->where('invoice_no', $invoice_no)->find();
        return json(['invoice' => $invoice]);
    }
}
