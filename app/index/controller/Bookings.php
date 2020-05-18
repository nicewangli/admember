<?php
/**
 * Booking控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Booking;
use app\model\BookingItem;
use app\model\Room;
use app\model\User;
use app\validate\BookingValidate;
use think\facade\View;
use think\facade\Request;

class Bookings extends Application
{

    public function index()
    {
        return View::fetch();
    }


    public function qsearch()
    {
        $grid_url = url('lists');
        return View::fetch('qsearch', ['grid_url' => $grid_url]);
    }


    public function lists()
    {
        $param = input('get.');
        $where = [];
        $items = BookingItem::where($where)->select()->toArray();
        $res = [];
        $items = array_group_by($items,"booking_id");
        foreach ($items as $booking_id => $data) {
            $booking = Booking::find($booking_id);
            $events = $this->format_events($booking, $data);
            array_push($res, ...$events);
        }
        return json($res);
    }


    public function add(Booking $model, BookingItem $item_model, BookingValidate $validate)
    {
        if (Request::isPost()) {
            $param = input('post.');
            if (!isset($param['service'])) {
                return json(['code' => 0, 'msg' => "請選擇服務資料!"]);
            }
            //编号
            $param['code'] = Bookings::getConfigNo('reservation', 'booking');
            $param['status'] = 1;
            $res = $model::create($param);
            if ($res) {
                $items = $item_model->saveItem($res['id'], $param['service']);
                $events = $this->format_events($res, $items);
                return json(['code' => 200, 'action' => 'add', 'events' => $events, 'msg' => "Booking was created successfully!"]);
            } else {
                return json(['code' => 0, 'msg' => "Create failure!"]);
            }
        } else {
            $item = new Booking();
            $param = input('get.');
            $dt = explode(" ", $param['date_start']);
            $item['booking_date'] = $dt[0];
            $item['is_member'] = 1;
            $booking_init_time = $dt[1];
            $resourceId = $param['resourceId'];
            $eventId = $param['eventId'];
            $workinghours = workingHours();
            View::assign([
                'booking_init_time' => $booking_init_time,
                'resourceId' => $resourceId,
                'eventId' => $eventId,
                'workingHours' => $workinghours,
                'item' => $item,
                'act' => 'add',
            ]);
            return view('form');
        }

    }


    //修改
    public function edit($id,Booking $model, BookingItem $item_model, BookingValidate $validate)
    {
        $user = getUser();
        $user_tel = $user->tel;
        $item = $model->find($id);
        if (Request::isPost()) {
            $param = Request::param();
            $res = $item->save($param);
            if ($res) {
                $items = $item_model->saveItem($id, $param['service']);
                $events = $this->format_events($item, $items);
                return json(['code' => 200, 'action' => 'add', 'events' => $events, 'msg' => "Booking was created successfully!"]);
            } else {
                return json(['code' => 0, 'msg' => "Create failure!"]);
            }
        }else{
            $param = input('get.');
            $resourceId = $param['resourceId'];
            $eventId = $param['eventId'];
            $booking_items = $item_model->where(['booking_id' => $id])->with(['servicePackage','service','bt1','bt2'])->order("end_time asc")->select();
            $booking_init_time = $booking_items[count($booking_items) - 1]['end_time'];
            $workinghours = workingHours();
            View::assign([
                'item' => $item,
                'booking_items' => $booking_items,
                'items_count' => count($booking_items) ,
                'resourceId' => $resourceId,
                'eventId' => $eventId,
                'workingHours' => $workinghours,
                'booking_init_time' => $booking_init_time,
                'act' => 'edit',
                'user_tel' => $user_tel
            ]);
            return view('form');
        }

    }


    //删除
    public function del($id, Booking $model, BookingItem $item_model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        if ($result) {
            $item_model->where('booking_id', $id)->delete();
            return json(['code' => 200, 'msg' => 'delete successful']);
        }
        return  json(['code' => 0, 'msg' => 'delete failed']);
    }

    //删除item
    public function del_item(BookingItem $item_model)
    {
        $ids = input('ids', []);
        $result = $item_model->whereIn('id', $ids)->delete();
        if ($result) {
            return json(['code' => 200, 'msg' => 'delete successful']);
        }
        return  json(['code' => 0, 'msg' => 'delete failed']);
    }

    public function beautician()
    {
        $result = User::field('uid as id, first_name as title')->order("first_name asc")->select()->toArray();
        return json($result);
    }


    function format_events($booking, $items)
    {
        $events = [];
        $booking_date = $booking['booking_date'];
        $room = Room::find($booking['room_id']);
        $consultant = User::find($booking['consultant_id']);
        $event_colors = Booking::event_colors();
        foreach ($items as $item) {
            $start_date = $booking_date . " " . $item['start_time'];
            $end_date = $booking_date . " " . $item['end_time'];
            $room_name = '(房間:'.$room['name'].')';
            $consultant_name = "";
            if(isset($consultant)){
                $consultant_name = '(顧問:'.$consultant['first_name'].')';
            }
            $service_name = "";
            if(isset($item['service_name'])){
                $service_name = $item['service_name'];
            }
            $title_arr = ['('.$booking['member_no'].')',$booking['name'],$booking['phone'],$room_name,$consultant_name,$service_name];
            $title =  implode(" ",$title_arr);
            $color = $event_colors[$booking['status']];
            $event = ['id' => $item['id'], 'start' => $start_date, 'end' => $end_date, 'title' => $title,'booking_id' => $booking['id'],'color' => $color];
            if (!empty($item['beautician1'])) {
                $event['resourceId'] = $item['beautician1'];
                $events[] = $event;
            }
            if (!empty($item['beautician2'])) {
                $event['resourceId'] = $item['beautician2'];
                $events[] = $event;
            }
        }
        $events = $this->events_merge($events);
        return $events;
    }




    function events_merge($events){
        $data = array_group_by($events,"resourceId");
        $res = [];
        foreach ($data as $resourceId => $items){
            $event = $items[0];
            if(count($items) > 1){
                $starts = [];
                $ends = [];
                foreach ($items as $item){
                    $starts[] = $item['start'];
                    $ends[] = $item['end'];
                }
                $event['start'] = min($starts);
                $event['end'] = max($ends);
            }
            $res[] = $event;
        }
        return $res;
    }



}
