<?php
namespace app\index\controller;
use app\Application;
use app\model\Store;
use think\facade\Db;
use think\facade\View;
use think\facade\Request;

class Users extends Application
{
    public function index($act = null, $uid=0)
    {

        //店铺下拉框
        $storeArr = Store::select()->toArray();
        if ($act=='edit') {
            $uid = intval($uid);
            $userinfo = Db::name('users')->where(['uid'=>$uid])->find();
            if (!$userinfo) {
                return $this->error('参数错误，请重试！');
            }
            View::assign('userinfo', $userinfo);

            $group = Db::name('teams')->field('id,title')->where(['status'=>1])->select();
            View::assign('group', $group);
            return View::fetch('add',['storeArr'=>$storeArr]);
        }

        if ($act == 'add') {
            $group = Db::name('teams')->field('id,title')->where(['status'=>1])->select();
            View::assign('group', $group);
            return View::fetch('add',['storeArr'=>$storeArr]);
        }

        if ($act == 'update') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $uid = intval($uid);
            $data = input('post.');
            $data['birthday'] = strtotime($data['birthday']);
            if (!isset($data['status'])) {
                $data['status'] = 0;
            }
            unset($data['store']);
            if (Db::name('users')->where(['uid'=>$uid])->count()==0) {//新增
                if ($data['username']=='') {
                    return $this->error('用户名不能为空！');
                }
                if ($data['password']=='') {
                    return $this->error('用户密码不能为空！');
                }
                if (Db::name('users')->where(['username'=>$data['username']])->count()>0) {
                    return $this->error('用户名已被占用，请重试！');
                }

                $data['password'] = password($data['password']);
                //编号
                $data['member_no'] = Users::getConfigNo('employee_data','users');
                $r = Db::name('users')->insert($data);
                if ($r) {
                    addlog('新增用户，用户名：'.$data['username'], $this->user['username']);
                    return $this->success('恭喜，新增用户成功！', url('users/index'));
                }
            } else {//编辑
                if ($data['password']=='') {
                    unset($data['password']);
                } else {
                    $data['password'] = password($data['password']);
                }
                $r = Db::name('users')->where(['uid'=>$uid])->update($data);
                if ($r) {
                    addlog('修改用户信息，UID：'.$uid, $this->user['username']);
                    return $this->success('恭喜，修改用户成功！', url('users/index'));
                }
            }
            return $this->error('参数错误，请重试！');
        }

        if ($act == 'del') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $uids = input('post.');
            if (empty($uids)) {
                return $this->error('请选择要删除的用户！');
            }
            $uids = $uids['uids'];
            $r = Db::name('users')->delete($uids);
            if ($r) {
                addlog('删除用户，UID：'.implode(',', $uids), $this->user['username']);
                return $this->error('用户删除成功！', url('admin/user/index'));
            } else {
                return $this->error('请选择要删除的用户！');
            }
        }

        $list = Db::name('users')->alias('u')->join('teams g', 'g.id=u.ugid', 'left')->field('u.uid,u.first_name,u.last_name,u.sex,u.birthday,u.identity_card,u.phone_mobile,u.region,u.email,g.title')->order('u.uid desc')->paginate(10);
        View::assign('list', $list);
        return View::fetch();
    }

    public function skin($skin=null)
    {
        if ($skin=='skin-1') {
            $skin = 'skin-1';
        } elseif ($skin=='skin-2') {
            $skin = 'skin-2';
        } elseif ($skin=='skin-3') {
            $skin = 'skin-3 no-skin';
        } else {
            $skin = 'no-skin';
        }
        Db::name('users')->where(['uid'=>$this->user['uid']])->update(['skin'=>$skin]);
        die('1');
    }

    public function users()
    {
        $from_panel = input('from_panel');
        $ids = input('ids');
        return View::fetch('users', ['from_panel' => $from_panel, 'ids' => $ids]);
    }

    public function lists()
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'uid';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];

        if(isset($param['search'])){
            $where[] = ['username', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

            if(isset($filter['username'])){
                $where[] = ['username', 'like', '%'.$filter['username'].'%'];
            }

        }

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = Db::name('users')->field('uid, username')->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }else{
            $items = Db::name('users')->field('uid, username')->where($where)->order($sort.' '.$order)->select()->toArray();
        }

        $total = Db::name('users')->where($where)->count();

        foreach ($items as $key => $value) {
            if (!empty($ids)) {
                if (in_array($value['uid'], $ids)) {
                    $items[$key]['checked'] = true;
                }else{
                    $items[$key]['checked'] = false;
                }
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    public function option()
    {
        $result = Db::name('users')->field('uid as id, username as text')->select()->toArray();

        return json(['code' => 200, 'results' => $result]);
    }
}
