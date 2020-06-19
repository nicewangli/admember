<?php
/**
 * Product控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Warehouse;
use app\model\WarehouseProduct;
use think\Request;
use app\model\Product;
use app\model\Mapping;
use app\model\ProductCategory;
use think\facade\View;
use app\validate\ProductValidate;

class Products extends Application
{

    //列表
    public function index(Request $request, Product $model)
    {
        return View::fetch();
    }

    public function lists(Product $model, ProductCategory $category, Mapping $mapping)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];

        if (isset($param['status']) && $param['status'] != '') {
            $where[] = ['status', '=', $param['status']];
        }

        if (isset($param['field'])) {
            if ($param['field'] == 'category') {
                if ($param['parent_category_id']) {
                    $where[] = ['parent_category_id', '=', $param['parent_category_id']];
                }
                if ($param['category_id']) {
                    $where[] = ['category_id', '=', $param['category_id']];
                }
            } else {
                if ($param['keyword']) {
                    $where[] = [$param['field'], 'like', '%' . trim($param['keyword']) . '%'];
                }
            }
        }

        if(isset($param['filter'])) {
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if (isset($filter['category'])) {
                $where[] = ['parent_category_id', '=', $filter['category']];
            }
            if (isset($filter['code'])) {
                $where[] = ['code', 'like', '%' . trim($filter['code']) . '%'];
            }
            if (isset($filter['name'])) {
                $where[] = ['name', 'like', '%' . trim($filter['name']) . '%'];
            }
            if (isset($filter['status'])) {
                $where[] = ['status', '=', $filter['status']];
            }
        }
        
        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::with(['parent_category','category', 'brand'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }else{
            $items = $model::with(['parent_category','category', 'brand'])->where($where)->order($sort.' '.$order)->select()->toArray();
        }
        $total = $model::where($where)->count();


        if (!empty($ids)) {
            foreach ($items as $key => $value) {
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
    public function add(Request $request, Product $model, ProductValidate $validate, ProductCategory $category, Mapping $mapping)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();

            //编号
            if(!isset($param['code'])) {
                $param['code'] = $this->getConfigNo('product','product');
            }
            $result = $model::create($param);
            return json(['code' => 200]);
        }
        $products_unit = $mapping::where('type_id', 'products_unit')->select();
        $brand = $mapping::where('type_id', 'brand')->select();
        $code = $this->getConfigNo('product','product');
        return view('add', ['products_unit' => $products_unit, 'brand' => $brand,'code' => $code]);
    }

    //修改
    public function edit($id, Request $request, Product $model, ProductValidate $validate, ProductCategory $category, Mapping $mapping)
    {

        $data = $model::with(['parent_category','category', 'brand'])->find($id);

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();

            $result = $data->save($param);
            return json(['code' => 200]);
        }

        $products_unit = $mapping::where('type_id', 'products_unit')->select();
        $brand = $mapping::where('type_id', 'brand')->select();

        View::assign([
            'data' => $data,
            'products_unit' => $products_unit,
            'brand' => $brand, 
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Product $model)
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


    //
    public function products(Product $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids');
        return View::fetch('products', ['from_panel' => $from_panel, 'ids' => $ids]);
    }

    //查看相應仓库的库存量
    public function get_quantity(WarehouseProduct $model,Product $product,Warehouse $warehouse)
    {
        //产品id
        $product_id = input('product_id');
        $item = $model->alias('wp')->leftJoin('product p','p.id = wp.product_id')->leftJoin('warehouse w','w.id = wp.warehouse_id')->field('wp.quantity,p.name as product_name,w.name as w_name')->where('wp.product_id','=',$product_id)->select()->toArray();
        $data = ['rows'=>$item];
        return json($data);
    }

    //产品库存显示页面
    public function warehouse_product_quantity()
    {
        $product_id = input('id');
        View::assign([
            'product_id' => $product_id,
        ]);
        return View::fetch();
    }
}
