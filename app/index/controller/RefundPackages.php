<?php


namespace app\index\controller;


use app\Application;
use app\model\Invoice;
use app\model\Member;
use app\model\PackageStaging;
use app\model\PackageStagingItem;
use app\model\PackageStagingPayment;
use app\model\PackageStagingSeller;
use app\model\RefundPackage;
use app\model\RefundPackageItem;
use app\model\ServicePackage;
use app\model\Store;
use think\facade\Session;
use think\Request;
use think\facade\View;
use think\Response;

class RefundPackages extends Application
{
    public function index()
    {
        return View::fetch();
    }

    public function lists(RefundPackage $model, Member $member, Store $store, Invoice $invoice)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ? $param['sort'] : 'id';
        $order = isset($param['order']) ? $param['order'] : 'desc';
        $where = [];

        if (isset($param['filter'])) {
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if (isset($filter['invoice'])) {
                $invoice_id = $invoice::where('code', $filter['invoice'])->value('id');
                $where[] = ['invoice_id', '=', $invoice_id];
            }
            if (isset($filter['staging_date'])) {
                $where[] = ['staging_date', '=', $filter['staging_date']];
            }

            if (isset($filter['store'])) {
                $store_id = $store::where('name', $filter['store'])->value('id');
                $where[] = ['store_id', '=', $store_id];
            }
            if (isset($filter['member'])) {
                $member_id = $member::where('first_name', $filter['member'])->value('id');
                $where[] = ['member_id', '=', $member_id];
            }
        }

        if (isset($param['limit'])) {
            $limit = $param['limit'];
            $offset = $param['offset'];

            $items = $model::where($where)->limit($offset, $limit)->select();

        } else {
            $items = $model::where($where)->select();
        }

        $total = $model::where($where)->count();

        foreach ($items as $key => $value) {
            if ($value['invoice_id']) {
                $items[$key]['invoice'] = $invoice::where('id', $value['invoice_id'])->value('code');
            }
            if ($value['store_id']) {
                $items[$key]['store'] = $store::where('id', $value['store_id'])->value('name');
            }
            if ($value['member_id']) {
                $items[$key]['member'] = $member::where('id', $value['member_id'])->value('first_name');
            }
            if ($value['create_user_id']) {
                $items[$key]['user'] = $member::where('id', $value['create_user_id_id'])->value('first_name');
            }
        }

        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return json($data);
    }

    public function add(Request $request, RefundPackage $model, RefundPackageItem $rpItem)
    {
        $storeArr = getStoreArr();
        //先添加refund_package記錄表   member_id  total_refund
        //後添加refund_package_item記錄表 refund_package_id  package_staging_item_id
        if ($request->isPost()) {
            $param = input('post.');
            $param['created_user_id'] = getUserId();
            $result = $model::create($param);
            $rpId = $result->id;
            //根据细分项目的发票 去减  金额  package_staging_item_id =》 package_staging_item.status = 0
            $rpItem->saveItem($rpId, $param);
            return json(['code' => 200,'id' => $rpId]);
        }
        return View::fetch('form', ['type' => 'add','storeArr'=>$storeArr]);
    }

    //修改
    public function edit($id, Request $request, RefundPackage $model, RefundPackageItem $refundPackageItem, Member $member, Invoice $invoice)
    {
        $storeArr = getStoreArr();
        $item = $model->alias('rp')->leftJoin('store s', 'rp.store_id = s.id')->field('rp.*, s.name as store_name')->find($id);

        $member_info = [];
        if ($item['member_id']) {
            $where['id'] = $item['member_id'];
            $member_info = $member->findMember($where);
        }

        if ($request->isPost()) {
            $param = input('post.');

            $item->save($param);
            if (isset($param['service'])) {
                $refundPackageItem->saveItem($id, $param);
            }

            return json(['code' => 200]);
        }

        $items = $refundPackageItem->findItems($id);

        $item['items_count'] = $refundPackageItem->where('refund_package_id', $id)->count();
        return view('form', ['data' => $item, 'items' => $items, 'member' => $member_info, 'type' => 'edit','storeArr'=>$storeArr]);

    }

    public function del($id, RefundPackage $model, RefundPackageItem $refundPackageItem)
    {
        //refund_package   refund_package_item
        $ids = explode(',', $id);
        try {
            $model->startTrans();
            $result = $model->whereIn('id', $ids)->delete();
            foreach ($ids as $id) {
                $refundPackageItem->delItems($id);
            }
            $model->commit();
            return json(['code' => 200]);
        } catch (\Exception $e) {
            $model->rollback();
            return json(['code' => 0]);
        }

    }

    public function refund_packages(ServicePackage $model)
    {
        $from_panel = input('from_panel');
        $ids = input('ids', []);
        $member_id = input('member_id');
        $type = input('type');
        return View::fetch('refund_package', ['from_panel' => $from_panel, 'ids' => $ids, 'member_id' => $member_id, 'type' => $type]);
    }

    //TODO:弹窗显示相应的套票退款信息
    public function list(Member $model, Invoice $invoice, ServicePackage $servicePackage, PackageStagingItem $packageStagingItem)
    {

        //會員id-》會員對應的發票id，-》發票對應的package_staging->packgae_staging_item
        $param = input('get.');
        $sort = isset($param['sort']) ? $param['sort'] : 'id';
        $order = isset($param['order']) ? $param['order'] : 'desc';
        $ids = isset($param['ids']) ? explode(',', $param['ids']) : [];
        $member_id = $param['member_id'];
        $where = [];
        $items = $packageStagingItem->alias('psi')->leftJoin('package_staging ps','ps.id = psi.package_staging_id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->field('psi.*,ps.code as ps_no,sp.name as sp_name,ps.member_id')->where('ps.member_id','=',$member_id)->where('ps.is_first','=',1)->select()->toArray();
//        dump($items);die;
//        $items = $packageStagingItem->order('id', 'desc')->alias('psi')->leftJoin('package_staging ps', 'ps.id = psi.package_staging_id')->leftJoin('service_package sp', 'psi.service_package_id = sp.id')->leftJoin('invoice i', 'i.id = ps.invoice_id')->leftJoin('member m', 'i.member_id = m.id')->field('psi.*,ps.code as ps_no,m.code as member_no,m.id as member_id,i.code as invoice_no,i.id as invoice_id,sp.name as sp_name,SUM(psi.current_payment) as sum_payment,i.final_total')->group('psi.service_package_id,ps.invoice_id')->where('m.id', '=', $member_id)->select()->toArray();
//        $items = $model->alias('m')->leftJoin('invoice i','i.member_id = m.id')->leftJoin('package_staging ps','ps.invoice_id = i.id')->leftJoin('package_staging_item psi','psi.package_staging_id = ps.id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->order('psi.id','desc')->field('psi.*,ps.ps_no,m.member_no,m.id as member_id,i.invoice_no,i.id as invoice_id,sp.name as sp_name,SUM(psi.current_payment) as sum_payment')->group('psi.service_package_id,ps.invoice_id')->where('m.id','=',$member_id)->select()->toArray();
        if (isset($param['search'])) {
            $where[] = ['name', 'like', '%' . $param['search'] . '%'];
        }

        if (isset($param['filter'])) {
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
            if (isset($filter['code'])) {
                $where[] = ['code', '=', $filter['code']];
            }
            if (isset($filter['name'])) {
                $where[] = ['name', 'like', '%' . $filter['name'] . '%'];
            }
            if (isset($filter['category_id'])) {
                $where[] = ['category_id', '=', $filter['category_id']];
            }
            if (isset($filter['status'])) {
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

        foreach ($items as $key => $value) {
//            if($value['category_id']){
//                $items[$key]['category'] = $category::where('id', $value['category_id'])->value('name');
//            }
            if (!empty($ids)) {
                if (in_array($value['id'], $ids)) {
                    $items[$key]['checked'] = true;
                } else {
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

    public function print_page(RefundPackageItem $refundPackageItem,RefundPackage $model)
    {
        $id = input('id');
        $divFor = [
            [
                'type' => '會員存根',
                'div_id' => 'member_print'
            ],[
                'type' => '公司存根',
                'div_id' => 'company_print'
            ]
        ];
        $result = $model->alias('rp')->leftJoin('member m','rp.member_id = m.id')->field('rp.*,m.first_name,m.code as member_no')->find($id);
        $items = $refundPackageItem->findItems($id);
        $all_refund = 0.0;
        foreach ($items as $item) {
            $all_refund += (float)$item['refund'];
        }

        View::assign([
            'result' => $result,
            'items' => $items,
            'username' => Session::get('username'),
            'all_refund' =>$all_refund,
            'divFor' => $divFor
        ]);
        return View::fetch('print');
    }

}