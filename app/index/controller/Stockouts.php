<?php
/**
 * Stockout控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\SalesOrderItem;
use app\model\Store;
use app\model\Warehouse;
use app\model\WarehouseProduct;
use think\facade\View;
use think\Request;
use app\model\Stockout;

use app\validate\StockoutValidate;

class Stockouts extends Application
{

    //列表
    public function index(Request $request, Stockout $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Stockout No', 'Create Date', 'Payment Terms', 'Billing Account', 'Billing Phone', 'Ship To', 'Sales Rep',
                'Fax', 'POL', 'Seller Company', 'Seller Bank', 'Billing Bank', 'Revision', 'Currency', 'Your Ref.', 'Contact', '	Billing Fax', 'Shipping Phone',
                'Direct Line', 'Mobile', 'Place of Dest.', 'Seller Postal Code', 'Seller Bank A/C', 'Billing Bank A/C', 'C.C. to', 'Billing Address', 'Shipping Address', 'E-mail',
                'Shipment Method', 'Seller Address', 'Total:', 'Special Discount (%):', 'Special Discount Amt:', 'Tax rate (%):', 'Net Amount:', 'Terms and Conditions', '
Add standard terms'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['Stockout_no'] = $item->Stockout_no;
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
            return exportData($header, $body, 'Stockout-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
//            ['salesorder_no', 'like', $search . '%'],
//            ['payment_term', 'like', $search . '%'],

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
        $items = Stockout::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Stockout::count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }


    //添加

    public function add(Request $request, Stockout $model, StockoutValidate $validate, SalesOrderItem $SalesOrderItem,WarehouseProduct $wp)
    {
        $item = [];
        //店铺下拉框
        $storeArr = Store::select()->toArray();

        //查询仓库数据，用于页面显示下拉框
        $warehouse = Warehouse::select();
        if ($request->isPost()) {
            $param = $request->param();
            $wp->saveChangeWP($param,'stockout');
//            dump($param);die;
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            //编号
            $param['code'] = $this->getConfigNo('dekura','stockout');

            $result = $model::insertGetId($param);

            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item['supplier_id'] = input('get.supplier_id');
        }
        View::assign([
            "warehouse" => $warehouse,
            'item' => $item,
            'act' => url('add'),
            'storeArr' => $storeArr,
        ]);
        return view('form');
    }


    //修改
    public function edit($id, Request $request, Stockout $model, StockoutValidate $validate, SalesOrderItem $SalesOrderItem)
    {
        //店铺下拉框
        $storeArr = Store::select()->toArray();
        $referer=$request->header('Referer');
        $action= getAction($referer);
        if ($action == 'Stockouts'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
        $item=$model->alias('q')->leftJoin('sales_order a','q.salesorder_id = a.id')->leftJoin('quotation p','q.quotation_id = p.id')->field('q.*,a.name as account_name, p.name as quotation_name')->find($id);

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }
        }
        $sal_items =$SalesOrderItem->findItems($id);
        View::assign([
            'item' => $item,
            'act' => url('edit'),
            'storeArr' => $storeArr,
        ]);
        return view('form',['data'=>$item,'sal_items'=>$sal_items,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);

    }

    //删除
    public function del($id, Stockout $model)
    {

        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
