<?php
/**
 * Mapping控制器
 */

namespace app\index\controller;
use app\Application;
use think\facade\View;
use think\Request;
use app\model\Mapping;
use app\model\Module;

use app\validate\MappingValidate;

class Mappings extends Application
{

    //列表
    public function index(Request $request, Mapping $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['ID','Name','Value','Parent item','order'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['id'] = $item->id;
                $record['name'] = $item->name;
                $record['val'] = $item->val;
                $record['parent'] = $item->parent;
                $record['ordering'] = $item->ordering;
                $body[] = $record;
            }
            return exportData($header, $body, 'Mapping-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['id', 'like', $search . '%'],
            ['name', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search

        ]);
        return View::fetch();
    }

    //添加
    public function add(Request $request, Mapping $model, MappingValidate $validate)
    {
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $model::create($param);
            return $this->redirect(url("index"));

        }
        return view('add');
    }

    //修改
    public function edit($id, Request $request, Mapping $model, MappingValidate $validate)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $data->save($param);

        }

        View::assign([
            'data' => $data,

        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Mapping $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $result = $data->delete();
        View::assign('page', $data);

        $from_panel = input('from_panel', 0);
        if($result && $from_panel){
            return json(['code' => 200]);
        }
        
        return redirect(url('index'));
    }

    public function modify(Request $request, Mapping $model, MappingValidate $validate, Module $module)
    {
        $id = input('id');
        $type_id = input('type_id');
        $data['type_id'] = $type_id;
        if($id){
            $data = $model->alias('m')->leftJoin('module md', 'm.module_id = md.id')->field('m.*, md.name as module_name')->where('m.id', $id)->find();
        }

        if($request->isPost()){
            $id = input('post.id', 0, 'intval');
            $type_id = input('post.type_id', 0);
            $name = input('post.name');
            $val = input('post.val');
            $parent = input('post.parent');
            $ordering = input('post.ordering', 0, 'intval');
            $module_id = input('post.module_id', 0, 'intval');

            $data = [
                'type_id'=> $type_id,
                'name' => $name,
                'val' => $val,
                'parent' => $parent,
                'ordering' => $ordering,
                'module_id' => $module_id,
                'updated_at' => date('Y-m-d H:i:s', time())
            ];

            if ($id==0) {//新增
                $id = $model->insert($data, false, true);
                if ($id) {
                    return json(['code' => 200]);
                }
            } else {//编辑
                $model->where('id', $id)->update($data);
                return json(['code' => 200]);
            }

            return json(['code' => 0]);
        }

        View::assign([
            'data' => $data,
        ]);

        return View::fetch('modify');
    }


    public function panel(Module $module)
    {   
        $category = input('category', 'panel');

        $modules = $module->select();
        View::assign(['modules' => $modules]);
        
        return View::fetch($category);
    }

    public function lists(Mapping $model)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];

        if(isset($param['search'])){
            $where[] = ['val', 'like', '%'.$param['search'].'%'];
        }
        
        if(isset($param['type_id'])){
            $where[] = ['type_id', '=', $param['type_id']];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['id'])){
                $where[] = ['id', '=', $filter['id']];
            }
            if(isset($filter['name'])){
                $where[] = ['name', 'like', '%'.$filter['name'].'%'];
            }
            if(isset($filter['val'])){
                $where[] = ['val', 'like', '%'.$filter['val'].'%'];
            }
            if(isset($filter['parent'])){
                $where[] = ['parent', 'like', '%'.$filter['parent'].'%'];
            }
        }
        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();

        }else{
            $items = $model::where($where)->order($sort.' '.$order)->select();
        }

        $total = $model::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    public function modules(Module $module)
    {

        $modules = $module->option();

        return json(['results' => $modules]);
    }

    public function option(Mapping $model)
    {
        $type_id = input('type_id');

        $list = $model->field('id, val as text')->where('type_id', $type_id)->order('ordering asc')->select();

        return json(['code' => 200, 'results' => $list]);
    }

    public function mappings()
    {
        $from_panel = input('from_panel');
        $type_id = input('type_id');
        return View::fetch('mappings', ['type_id' => $type_id, 'from_panel' => $from_panel]);
    }
}
