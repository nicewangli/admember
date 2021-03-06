<?php
namespace app\index\controller;
use app\Application;
use think\facade\Db;
use think\facade\View;
use think\facade\Request;

class Teams extends Application
{
    public function index($act=null, $id=null)
    {
        if ($act=='add') {
            $auth = Db::name('permissions')->field('id,pid,title')->order('o asc')->select();

            $group = Db::name('teams')->where(['id'=>$id])->find();
            $group['auth'] = explode(',', $group['auth']);
            View::assign('group', $group);
            $auth = $this->getPermission($auth);
            View::assign('auth', $auth);
            View::assign('teams', ['auth'=>[]]);
            return View::fetch('form');
        }

        if ($act=='edit') {
            $id = intval($id);
            $group = Db::name('teams')->where(['id'=>$id])->find();
            if (!$group) {
                return $this->error('参数错误！');
            }
            $group['auth'] = explode(',', $group['auth']);
            View::assign('group', $group);

            $auth = Db::name('permissions')->field('id,pid,title')->order('o asc')->select();
            $auth = $this->getPermission($auth);
            View::assign('auth', $auth);
            return View::fetch('form');
        }

        if ($act=='update') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $data = input('post.');
            if ($data['title']=='') {
                return $this->error('用户组名不能为空！');
            }
            if (isset($data['status']) and $data['status']==1) {
                $data['status'] = 1;
            } else {
                $data['status'] = 0;
            }
            if (isset($data['auth'])) {
                $data['auth'] = implode(',', $data['auth']);
            } else {
                $data['auth'] = '';
            }
            if ($id) {
                $r = Db::name('teams')->where(['id'=>$id])->update($data);
                if ($r) {
                    addlog('修改用户组，ID：'.$id, $this->user['username']);
                    return $this->success('恭喜，用户组修改成功！', url('index/teams/index'));
                } else {
                    return $this->error('本次修改无数据变化！');
                }
            } else {
                $r = Db::name('teams')->insert($data);
                if ($r) {
                    addlog('新增用户组，名称：'.$data['title'], $this->user['username']);
                    return $this->success('恭喜，新增用户组成功！', url('index/teams/index'));
                } else {
                    return $this->error('系统错误，请稍后重试！');
                }
            }
        }

        if ($act=='del') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $ids = input('post.');

            if (!empty($ids)) {
                $r = Db::name('teams')->delete($ids['ids']);
                if ($r) {
                    addlog('删除用户组，ID：'.implode(',', $ids['ids']), $this->user['username']);
                    return $this->success('恭喜，用户组删除成功！', url('index/teams/index'));
                }
            }

            return $this->error('请选择需要删除的用户组！');
        }

        $list = Db::name('teams')->field('id,title,status,number')->select();
        View::assign('list', $list);
        return View::fetch();
    }
}
