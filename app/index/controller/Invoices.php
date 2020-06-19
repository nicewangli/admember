<?php
/**
 * Invoice控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\InvoiceTransfer;
use app\model\PackageStaging;
use think\facade\Session;
use think\facade\View;
use think\Request;
use app\model\Invoice;
use app\model\Member;
use app\model\Store;
use app\model\InvoiceItem;
use app\model\InvoicePayment;
use app\model\InvoiceSeller;
use app\validate\InvoiceValidate;
use app\model\Booking;
use app\model\BookingItem;

class Invoices extends Application
{

    //列表
    public function index(Request $request, Invoice $model)
    {

        $param = $request->param();
        $start_date = $params["start_date"] ?? date('Y-m-01');

        $invoice = $model->select();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Invoice No','Store','Member','总金额','待支付','操作人','create_time'];
            $body = [];
            $data = $model->alias('i')->leftJoin('member m','i.member_id = m.id')->leftJoin('store s','s.id = i.store_id')->leftJoin('users u','u.uid  = i.created_user_id')->field('i.*,m.first_name as member_name,s.name as store_name,u.username as user_name')->select();
//            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['invoice_no'] = $item->code;
                $record['store_name'] = $item->store_name;
                $record['member_name'] = $item->member_name;
                $record['amount'] = $item->total_amount;
                $record['unpaid'] = $item->final_total;
                $record['user_name'] = $item->user_name;
                $record['create_time'] = $item->create_time;
                $body[] = $record;
            }
            return exportData($header, $body, 'Invoice-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['code', 'like', $search . '%'],

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
        $sort = isset($param['sort']) ?  $param['sort'] :  'invoice_date';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];

        if(isset($param['search'])){
            $where[] = ['code', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
             if(isset($filter['code'])){
                $where[] = ['code', 'like', '%'.$filter['code'].'%'];
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
            $where[] = ['code', 'like', $search .'%'];
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
    public function add(Request $request, Invoice $model, InvoiceValidate $validate,InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller, Booking $booking)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            unset($param['id']);
            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();
            //编号
            $param['code'] = $this->getConfigNo('invoice','invoice');;
            $result = $model::create($param);
            $invoice_id = $result->id;

            $find = $booking::find($param['booking_id']);
            if ($find) {
                $find->save(['new_member' => 0]);
            }

            if (isset($param['service'])) {
                $invoiceItem->saveItem($invoice_id, $param['service']);
            }
            if (isset($param['payment'])) {
                $invoicePayment->savePayment($invoice_id, $param['payment']);
            }
            if (isset($param['seller'])) {
                $invoiceSeller->saveSeller($invoice_id, $param['seller']);
            }

            return json(['code' => 200,'id'=>$invoice_id]);
        }

        $store = getStore();
        $data['store_id'] = $store['id'];
        $data['store_name'] = $store['name'];

        return view('add', ['data' => $data]);
    }

    //修改
    public function edit($id, Request $request, Invoice $model, InvoiceValidate $validate,InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller, Member $member)
    {
        $item=$model->alias('i')->leftJoin('store s','i.store_id = s.id')->field('i.*, s.name as store_name')->find($id);

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
            if (isset($param['delSeller']) && $param['delSeller']) {
                $invoiceSeller->delSellers($id);
            }

            return json(['code' => 200]);
        }

        $inv_items = $invoiceItem->findItems($id);
        $inv_payments = $invoicePayment->findPayments($id);
        $inv_sellers = $invoiceSeller->findSellers($id);

        $item['items_count'] = $invoiceItem->where('invoice_id', $id)->count();
        return view('add',['data' => $item, 'inv_items' => $inv_items, 'inv_payments' => $inv_payments, 'inv_sellers' => $inv_sellers, 'member' => $member_info]);

    }
	
    //打印
    public function print($id, Request $request, Invoice $model, InvoiceValidate $validate,InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller, Member $member)
    {
        $item=$model->alias('i')->leftJoin('store s','i.store_id = s.id')->field('i.*, s.name as store_name')->find($id);

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
        return view('print',['data' => $item, 'inv_items' => $inv_items, 'inv_payments' => $inv_payments, 'inv_sellers' => $inv_sellers, 'member' => $member_info, 'consultant' => $inv_sellers['consultant'], 'beautician' => $inv_sellers['beautician']]);

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
    public function del_item(InvoiceItem $invoiceItem, InvoiceTransfer $invoiceTransfer)
    {
        $ids = input('ids');
        $result = $invoiceItem->whereIn('id', $ids)->delete();
        if ($result) {
            $transfer_ids = $invoiceTransfer->whereIn('new_invoice_item_id', $ids)->column('id');
            foreach ($transfer_ids as $id) {
                $invoiceTransfer->delItem($id);
            }
//             return json(['code' => 200]);
        }
    }

    public function find_invoice(Invoice $model)
    {
        $code = input('invoice_no');
        $invoice = $model->where('code', $code)->find();
        return json(['invoice' => $invoice]);
    }

    public function expiration_date(InvoiceItem $invoiceItem)
    {
        $param = input('post.');
        $find = $invoiceItem::find($param['id']);
        if ($find) {
            $find::update($param);
            return json(['code' => 200]);
        } else {
            return json(['code' => 0]);
        }
    }


    //booking to invoice
    public function booking_to_invoice(Booking $booking, BookingItem $item_booking, Member $member)
    {
        $booking_id = input('booking_id', 0);
        $from = input('from', '');
        $data = $booking->alias('b')->leftJoin('store s', 'b.store_id = s.id')->field('b.member_id, b.store_id, s.name as store_name, b.is_member')->find($booking_id);

        $data['new_customer'] = $data['is_member'] == 1 ? 0 : 1;
        $member_info = $member->findMember(['id' => $data['member_id']]);

//        $inv_items['service_packages'] = $item_booking->alias('ib')->leftJoin('service_package sp', 'ib.service_package_id = sp.id')->field('sp.id as service_id, sp.code, sp.name, sp.price, ib.quantity, "0.0" as discount, sp.price * ib.quantity as total, sp.package_value * ib.quantity as package_value, sp.package_value as package_original_value, sp.package_unit, "1" as service_type')->where(['ib.booking_id' => $booking_id])->select();
        $inv_items['service_packages'] = [];


        $total = 0.0;
//        foreach ($inv_items['service_packages'] as $key => $value) {
//            $total += $value['total'];
//            $inv_items['service_packages'][$key]['index'] = $key;
//        }

        $data['final_total'] = $total;
        $data['total_amount'] = $total;
        $data['total'] = $total;
        $data['items_count'] = count($inv_items['service_packages']);

        return view('add',['data' => $data, 'inv_items' => $inv_items, 'member' => $member_info, 'from' => $from, 'booking_id' => $booking_id]);
    }


    public function service_packages()
    {
        $ids = input('ids', []);
        $index = input('index', 0);
        $member_id = input('member_id', 0);
        $invoice_id = input('invoice_id', 0);
        return View::fetch('service_packages', ['ids' => $ids, 'index' => $index, 'member_id' => $member_id, 'invoice_id' => $invoice_id]);
    }

    public function service_packages_list(InvoiceItem $invoiceItem)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];
        $list = [];

        $where[] = ['it.used_up', '=', 0];

        if ($param['member_id']) {
            $where[] = ['i.member_id', '=', $param['member_id']];
        }
        if ($param['invoice_id']) {
            $where[] = ['i.id', '<>', $param['invoice_id']];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['code'])){
                $where[] = ['code', '=', $filter['code']];
            }
            if(isset($filter['name'])){
                $where[] = ['name', 'like', '%'.$filter['name'].'%'];
            }
            if(isset($filter['category_id'])){
                $where[] = ['category_id', '=', $filter['category_id']];
            }
            if(isset($filter['status'])){
                $where[] = ['status', '=', $filter['status']];
            }
        }

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $list = $invoiceItem->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->field('it.*, i.invoice_date, i.code as invoice_no, sp.code, sp.name')->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

            $total = $invoiceItem->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->count();
        }else{
            $list = $invoiceItem->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->field('it.*, i.invoice_date, i.code as invoice_no, sp.code, sp.name')->order($sort.' '.$order)->select()->toArray();

            $total = $invoiceItem->alias('it')->leftJoin('invoice i', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->where($where)->count();
        }


        foreach ($list as $key => $value) {
            $avg = $value['package_value'] ? $value['total'] / $value['package_value'] : 0;
            $used = $avg * $value['package_value_used'];
            $list[$key]['avg'] = sprintf('%.1f', $avg);
            $list[$key]['used'] = sprintf('%.1f', $used);
            $list[$key]['lave_money'] = sprintf('%.1f', $value['total'] - $used);
            $list[$key]['lave_value'] = sprintf('%.1f', $value['package_value'] - $value['package_value_used']);

            if (!empty($ids)) {
                if (in_array($value['id'], $ids)) {
                    $list[$key]['checked'] = true;
                }else{
                    $list[$key]['checked'] = false;
                }
            }
        }

        $data = [
            'rows' => $list,
            'total' => $total,
        ];
        return json($data);
    }

    //删除transfer
    public function del_transfer(InvoiceTransfer $invoiceTransfer)
    {
        $ids = input('ids');
        foreach ($ids as $id) {
            $invoiceTransfer->delItem($id);
        }
        // if ($result) {
        //     return json(['code' => 200]);
        // }
    }

    public function print_page(Invoice $model, InvoiceItem $invoiceItem, InvoicePayment $invoicePayment, InvoiceSeller $invoiceSeller)
    {
        $id = input('id');
        $result = $model->alias('i')->leftJoin('member m','m.id = i.member_id')->field('i.*,m.code as member_no,m.first_name')->find($id);
        $inv_items = $invoiceItem->findItems($id);
        $inv_payments = $invoicePayment->findPayments($id);
        //TODO:print给个true，列印bug
        $inv_sellers = $invoiceSeller->findSellers($id,true);
        $payment = $result['total_amount'] - $result['final_total'];
        View::assign(
            [
                'result' => $result,
                'items' => $inv_items,
                'sellers' => $inv_sellers,
                'payments' => $inv_payments,
                'total_payment' => $payment,
                'username' => Session::get('username'),
            ]
        );
        return View::fetch('print');
    }
}
