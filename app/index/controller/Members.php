<?php
/**
 * Member控制器
 */

namespace app\index\controller;

use app\Application;
use app\model\InvoiceItem;
use app\model\Member1;
use app\model\PackageStaging;
use app\model\UsePackage;
use app\model\UsePackageItem;
use app\model\User;
use think\facade\Db;
use app\model\Invoice;
use app\model\Store;
use think\facade\View;
use think\facade\Request;
use app\model\Member;
use app\model\Booking;

use app\validate\MemberValidate;

class Members extends Application
{

    public function index()
    {
        return View::fetch();
    }

    public function index_list()
    {
        return View::fetch();
    }

    public function lists(){


        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'code';
        $order = $param['order'];
        $where = [];
          if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

            $query_fields = ['code','first_name','last_name','phone_mobile','phone_work','email1'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = ['m.'.$field, 'like', $filter[$field] . '%'];
                }


            }

        }




        $items = Member::alias('m')->leftJoin('mapping mp', 'm.opt = mp.id')->field('m.*, mp.val as opt')->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Member::alias('m')->where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }

    public function export(Request $request, Member $model){
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Name', 'Creation Date', 'Industry', 'Phone', 'Fax', 'Email', 'Division','Address', 'Address(chi.)',
                'Country','City', 'City/State','Notes', 'Postal code', 'Co.Size', 'Website', 'Category', 'Rating'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['name'] = $item->name;
                $record['create_time'] = $item->create_time;
                $record['industry'] = $item->industry;
                $record['phone_office'] = $item->phone_office;
                $record['phone_fax'] = $item->phone_fax;
                $record['email1'] = $item->email1;
                $record['division'] = $item->division;
                $record['billing_address_street'] = $item->billing_address_street;
                $record['billing_address_street_cn'] = $item->billing_address_street_cn;
                $record['billing_address_country'] = $item->billing_address_country;
                $record['billing_address_city'] = $item->billing_address_city;
                $record['billing_address_state'] = $item->billing_address_state;
                $record['notes'] = $item->notes;
                $record['billing_address_postalcode'] = $item->billing_address_postalcode;
                $record['co_size'] = $item->co_size;
                $record['website'] = $item->website;
                $record['category'] = $item->category;
                $record['rating'] = $item->rating;

                $body[] = $record;
            }
            return exportData($header, $body, 'Members-' . date('Y-m-d-H-i-s'));
        }
    }




    public function panel()
    {
        $param = input('get.');
        $panel = $param['panel'];
        $where = [];
        $url = url("Members/lists");
        if(isset($param['account_id'])){
            $url = url("Members/lists",["account_id" => $param['account_id']]);
        }
        return View::fetch('panel',['panel_url' => $url]);
    }


    public function add(Request $request, Member $model, MemberValidate $validate, Booking $booking)
    {
        //临时导入
//        $daoRu = new Member1();
//        $daoRu->daoRU();
        //临时导入

        //店铺下拉框
        $storeArr = Store::select()->toArray();
        if ($request::isPost()) {
            $param           =input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            //编号
            $param['code'] = $this->getConfigNo('membership','member');
            $result = $model::create($param);

            if (isset($param['from']) && $param['from'] == 'booking') {
                $id = $result->id;
                $find = $booking::find($param['booking_id']);
                if ($find) {
                    $find->save(['member_id' => $id, 'member_no' => $param['code'], 'is_member' => 1, 'new_member' => 1]);
                }
                return json(['code' => 200, 'member' => ['id' => $id, 'name' => $param['first_name'], 'phone' => $param['phone_mobile'], 'code' => $param['code']]]);
            }

            return $this->redirect(url("index"));
        }else{
			$item = new Member;
			$from = input('from', '');
			$booking_id = input('booking_id', '');
			$item['first_name'] = input('name', '');
			$item['phone_mobile'] = input('phone', '');
			$item['date_of_accession'] = date("Y-m-d");
		}

        View::assign([
            'storeArr'=>$storeArr,
        ]);

        if ($from) {
            return view('layer_add', ['from' => $from, 'item' => $item, 'booking_id' => $booking_id]);
        }
        return view('add',['item' => $item]);
    }


    //详情
    public function detail($id, Request $request, Member $model, MemberValidate $validate)
    {
        //店铺下拉框
        $storeArr = Store::select()->toArray();
        $user = getUser();
        $user_tel = $user->tel;
        $item = $model::find($id);
        if ($request::isPost()) {
            $param  = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $item->save($param);
        }
        return view('detail', ['item' => $item,'storeArr'=>$storeArr,'user_tel'=>$user_tel]);
    }

    //修改
    public function edit($id, Request $request, Member $model, MemberValidate $validate)
    {
        //店铺下拉框
        $storeArr = Store::select()->toArray();
        $item = $model::find($id);
        if ($request::isPost()) {
            $param  = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $item->save($param);
        }

        return view('edit', ['item' => $item,'storeArr'=>$storeArr]);
    }

    //删除
    public function del($id, Member $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $this->redirect(url("index"));
    }


    public function find_member(Member $model, Invoice $invoice, Booking $booking)
    {
        $code = input('code');
        $where = [];
        $where[] = ['code','=',$code];
        $member = $model->findMember($where);
        $invoices = [];
        $notes = "";
        if ($member) {
            $invoices = $invoice->findInvoice($member->id);

            $notes = $booking->booking_notes($member->id);

            $member['no_service'] = true;
            $service = $model->findService($member['id'], 1);
            if (!empty($service)) {
                $member['no_service'] = false;
            }
        }
        return json(['member' => $member, 'invoices' => $invoices, 'notes' => $notes]);
    }


    //消費記錄
    public  function transaction()
    {
        $grid_url = url("transaction_list");

        $start_date = date('Y-m-01');
        $end_date  =  date('Y-m-t');

        View::assign([
            'start_date' => $start_date,
            'end_date' => $end_date,
            'grid_url' => $grid_url
        ]);

        return View::fetch('transaction');
    }

    //消費記錄list
    public function transaction_list(Invoice $invoice, PackageStaging $packageStaging, Member $member, Store $store)
    {
        $param = input('post.');

        $items = [];
        $total = 0;
        $total_amount = 0;

        //單據類型
        if ($param['type'] == 1) {  //發票

            $data = $invoice->transactionList($param);

            $items = $data['list'];
            $total = $data['total'];
            $total_amount = $data['total_amount'];
        }
        elseif ($param['type'] == 2) {  //套票分期

            $data = $packageStaging->transactionList($param);

            $items = $data['list'];
            $total = $data['total'];
            $total_amount = $data['total_amount'];

        }
        elseif ($param['type'] == 3) {   //套票退款

        }
        else{
            $invoices = $invoice->transactionList($param);
            $packageStagings = $packageStaging->transactionList($param);

            $items = array_merge($invoices['list'], $packageStagings['list']);

            $total = $invoices['total'] + $packageStagings['total'];
            $total_amount = $invoices['total_amount'] + $packageStagings['total_amount'];

        }

        $udate = array_column($items, 'udate');
        array_multisort($udate, SORT_DESC , $items);

        $data = [
            'rows' => $items,
            'total' => $total,
            'total_amount' => number_format($total_amount, 1)
        ];
        return json($data);

    }


    //套票記錄
    public function treatment()
    {
        $grid_url = url("treatment_list");

        return View::fetch('treatment',['grid_url' => $grid_url]);
    }

    //套票記錄list
    public function treatment_list(Invoice $invoice, InvoiceItem $invoiceItem)
    {
        $param = input('post.');
        $sort = isset($param['sort']) ?  $param['sort'] :  'id';
        $order = isset($param['order']) ?  $param['order'] :  'desc';
        $limit = isset($param['limit']) ?  $param['limit'] : 10;
        $offset = isset($param['offset']) ?  $param['offset'] : 0;

        $list = [];
        $where = [];
        $whereOr = [];

        $where[] = ['it.service_type', '=', 1];
        $where[] = ['i.member_id', '=', $param['member_id']];

        if ($param['package_used'] != '') {  //套票值
            $where[] = ['it.used_up', '=', $param['package_used']];
        }

        if ($param['expiration_date'] != '') {  //到期日
            if ($param['expiration_date'] == 0) { //未過期
                $whereOr = $where;

                $where[] = ['it.expiration_date', '=', '0000-00-00 00:00:00'];

                $whereOr[] = ['it.expiration_date', '>', date('Y-m-d H:i:s', time())];

            }
            elseif ($param['expiration_date'] == 1) {  //已過期
                $where[] = ['it.expiration_date', '>', '0000-00-00 00:00:00'];
                $where[] = ['it.expiration_date', '<', date('Y-m-d H:i:s', time())];
            }
        }

        if ($param['payment'] == 1) {  //付款 -- 全數付畢

        }
        elseif ($param['payment'] == 2) {   //付款 -- 欠款

        }

        $list = $invoice->treatmentList($where, $whereOr, $offset, $limit, $sort, $order);
//        echo $invoice::getLastSql();

        return json($list);
    }


    //服務記錄
    public function services()
    {
        $grid_url = url("service_list");
        $beautician_url = url("beautician_list");

        $start_date = date('Y-m-01');
        $end_date  =  date('Y-m-t');

        View::assign([
            'start_date' => $start_date,
            'end_date' => $end_date,
            'grid_url' => $grid_url,
            'beautician_url' => $beautician_url,
        ]);

        return View::fetch('services');
    }

    //服務記錄list
    public function service_list(Invoice $invoice)
    {
        $param = input('post.');

        $list = $invoice->serviceList($param);

        return json($list);
    }

    //beautician list
    public function beautician_list(UsePackageItem $model)
    {
        $param = input('post.');

        $where[] = ['up.use_time', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date'] . ' 23:59:59']];

        $where[] = ['up.member_id', '=', $param['member_id']];

        if ($param['beautician']) {
//            $where[] = ['upi.beautician1|upi.beautician2', '=', $param['beautician']];
            $where[] = ['u.uid', '=', $param['beautician']];
        }

        if ($param['code']) {
            $service_id = Db::name('service')->where('code', 'like', '%' . $param['code'] . '%')->column('id');
            $where[] = ['upi.service_id', 'in', $service_id];
        }

        $list = Db::name('users')
            ->alias('u')
            ->leftJoin('use_package_item upi', 'u.uid = upi.beautician1')
            ->leftJoin('use_package up', 'upi.use_package_id = up.id')
            ->field('u.uid, u.username, count(u.uid) as count')
            ->where($where)
            ->group('u.uid')
            ->order('uid')
            ->union(function ($query) use($where) {
                $query->name('users')
                    ->alias('u')
                    ->leftJoin('use_package_item upi', 'u.uid = upi.beautician2')
                    ->leftJoin('use_package up', 'upi.use_package_id = up.id')
                    ->field('u.uid, u.username, count(u.uid) as count')
                    ->where($where)
                    ->group('u.uid')
                    ->order('uid')
                    ->select();
            })
            ->select();

//        echo User::getLastSql();

        return json(['rows' => $list, 'total' => count($list)]);
    }

    //儲值記錄
    public function stored_value()
    {
        $grid_url = url("stored_value_list");

        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');

        $member_id = input('id', 0);
        if ($member_id) {
            $invoice_store = Db::name('invoice')->where('member_id', $member_id)->sum('member_store');
            $staging_store = Db::name('package_staging')->where('member_id', $member_id)->sum('member_store');

            $invoice_used = Db::name('invoice_payment')->alias('ip')->leftJoin('invoice i', 'i.id = ip.invoice_id')->leftJoin('mapping m', 'm.id = ip.method')->where(['i.member_id' => $member_id, 'm.type_id' => 'payment_method', 'm.name' => '儲值'])->sum('ip.amount');
            $staging_used = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->where(['ps.member_id' => $member_id, 'm.type_id' => 'payment_method', 'm.name' => '儲值'])->sum('psp.amount');

            $total_store = $invoice_store + $staging_store;

            $store_used = $invoice_used + $staging_used;

            $current_store = $total_store - $store_used;
        }

        View::assign([
            'start_date' => $start_date,
            'end_date' => $end_date,
            'grid_url' => $grid_url,
            'current_store' => number_format($current_store, 1),
            'total_store' => number_format($total_store, 1),
            'store_used' => number_format($store_used, 1),
        ]);

        return View::fetch('stored_value');
    }

    //儲值記錄list/獎賞記錄list
    public function stored_value_list(Invoice $invoice, PackageStaging $packageStaging)
    {
        $param = input('post.');

        $whereInvoice = [];
        $whereInvoice[] = ['i.invoice_date', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date'] . ' 23:59:59']];
        $whereInvoice[] = ['i.member_id', '=', $param['member_id']];
        $whereInvoice[] = ['i.member_store', '>', 0];

        $whereStaging = [];
        $whereStaging[] = ['ps.staging_time', 'between', [$param['start_date'] . ' 00:00:00', $param['end_date'] . ' 23:59:59']];
        $whereStaging[] = ['ps.member_id', '=', $param['member_id']];
        $whereStaging[] = ['ps.member_store', '>', 0];


        if ($param['type']) {  //單據類型
            if ($param['type'] == 1) {   //發票

                if ($param['action']) {  //動作
                    if ($param['action'] == 1) {   //增值
                        $invoiceStore = $invoice->invoiceStore($whereInvoice);

                        return json(['rows' => $invoiceStore['list'], 'total' => count($invoiceStore['list']), 'total_store' => number_format($invoiceStore['store'], 1)]);
                    } else {
                        //  elseif ($param['action'] == 2) {  //使用
                        if ($param['grip_type'] == 2) {  //獎賞記錄
                            $invoiceUsed = $invoice->rewardUsed($whereInvoice);

                            return json(['rows' => $invoiceUsed['list'], 'total' => count($invoiceUsed['list']), 'total_reward' => number_format($invoiceUsed['reward'], 1)]);

                        } else {
                            //  elseif ($param['grip_type'] == 1) { //儲值記錄
                            $invoiceUsed = $invoice->storeUsed($whereInvoice);

                            return json(['rows' => $invoiceUsed['list'], 'total' => count($invoiceUsed['list']), 'total_store' => number_format($invoiceUsed['store'], 1)]);

                        }

                    }
                } else {
                    $invoiceStore = $invoice->invoiceStore($whereInvoice);

                    if ($param['grip_type'] == 2) {  //獎賞記錄
                        $invoiceUsed = $invoice->rewardUsed($whereInvoice);

                        $total_reward = $invoiceStore['reward'] - $invoiceUsed['reward'];

                        $list = array_merge($invoiceStore['list'], $invoiceUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_reward' => number_format($total_reward, 1)]);
                    } else {
                        //  elseif ($param['grip_type'] == 1) { //儲值記錄
                        $invoiceUsed = $invoice->storeUsed($whereInvoice);
                        $total_store = $invoiceStore['store'] - $invoiceUsed['store'];

                        $list = array_merge($invoiceStore['list'], $invoiceUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_store' => number_format($total_store, 1)]);
                    }



                }

            }
            elseif ($param['type'] == 2) {  //套票分期

                if ($param['action']) {  //動作
                    if ($param['action'] == 1) {   //增值
                        $stagingStore = $packageStaging->stagingStore($whereStaging);

                        return json(['rows' => $stagingStore['list'], 'total' => count($stagingStore['list']), 'total_store' => number_format($stagingStore['store'], 1)]);
                    }
                    elseif ($param['action'] == 2) {  //使用
                        if ($param['grip_type'] == 2) {  //獎賞記錄
                            $stagingUsed = $packageStaging->rewardUsed($whereStaging);

                            return json(['rows' => $stagingUsed['list'], 'total' => count($stagingUsed['list']), 'total_reward' => number_format($stagingUsed['reward'], 1)]);

                        } else {
                            //  elseif ($param['grip_type'] == 1) { //儲值記錄
                            $stagingUsed = $packageStaging->storeUsed($whereStaging);

                            return json(['rows' => $stagingUsed['list'], 'total' => count($stagingUsed['list']), 'total_reward' => number_format($stagingUsed['store'], 1)]);
                        }

                    }
                } else {
                    $stagingStore = $packageStaging->stagingStore($whereStaging);

                    if ($param['grip_type'] == 2) {  //獎賞記錄
                        $stagingUsed = $packageStaging->rewardUsed($whereStaging);

                        $total_reward = $stagingStore['reward'] - $stagingUsed['reward'];

                        $list = array_merge($stagingStore['list'], $stagingUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_reward' => number_format($total_reward, 1)]);
                    } else {
                        //  elseif ($param['grip_type'] == 1) { //儲值記錄
                        $stagingUsed = $packageStaging->storeUsed($whereStaging);

                        $total_store = $stagingStore['store'] - $stagingUsed['store'];

                        $list = array_merge($stagingStore['list'], $stagingUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_store' => number_format($total_store, 1)]);
                    }


                }

            }
        } else {
            if ($param['action']) {  //動作
                if ($param['action'] == 1) {   //增值
                    $invoiceStore = $invoice->invoiceStore($whereInvoice);
                    $stagingStore = $packageStaging->stagingStore($whereStaging);

                    $total_store = $invoiceStore['store'] + $stagingStore['store'];

                    $list = array_merge($invoiceStore['list'], $stagingStore['list']);

                    return json(['rows' => $list, 'total' => count($list), 'total_store' => number_format($total_store, 1)]);
                }
                elseif ($param['action'] == 2) {  //使用
                    if ($param['grip_type'] == 2) {  //獎賞記錄
                        $invoiceUsed = $invoice->rewardUsed($whereInvoice);
                        $stagingUsed = $packageStaging->rewardUsed($whereStaging);

                        $total_reward = $invoiceUsed['reward'] + $stagingUsed['reward'];

                        $list = array_merge($invoiceUsed['list'], $stagingUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_reward' => number_format($total_reward, 1)]);
                    } else {
                        //  elseif ($param['grip_type'] == 1) { //儲值記錄
                        $invoiceUsed = $invoice->storeUsed($whereInvoice);
                        $stagingUsed = $packageStaging->storeUsed($whereStaging);

                        $total_store = $invoiceUsed['store'] + $stagingUsed['store'];

                        $list = array_merge($invoiceUsed['list'], $stagingUsed['list']);

                        return json(['rows' => $list, 'total' => count($list), 'total_store' => number_format($total_store, 1)]);
                    }


                }
            } else {
                $invoiceStore = $invoice->invoiceStore($whereInvoice);
                $stagingStore = $packageStaging->stagingStore($whereStaging);
                if ($param['grip_type'] == 2) {  //獎賞記錄
                    $invoiceUsed = $invoice->rewardUsed($whereInvoice);
                    $stagingUsed = $packageStaging->rewardUsed($whereStaging);

                    $total_reward = $invoiceStore['reward'] + $stagingStore['reward'] - $invoiceUsed['reward'] - $stagingUsed['reward'];

                    $list = array_merge($invoiceStore['list'], $stagingStore['list'], $invoiceUsed['list'], $stagingUsed['list']);

                    return json(['rows' => $list, 'total' => count($list), 'total_reward' => number_format($total_reward, 1)]);
                } else {
                    //  elseif ($param['grip_type'] == 1) { //儲值記錄
                    $invoiceUsed = $invoice->storeUsed($whereInvoice);
                    $stagingUsed = $packageStaging->storeUsed($whereStaging);

                    $total_store = $invoiceStore['store'] + $stagingStore['store'] - $invoiceUsed['store'] - $stagingUsed['store'];

                    $list = array_merge($invoiceStore['list'], $stagingStore['list'], $invoiceUsed['list'], $stagingUsed['list']);

                    return json(['rows' => $list, 'total' => count($list), 'total_store' => number_format($total_store, 1)]);
                }

            }
        }

        //  return json(['rows' => $list, 'total' => count($list)]);
    }


    //獎賞記錄
    public function reward()
    {
        $grid_url = url("stored_value_list");

        $start_date = $params["start_date"] ?? date('Y-m-01');
        $end_date  =  $params["end_date"] ??  date('Y-m-t');

        $member_id = input('id', 0);
        if ($member_id) {
            $invoice_reward = Db::name('invoice')->where('member_id', $member_id)->sum('member_reward');
            $staging_reward = Db::name('package_staging')->where('member_id', $member_id)->sum('member_reward');

            $invoice_used = Db::name('invoice_payment')->alias('ip')->leftJoin('invoice i', 'i.id = ip.invoice_id')->leftJoin('mapping m', 'm.id = ip.method')->where(['i.member_id' => $member_id, 'm.type_id' => 'payment_method', 'm.name' => '獎賞'])->sum('ip.amount');
            $staging_used = Db::name('package_staging_payment')->alias('psp')->leftJoin('package_staging ps', 'ps.id = psp.package_staging_id')->leftJoin('mapping m', 'm.id = psp.method')->where(['ps.member_id' => $member_id, 'm.type_id' => 'payment_method', 'm.name' => '獎賞'])->sum('psp.amount');

            $total_reward = $invoice_reward + $staging_reward;

            $reward_used = $invoice_used + $staging_used;

            $current_reward = $total_reward - $reward_used;
        }

        View::assign([
            'start_date' => $start_date,
            'end_date' => $end_date,
            'grid_url' => $grid_url,
            'current_reward' => number_format($current_reward, 1),
            'total_reward' => number_format($total_reward, 1),
            'reward_used' => number_format($reward_used, 1),
        ]);

        return View::fetch('reward');
    }


    //導入
    public function import_data(Member $model)
    {
        //获取表格的大小，限制上传表格的大小5M
        $file_size = $_FILES['file']['size'];
        if ($file_size > 5 * 1024 * 1024) {
            $this->error('文件大小不能超过5M');
            exit();
        }

        if (is_uploaded_file($_FILES['file']['tmp_name'])) {
            $file = $_FILES['file']['tmp_name'];

            $data = importExecl($file);

//            var_dump($data['data']);
            $result = $model->insertAll($data['data']);

            if ($data['code'] == 200) {
                if ($result) {
                    $usersExits = empty($data['usersExits']) ? '' : implode(" / ", $data['usersExits']);
                    return json(['code' => 200, 'usersExits' => $usersExits]);
                } else {
                    return json(['code' => 0, 'msg' => 'insert failed']);
                }
            } else {
                return json($data);
            }
        } else {
            return json(['code' => 0, 'msg' => 'no file upload']);
        }
    }

}
