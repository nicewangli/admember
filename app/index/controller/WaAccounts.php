<?php
/**
 * WaAccount控制器
 */

namespace app\index\controller;
use app\BaseController;
use app\model\Model;
use app\model\WaAccount;
use app\validate\WaAccountValidate;
use think\facade\View;
use think\Request;
use app\Application;

class WaAccounts extends Application
{

    //列表
    public function index()
    {

        $param = input('get.');
        $grid_url = url("lists");
        return View::fetch('index',['grid_url' => $grid_url]);
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'mobile';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where[] = ['account_id', '=', $param['account_id']];
        }
        if(isset($param['contact_id'])){
            $where[] = ['contact_id', '=', $param['contact_id']];
        }
        if(!empty($param['search'])){
            $where[] = ['mobile', 'like', '%'.$param['search'].'%'];
        }
        $items = WaAccount::where($where)->limit($offset, $limit)->select();
        $total = WaAccount::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }




    //添加
    public function add(Request $request, WaAccount $model, WaAccountValidate $validate)
    {

        $item = ['store_id' => 1];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0, 'msg' => $validate->getError()]);
            }

            $result = $model::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200, 'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }

        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');
    }


    //修改
    public function edit($id, Request $request, WaAccount $model, WaAccountValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg'=> 'Success']);
            } else {
                return json(['code' => 0,'msg'=> 'Failed!']);

            }

        }

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }

    //删除
    public function del($id, WaAccount $model)
    {

        $params = input("get.");
        $data = $model::find($id);
        $result = $data->delete();
        if ($result) {
            return json(['code' => 200,'msg'=> 'Success']);
        } else {
            return json(['code' => 0,'msg'=> 'Failed!']);

        }
    }



    public function login(WaAccount $model)
    {
        $id = input('get.id');
        $acc = $model::find($id);
        $mobile = $acc->mobile;
        $status = $acc->status;
        $error = "";
        $res = "";
        if($status == -2){
            $url = "http://127.0.0.1:8091/login?uid=" . $mobile;
            $response = \Httpful\Request::get($url)->send();
            if ($response->code == 200) {
                $res = base64_encode($response->body);
                $status == 1;
            } else {
                $error = "Server error: " . $response->code;
            };
        }

        return view('login', ['res' => $res, 'logged_num' => $mobile,'status' => $status, 'error' => $error]);
    }

    public function relogin(WaAccount $model)
    {
        $id = input('get.id');
        $acc = $model::find($id);
        $mobile = $acc->mobile;
        $status = $acc->status;
        $error = "";
        $res = "";
        if($status != -2){
            $url = "http://127.0.0.1:8091/relogin?uid=" . $mobile;
            $response = \Httpful\Request::get($url)->send();
            if ($response->code == 200) {
                $res = $response->body;
                $status == 1;
            } else {
                $error = "Server error: " . $response->code;
            };
        }
        var_dump($res);
    }



    public function send_msg()
    {
        $user = getUser();
        $name = $user->username;
        $uid = input('post.sender_jid');
//        $logged_num = 1;
        $logged = check_health($uid);
        $phone = input('post.remote_jid');
        $content = input('post.content');
        $time = date('H:i', time());
        if ($logged) {
            $res = wa_sendMessage($phone, $content, $uid);
            //$res = 'send successful';
            return json(['code' => 200, 'msg' => $res, 'content' => $content, 'time' => $time, 'name' => $name]);
        } else {
            return json(['code' => 0, 'msg' => ' Whatsapp not login']);
        }
    }


    public function send_direct()
    {
        $uid = input('post.sender_jid');
        $logged = check_health($uid);
        $phone = input('post.phone');
        $content = input('post.content');
        if ($logged) {
          $res =  wa_sendMessage($phone, $content, $uid);
          return  $res;
        }else{
            return "Whatsapp not login!";
        }
    }

    public function logout()
    {
        $uid = input('post.sender_jid');
        $url = "http://127.0.0.1:8091/logout";
        $response = \Httpful\Request::post($url)
            ->sendsType(\Httpful\Mime::FORM)
            ->body(['uid' => $uid])
            ->send();
        return redirect('/index/wa_logs/setting');
    }


}
