<?php
/**
 * Opportunitie控制器
 */

namespace app\index\controller;
use think\facade\View;
use think\Request;
use app\model\Service;
use app\model\ServiceItem;
use app\model\ProductCategory;
use app\Application;
use app\validate\ServiceValidate;

class Services extends Application
{
    //列表
    public function index(Request $request, Service $model)
    {
        // $param = $request->param();

        // $search = input('get.search');

        // $data = $model::whereOr([
        //     ['code', 'like', $search . '%'],
        //     ['name', 'like', $search . '%'],
        // ])->paginate();

        // //关键词，排序等赋值

        // View::assign([
        //     'data' => $data,
        //     'page' => $data->render(),
        //     'total' => $data->total(),
        //     'search'=>$search

        // ]);
        return View::fetch();
    }

    public function lists(Service $model, ProductCategory $category)
    {
        $param = input('get.');
        
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
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
        }
        // var_dump($where);

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();

        }else{
            $items = $model::where($where)->order($sort.' '.$order)->select();
        }
        
        $total = $model::where($where)->count();

        foreach ($items as $key => $value) {
            if($value['category_id']){
				$cate = $category::find($value['category_id']);
				$cate_name = "";
				if($cate['pid'] != 0){
					$parent_cate = $category::find($cate['pid']);
					$cate_name = $parent_cate['name']." -> ".$cate['name'];
				}else{
					$cate_name = $cate['name'];
				}
                $items[$key]['category'] = $cate_name;
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    public function panel(Request $request)
    {
        $param = $request->param();
        $where = [];
        if(isset($param['account_id'])){
            $where['account_id'] = $param['account_id'];
        }
        if(isset($param['contact_id'])){
            $where['contact_id'] = $param['contact_id'];
        }
        $data = Service::where($where)->select();
        View::assign('data',$data);
        return View::fetch();
    }



    //添加
    public function add(Request $request, Service $model, ServiceValidate $validate, ServiceItem $serviceItem)
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
            $param['code'] = Services::getConfigNo('serve','service');
            $result = $model::create($param);

            if (isset($param['item'])) {
                $service_id = $result->id;
                $serviceItem->saveItem($service_id, $param['item']);
            }

            return json(['code' => 200]);
        }


        return view('add');
    }

    //修改
    public function edit($id, Request $request, Service $model, ServiceValidate $validate, ProductCategory $category, ServiceItem $serviceItem)
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
                $serviceItem->saveItem($id, $param['item']);
            }

            return json(['code' => 200]);
        }

        $service_product = $serviceItem->options($id);

        View::assign([
            'data' => $data,
            'service_product' => $service_product
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Service $model, ServiceItem $serviceItem)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $result = $data->delete();

        $serviceItem->deleteItem($id);

        $from_panel = input('from_panel', 0);
        if($result && $from_panel){
            return json(['code' => 200]);
        }
        
        View::assign('page', $data);
        return redirect(url('index'));
    }


    //
    public function services(Service $model)
    {
        return View::fetch('services');
    }
}
