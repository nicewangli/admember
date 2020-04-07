<?php
/**
 * PurchaseOrder控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\QuotationItem;
use app\model\Stockin;
use app\model\StockinItem;
use app\model\WarehouseProduct;
use think\Request;
use think\facade\View;
use app\validate\StockinValidate;
class Stockins extends Application
{

    //列表
    public function index(Request $request, Stockin $model)
    {
        $supplier_id = input('get.$supplier_id');
        View::assign([
            'grid_url' => url('lists',['$supplier_id' => $supplier_id]),
        ]);

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Stockin No', 'Create Date', 'Payment Terms', 'Approval Status', 'Billing Account', 'Billing Phone', 'Sales Rep',
                'Fax','	Revision','Expiry Date','Currency','Contact','Billing Fax','Direct Line','Mobile','Stockins type','Your Ref.',
                'C.C. to','Billing Address','E-mail','Terms and Conditions','Add standard terms','Remark'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['quotation_no'] = $item->quotation_no;
                $record['created_at'] = $item->created_at;
                $record['payment_term'] = $item->payment_term;
                $record['approval_status'] = $item->approval_status;
                $record['account_id'] = $item->account_id;
                $record['billing_phone'] = $item->billing_phone;
                $record['from_user'] = $item->from_user;
                $record['from_fax'] = $item->from_fax;
                $record['revision_no'] = $item->revision_no;
                $record['expiry_date'] = $item->expiry_date;
                $record['default_currency'] = $item->default_currency;
                $record['contact_id'] = $item->contact_id;
                $record['billing_fax'] = $item->billing_fax;
                $record['from_phone'] = $item->from_phone;
                $record['from_mobile'] = $item->from_mobile;
                $record['quo_type'] = $item->quo_type;
                $record['reference_po'] = $item->reference_po;
                $record['cc'] = $item->cc;
                $record['billing_address'] = $item->billing_address;
                $record['from_email'] = $item->from_email;
                $record['terms_conditions'] = $item->terms_conditions;
                $record['terms'] = $item->terms;
                $record['remark'] = $item->remark;


                $body[] = $record;
            }
            return exportData($header, $body, 'Stockin-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['quotation_no', 'like', $search . '%'],
            ['from_email', 'like', $search . '%'],

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
    public function add(Request $request, Stockin $model, StockinValidate $validate, StockinItem $stockinItem,WarehouseProduct $wp)
    {
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            $result = $model::create($param);
            $account_id = $result->id;
            $stockinItem->saveItem($account_id, $param);
            //写入库存表
            $wp->saveChangeWP($param,'stockin');
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
    public function edit($id, Request $request, Stockin $model, StockinValidate $validate, StockinItem $stockinItem)
    {

       $referer= $request->header('Referer');
        $action= getAction($referer);
        if ($action == 'Stockins'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
        $item=$model->alias('q')->leftJoin('suppliers a','q.supplier_id = a.id')->leftJoin('quotation p','q.quotation_id = p.id')->field('q.*,a.first_name as account_name, p.name as quotation_name')->find($id);

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
              $result = $item->save( );
            $stockinItem->saveItem($id, $param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }
        }
        $quo_items=$stockinItem->findItems($id);
        $service_product = $stockinItem->options($id);
        View::assign([
            'item' => $item,
            'act' => url('edit'),
            'service_product' => $service_product
        ]);
        return view('form',['data'=>$item,'quo_items'=>$quo_items,'service_product'=>$service_product,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);



    }

    //删除
    public function del($id, Stockin $model)
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
