<?php

namespace app\index\controller;

use app\Application;
use app\model\Store;
use app\model\UserDuty;
use think\facade\Db;
use think\facade\View;
use think\facade\Request;
use app\model\User;

class Users extends Application
{
    public function index($act = null, $uid = 0)
    {

        //店铺下拉框
        $storeArr = Store::select()->toArray();
        //職務下拉框
        $dutyArr = getDuty();
        $model = new User();
        if ($act == 'edit') {
            $uid = intval($uid);
            $userinfo = Db::name('users')->where(['uid' => $uid])->find();
            if (!$userinfo) {
                return $this->error('参数错误，请重试！');
            }
            //写一个user_duty

            $dutyInfo = Db::name('user_duty')->where(['user_id' => $uid])->order('entry_date', 'desc')->select()->toArray();

            View::assign('userinfo', $userinfo);

            $group = Db::name('teams')->field('id,title')->where(['status' => 1])->select();
            View::assign('group', $group);
            return View::fetch('add', ['storeArr' => $storeArr, 'dutyArr' => $dutyArr, 'dutyInfo' => $dutyInfo]);
        }

        if ($act == 'add') {
            $group = Db::name('teams')->field('id,title')->where(['status' => 1])->select();
            View::assign('group', $group);
            return View::fetch('add', ['storeArr' => $storeArr, 'dutyArr' => $dutyArr]);
        }

        if ($act == 'update') {
            if (!Request::isPost()) {
                return $this->error('参数错误，请重试！');
            }
            $userDuty = new UserDuty();
            $uid = intval($uid);
            $data = input('post.');
            $data['status'] = 1;
            $items = $data['item'];
            $updateDuty = array_pop($items);
            $data['category'] = $updateDuty['duty'];
            //判断是否设置离职
            if ($data['category'] == 'RESIGNED') {
                $data['resigned_date'] = $updateDuty['entry_date'];
                $data['resigned_status'] = 1;
            } else {
                $data['date_of_accession'] = $updateDuty['entry_date'];
            }

            if (!isset($data['status'])) {
                $data['status'] = 0;
            }
            unset($data['store']);
            if (Db::name('users')->where(['uid' => $uid])->count() == 0) {//新增
                if ($data['username'] == '') {
                    return $this->error('用户名不能为空！');
                }
                if (Db::name('users')->where(['username' => $data['username']])->count() > 0) {
                    return $this->error('用户名已被占用，请重试！');
                }

                $data['password'] = password($data['password']);
                //编号
                $data['code'] = $this->getConfigNo('employee_data', 'users');
//                unset($data['item']);
//                $r = Db::name('users')->insert($data,true);
                $r = $model::create($data);
                //TODO: 员工多职位 array_pop
                if ($r) {
                    addlog('新增用户，用户名：' . $data['username'], $this->user['username']);
                    $userDuty->saveDuty($r->uid, $data['item']);
                    return $this->success('新增用戶成功！', url('users/index'));
                }
            } else {//编辑
                if ($data['password'] == '') {
                    unset($data['password']);
                } else {
                    $data['password'] = password($data['password']);
                }
                $userDuty->saveDuty($uid, $data['item']);
                unset($data['item']);
                //TODO： 修改user表
                $r = Db::name('users')->where(['uid' => $uid])->update($data);
                if ($r) {
                    addlog('修改用户信息，UID：' . $uid, $this->user['username']);
                    return $this->success('修改用戶成功！', url('users/index', ['act' => 'edit', 'uid' => $uid]));
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
                return $this->error('請選擇要刪除的用戶！');
            }
            $uids = $uids['uids'];
            $r = Db::name('users')->delete($uids);
            if ($r) {
                addlog('删除用户，UID：' . implode(',', $uids), $this->user['user_name']);
                return $this->error('用戶刪除成功！', url('admin/user/index'));
            } else {
                return $this->error('請選擇要刪除的用戶！');
            }
        }

        $search = input('get.search');
        $where = [];
        if (isset($search)) {
            $where = [
                ['first_name', 'like', '%' . $search . '%'],
                ['for_short', 'like', '%' . $search . '%'],
                ['category', 'like', '%' . $search . '%'],
            ];
        }

        $list = Db::name('users')->alias('u')->join('teams g', 'g.id=u.ugid', 'left')->whereOr($where)->field('u.uid,u.ugid,u.code as member_no,u.first_name,u.for_short,u.last_name,u.category,u.sex,u.birthday,u.identity_card,u.phone_mobile,u.region,u.email,u.grade,g.title')->order('u.code')->paginate(10);
        $list_copy = $list->toArray();

        foreach ($list_copy['data'] as $key => $value) {
            if (array_key_exists($value['category'], $dutyArr)) {
                $list_copy['data'][$key]['duty'] = $dutyArr[$value['category']];
            } else {
                $list_copy['data'][$key]['duty'] = '无';
            }

        }
//        $list = User::order('for_short asc')->paginate(10);

        View::assign([
            'list' => $list,
            'list_copy' => $list_copy['data'],
            'search' => $search,
        ]);
        return View::fetch();
    }

    public function skin($skin = null)
    {
        if ($skin == 'skin-1') {
            $skin = 'skin-1';
        } elseif ($skin == 'skin-2') {
            $skin = 'skin-2';
        } elseif ($skin == 'skin-3') {
            $skin = 'skin-3 no-skin';
        } else {
            $skin = 'no-skin';
        }
        Db::name('users')->where(['uid' => $this->user['uid']])->update(['skin' => $skin]);
        die('1');
    }

    public function users()
    {
        $from_panel = input('from_panel');
        $consultantId = input('consultantId', '');
        $beauticianId = input('beauticianId', '');
        $id = input('id', '');
        return View::fetch('users', ['from_panel' => $from_panel, 'consultantId' => $consultantId, 'beauticianId' => $beauticianId, 'id' => $id]);
    }

    public function lists(User $model)
    {
        $dutyArr = getDuty();
        $param = input('get.');
        $sort = isset($param['sort']) ? $param['sort'] : 'for_short';
        $order = isset($param['order']) ? $param['order'] : 'asc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];

        if (isset($param['search'])) {
            $where[] = ['u.code', 'like', '%' . $param['search'] . '%'];
        }

        if (isset($param['filter'])) {
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

//            if(isset($filter['username'])){
//                $where[] = ['u.username', 'like', '%'.$filter['username'].'%'];
//            }
            $query_fields = ['code', 'for_short', 'region', 'identity_card', 'birthday', 'sex', 'duty', 'title', 'first_name', 'last_name', 'phone_mobile', 'email'];
            foreach ($query_fields as $field) {
                if (isset($filter[$field])) {
                    if ($field == 'duty') {
                        $category = array_search($filter[$field], $dutyArr);
                        $where[] = ['u.category', 'like', '%' . $category . '%'];
                    } else {
                        $where[] = ['u.' . $field, 'like', '%' . $filter[$field] . '%'];
                    }

                }
            }

        }

        if (isset($param['category'])) {
            $where[] = ['u.category', '=', $param['category']];
        }

        $total = $model->alias('u')->where($where)->count();

        $tableName = '';
        $fieldName = '';
        //TODO:
        if (isset($param['id'])) {
            if ($param['from_panel'] == 'invoices') {
                $tableName = 'invoice_seller';
                $fieldName = 'invoice_id';
            } else if ($param['from_panel'] == 'package_stagings') {
                $tableName = 'package_staging_seller';
                $fieldName = 'package_staging_id';
            }
        }

        $items = $model->alias('u')->field('u.first_name,u.sex,u.code,u.birthday,u.category,u.identity_card,u.phone_mobile,u.uid, u.for_short, "" as commission_rate')->where($where);

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items->limit($offset, $limit);
        }
        $list = $items->order($sort . ' ' . $order)->select()->toArray();


        foreach ($list as $key => $value) {
            if ($tableName) {
                $list[$key]['commission_rate'] = Db::name($tableName)->where([$fieldName => $param['id'], 'seller_id' => $value['uid'], 'seller_type' => $param['type']])->value('commission_rate');
            }
            if (array_key_exists($value['category'], $dutyArr)) {
                $list[$key]['duty'] = $dutyArr[$value['category']];
            } else {
                $list[$key]['duty'] = '无';
            }
            $list[$key]['commission_rate'] = $list[$key]['commission_rate'] ? $list[$key]['commission_rate'] : '';

            if (!empty($ids)) {
                if (in_array($value['uid'], $ids)) {
                    $list[$key]['checked'] = true;
                } else {
                    $list[$key]['checked'] = false;
                }
            }
        }

        $data = [
            'rows' => $list,
            'total' => $total,
        ];
        return json($data);
    }

    public function option()
    {
        $result = Db::name('users')->field('uid as id, for_short as text')->where('category', 'COSMETOLOGIST')->order('for_short asc')->select()->toArray();

        return json(['code' => 200, 'results' => $result]);
    }
}
