<?php
/**
 * Product categories控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use app\model\ProductCategory;
use think\Request;

use app\validate\ProductCategoryValidate;

class ProductCategories extends Application
{

    //列表
    public function index(Request $request, ProductCategory $model)
    {

        return View::fetch();
    }

    public function lists(ProductCategory $model)
    {
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = $param['order'];
        $where = [];

        if(isset($param['search'])){
            $where[] = ['name', 'like', '%'.$param['search'].'%'];
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
            if(isset($filter['status'])){
                $where[] = ['id', '=', $filter['status']];
            }
            if(isset($filter['parent'])){
                $pid = $model::where('name', $filter['parent'])->value('id');
                $where[] = ['pid|id', '=', $pid];
            }
        }
        // var_dump($where);

        $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = $model::where($where)->count();

        foreach ($items as $key => $value) {
            if($value['pid']){
                $items[$key]['parent'] = $model::where('id', $value['pid'])->value('name');
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    //添加
    public function add(Request $request, ProductCategory $model, ProductCategoryValidate $validate)
    {
        $parent_category = $model::where('pid', 0)->select();
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $model::create($param);
            return json(['code' => 200]);

        }
        return view('add', ['parent_category' => $parent_category,'act' => 'add']);
    }

    //修改
    public function edit($id, Request $request, ProductCategory $model, ProductCategoryValidate $validate)
    {
        $parent_category = $model::where('pid', 0)->select();

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $data->save($param);
            return json(['code' => 200]);
        }

        View::assign([
            'data' => $data,

        ]);
        return View::fetch('add', ['parent_category' => $parent_category,'act' => 'edit']);

    }

    //删除
    public function del($id, ProductCategory $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $result = $data->delete();

        $from_panel = input('from_panel', 0);
        if($result && $from_panel){
            return json(['code' => 200]);
        }

        View::assign('page', $data);
        return redirect(url('index'));
    }

    public function option(ProductCategory $model){
        $id = input('id');
        $where = ['pid' => $id];
        $list = $model->option($where);
        return json(['code' => 200, 'results' => $list]);
    }

    public function options(ProductCategory $model)
    {
        $list = $model->where('pid', 0)->column('name', 'id');
        return json($list);
    }
}
