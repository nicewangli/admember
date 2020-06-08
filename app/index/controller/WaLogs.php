<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;

use app\model\Member;
use app\model\WaLog;
use think\facade\Session;
use think\facade\View;
use think\Request;
use app\Application;

class WaLogs extends Application
{

    //列表
    public function index(Request $request, WaLog $model)
    {
        //whatsAPP
        $user = getUser();
        $user_tel = $user->tel;
        $phone = input('phone');
        $search = input('search');
        $from_me = input('from_me');
        if(!empty($search)) {
            $where = [];
            $where[] = ['m.code','like','%'.$search.'%'];
            $where[] = ['m.first_name','like','%'.$search.'%'];
            $where[] = ['m.phone_mobile','like','%'.$search.'%'];
        }
        if (!empty($phone)) {
            $member = Member::where('phone_mobile', $phone)->find();
            View::assign(['phone' => $phone]);
            View::assign(['member' => $member]);
        } else {
            View::assign(['phone' => '']);
        }
        $type = input('type');
        if (!empty($type)) {
            View::assign(['type' => $type]);
        } else {
            View::assign(['type' => 'nav-all-tab']);
        }
        $needData = $this->getNeedData($phone, $type, $from_me);
        $param = $request->param();
        $model = $model->scope('where', $param);
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding', 'Details', 'Booking', 'Contact'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['regarding'] = $item->regarding;
                $record['detail'] = $item->detail;
                $record['account_id'] = $item->account_id;
                $record['contact_id'] = $item->contact_id;
                $body[] = $record;
            }
            return exportData($header, $body, 'Walog-' . date('Y-m-d-H-i-s'));
        }
        $data = $model->paginate(6, false, ['query' => $request->get()]);
        //关键词，排序等赋值
        View::assign($request->get());

        View::assign([
            'data' => $data,
            'members' => $needData['member'],
            'waLog' => $needData['waLog'],
            'waLogInfo' => $needData['waLogInfo'],
            'page' => $data->render(),
            'total' => $data->total(),
            'user_tel' => $user_tel
        ]);

        return View::fetch();
    }

    //新增
    public function add(Request $request, WaLog $model)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $param['created_time'] = time();
            $result = $model->save($param);
            if ($result) {
                $data = ['code' => 200];
            } else {
                $data = ['code' => 0];
            }
            return json($data);
        }
    }

    //修改
    public function edit($id, Request $request, WaLog $model)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = input('post.');
            $result = $data->save($param);

        }
        View::assign([
            'data' => $data,

        ]);
        return redirect(url('index'));

    }

    //显示member
    public function getNeedData($phone = '', $type = '', $from_me = '')
    {

        $typeArr = [
            'nav-all-tab' => 0,
            'nav-delivered-tab' => 1,
            'nav-read-tab' => 2,
            'nav-sent-tab' => 3,
        ];
        $member = new Member();
        $waLog = new WaLog();
        $memberWhere = [];
        $waWhere = [];
        $waInfoWhere = [];
        if (isset($from_me)) {
            $waWhere[] = ['from_me', '=', $from_me];
        }
        if (!empty($phone)) {
            $to_phone = wa_phone_format($phone);
            $memberWhere[] = ['phone_mobile', '=', $phone];
            $waWhere[] = ['remote_jid', '=', $to_phone];
            $waInfoWhere[] = ['remote_jid', '=', $to_phone];
            $waLogInfoArr = $waLog->alias('wl')->leftJoin('member m', 'wl.remote_jid = m.phone_mobile')->leftJoin('users u', 'wl.sender_jid = u.tel')->field('wl.*,m.first_name as member_name,u.username')->where($waInfoWhere)->order('wl.created_time', 'asc')->select();
            $waLogInfoArr = $waLog->setWaLogArray($waLogInfoArr);
        } else {
            $waLogInfoArr = [];
        }
        $memberArr = $member->where($memberWhere)->paginate([
            'list_rows' => 10,
            'var_page' => 'member_page',
            'query' => request()->param(),
        ]);

        if (!empty($type) && $typeArr[$type] !== 0) {
            $waWhere[] = ['ack', '=', $typeArr[$type]];
        }
        $waLogArr = $waLog->alias('wl')->leftJoin('member m', 'wl.remote_jid = m.phone_mobile')->leftJoin('users u', 'wl.sender_jid = u.tel')->field('wl.*,m.first_name,m.phone_mobile,m.id as member_id,u.username')->where($waWhere)->order('created_time', 'asc')->paginate([
            'list_rows' => 10,
            'var_page' => 'wl_page',
            'query' => request()->param(),
        ]);
        $waLogArr = $waLog->setWaLogArray($waLogArr);


        return ['member' => $memberArr, 'waLog' => $waLogArr, 'waLogInfo' => $waLogInfoArr];
    }

    //whatsApp消息弹窗页面
    public function wa_info()
    {
        //接收phone
        $phone = input('phone');
        $to_phone = wa_phone_format($phone);
        $sender_jid = input('sender_jid');
        $where = [];


        $member = Member::where('phone_mobile', $phone)->find();
        $where[] = ['remote_jid', '=', $to_phone];
        $where[] = ['sender_jid', '=', $sender_jid];
        View::assign(['member' => $member]);

        $waLog = new WaLog();
        $waLogInfoArr = $waLog->alias('wl')->leftJoin('member m', 'wl.remote_jid = m.phone_mobile')->leftJoin('users u', 'wl.sender_jid = u.tel')->field('wl.*,m.first_name as member_name,u.username')->where($where)->order('wl.created_time', 'asc')->select();
        $waLogInfoArr = $waLog->setWaLogArray($waLogInfoArr);
//        dump($waLogInfoArr);die;
        return View::fetch('wa_info', [
            'waLogInfo' => $waLogInfoArr,
            'sender_jid' => $sender_jid,
            'remote_jid' => $phone,
        ]);
    }

    public function setting()
    {
        $uid = Session::get('uid');
        $logged_num = check_health($uid);
        $error = "";
        $res = "";
        if ($logged_num == "") {
            $url = "http://127.0.0.1:8088/login?uid=" . $uid;
            $response = \Httpful\Request::get($url)->send();
            if ($response->code == 200) {
                $res = base64_encode($response->body);
            } else {
                $error = "Server error: " . $response->code;
            };
        }
        return view('setting', ['res' => $res, 'logged_num' => $logged_num, 'error' => $error]);
    }

    public function send_msg()
    {
        $user = getUser();
        $name = $user->username;
        $uid = Session::get('uid');
//        $logged_num = 1;
        $logged_num = check_health($uid);
        $phone = input('post.remote_jid');
        $content = input('post.content');
        $time = date('H:i', time());
        if (!empty($logged_num)) {
            $res = wa_sendMessage($phone, $content, $uid);
            //$res = 'send successful';
            return json(['code' => 200, 'msg' => $res, 'content' => $content, 'time' => $time, 'name' => $name]);
        } else {
            return json(['code' => 0, 'msg' => ' Whatsapp not login']);
        }
    }


    public function send_direct()
    {
        $uid = Session::get('uid');
        $logged_num = check_health($uid);
        $phone = input('get.phone');
        $content = input('get.content');
        if (!empty($logged_num)) {
            wa_sendMessage($phone, $content, $uid);
        }
        return redirect('/index/wa_logs/setting');
    }

    public function logout()
    {
        $uid = Session::get('uid');
        $url = "http://127.0.0.1:8088/logout";
        $response = \Httpful\Request::post($url)
            ->sendsType(\Httpful\Mime::FORM)
            ->body(['uid' => $uid])
            ->send();
        return redirect('/index/wa_logs/setting');
    }


}
