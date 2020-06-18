<?php
/**
 * Product控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Member;
use app\model\PackageStaging;
use app\model\PackageStagingItem;
use app\model\Service;
use think\Request;
use app\model\Product;
use app\model\Mapping;
use app\model\ServicePackage;
use app\model\ServicePackageItem;
use app\model\ProductCategory;
use app\model\Invoice;
use app\model\InvoiceItem;
use think\facade\View;
use app\validate\ServicePackageValidate;

class ServicePackages extends Application
{

    //列表
    public function index(Request $request, ServicePackage $model)
    {
        return View::fetch();
    }

    public function lists(ServicePackage $model, ProductCategory $category)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'code';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $where = [];

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

            $items = $model::with(['parent_category','category'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }else{
            $items = $model::with(['parent_category','category'])->where($where)->order($sort.' '.$order)->select()->toArray();
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
    public function add(Request $request, ServicePackage $model, ServicePackageValidate $validate, Mapping $mapping, ServicePackageItem $packageItem)
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
                $param['code'] = $this->getConfigNo('service_packages','service_package');
            }
            $result = $model::create($param);

            if (isset($param['item'])) {
                $service_package_id = $result->id;
                $packageItem->saveItem($service_package_id, $param['item']);
            }

            return json(['code' => 200]);
        }
        $code = $this->getConfigNo('service_packages','service_package');
        $package_unit = $mapping::where('type_id', 'package_unit')->select();
        return view('add', ['package_unit' => $package_unit,'code'=>$code]);
    }

    //修改
    public function edit($id, Request $request, ServicePackage $model, ServicePackageValidate $validate, Mapping $mapping, ProductCategory $category, ServicePackageItem $packageItem)
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
                $packageItem->saveItem($id, $param['item']);
            }

            if ($result){
                return json(['code' => 200]);
            }

        }
        $package_unit = $mapping::where('type_id', 'package_unit')->select();

        $package_service = $packageItem->options($id);

        View::assign([
            'data' => $data,
            'package_unit' => $package_unit,
            'package_service' => $package_service
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, ServicePackage $model, ServicePackageItem $packageItem)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $result = $data->delete();

        $packageItem->deleteItem($id);

        $from_panel = input('from_panel', 0);
        if($result && $from_panel){
            return json(['code' => 200]);
        }
        
        View::assign('page', $data);
        return redirect(url('index'));    
    }

    //
    public function service_packages(ServicePackage $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids', []);
        return View::fetch('service_packages', ['from_panel' => $from_panel, 'ids' => $ids]);
    }

    //
    public function services(ServicePackage $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids', []);
        $member_id = input('member_id', 0);
        return View::fetch('services', ['from_panel' => $from_panel, 'ids' => $ids, 'member_id' => $member_id]);
    }


    public function service_lists(ServicePackage $model, ServicePackageItem $packageItem, InvoiceItem $invoiceItem, PackageStagingItem $packageStagingItem)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';

        $member_id = isset($param['member_id']) ? $param['member_id'] : 0;

        $service_package_id = isset($param['service_package_id']) ? $param['service_package_id'] : 0;
        $parent_id = isset($param['parent_id']) ? $param['parent_id'] : 0;
        $type = isset($param['type']) ? $param['type'] : 1;
        $service_type = isset($param['service_type']) ? $param['service_type'] : 1;

        $where = [];
        $whereOr = [];
        $stagingWhere = [];

        if(isset($param['search'])){
            $where[] = ['sp.name', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['code'])){
                $where[] = ['sp.code', '=', $filter['code']];
            }
            if(isset($filter['name'])){
                $where[] = ['sp.name', 'like', '%'.$filter['name'].'%'];
            }
        }
        $stagingWhere = $where;
        $stagingWhere[] = ['ps.is_first', '=', 1];
        $stagingWhere[] = ['psi.used_up', '=', 0];

        $where[] = ['it.service_type', '=', 1];
        $where[] = ['it.used_up', '=', 0];

        //        if (isset($param['limit'])) {
//            $limit = $param['limit'];
//            $offset = $param['offset'];
//
//            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();
//
//        }else{
        if ($service_package_id) {

            $items = $packageItem->service($service_type, $service_package_id, $parent_id, $type);

        }else{
            $where[] = ['i.member_id', '=', $member_id];
            $stagingWhere[] = ['ps.member_id', '=', $member_id];

            $whereOr = $where;

            $where[] = ['sp.expiration_date', '=', 0];

            $whereOr[] = ['it.expiration_date', '>', date('Y-m-d H:i:s', time())];

            $invoiceItems = $invoiceItem->service_package($where, $whereOr);
            $stagingItems = $packageStagingItem->service_package($stagingWhere);
//            var_dump($stagingItems);
            $items = array_merge($invoiceItems, $stagingItems);
        }
//        }

        // $total = $model::where($where)->count();

        // foreach ($items as $key => $value) {
        //     $items[$key]['service_item'] = $packageItem->alias('spi')->leftJoin('service s', 'spi.service_id = s.id')->field('spi.*, s.code, s.name, s.price')->where('spi.service_package_id', $value['id'])->select()->toArray();
        // }

        $data = [
            'rows' => $items,
            // 'total' => $total,
        ];
        return json($data);
    }


    //Service to Package
    public function service_to_package(Request $request, ServicePackage $model, ServicePackageValidate $validate, ServicePackageItem $packageItem, Service $service, Mapping $mapping, ProductCategory $category)
    {
        $id = input('id', 0);

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
                $service_package_id = $result->id;
                $packageItem->saveItem($service_package_id, $param['item']);
            }

            if ($result){
                return json(['code' => 200]);
            }else {
                return json(['code' => 0]);
            }

        }

        $package_service = [];

        $data = $service->field('code, name, category_id, summary, price, description, "0" as optional_service, "1.0" as package_value, "2" as service_type, package_deduction')->find($id);

        $package_service[] = [
            'ordering' => 1,
            'id' => $id,
            'service_code' => $data['code'],
            'service_name' => $data['name'],
            'deduct_val' => $data['package_deduction'],
        ];

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

        $package_unit = $mapping::where('type_id', 'package_unit')->select();

        View::assign([
            'data' => $data,
            'package_unit' => $package_unit,
            'package_service' => $package_service
        ]);
        return View::fetch('add');
    }

}
