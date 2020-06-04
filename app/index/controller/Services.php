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
        return View::fetch();
    }

    public function lists(Service $model, ProductCategory $category)
    {
        $param = input('get.');
        
        $sort = isset($param['sort']) ?  $param['sort'] :  'code';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];

        if ($param['status'] != '') {
            $where[] = ['status', '=', $param['status']];
        }

        if ($param['field'] == 'category') {
            if ($param['parent_category_id']) {
                $where[] = ['parent_category_id', '=', $param['parent_category_id']];
            }
            if ($param['category_id']) {
                $where[] = ['category_id', '=', $param['category_id']];
            }
        } else {
            if ($param['keyword']) {
                $where[] = [$param['field'], 'like', '%'.trim($param['keyword']).'%'];
            }
        }

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::with(['parent_category','category'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();

        }else{
            $items = $model::with(['parent_category','category'])->where($where)->order($sort.' '.$order)->select();
        }

        $total = $model::where($where)->count();

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
            $param['code'] = $this->getConfigNo('serve','service');
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

        $data = $model::with(['parent_category','category'])->find($id);

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
