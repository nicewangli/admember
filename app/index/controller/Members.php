<?php
/**
 * Member控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Invoice;
use think\facade\View;
use think\facade\Request;
use app\model\Member;

use app\validate\MemberValidate;

class Members extends Application
{

    public function index()
    {
        return View::fetch();
    }

    public function index_list()
    {
        return View::fetch();
    }

    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'first_name';
        $order = $param['order'];
        $where = [];
          if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

            $query_fields = ['first_name','last_name','phone_mobile','phone_work','email1'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = [$field, 'like', $filter[$field] . '%'];
                }
            }

        }
        $items = Member::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Member::count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }

    public function export(Request $request, Member $model){
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Name', 'Creation Date', 'Industry', 'Phone', 'Fax', 'Email', 'Division','Address', 'Address(chi.)',
                'Country','City', 'City/State','Notes', 'Postal code', 'Co.Size', 'Website', 'Category', 'Rating'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['name'] = $item->name;
                $record['create_time'] = $item->create_time;
                $record['industry'] = $item->industry;
                $record['phone_office'] = $item->phone_office;
                $record['phone_fax'] = $item->phone_fax;
                $record['email1'] = $item->email1;
                $record['division'] = $item->division;
                $record['billing_address_street'] = $item->billing_address_street;
                $record['billing_address_street_cn'] = $item->billing_address_street_cn;
                $record['billing_address_country'] = $item->billing_address_country;
                $record['billing_address_city'] = $item->billing_address_city;
                $record['billing_address_state'] = $item->billing_address_state;
                $record['notes'] = $item->notes;
                $record['billing_address_postalcode'] = $item->billing_address_postalcode;
                $record['co_size'] = $item->co_size;
                $record['website'] = $item->website;
                $record['category'] = $item->category;
                $record['rating'] = $item->rating;

                $body[] = $record;
            }
            return exportData($header, $body, 'Members-' . date('Y-m-d-H-i-s'));
        }
    }




    public function panel()
    {
        $param = input('get.');
        $panel = $param['panel'];
        $where = [];
        $url = url("Members/lists");
        if(isset($param['account_id'])){
            $url = url("Members/lists",["account_id" => $param['account_id']]);
        }
        return View::fetch('panel',['panel_url' => $url]);
    }


    public function add(Request $request, Member $model, MemberValidate $validate)
    {
        if ($request::isPost()) {
            $param           =input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            //编号
            $param['member_no'] = Members::getConfigNo('membership','member');
            $result = $model::create($param);
            return $this->redirect(url("index"));
        }
        return view('add');
    }


    //详情
    public function detail($id, Request $request, Member $model, MemberValidate $validate)
    {
        $item = $model::find($id);
        if ($request::isPost()) {
            $param  = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $item->save($param);
        }
        return view('detail', ['item' => $item]);
    }

    //修改
    public function edit($id, Request $request, Member $model, MemberValidate $validate)
    {

        $item = $model::find($id);
        if ($request::isPost()) {
            $param  = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $item->save($param);
        }

        return view('edit', ['item' => $item]);
    }

    //删除
    public function del($id, Member $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $this->redirect(url("index"));
    }


    public function find_member(Member $model,Invoice $invoice)
    {
        $member_no = input('member_no');
        $where['member_no'] = $member_no;
        $member = $model->findMember($where);
        $invoices =$invoice->findInvoice($member->id);
        if ($member) {
            
            $member['no_service'] = true;
            $service = $model->findService($member['id'], 2);
            if (!empty($service)) {
                $member['no_service'] = false;
            }
        }
        return json(['member' => $member,'invoices' => $invoices]);
    }



    public  function transaction(){


        $param = input('get.');
        $grid_url = url("lists");


        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');


        $days = getDays($start_date, $end_date);


        $param = input('get.');
        $where = [];
        $url = url("Members/transaction");
        if(isset($param['id'])){
            $url = url("Members/transaction",["id" => $param['id']]);
        }

        View::assign([
            'days' => $days,
            'start_date' => $start_date,
            'end_date' => $end_date,

        ]);

        return View::fetch('transaction',['transaction_url' => $url,'grid_url' => $grid_url]);
    }




    public function treatment(){

        $param = input('get.');
        $grid_url = url("lists");

        return View::fetch('treatment',['grid_url' => $grid_url]);
    }



    public function services(){

        $param = input('get.');
        $grid_url = url("lists");


        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');


        $days = getDays($start_date, $end_date);


        $param = input('get.');
        $where = [];
        $url = url("Members/services");
        if(isset($param['id'])){
            $url = url("Members/services",["id" => $param['id']]);
        }

        View::assign([
            'days' => $days,
            'start_date' => $start_date,
            'end_date' => $end_date,

        ]);

        return View::fetch('services',['services_url' => $url,'grid_url' => $grid_url]);
    }


    public function stored_value(){

        $param = input('get.');
        $grid_url = url("lists");

        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');


        $days = getDays($start_date, $end_date);


        $param = input('get.');
        $where = [];
        $url = url("Members/stored_value");
        if(isset($param['id'])){
            $url = url("Members/stored_value",["id" => $param['id']]);
        }

        View::assign([
            'days' => $days,
            'start_date' => $start_date,
            'end_date' => $end_date,

        ]);

        return View::fetch('stored_value',['stored_value_url' => $url,'grid_url' => $grid_url]);
    }



    public function reward(){

        $param = input('get.');
        $grid_url = url("lists");

        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');


        $days = getDays($start_date, $end_date);


        $param = input('get.');
        $where = [];
        $url = url("Members/reward");
        if(isset($param['id'])){
            $url = url("Members/reward",["id" => $param['id']]);
        }

        View::assign([
            'days' => $days,
            'start_date' => $start_date,
            'end_date' => $end_date,

        ]);

        return View::fetch('reward',['reward_url' => $url,'grid_url' => $grid_url]);
    }
}
