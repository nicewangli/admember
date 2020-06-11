<?php
/**
 * UsePackage控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\UsePackage;
use app\model\Member;
use app\model\Store;
use app\model\Invoice;
use app\model\UsePackageItem;
use app\model\ServicePackage;
use app\validate\UsePackageValidate;
use think\facade\Db;
use app\model\Booking;
use app\model\BookingItem;

class UsePackages extends Application
{

    //列表
    public function index(Request $request, UsePackage $model)
    {
        return View::fetch();
    }

    public function lists(UsePackage $model, Member $member, Store $store, Invoice $invoice)
    {
        $param = input('get.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $where = [];


        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);
			
			         $query_fields = ['code','use_time','store','member'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = [$field, 'like', $filter[$field] . '%'];
                }
            }


            if(isset($filter['invoice'])){
                $invoice_id = $invoice::where('code', $filter['invoice'])->value('id');
                $where[] = ['invoice_id', '=', $invoice_id];
            }
            if(isset($filter['use_time'])){
                $where[] = ['use_time', '=', $filter['use_time']];
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
    public function add(Request $request, UsePackage $model, UsePackageValidate $validate,UsePackageItem $usePackageItem)
    {
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['created_user_id'] = getUserId();
            $param['updated_user_id'] = getUserId();
            $param['created_time'] = time();
            $param['updated_time'] = time();
            //编号
            $param['code'] = UsePackages::getConfigNo('service_packages','use_package');;
            $result = $model::create($param);
            $use_package_id = $result->id;

            if ($use_package_id) {
                Booking::where('id', $param['booking_id'])->update(['is_deduct' => 1, 'update_time' => time(), 'updated_user_id' => $this->user->uid, 'use_package_id' => $use_package_id]);

                if (isset($param['service'])) {
                    $usePackageItem->saveItem($use_package_id, $param['member_id'], $param['service']);
                }
            }
            

            return json(['code' => 200]);
        }

        $store = getStore();
        $data['store_id'] = $store['id'];
        $data['store_name'] = $store['name'];

        return view('add', ['data' => $data]);
    }

    //修改
    public function edit($id, Request $request, UsePackage $model, UsePackageValidate $validate,UsePackageItem $usePackageItem, Member $member, Invoice $invoice)
    {
        $item=$model->alias('up')->leftJoin('store s','up.store_id = s.id')->field('up.*, s.name as store_name')->find($id);

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

            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();

            $item->save($param);
            if (isset($param['service'])) {
                $usePackageItem->saveItem($id, $param['member_id'], $param['service']);
            }
            
            return json(['code' => 200]);
        }

        $use_package_items = $usePackageItem->findItems($id, $item['member_id']);

        $item['items_count'] = $usePackageItem->where('use_package_id', $id)->count();

        return view('add',['data' => $item, 'use_package_items' => $use_package_items, 'member' => $member_info]);

    }

    //删除
    public function del($id, UsePackage $model, UsePackageItem $usePackageItem)
    {
        $ids = explode(',', $id);

        foreach ($ids as $key => $value) {
            $find = $model::find($value);
            $find->delete();

            $data = $model->field('invoice_id, member_id')->find($value);

            $usePackageItem->delItems($value);

            // $usePackageItem->total_deduction($value, $data['invoice_id'], $data['member_id']);
        }

        return json(['code' => 200]);
    }

    //删除item
    public function del_item(UsePackage $model, UsePackageItem $usePackageItem)
    {
        $ids = input('ids');
        
        if ($model->softDelete) {
            $result = $usePackageItem->whereIn('id', $ids)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $usePackageItem->whereIn('id', $ids)->delete();
        }

    }

    //booking 新增使用套票
    public function booking_to_use_package(Booking $booking, BookingItem $bookingItem, UsePackageItem $usePackageItem, Member $member)
    {
        $booking_id = input('booking_id', 0);
        $from = input('from', '');
        $data = $booking->alias('b')->leftJoin('store s', 'b.store_id = s.id')->field('b.member_id, b.store_id, s.name as store_name, b.is_member')->find($booking_id);
        $member_info = [];
        if ($data['member_id']) {
            $where['id'] = $data['member_id'];
            $member_info = $member->findMember($where);
        }
        $use_package_items = $bookingItem->findItems($booking_id);
//        dump($use_package_items);
        return view('add', ['data' => $data, 'use_package_items' => $use_package_items, 'member' => $member_info, 'from' => $from, 'booking_id' => $booking_id]);

    }
}
