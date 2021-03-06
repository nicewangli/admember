<?php
/**
 * Booking控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Attendance;
use app\model\Booking;
use app\model\BookingItem;
use app\model\Room;
use app\model\Team;
use app\model\User;
use app\validate\BookingValidate;
use think\facade\View;
use think\facade\Request;

class Bookings extends Application
{

    public function index()
    {
        $weekArr=array("日","一","二","三","四","五","六");
        $date_start = date("Y-m-d", time());
        $date_end = date("Y-m-d", time());
        $dayArr = [];
        $beaWhere = [];
        $biWhere = [];
        $roomWhere = [];
        $search = [];
        $type = 'bea';
        if (!empty(Request::get())) {
            $params = input('get.');

            //用于判断是否有设置type以及对于type的id查询
            if (!empty($params['type'])) {
                if($params['type'] == 'bea') {
                    if(!empty($params['search_id'])) {
                        $beaWhere[] = ['uid', '=', $params['search_id']];
                        $search['search_id'] = (int) $params['search_id'];
                    }
                } else if($params['type'] == 'room'){
                    if(!empty($params['search_id'])) {
                        $roomWhere[] = ['id', '=', $params['search_id']];
                        $search['search_id'] = (int) $params['search_id'];
                    }
                }
                $type = $params['type'];
            }

            if (!empty($params['store_id'])) {
                $biWhere[] = ['b.store_id', '=', $params['store_id']];
                $search['store_id'] = (int) $params['store_id'];
            }
            if(!empty($params['date_start'])) {
                $start_date = $params['date_start'];
                $end_date = $params['date_end'];

                $start_ts = strtotime($start_date);
                $end_ts = strtotime($end_date);
                for ($i = $start_ts; $i <= $end_ts;) {
                    $dayArr[] = ['date'=>date("Y-m-d", $i),'week'=>$weekArr[date("w", $i)]];
                    $i += 86400;
                }
                $date_start = $params['date_start'];
                $date_end = $params['date_end'];
            }

        } else {
            $dayArr[] = ['date'=>$date_start,'week'=>$weekArr[date('w',time())]];
        }
        $biWhere[] = ['booking_date', 'between', [$date_start, $date_end]];

        $beaWhere[] = ['category', '=', 'COSMETOLOGIST'];
        $result = User::field('uid as id, for_short as title')->order("for_short asc")->where($beaWhere)->select()->toArray();
        $roomArr = Room::where($roomWhere)->select();
        $time = workingHours();
        $colorArr = Booking::event_colors();
        $statusArr = Booking::event_status_zn();
        $ads = Attendance::attendanceType();
        $model = new BookingItem();
        //
        $item = $model->alias('bi')->leftJoin('booking b','b.id = bi.booking_id')->leftJoin('member m','m.id = b.member_id')->leftJoin('users u','u.uid = bi.beautician1')->leftJoin('users cu','cu.uid = b.consultant_id')->leftJoin('room r','r.id = b.room_id')->field('bi.*,b.status,b.remark,b.is_deduct,b.booking_date,b.id as bid,b.room_id,b.name as m_name,b.is_member,r.name as r_name,u.for_short as u_name,cu.for_short as cu_name,b.phone as phone_mobile,m.code as member_no')->where($biWhere);
        $booking_item = $item->where($biWhere)->select()->toArray();
        $adArr = Attendance::field('user_id,vdate,start_time,end_time,item')->select()->toArray();
        foreach ($adArr as &$ad) {
            if(array_search($ad['item'],$ads)!==false) {
                $ad['item'] = $ads[$ad['item']];
            }
        }
        foreach ($booking_item as &$item) {
            $item['bc'] = $colorArr[$item['status']];
            $item['status_name'] = array_search($item['status'],$statusArr);
            $item['room_id'] = empty($item['room_id']) ? [] : explode(',', $item['room_id']);
        }
        return View::fetch('index', ['date_start' => $date_start, 'date_end' => $date_end, 'beauticianArr' => $result, 'bookingItems' => $booking_item, 'time' => $time, 'dayArr' => $dayArr,'search'=>$search,'adArr'=>$adArr,'roomArr' => $roomArr,'type'=>$type]);
    }

    public function qsearch()
    {
        $grid_url = url('lists');
        return View::fetch('qsearch', ['grid_url' => $grid_url]);
    }

    public function get_booking_item(Booking $model)
    {
        $member = input('member');
        $where = [];
        $where[] = ['m.member_no', 'like', '%' . $member . '%'];
        $where[] = ['m.first_name', 'like', '%' . $member . '%'];
        $data = $model->alias('b')->leftJoin('booking_item bi', 'b.id=bi.booking_id')->leftJoin('member m', 'm.id = b.member_id')->field('b.*,bi.beautician1,bi.id as bi_id,bi.start_time,bi.end_time,m.first_name,m.phone_mobile')->whereOr($where)->group('b.id')->select()->toArray();
        $total = count($data);
        return json(['booking' => $data,'total' => $total]);
    }

    public function lists()
    {
        $param = input('get.');
        $where = [];
        $bookingWhere = [];
        if (isset($param['room_id'])) {

            $bookingWhere[] = ['room_id', '=', (int)$param['room_id']];
        }
        if (isset($param['store_id'])) {
            $bookingWhere[] = ['store_id', '=', (int)$param['store_id']];
        }
        if (isset($param['consultant'])) {
            $bookingWhere[] = ['consultant_id', '=', (int)$param['consultant']];
        }
        if (isset($param['date_start']) && isset($param['date_end'])) {
            $bookingWhere[] = ['booking_date', 'between', [$param['date_start'], $param['date_end']]];
        }
        $items = BookingItem::where($where)->select()->toArray();
        $res = [];
        $items = array_group_by($items, "booking_id");
        foreach ($items as $booking_id => $data) {
            $booking = Booking::where($bookingWhere)->where('id', '=', $booking_id)->find();
            if (!empty($booking)) {
                $events = $this->format_events($booking, $data);
                array_push($res, ...$events);
            }
        }
        return json($res);
    }

    public function all_info()
    {
        $start_date = date("Y-m-d", time());
        $end_date = date("Y-m-d", time());
        $type = input('type');
        $scArr = Booking::status_colors();
        return View::fetch('all_info', [
            'type' => $type,
            'scArr' => $scArr,
            'start_date' => $start_date,
            'end_date' => $end_date,
        ]);
    }

    //TODO 弹窗数据加载

    public function list(Request $request, Booking $model)
    {
        $param = input('get.');
        $color = Booking::event_colors();
        //member  users  room  booking_item  store
        $item = $model->alias('b')->leftJoin('booking_item bi', 'bi.booking_id = b.id')->leftJoin('member m', 'm.id = b.member_id')->leftJoin('room r', 'r.id = b.room_id')->leftJoin('users u', 'u.uid = bi.beautician1')->leftJoin('users use', 'use.uid = bi.beautician2')->leftJoin('store s', 's.id = b.store_id')->field('b.*,m.first_name as member_name,m.phone_mobile,u.username as b1_name,use.username as b2_name');
        $where = [];
        $stArr = Booking::event_status();
        $stZnArr = Booking::event_status_zn();
        if (isset($param['type']) && $param['type'] !== 'all_booking' && empty($param['status'])) {
            $status = $stArr[$param['type']];
            $where[] = ['b.status', '=', $status];
        }
        if (isset($param['status']) && $param['status'] !== 'all_booking') {
            $status = $stZnArr[$param['status']];
            $where[] = ['b.status', '=', $status];
        }

        if (isset($param['store_id'])) {
            $where[] = ['s.id', '=', $param['store_id']];
        }
        if (!empty($param['consultant'])) {
            $where[] = ['u.uid', '=', $param['consultant']];
        }
        if (!empty($param['room_id'])) {
            $where[] = ['r.id', '=', $param['room_id']];
        }
        $where[] = ['booking_date', 'between', [$param['start_date'], $param['end_date']]];
        $item = $item->where($where)->select()->toArray();
        foreach ($item as &$value) {
            $value['status'] = $color[(int)$value['status']];
        }

        $data = ['rows' => $item];
        return json($data);
    }


    public function add(Booking $model, BookingItem $item_model, BookingValidate $validate)
    {
        if (Request::isPost()) {
            $param = input('post.');
            if (!isset($param['service'])) {
                return json(['code' => 0, 'msg' => "請選擇服務資料!"]);
            }
            //编号
            $param['code'] = $this->getConfigNo('reservation', 'booking');
            $param['status'] = 1;
            $param['room_id'] = empty($param['room_id']) ? '' : implode(',', $param['room_id']);
            $param['created_user_id'] = $this->user->uid;
            $param['updated_user_id'] = $this->user->uid;
            $param['team_id'] = $this->user->ugid;
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
//            $dt = explode(" ", $param['date_start']);
            $item['booking_date'] = (string)$param['date'];
            $item['is_member'] = 1;
            $item['created_user_id'] = $this->user->uid;
            $item['team_id'] = $this->user->ugid;
            $booking_init_time = $param['start_time'];
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
    public function edit($id, Booking $model, BookingItem $item_model, BookingValidate $validate)
    {
        $user = getUser();
        $user_tel = $user->tel;
        $item = $model->find($id);
        $item['room'] = empty($item['room_id']) ? [] : explode(',', $item['room_id']);

        if (Request::isPost()) {
            $param = Request::param();
            $param['room_id'] = empty($param['room_id']) ? '' : implode(',', $param['room_id']);

            $param['updated_user_id'] = $this->user->uid;
            $res = $item->save($param);
            if ($res) {
                $items = $item_model->saveItem($id, $param['service']);
                $events = $this->format_events($item, $items);
                return json(['code' => 200, 'action' => 'add', 'events' => $events, 'msg' => "Booking was created successfully!"]);
            } else {
                return json(['code' => 0, 'msg' => "Create failure!"]);
            }
        } else {
            $param = input('get.');
            $resourceId = $param['resourceId'];
            $eventId = $param['eventId'];
            $booking_items = $item_model->where(['booking_id' => $id])->with(['servicePackage', 'service', 'bt1', 'bt2'])->order("end_time asc")->select();
            $booking_init_time = $booking_items[count($booking_items) - 1]['end_time'];
            $workinghours = workingHours();

            $item['new_use_package'] = 0;
            $findWhere = [
                ['booking_id', '=', $id],
                ['parent_id', '>', 0]
            ];
            $find = $item_model->where($findWhere)->find();
            if ($find) {
                $item['new_use_package'] = 1;
            }

            $notes = $model->booking_notes($item['member_id']);

            View::assign([
                'item' => $item,
                'booking_items' => $booking_items,
                'items_count' => count($booking_items),
                'resourceId' => $resourceId,
                'eventId' => $eventId,
                'workingHours' => $workinghours,
                'booking_init_time' => $booking_init_time,
                'act' => 'edit',
                'user_tel' => $user_tel,
                'notes' => $notes,
            ]);
            return view('form');
        }

    }

    //改變狀態
    public function change_status(Booking $model)
    {
        $id = input('id');
        $status = input('status');
        $find = $model::find($id);
        if ($find) {
            $result = $find->save(['status' => $status]);
            if ($result) {
                return json(['code' => 200, 'msg' => 'successful']);
            } else {
                return json(['code' => 0, 'msg' => 'failed']);
            }
        } else {
            return json(['code' => 0, 'msg' => 'can not found this booking']);
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
        return json(['code' => 0, 'msg' => 'delete failed']);
    }

    //删除item
    public function del_item(BookingItem $item_model)
    {
        $ids = input('ids', []);
        $result = $item_model->whereIn('id', $ids)->delete();
        if ($result) {
            return json(['code' => 200, 'msg' => 'delete successful']);
        }
        return json(['code' => 0, 'msg' => 'delete failed']);
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
            $room_name = '(房間:' . $room['name'] . ')';
            $consultant_name = "";
            if (isset($consultant)) {
                $consultant_name = '(顧問:' . $consultant['first_name'] . ')';
            }
            $service_name = "";
            if (isset($item['service_name'])) {
                $service_name = $item['service_name'];
            }
            $title_arr = ['(' . $booking['member_no'] . ')', $booking['name'], $booking['phone'], $room_name, $consultant_name, $service_name];
            $title = implode(" ", $title_arr);
            $color = $event_colors[$booking['status']];
            $event = ['id' => $item['id'], 'start' => $start_date, 'end' => $end_date, 'title' => $title, 'booking_id' => $booking['id'], 'color' => $color];
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


    function events_merge($events)
    {
        $data = array_group_by($events, "resourceId");
        $res = [];
        foreach ($data as $resourceId => $items) {
            $event = $items[0];
            if (count($items) > 1) {
                $starts = [];
                $ends = [];
                foreach ($items as $item) {
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
