<?php


namespace app\index\controller;


use app\Application;
use app\model\Invoice;
use app\model\Member;
use app\model\PackageStagingItem;
use app\model\RefundPackage;
use app\model\ServicePackage;
use app\model\Store;
use think\facade\View;

class RefundPackages extends Application
{
    public function index()
    {
        return View::fetch();
    }

    public function lists(RefundPackage $model, Member $member, Store $store, Invoice $invoice)
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

            $items = $model::where($where)->limit($offset, $limit)->select();

        }else{
            $items = $model::where($where)->select();
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
    public function add()
    {
        return View::fetch('form');
    }

    //TODO:
    public function refund_packages(ServicePackage $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids','[]');
        $member_id = input('member_id');
        return View::fetch('refund_package', ['from_panel' => $from_panel, 'ids' => $ids,'member_id' => $member_id]);
    }

    //TODO:弹窗显示相应的套票退款信息
    public function list(Member $model,Invoice $invoice,ServicePackage $servicePackage,PackageStagingItem $packageStagingItem)
    {

        //會員id-》會員對應的發票id，-》發票對應的package_staging->packgae_staging_item
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $member_id = $param['member_id'];
        $where = [];
        $items = $model->alias('m')->leftJoin('invoice i','i.member_id = m.id')->leftJoin('package_staging ps','ps.invoice_id = i.id')->leftJoin('package_staging_item psi','psi.package_staging_id = ps.id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->field('psi.id as id,ps.ps_no,m.member_no,i.invoice_no,psi.total,psi.current_payment,sp.name as sp_name')->where('m.id','=',$member_id)->select()->toArray();
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
//            if(isset($filter['category'])){
//                $category_id = $category::where('name', $filter['category'])->value('id');
//                $where[] = ['category_id', '=', $category_id];
//            }
        }

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

//            $items = $model::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select()->toArray();

        }
//        else{
//            $items = $model::where($where)->order($sort.' '.$order)->select()->toArray();
//        }

        $total = $model::where($where)->count();

//        foreach ($items as $key => $value) {
//            if($value['category_id']){
//                $items[$key]['category'] = $category::where('id', $value['category_id'])->value('name');
//            }

//            if (!empty($ids)) {
//                if (in_array($value['id'], $ids)) {
//                    $items[$key]['checked'] = true;
//                }else{
//                    $items[$key]['checked'] = false;
//                }
//            }
//        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

}