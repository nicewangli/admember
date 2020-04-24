<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;
use app\BaseController;
use app\model\Model;
use app\model\Promotion;
use app\validate\PromotionValidate;
use think\facade\View;
use think\Request;
use app\Application;

class Promotions extends Application
{

    //列表
    public function index()
    {

        $param = input('get.');
        $grid_url = url("lists");
        return View::fetch('index',['grid_url' => $grid_url]);
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'msg_type';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where[] = ['account_id', '=', $param['account_id']];
        }
        if(isset($param['contact_id'])){
            $where[] = ['contact_id', '=', $param['contact_id']];
        }
        if(!empty($param['search'])){
            $where[] = ['msg_type', 'like', '%'.$param['search'].'%'];
        }
        $items = Promotion::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Promotion::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }



    public function export(Request $request, Promotion $model)
    {

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Subject','Content','Group Name','Created At','Delivery Time','Send By' ];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['subject'] = $item->subject;
                $record['content'] = $item->content;
                $record['group_name'] = $item->group_name;
                $record['created_time'] = $item->contact_id;
                $record['delivery_time'] = $item->delivery_time;
                $record['sender'] = $item->sender;
                $body[] = $record;
            }
            return exportData($header, $body, 'Wapromotion-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['subject', 'like', $search . '%'],
            ['sender', 'like', $search . '%'],
        ])->paginate();

        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' =>  $search

        ]);

        return View::fetch();
    }

    //添加
    public function add(Request $request, Promotion $model, PromotionValidate $validate)
    {

        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0, 'msg' => $validate->getError()]);
            }

            $result = $model::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200, 'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('add');
    }


    //修改
    public function edit($id, Request $request, Promotion $model, PromotionValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg'=> 'Success']);
            } else {
                return json(['code' => 0,'msg'=> 'Failed!']);

            }

        }

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Promotion $model)
    {

        $params = input("get.");
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
