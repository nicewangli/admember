<?php
/**
 * Room控制器
 */

namespace app\index\controller;

use think\facade\View;
use think\Request;
use app\model\Room;
use app\Application;

use app\validate\RoomValidate;

class Rooms extends Application
{

    //列表
    public function index()
    {
        $store_id = input('get.store_id');
        View::assign([
            'grid_url' => url('lists',['store_id' => $store_id]),
        ]);
        return View::fetch();
    }

    //列表
    public function panel()
    {
        $store_id = input('get.store_id');
        View::assign([
            'grid_url' => url('lists',['store_id' => $store_id]),
            'store_id' => $store_id
        ]);
        return View::fetch();
    }

    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'name';
        $order = $param['order'];
        $where = [];
        $where[] = ['store_id', '=', $param['store_id']];
        if(!empty($param['search'])){
            $where[] = ['name', 'like', '%'.$param['search'].'%'];
        }
        $items = Room::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Room::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }



    //添加
    public function add(Request $request, Room $room,RoomValidate $validate)
    {
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

            $result = $room::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item['store_id'] = input('get.store_id');
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');

    }

    //修改
    public function edit($id, Request $request, Room $model, RoomValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }

        }

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }

    //下载
     public function to_download($id,Room $Room)
     {
        $item =$Room->where('id',$id)->find();
        return download($item->save_path,$item->file_name);
     }




    //删除
    public function del($id, Room $model)
    {
        $data = $model::find($id);
        $res = $data->delete();
        if ($res) {
            return json(['code' => 200,'msg' => 'Delete success.']);
        } else {
            return json(['code' => 0,'msg' => 'Delete fail']);
        }
    }


}
