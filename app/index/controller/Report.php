<?php
namespace app\index\controller;
use app\Application;
use think\facade\Db;
use think\facade\View;
use think\facade\Config;
use think\facade\Request;

class Report extends Application
{
    public function index()
    {
        return View::fetch('form');
    }
    
    #销售报表
    public function sales(){
    	return view();
    }
    
    #基本报表
    public function basic(){
    	return view();
    }
    
    
   #零售报表
    public function retail(){
        return view();
    }

    #庫存报表
    public function inventory(){
        return view();
    }

    #薪金报表
    public function salary(){
        return view();
    }

    #零售报表
    public function analyze(){
        return view();
    }

    #會計报表
    public function accounting(){
        return view();
    }

    #預約报表
    public function booking(){
        return view();
    }

}
