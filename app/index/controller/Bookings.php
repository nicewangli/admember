<?php
/**
 * Booking控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Activity;
use app\validate\ActivityValidate;
use think\facade\View;
use think\facade\Request;
use app\model\Booking;

use app\validate\BookingValidate;

class Bookings extends Application
{

    public function index()
    {
        return View::fetch();
    }


    public function qsearch(){
        $grid_url = url('lists');
        return View::fetch('qsearch',['grid_url' => $grid_url]);
    }


    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'name';
        $order = $param['order'];
        $where = [];
        $items = Booking::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Booking::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
         return $data;
    }

    public function export(){
        $param = input("get.");
        $model = Booking::where('where', $param);
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
            return exportData($header, $body, 'Bookings-' . date('Y-m-d-H-i-s'));
    }

    public function add(Booking $model, BookingValidate $validate)
    {

        if (Request::isPost()) {
            $param = input('post.');
            //编号
            $param['code'] = Bookings::getConfigNo('reservation','booking');
            $res = $model::create($param);
            if ($res) {
                $event = ['id' => $res['id'],'start' => $res['date_start'],'end' => $res['date_end'],'title' => $res['title']];
                return json(['code' => 200,'action' => 'add','event' => $event,'msg' => "Activity was created successfully!"]);
            } else {
                return json(['code' => 0,'msg' => "Create failure!"]);
            }
        }else{
            $item = [];
            $param = input('get.');
            $item['date_start'] = isset($param['date_start']) ? $param['date_start'] : date("Y-m-d H:i:s");
            $item['date_end'] = isset($param['date_end'])  ? $param['date_end'] : date("Y-m-d H:i:s", strtotime("+1 hour"));

            View::assign([
                'item' => $item,
                'act' => url('add'),
            ]);
            return view('add');
        }


    }


    //修改
    public function edit($id, Booking $model, BookingValidate $validate)
    {

        $item = $model::find($id);
        if (Request::isPost()) {
            $param = Request::param();
            $res = $item->save($param);
            if ($res) {
                $event = ['id' => $item['id'],'start' => $item['date_start'],'end' => $item['date_end'],'title' => $item['title']];
                return json(['code' => 200,'action' => 'update','event' => $event,'msg' => "Activity was updated successfully!"]);
            } else {
                return json(['code' => 0,'msg' => "Create failure!"]);
            }
        }

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('edit');

    }


    //删除
    public function del($id, Booking $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $this->redirect(url("index"));
    }



}
