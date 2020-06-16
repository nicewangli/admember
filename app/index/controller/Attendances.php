<?php
/**
 * Attendance控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\User;
use think\facade\View;
use think\Request;
use app\model\Attendance;

use app\validate\AttendanceValidate;

class Attendances extends Application
{

    public function index(Request $request, Attendance $attendance, User $user)
    {

        $params = $request->param();

        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date = $params["end_date"] ?? date('Y-m-t');

        $category = $params['category'] ?? "COSMETOLOGIST";
        $user_id = $params['user_id'] ?? '';
        $store_id = $params['store_id'] ?? '';
        $store = getStoreArr();

        $days = getDays($start_date, $end_date);
        $attendances = $attendance->select();

        $beautician = $user->field("uid, for_short")->order('for_short', 'asc')->where('category', $category)->select()->toArray();

        $where[] = ['category', '=', $category];
        if ($user_id) {
            $where[] = ['uid', '=', $user_id];
        }
        if ($store_id) {
            $where[] = ['store_id', 'like', '%'.$store_id.'%'];
        }
        $users = $user->field("uid, for_short")->where($where)->order('for_short', 'asc')->select()->toArray();

        foreach ($users as $key => $value) {
            $where = ['user_id' => $value['uid'], 'vdate' => 'vdate'];
            $users[$key]['attendance'] = $attendance::where($where)->select()->toArray();
        }

        View::assign([
            'days' => $days,
            'grid_url' => url('lists', ['user_id' => $user_id]),
            'user_id' => $user_id,
            'category' => $category,
            'store_id' => $store_id,
            'store' => $store,
            'beautician' => $beautician,
            'users' => $users,
            'attendances' => $attendances,
            'start_date' => $start_date,
            'end_date' => $end_date,
        ]);
        return View::fetch();
    }



    /*  public function detail(){
          $arrayDays = getDays(3, 2020);
          $startDays = $arrayDays;
          $endDays = $arrayDays;

          $keys = array_keys($endDays);
          $endDays[$keys[count($keys)-1]]['selected'] = true;


          $attendances = Attendance::select();
          $users = User::field("uid,first_name")->select()->toArray();
          foreach ($users as $key => $value) {
              $where=['user_id' => $value['uid'], 'vdate' => 'vdate'];
              $users[$key]['attendance'] = Attendance::where($where)->select()->toArray();
          }

          $user_id = input('get.user_id');

          View::assign([
              'startDays' => $startDays,
              'endDays' => $endDays,
              'grid_url' => url('lists',['user_id' => $user_id]),
              'user_id' => $user_id,
              'users' => $users,
              'attendances' => $attendances,
              'start_date' => '',
              'end_date' => '',
              'getdate'=> '',

          ]);
          return view('detail');
      }*/


    //添加
    public function add(Request $request, Attendance $model, AttendanceValidate $validate, User $user)
    {
        $item = [];
        $item['users'] = $user->field("uid,for_short")->order('for_short', 'asc')->select();
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $items = $param['item'];
            foreach ($items as $key => $value) {
                $items[$key]['user_id'] = $param['user_id'];
                $items[$key]['vdate'] = $param['vdate'];

                $items[$key]['created_user_id'] = $this->user->uid;
                $items[$key]['create_time'] = date('Y-m-d H:i:s', time());

                $items[$key]['updated_user_id'] = $this->user->uid;
                $items[$key]['update_time'] = date('Y-m-d H:i:s', time());
//                $result = $model::create($items[$key]);
            }
            $result = $model::insertAll($items);
            if ($result) {
                return json(['code' => 200, 'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        } else {
            $item['user_id'] = input('get.user_id');
            $item['vdate'] = input('get.vdate');
            $item['user_name'] = input('get.user_name');
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');
    }


    //修改
    public function edit(Request $request, Attendance $model)
    {

        if ($request->isPost()) {
            $param = input('post.');
            $items = $param['item'];
            foreach ($items as $key => $value) {

                if ($value['id']) {
                    $items[$key]['updated_user_id'] = $this->user->uid;
                    $items[$key]['update_time'] = date('Y-m-d H:i:s', time());
                } else {
                    unset($items[$key]['id']);
                    $items[$key]['user_id'] = $param['user_id'];
                    $items[$key]['vdate'] = $param['vdate'];

                    $items[$key]['created_user_id'] = $this->user->uid;
                    $items[$key]['create_time'] = date('Y-m-d H:i:s', time());

                    $items[$key]['updated_user_id'] = $this->user->uid;
                    $items[$key]['update_time'] = date('Y-m-d H:i:s', time());
                }

//                $result = $model::create($items[$key]);
            }
//            var_dump($items);
            $result = $model->saveAll($items);
            if ($result) {
                return json(['code' => 200, 'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        } else {
            $item = input('get.');
            $pur_items = $model->where(['user_id' => $item['user_id'], 'vdate' => $item['vdate']])->select();
        }

        return view('form', ['item' => $item, 'act' => url('edit'), 'pur_items' => $pur_items]);
    }


    //删除
    public function del($id, Attendance $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        if ($result) {
            return json(['code' => 200, 'msg' => 'delete successful']);
        } else {
            return json(['code' => 0, 'msg' => 'delete failed']);
        }
    }

    public function del_fast(Attendance $model)
    {
        $param = input('post.');

        $where = [
            ['user_id', '=', $param['user_id']],
            ['vdate', '=', $param['vdate']],
        ];

        if ($param['vacation_item']) {
            $where[] = ['item', '=', $param['vacation_item']];
        }

        if ($model->softDelete) {
            $result = $model->where($where)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->where($where)->delete();
        }

        $vacation_item = $model->where(['user_id' => $param['user_id'], 'vdate' => $param['vdate']])->column('item');

        if ($result) {
            return json(['code' => 200, 'msg' => 'delete successful', 'vacation_item' => implode('', $vacation_item)]);
        } else {
            return json(['code' => 0, 'msg' => 'delete failed']);
        }
    }

    //重複編假
    public function add_fast(Attendance $model, User $user)
    {
        $param = input('post.');

        if ($param['user_id']) {
            $users = [$param['user_id']];
        } else {
            $where[] = ['category', '=', $param['category']];

            if ($param['store_id']) {
                $where[] = ['store_id', 'like', '%'.$param['store_id'].'%'];
            }
            $users = $user->where($where)->column('uid');
        }

        $days = formatWeekDays($param['start_date'], $param['end_date'], $param['weeks']);

        $items = [];
        $index = 0;
        if (!empty($days)) {
            foreach ($days as $day) {
                foreach ($users as $user_id) {
                    $items[$index]['user_id'] = $user_id;
                    $items[$index]['vdate'] = $day;
                    $items[$index]['start_time'] = $param['start_time'];
                    $items[$index]['end_time'] = $param['end_time'];
                    $items[$index]['item'] = $param['item'];
                    $items[$index]['remarks'] = $param['remarks'];

                    $items[$index]['created_user_id'] = $this->user->uid;
                    $items[$index]['create_time'] = date('Y-m-d H:i:s', time());

                    $items[$index]['updated_user_id'] = $this->user->uid;
                    $items[$index]['update_time'] = date('Y-m-d H:i:s', time());

                    $index ++;
                }
            }

            $result = $model::insertAll($items);
            if ($result) {
                return json(['code' => 200, 'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else {
            return json(['code' => 0]);
        }

    }
}
