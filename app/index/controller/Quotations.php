<?php
/**
 * PurchaseOrder控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\QuotationItem;
use app\model\Quotation;
use think\Request;
use think\facade\View;
use app\validate\QuotationValidate;
class Quotations extends Application
{

    //列表
    public function index(Request $request, Quotation $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Quotation No', 'Create Date', 'Payment Terms', 'Approval Status', 'Billing Booking', 'Billing Phone', 'Sales Rep',
                'Fax','	Revision','Expiry Date','Currency','Contact','Billing Fax','Direct Line','Mobile','Quotations type','Your Ref.',
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
            return exportData($header, $body, 'Quotation-' . date('Y-m-d-H-i-s'));
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




    public function panel(Request $request)
    {
        session('quotation_type',"0");
        $param = $request->param();
        $items = Quotation::select();
        View::assign('data',$items);
        return View::fetch();
    }



    //添加
    public function add(Request $request, Quotation $model, QuotationValidate $validate, QuotationItem $quotationItem)
    {
        $fromdetail = input('fromdetail', 0);
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $model::create($param);
            $quotation_id = $result->id;
            $quotationItem->saveItem($quotation_id, $param);

            if($fromdetail){
                return $this->redirect(url("projects/detail?id=".$param['project_id']));
            }

            return $this->redirect(url("index"));
        }

        return view('add');
    }



    //修改
    public function edit($id, Request $request, Quotation $model, QuotationValidate $validate,QuotationItem $quotationItem)
    {

        $referer= $request->header('Referer');
        $action= getAction($referer);
        if ($action == 'Quotations'){
            $back=url($action.'/index');
        }else{
            $back="javascript:history.back(-1);";
        }
        $fromdatail=input('fromdetail',0);
        $item=$model->alias('q')->leftJoin('bookings a','q.account_id = a.id')->leftJoin('quotation p','q.quotation_id = p.id')->field('q.*,a.name as account_name, p.name as quotation_name')->find($id);

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
             $item->save($param);
            $quotationItem->saveItem($id,$param);
            if ($fromdatail){
                return $this->redirect(url("projects/detail?id=".$item['id']));
            }
        }
        $quo_items=$quotationItem->findItems($id);
        return view('add',['data'=>$item,'quo_items'=>$quo_items,'fromdatail'=>$fromdatail,'action'=>url('edit?id='.$id),'back'=>$back]);

    }

    //删除
    public function del($id, Quotation $model)
    {

        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
