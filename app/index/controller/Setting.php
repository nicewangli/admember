<?php
namespace app\index\controller;
use app\Application;
use think\facade\Db;
use think\facade\View;
use think\facade\Config;
use think\facade\Request;

class Setting extends Application
{
    public function index($act=null)
    {
//        Setting::getConfigNo();
        if ($act == 'update') {
            if (!Request::isPost()) {
                return $this->error('update failed！');
            }
            $data = input('post.');
            if (!isset($data['custom'])) {
                $data['custom'] = [];
            }
            $config_file='config/setting.php';
            if (!is_writable($config_file)) {
                return $this->error('Please make sure the setting.php is writeable');
            }

            $result = file_put_contents($config_file, "<?php\r\nreturn " . var_export($data, true) . ";");
            if ($result) {
                addlog('update sytem config。', $this->user['username']);
                return $this->success('update success！', url('index'));
            } else {
                return $this->error('update failed!');
            }
        }
        return View::fetch('form');
    }



}
