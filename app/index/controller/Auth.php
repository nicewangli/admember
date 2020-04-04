<?php
namespace app\index\controller;
use app\Application;

use think\facade\Session;
use app\model\User;

class Auth extends Application
{
    public function index()
    {
        $auth = Session::get('auth');
        if ($auth) {
            list($identifier, $token) = str_split($auth,32);
            if (ctype_alnum($identifier) && ctype_alnum($token)) {
                $user = User::where(['identifier'=>$identifier,'token'=>$token,'status'=>1])->find();
                if ($user) {
                    if ($user->team->status == 0) {
                        return $this -> error('User team not found！', url('auth/index'));
                    }
                    if ($token == $user->token && $user->identifier == password($user->uid . md5($user->username . $user->salt))) {
                        return $this -> success('Login...！', url('index/index'));
                    }
                }
            }
        }
        return $this->view->fetch();
    }

    public function login()
    {
        $data = $this->request->post();
        
        #数据验证
        $validate = new \app\validate\Login;
        $result = $validate->check($data);
        if ($result !== true) {
            return $this -> error($validate->getError(), url('auth/index'));
        }

        #密码比对
        $user = User::where(['status'=>1,'username'=>$data['username'],'password'=>password($data['password'])])->find();
        if ($user) {
            if ($user->team->status == 0) {
                return $this -> error('User team not found！', url('auth/index'));
            }

            $token = password(uniqid(rand(), true));
            $salt = random(10);
            $identifier = password($user->uid . md5($user->username . $salt));
            $auth = $identifier.$token;

            $user->identifier = $identifier;

            $user->token = $token;
            $user->salt = $salt;
            $user->save();
            Session::delete('auth');

            if (isset($data['remember'])) {
                Session::set('auth', $auth, 3600*24*365);
            } else {
                Session::set('auth', $auth);
            }
            //TODO
            Session::set('uid', $user->uid);

            addlog('Login success', $user->username);
            return $this -> success('Login success！', url('index/index'));
        } else {
            addlog('username or password incorrect。', $data['username']);
            return $this -> error('Username or password incorrect!', url('auth/index'));
        }
        
    }
    

    public function logout()
    {
        Session::delete('auth');
        return $this->success('Logout！', url('auth/index'));
    }
}
