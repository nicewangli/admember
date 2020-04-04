<?php
/**
 * SupplierContact控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\SupplierContact;

use app\validate\SupplierContactValidate;

class SupplierContacts extends Application
{

    public function index()
    {
        $supplier_id = input('get.supplier_id');
        View::assign([
            'grid_url' => url('lists',['supplier_id' => $supplier_id]),
        ]);
        return View::fetch();
    }

    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'first_name';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where['account_id'] = $param['account_id'];
        }
        $items = SupplierContact::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = SupplierContact::count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }

    public function export(Request $request, SupplierContact $model){
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
            return exportData($header, $body, 'SupplierContacts-' . date('Y-m-d-H-i-s'));
        }
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

    public function add(Request $request, SupplierContact $model, SupplierContactValidate $validate)
    {
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

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
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');
    }


    //详情
    public function detail($id, Request $request, SupplierContact $model)
    {
        $item = $model::find($id);
        return view('detail', ['item' => $item]);
    }

    //修改
    public function edit($id, Request $request, SupplierContact $model, SupplierContactValidate $validate)
    {
        $item = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }

        }

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }

    //删除
    public function del($id, SupplierContact $model)
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
