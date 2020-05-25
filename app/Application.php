<?php
namespace app;

use think\facade\Db;
use think\facade\Session;
use think\facade\View;
use app\model\User;
use app\model\Permission;

class Application extends BaseController
{
    protected $user = false;
    protected $url;
    protected $ctrl;
    protected $act;

    public $sysConfig;

    public function initialize()
    {
        #权限验证
        $this->auth();

        #获取配置
        $this->sysConfig = $this->config->get('setting');
        $this->view->assign('sysConfig', $this->sysConfig);
        
        #菜单
        if ($this->user) {
            $permissions = Permission::field('id,pid,title,url,icon,tips')->where("status=1 and id in({$this->user->team->auth})")->order('o', 'asc')->select();
            $permission = [];
            foreach ($permissions as $key=>$val) {
                $permission[$key]['id'] = $val->id;
                $permission[$key]['pid'] = $val->pid;
                $permission[$key]['title'] = $val->title;
                $permission[$key]['url'] = $val->url;
                $permission[$key]['icon'] = $val->icon;
                $permission[$key]['tips'] = $val->tips;
            }
            $permission = $this->getPermission($permission);
            $current_permission = Permission::name('permission')->field('id,pid,title,url,icon,tips,status')->where(['ctrl'=>$this->ctrl,'act' => $this->act] )->find();

            
            View::assign('current_permission', $current_permission);
            View::assign('current_permission_father', $current_permission?$current_permission->father:'');
            View::assign('permission', $permission);
            View::assign('user', $this->user);
        }
    }
    
    protected function auth()
    {

        //无需登录页面
        $noNeedLogin = [
            'auth/index','auth/login','auth/verify',
            'auth/logout',
            'profile/index',
        ];

        //登录后无需验证的页面
        $no_need_to_check = [
            'Upload/uploadpic',
            'Upload/uploadpics',
            'Users/skin',
			'WaLogs/setting',
            'WaLogs/send_msg',
			'WaLogs/send_direct',
			'WaLogs/logout',
        ];


        $no_need_to_check_action = [
            'get_booking_item',
            'all_info',
            'wa_info',
            'refund_packages',
            'old_package_staging',
            'warehouse_product_quantity',
            'get_package',
            'list',
            'lists',
            'panel',
            'qsearch',
            'typefilter',
            'userfilter',
            'calendar',
            'index',
            'add',
            'edit',
            'del',
            'modify',
            'option',
            'products',
            'services',
            'modules',
            'service_packages',
            'combinations',
            'users',
            'mappings',
            'find_member',
            'del_item',
            'find_invoice',
            'services',
            'service_lists',
            'transaction',
            'treatment',
            'services',
            'stored_value',
            'reward',
            'get_package',

            'get_quantity',
            'update',
            'transaction_list',
            'treatment_list',
            'expiration_date',
            'service_list',
            'beautician_list',
            'stored_value_list',
            'reward',
            'beautician',
            'service_to_package',
            'import_data',
            'booking_to_invoice',
            'service_packages_list',
            'del_transfer'

        ];


        $status = false;
        $this->url = strtolower($this->request->controller().'/'.$this->request->action());
        $this->ctrl = $this->request->controller();
        $this->act = $this->request->action();
        //放过无需登录页面
        if (in_array($this->url, $noNeedLogin)) {
            return true;
        }

        //登录判断
        $auth = Session::get('auth');
        if (!$auth) {
            return $this -> redirect(url('auth/index'));
        }

        list($identifier, $token) = str_split($auth, 32);
        if (ctype_alnum($identifier) && ctype_alnum($token)) {
            $user = User::where(['identifier'=>$identifier,'token'=>$token,'status'=>1])->find();
            if ($user) {
                if ($token == $user->token && $user->identifier == password($user->uid . md5($user->username . $user->salt))) {
//                    $status = false;
                }else{
                    return $this->redirect("/index/auth/index")->with('toastr', 'Login failed!');
                }
            }else{
//                return $this->redirect("/auth/index");
                return $this->redirect('/index/auth/index')->with('toastr', 'Login failed!');
            }
            $this->user = $user;
        }

        if (in_array($this->url, $no_need_to_check) or in_array(strtolower($this->request->action()), $no_need_to_check_action)) {
            return true;
        }


        //验证页面权限
        $current_url_id = Permission::where(['ctrl'=>$this->ctrl,'act' => $this->act])->find();
        if ($current_url_id && in_array($current_url_id->id, explode(',',$this->user->team->auth))) {
            return true;
        } else {
            return $this -> error('Permission deny！');
        }
    }
    
    protected function getPermission($items, $id='id', $pid='pid', $son = 'children')
    {
        $tree = array();
        $tmpMap = array();

        foreach ($items as $item) {
            $tmpMap[$item[$id]] = $item;
        }

        foreach ($items as $item) {
            if (isset($tmpMap[$item[$pid]])) {
                $tmpMap[$item[$pid]][$son][] = &$tmpMap[$item[$id]];
            } else {
                $tree[] = &$tmpMap[$item[$id]];
            }
        }
        return $tree;
    }
	
	
	//登录提示
    protected function flash_msg($value,$name='success')
    {
        Session::flash('flash_'.$name, $value);
    }

	

    //编号 生成
    protected function getConfigNo($type,$dbName)
    {
        $count = Db::table($dbName)->select()->count();
        $no = (string)($count+1);
        //编号拼凑
        for ($i = strlen($no); $i < strlen($this->sysConfig[$type . '_code']); ++$i) {
            $no = '0'.$no;
        }
        $no = $this->sysConfig[$type].$no;
        return $no;
    }

}
