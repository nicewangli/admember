<?php
/**
 * Invoice控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\ServicePackage;
use think\facade\View;
use think\Request;
use app\model\PackageStaging;
use app\model\Member;
use app\model\Store;
use app\model\Invoice;
use app\model\PackageStagingItem;
use app\model\PackageStagingPayment;
use app\model\PackageStagingSeller;
use app\validate\PackageStagingValidate;

class PackageStagings extends Application
{

    //列表
    public function index(Request $request, PackageStaging $model)
    {
        return View::fetch();
    }

    public function lists(PackageStaging $model, Member $member, Store $store, Invoice $invoice)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if(isset($filter['invoice'])){
                $invoice_id = $invoice::where('invoice_no', $filter['invoice'])->value('id');
                $where[] = ['invoice_id', '=', $invoice_id];
            }
            if(isset($filter['staging_date'])){
                $where[] = ['staging_date', '=', $filter['staging_date']];
            }
            
            if(isset($filter['store'])){
                $store_id = $store::where('name', $filter['store'])->value('id');
                $where[] = ['store_id', '=', $store_id];
            }
            if(isset($filter['member'])){
                $member_id = $member::where('first_name', $filter['member'])->value('id');
                $where[] = ['member_id', '=', $member_id];
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

        foreach ($items as $key => $value) {
            if($value['invoice_id']){
                $items[$key]['invoice'] = $invoice::where('id', $value['invoice_id'])->value('invoice_no');
            }
            if($value['store_id']){
                $items[$key]['store'] = $store::where('id', $value['store_id'])->value('name');
            }
            if($value['member_id']){
                $items[$key]['member'] = $member::where('id', $value['member_id'])->value('first_name');
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }


    //添加
    public function add(Request $request, PackageStaging $model, PackageStagingValidate $validate,PackageStagingItem $packageStagingItem, PackageStagingPayment $packageStagingPayment, PackageStagingSeller $packageStagingSeller,Invoice $invoice)
    {
//        $member_id = input('member_id',2);
//        $invoiceArr = $invoice->where('member_id','=',$member_id)->select()->toArray();

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            if(!empty($param['invoice_id'])) {
                $i = $invoice->find($param['invoice_id']);
                $i->final_total -= $param['final_total'];
                dump($i->final_total);die;
                $i->save();
            }
            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();
            //编号
            $param['ps_no'] = PackageStagings::getConfigNo('package_staging','package_staging');
            $result = $model::create($param);
            $package_staging_id = $result->id;
            if (isset($param['service'])) {
                $packageStagingItem->saveItem($package_staging_id, $param['service']);
            }
            if (isset($param['payment'])) {
                $packageStagingPayment->savePayment($package_staging_id, $param['payment']);
            }
            if (isset($param['seller'])) {
                $packageStagingSeller->saveSeller($package_staging_id, $param['seller']);
            }

            return json(['code' => 200]);
        }

        $store = getStore();
        $data['store_id'] = $store['id'];
        $data['store_name'] = $store['name'];

        return view('add', ['data' => $data]);
    }

    //修改
    public function edit($id, Request $request, PackageStaging $model, PackageStagingValidate $validate,PackageStagingItem $packageStagingItem, PackageStagingPayment $packageStagingPayment, PackageStagingSeller $packageStagingSeller, Member $member, Invoice $invoice)
    {
        $item=$model->alias('ps')->leftJoin('store s','ps.store_id = s.id')->leftJoin('member m','ps.member_id = m.id')->leftJoin('invoice i','ps.invoice_id = i.id')->field('ps.*, s.name as store_name, m.first_name as member, i.invoice_no')->find($id);

        $member_info = [];
        if ($item['member_id']) {
            $where['id'] = $item['member_id'];
            $member_info = $member->findMember($where);
        }

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['new_customer'] = isset($param['new_customer']) ? isset($param['new_customer']) : 0;
            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();

            $item->save($param);
            if (isset($param['service'])) {
                $packageStagingItem->saveItem($id,$param['service']);
            }
            if (isset($param['payment'])) {
                $packageStagingPayment->savePayment($id, $param['payment']);
            }
            if (isset($param['seller'])) {
                $packageStagingSeller->saveSeller($id, $param['seller']);
            }
            
            return json(['code' => 200]);
        }

        $items = $packageStagingItem->findItems($id);
        $payments = $packageStagingPayment->findPayments($id);
        $sellers = $packageStagingSeller->findSellers($id);

        $item['items_count'] = $packageStagingItem->where('package_staging_id', $id)->count();
        return view('add',['data' => $item, 'items' => $items, 'payments' => $payments, 'sellers' => $sellers, 'member' => $member_info]);

    }

    //删除
    public function del($id, PackageStaging $model, PackageStagingItem $packageStagingItem, PackageStagingPayment $packageStagingPayment, PackageStagingSeller $packageStagingSeller)
    {
        $ids = explode(',', $id);
        if ($model->softDelete) {
            $result = $model->whereIn('id', $ids)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $ids)->delete();
        }
        
        foreach ($ids as $value) {
            $packageStagingItem->delItems($value);
            $packageStagingPayment->delPayments($value);
            $packageStagingSeller->delSellers($value);
        }
        
        return json(['code' => 200]);
    }

    //删除item
    public function del_item(PackageStagingItem $packageStagingItem)
    {
        $ids = input('ids');
        $result = $packageStagingItem->whereIn('id', $ids)->delete();
        // if ($result) {
        //     return json(['code' => 200]);
        // }
    }

    public function find_package_staging(PackageStaging $model)
    {
        $package_staging_id = input('package_staging_id');
        $package_staging = $model->where('package_staging_id', $package_staging_id)->find();
        return json(['package_staging' => $package_staging]);
    }

    public function get_package(ServicePackage $model,PackageStaging $packageStaging,PackageStagingItem $packageStagingItem)
    {
        $member_id = input('member_id');
        $invoice_id = input('invoice_id');
        $where = [];
        $where[] = ['ps.invoice_id','=',$invoice_id];
        $where[] = ['ps.member_id','=',$member_id];
        $item = $packageStagingItem->alias('psi')->leftJoin('package_staging ps','psi.package_staging_id = ps.id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->field('psi.*,ps.ps_no,sp.name as sp_name,sp.code')->where($where)->select()->toArray();
        //根据invoice_id  member_id  package_staging_id,package_staging_item,,service_package_id
        $data = ['rows' => $item];
        return json($data);
    }
}
