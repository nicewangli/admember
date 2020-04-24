<?php
/**
 * District控制器
 */

namespace app\index\controller;
use app\Application;
use think\facade\View;
use think\Request;
use app\model\District;

use app\validate\DistrictValidate;

class Districts extends Application
{

    //列表
    public function index(Request $request, District $model)
    {
        $param = $request->param();
        if(isset($param['area'])){
            $area = $param['area'];
        }else{
            $area = '香港';
        }

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
            return exportData($header, $body, 'District-' . date('Y-m-d-H-i-s'));
        }


        $data = $model::where([
            'area' => $area
        ])->select();


        //关键词，排序等赋值
        View::assign([
            'data' => $data,
            'area' => $area,

        ]);
        return View::fetch();
    }

    //添加
    public function add(Request $request, District $model, DistrictValidate $validate)
    {
        $data = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            $result = $model::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $data['area'] = input('get.area');
        }

        View::assign([
            'data' => $data,
            'act' => url('add'),

        ]);
        return View::fetch('form');
    }




    //修改
    public function edit($id, Request $request, District $model, DistrictValidate $validate)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

            $result = $data->save($param);
            if ($result) {
                return json(['code' => 200,'msg' => 'Update success.']);
            } else {
                return json(['code' => 0,'msg' => 'Update fail']);
            }

        }

        View::assign([
            'data' => $data,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }

    //删除
    public function del($id, District $model)
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




    public function modify(Request $request, District $model, DistrictValidate $validate)
    {
        $id = input('id');
        $id = input('id');
        $data['id'] = $id;
        if($id){
            $data = $model::find($id);
        }

        if($request->isPost()){
            $id = input('post.id', 0, 'intval');
            $id = input('post.id', 0);
            $name = input('post.name');
            $val = input('post.val');
            $parent = input('post.parent');
            $ordering = input('post.ordering', 0, 'intval');

            $data = [
                'id'=> $id,
                'name' => $name,
                'val' => $val,
                'parent' => $parent,
                'ordering' => $ordering,
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


    public function panel()
    {
        $category = input('category', 'panel');
        return View::fetch($category);
    }

    public function lists(District $model)
    {
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = $param['order'];
        $where = [];

        if(isset($param['search'])){
            $where[] = ['val', 'like', '%'.$param['search'].'%'];
        }
        
        if(isset($param['id'])){
            $where[] = ['id', '=', $param['id']];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['id'])){
                $where[] = ['id', '=', $filter['id']];
            }
            if(isset($filter['name'])){
                $where[] = ['name', 'like', '%'.$filter['name'].'%'];
            }

        }

        $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = $model::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }
}
