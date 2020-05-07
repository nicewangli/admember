<?php
namespace app\index\controller;
use app\Application;
use app\model\Store;
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
        $storeArr = getStoreArr();
    	return View::fetch('basic',['storeArr'=>$storeArr]);
    }
    
    
   #零售报表
    public function retail(){
        $storeArr = getStoreArr();
        return View::fetch('retail',['storeArr'=>$storeArr]);
    }

    #庫存报表
    public function inventory(){
        $storeArr = getStoreArr();
        return View::fetch('inventory',['storeArr'=>$storeArr]);
    }

    #薪金报表
    public function salary(){
        $storeArr = Store::select();
        return view('salary',['storeArr'=>$storeArr]);
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
        $storeArr = getStoreArr();
        return View::fetch('booking',['storeArr'=>$storeArr]);
    }

}
