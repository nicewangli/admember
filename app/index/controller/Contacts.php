<?php
/**
 * Contact控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\facade\Request;
use app\model\Contact;

use app\validate\ContactValidate;

class Contacts extends Application
{

    public function index()
    {
        return View::fetch();
    }


    public function qsearch(){
        $account_id = input('get.account_id');
        $grid_url = url('lists');
        if(isset($account_id)) {
            $grid_url = url('lists',['account_id' => $account_id]);
        }
        return View::fetch('qsearch',['grid_url' => $grid_url]);
    }

    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'first_name';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where[] = ['account_id','=',$param['account_id']];
        }
        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

            $query_fields = ['first_name','last_name','phone_mobile','phone_work','email1'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = [$field, 'like', $filter[$field] . '%'];
                }
            }

        }
        $items = Contact::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Contact::count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }

    public function export(Request $request, Contact $model){
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
            return exportData($header, $body, 'contacts-' . date('Y-m-d-H-i-s'));
        }
    }




    public function panel()
    {
        $param = input('get.');
        $panel = $param['panel'];
        $where = [];
        $url = url("contacts/lists");
        if(isset($param['account_id'])){
            $url = url("contacts/lists",["account_id" => $param['account_id']]);
        }
        return View::fetch('panel',['panel_url' => $url]);
    }


    public function add(Request $request, Contact $model, ContactValidate $validate)
    {
        if ($request::isPost()) {
            $param           =input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $result = $model::create($param);
            return $this->redirect(url("index"));
        }
        return view('add');
    }


    //详情
    public function detail($id, Request $request, Contact $model)
    {
        $item = $model::find($id);
        return view('detail', ['item' => $item]);
    }

    //修改
    public function edit($id, Request $request, Contact $model, ContactValidate $validate)
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
    public function del($id, Contact $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $this->redirect(url("index"));
    }



}
