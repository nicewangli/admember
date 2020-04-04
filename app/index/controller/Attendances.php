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

    public function index(Request $request,Attendance $attendance,User $user)
    {

        $arrayDays = getDays(3, 2020);
        $startDays = $arrayDays;
        $endDays = $arrayDays;

        $keys = array_keys($endDays);
        $endDays[$keys[count($keys)-1]]['selected'] = true;


        $attendances = $attendance->select();
        $users = $user->field("uid,first_name")->select()->toArray();
        foreach ($users as $key => $value) {
            $where=['user_id' => $value['uid'], 'vdate' => 'vdate'];
            $users[$key]['attendance'] = $attendance::where($where)->select()->toArray();
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

        ]);
        return View::fetch();
    }






    //添加
    public function add(Request $request, Attendance $model, AttendanceValidate $validate,User $user)
    {
        $item = [];
        $item['users'] = $user->field("uid,first_name")->select();
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $items = $param['item'];
            foreach ($items  as $key => $value){
                $items[$key]['user_id'] = $param['user_id'];
                $items[$key]['vdate'] = $param['vdate'];
                $items[$key]['id'] = $param['id'];
//                $result = $model::create($items[$key]);
            }
            $result = $model::insertAll($items);
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else {
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
            $item = input('post.');
            $pur_items = $item['item'];
            $result = $model->saveAll($pur_items);
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else {
            $item = input('get.');
            $pur_items = $model->where(['user_id'=> $item['user_id'],'vdate' => $item['vdate']])->select();
        }

        return view('form', ['item' => $item,'act' => url('edit'),'pur_items'=>$pur_items]);
    }


    //删除
    public function del($id, Attendance $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $this->redirect(url("index"));
    }



}
