<?php
/**
 * Product控制器
 */

namespace app\index\controller;

use app\Application;
use think\Request;
use app\model\Combination;
use app\model\CombinationItem;
use app\model\Mapping;
use app\model\ProductCategory;
use think\facade\View;
use app\validate\CombinationValidate;

class Combinations extends Application
{

    //列表
    public function index(Request $request, Combination $model)
    {
        return View::fetch();
    }

    public function lists(Combination $model, ProductCategory $category, Mapping $mapping)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];

        if(isset($param['search'])){
            $where[] = ['name', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['code'])){
                $where[] = ['code', '=', $filter['code']];
            }
            if(isset($filter['name'])){
                $where[] = ['name', 'like', '%'.$filter['name'].'%'];
            }
            if(isset($filter['category_id'])){
                $where[] = ['category_id', '=', $filter['category_id']];
            }
            if(isset($filter['status'])){
                $where[] = ['status', '=', $filter['status']];
            }
            if(isset($filter['category'])){
                $category_id = $category::where('name', $filter['category'])->value('id');
                $where[] = ['category_id', '=', $category_id];
            }
            if(isset($filter['brand_name'])){
                $brand_id = $mapping::where('item_value', $filter['brand_name'])->value('id');
                $where[] = ['brand', '=', $brand_id];
            }
        }
        
        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }else{
            $items = $model::where($where)->order($sort.' '.$order)->select()->toArray();
        }

        $total = $model::where($where)->count();

        foreach ($items as $key => $value) {
            if($value['category_id']){
                $items[$key]['category'] = $category::where('id', $value['category_id'])->value('name');
            }
            if($value['brand']){
                $items[$key]['brand_name'] = $mapping::where('id', $value['brand'])->value('item_value');
            }
            
            if (!empty($ids)) {
                if (in_array($value['id'], $ids)) {
                    $items[$key]['checked'] = true;
                }else{
                    $items[$key]['checked'] = false;
                }
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    //添加
    public function add(Request $request, Combination $model, CombinationValidate $validate, ProductCategory $category, Mapping $mapping, CombinationItem $combinationItem)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();

            $result = $model::create($param);

            if (isset($param['item'])) {
                $combination_id = $result->id;
                $combinationItem->saveItem($combination_id, $param['item']);
            }

            return json(['code' => 200]);
        }
        $products_unit = $mapping::where('type_id', 'products_unit')->select();
        $brand = $mapping::where('type_id', 'brand')->select();

        return view('add', ['products_unit' => $products_unit, 'brand' => $brand]);
    }

    //修改
    public function edit($id, Request $request, Combination $model, CombinationValidate $validate, ProductCategory $category, Mapping $mapping, CombinationItem $combinationItem)
    {

        $data = $model::find($id);
        $category = $category::find($data['category_id']);
        if($category && $category['pid']){
            $data['child_category_id'] = $data['category_id'];
            $data['child_category_name'] = $category['name'];
            $parent_category = $category::find($category['pid']);
            if($parent_category){
                $data['parent_category_name'] = $parent_category['name'];
                $data['parent_category_id'] = $parent_category['id'];
            }
        }else{
            $data['parent_category_name'] = $category['name'];
            $data['parent_category_id'] = $data['category_id'];
        }

        $combination_product = $combinationItem->options($id);

        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();

            $result = $data->save($param);
            
            if (isset($param['item'])) {
                $combinationItem->saveItem($id, $param['item']);
            }

            return json(['code' => 200]);
        }

        $products_unit = $mapping::where('type_id', 'products_unit')->select();
        $brand = $mapping::where('type_id', 'brand')->select();

        View::assign([
            'data' => $data,
            'products_unit' => $products_unit,
            'brand' => $brand, 
            'combination_product' => $combination_product
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Combination $model, CombinationItem $combinationItem)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $result = $data->delete();

        $combinationItem->deleteItem($id);

        $from_panel = input('from_panel', 0);
        if($result && $from_panel){
            return json(['code' => 200]);
        }
        
        View::assign('page', $data);
        return redirect(url('index'));    
    }

    //
    public function combinations(Combination $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids');
        return View::fetch('combinations', ['from_panel' => $from_panel, 'ids' => $ids]);
    }
}
