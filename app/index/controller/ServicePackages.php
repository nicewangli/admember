<?php
/**
 * Product控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\Member;
use app\model\PackageStaging;
use app\model\PackageStagingItem;
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

            $result = $model::create($param);

            if (isset($param['item'])) {
                $service_package_id = $result->id;
                $packageItem->saveItem($service_package_id, $param['item']);
            }

            return json(['code' => 200]);
        }
        $package_unit = $mapping::where('type_id', 'package_unit')->select();
        return view('add', ['package_unit' => $package_unit]);
    }

    //修改
    public function edit($id, Request $request, ServicePackage $model, ServicePackageValidate $validate, Mapping $mapping, ProductCategory $category, ServicePackageItem $packageItem)
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
                $packageItem->saveItem($id, $param['item']);
            }

            return json(['code' => 200]);

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


    public function service_lists(ServicePackage $model, ServicePackageItem $packageItem)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';

        $member_id = isset($param['member_id']) ? $param['member_id'] : 0;

        $id = isset($param['id']) ? $param['id'] : 0;

        $where = [];

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

        $where[] = ['it.service_type', '=', 1];
        
        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }else{
            if ($id) {
                $items = $packageItem->alias('spi')->leftJoin('service s', 'spi.service_id = s.id')->field('spi.*, s.code, s.name')->where('spi.service_package_id', $id)->order($sort.' '.$order)->select()->toArray();
            }else{
                $items = Invoice::alias('i')->leftJoin('invoice_item it', 'i.id = it.invoice_id')->leftJoin('service_package sp', 'sp.id = it.service_id')->leftJoin('mappings m', 'm.id = sp.package_unit')->field('sp.id, sp.code, sp.name, sp.price, sp.expiration_date, sp.package_value, sp.package_value_used, m.val as package_unit')->where($where)->order($sort.' '.$order)->select()->toArray();
            }
        }

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



}
