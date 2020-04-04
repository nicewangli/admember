<?php
/**
 * Contact控制器
 */

namespace app\index\controller;
use think\facade\View;
use app\Application;
use think\Request;
use app\model\Contact;


class Daily extends Application
{

    //列表
    public function index(Request $request, Contact $model)
    {
        session('activity_type',"0");
        $param = $request->param();
        return View::fetch();
    }


}
