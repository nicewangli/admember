<?php
/**
 * Invoice控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\InvoiceItem;
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
        //
        $params = $request->param();
            if(isset($params['export_data'])) {
                $header = ['Invoice_NO','PS_NO','Member','Store','本次还款','Create_Time'];  //设置导出的Excel表头
                $body = [];     //Excel表内容数组
                $data = $model->alias('ps')->leftJoin('invoice i','i.id = ps.invoice_id')->leftJoin('store s','s.id = ps.store_id')->leftJoin('member m','m.id = ps.member_id')->field('ps.*,m.first_name as member_name,i.code as invoice_no,s.name as store_name')->select();
//                $data = $model->select();   //数据,需要连表查询
                foreach ($data as $item) {
                    $record = [];
                    //表头对应数据表字段
                    $record['PS_NO'] = $item->code;
                    $record['Invoice_NO'] = $item->invoice_no;
                    $record['Member'] = $item->member_name;
                    $record['Store'] = $item->store_name;
                    $record['Total'] = $item->total;
                    $record['create_time'] = $item->staging_time;
                    $body[] = $record;
                }
                return exportData($header, $body, 'PS-' . date('Y-m-d-H-i-s'));
            }

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
			          $query_fields = ['staging_time','store','member_id','total_amount'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = [$field, 'like', '%'.$filter[$field] . '%'];
                }
            }
			
            if(isset($filter['invoice'])){
                $invoice_id = $invoice::where('code', $filter['invoice'])->value('id');
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
                $items[$key]['invoice'] = $invoice::where('id', $value['invoice_id'])->value('code');
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
    public function add(Request $request, PackageStaging $model, PackageStagingValidate $validate,PackageStagingItem $packageStagingItem, PackageStagingPayment $packageStagingPayment, PackageStagingSeller $packageStagingSeller,Invoice $invoice,InvoiceItem $invoiceItem)
    {
//        $member_id = input('member_id',2);
//        $invoiceArr = $invoice->where('member_id','=',$member_id)->select()->toArray();
        $store = getStore();
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();
            $param['store_id'] = $store['id'];
            //编号
            $param['code'] = PackageStagings::getConfigNo('package_staging','package_staging');
            try{
                $model->startTrans();
                if(!empty($param['invoice_id'])) {//如果存在发票记录，对发票待付款金额做修改
                    $i = $invoice->find($param['invoice_id']);
                    $i->final_total = $i->final_total - $param['final_total'];
                    $i->save();
                } else{
                    //首次付款  生成发票
                    $param['code'] = Invoices::getConfigNo('invoice','invoice');
                    $total = $param['total'];
                    $total_amount = $param['total_amount'];
                    $param['total'] = $param['invoice_total'];
                    $param['total_amount'] = $param['invoice_total'];
                    $param['final_total'] = $param['total_amount'] - $param['final_total'];
                    $invoiceResult = $invoice::create($param);
                    $param['code'] = PackageStagings::getConfigNo('package_staging','package_staging');
                    $param['invoice_id'] = $invoiceResult->id;
                    $param['total'] = $total;
                    $param['total_amount'] = $total_amount;
                    if (isset($param['service'])) {
                        //TODO: add invoice_item
                        $invoiceItemData = $param['service'];
                        foreach ($invoiceItemData as &$value) {
                            $value['service_type'] = 1;//类型为服务套票
                            $value['service_id'] = $value['service_package_id']; //invoice_item对应的字段名为service_id
                            unset($value['service_package_id']);
                            unset($value['current_payment']);
                        }
                        $invoiceItem->saveItem($invoiceResult->id, $invoiceItemData);
                    }
                }
                $result = $model::create($param);
                $package_staging_id = $result->id;
                if (isset($param['service'])) {
                    $packageStagingItem->saveItem($package_staging_id, $param['service'],$param['invoice_id']);
                }
                if (isset($param['payment'])) {
                    $packageStagingPayment->savePayment($package_staging_id, $param['payment']);
                }
                if (isset($param['seller'])) {
                    $packageStagingSeller->saveSeller($package_staging_id, $param['seller']);
                }
                $model->commit();
                return json(['code' => 200]);
            } catch (\Exception $e) {
                $model->rollback();
                return json(['code' => 0]);
            }

        }

        $storeArr = getStoreArr();
        $data['store_id'] = $store['id'];
        $data['store_name'] = $store['name'];

        return view('add', ['storeArr'=>$storeArr]);
    }

    //修改
    public function edit($id, Request $request, PackageStaging $model, PackageStagingValidate $validate,PackageStagingItem $packageStagingItem, PackageStagingPayment $packageStagingPayment, PackageStagingSeller $packageStagingSeller, Member $member, Invoice $invoice)
    {
        $storeArr = getStoreArr();
        $item=$model->alias('ps')->leftJoin('store s','ps.store_id = s.id')->leftJoin('invoice i','ps.invoice_id = i.id')->field('ps.*, s.name as store_name, i.code as invoice_no,i.id as invoice_id')->find($id);

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
            //TODO:修改时发票也要相应修改

            $i = $invoice->find($param['invoice_id']);
            $total = $param['total'];
            $total_amount = $param['total_amount'];
            $i->total = $i->total_amount = $param['invoice_total'];
            //总款减去支付
            $i->final_total = floatval($i->total_amount) - floatval($param['total_amount']);
            $i->save();
            $item->save($param);
            if (isset($param['service'])) {
                $packageStagingItem->saveItem($id,$param['service'],$param['invoice_id']);
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
        return view('add',['data' => $item, 'items' => $items, 'payments' => $payments, 'sellers' => $sellers, 'member' => $member_info,'storeArr'=>$storeArr,'type'=>'edit']);

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
        $type = input('type');
        $where = [];
        $where[] = ['ps.invoice_id','=',$invoice_id];
        $where[] = ['ps.member_id','=',$member_id];
        $item = $packageStagingItem->alias('psi')->leftJoin('package_staging ps','psi.package_staging_id = ps.id')->leftJoin('service_package sp','psi.service_package_id = sp.id')->leftJoin('invoice i','ps.invoice_id = i.id')->field('psi.*,i.code as invoice_no,ps.code as ps_no,sp.name as sp_name,sp.code,sp.id as sp_id');
        if(empty($type)) {
            $item = $item->group('psi.service_package_id');
        }

        $item = $item->where($where)->select()->toArray();
        //根据invoice_id  member_id  package_staging_id,package_staging_item,,service_package_id
        $data = ['rows' => $item];
        return json($data);
    }

    public function old_package_staging()
    {
        $member_id = input('member_id');
        $invoice_id = input('invoice_id');
        $type = input('type');
        View::assign([
            'member_id' => $member_id,
            'invoice_id' => $invoice_id,
            'type' => $type
        ]);
        return View::fetch();
    }
}
