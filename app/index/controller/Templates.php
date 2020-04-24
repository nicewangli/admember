<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;

use app\model\Template;
use app\validate\TemplateValidate;
use think\facade\View;
use think\Request;
use app\Application;

class Templates extends Application
{

    //列表
    public function index(Request $request,Template $template)
    {
        $param = $request->param();

        if(isset($param['category'])){
            $category = $param['category'];
        }else{
            $category = 'wa';
        }
        $grid_url = url("lists",['category' => $category]);

        View::assign([
            'category' => $category,
        ]);
        return View::fetch('index',['grid_url' => $grid_url]);
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'name';
        $order = $param['order'];
        $where = [];
        if(isset($param['account_id'])){
            $where[] = ['account_id', '=', $param['account_id']];
        }
        if(isset($param['contact_id'])){
            $where[] = ['contact_id', '=', $param['contact_id']];
        }
        if(!empty($param['search'])){
            $where[] = ['name', 'like', '%'.$param['search'].'%'];
        }
        if(isset($param['category'])){
            $category = $param['category'];
        }else{
            $category = 'wa';
        }
        $where[] = ['category', 'like', '%'.$category.'%'];
        $items = Template::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Template::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }


    public function export(Request $request, Template $model)
    {

        $param = $request->param();

        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Category','Name','Content','Ordering' ];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['category'] = $item->category;
                $record['name'] = $item->name;
                $record['content'] = $item->content;
                $record['ordering'] = $item->ordering;
                $body[] = $record;
            }
            return exportData($header, $body, 'Watemplate-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');
        $data = $model::whereOr([
            ['category', 'like', $search . '%'],
            ['ordering', 'like', $search . '%'],
        ])->paginate(5);
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
    public function add(Request $request, Template $model, TemplateValidate $validate)
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
    public function edit($id, Request $request, Template $model, TemplateValidate $validate)
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
    public function del($id, Template $model)
    {

        $params = input("get.");
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        return redirect(url('index'));
    }



}
