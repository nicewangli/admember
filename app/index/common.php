<?php
/**
*
* 函数：日志记录
* @param  string $log   日志内容。
* @param  string $name （可选）用户名。
*
**/

use app\index\controller\Setting;
use app\model\Lead;
use app\model\Contact;
use app\model\Store;
use app\model\User;
use think\Config;
use think\facade\Db;
use think\facade\Session;
use app\Application;

function addlog($log, $username=false)
{
    if ($username) {
        \think\facade\Db::name('log')->insert(['username'=>$username,'log'=>$log,'ip'=>$_SERVER["REMOTE_ADDR"],'t'=>time()]);
    }
}


function setLead($item,$lead_id){
    if(!empty($lead_id)){
        $lead = Lead::find($lead_id);
        if($lead){
            $item['lead_id'] = $lead_id;
            $item['lead_name'] = $lead['name'];
        }
    }
    return $item;

}



function setContact($item,$contact_id)
{
    if(!empty($contact_id)) {
        $contact = Contact::find($contact_id);
        if ($contact) {
            $item['contact_id'] = $contact_id;
            $item['lead_name'] = $contact['first_name'] . ' ' . $contact['last_name'];
            if (!empty($contact['lead_id'])) {
                $item = setLead($item, $contact['lead_id']);
            }
        }
    }
    return $item;

}

#Get days by year and month
function getDays_ym($month, $year){
    // Start of Month
    $start = new DateTime("{$year}-{$month}-01");
    $month = $start->format('F');

    // Prepare results array
    $results = array();

    // While same month
    while($start->format('F') == $month){
        // Add to array
        $day              = $start->format('D');
        $sort_date        = $start->format('j');
        $date             = $start->format('Y-m-d');
        $results[$date]   = ['day' => $day,'sort_date' => $sort_date,'date' => $date];

        // Next Day
        $start->add(new DateInterval("P1D"));
    }
    // Return results
    return $results;
}

function getDays($start_date, $end_date){
    $results = array();

    while (strtotime($start_date) <= strtotime($end_date)) {
        $start = new DateTime($start_date);
        $day              = $start->format('D');
        $sort_date        = $start->format('j');
        $date             = $start->format('Y-m-d');
        $results[$date]   = ['day' => $day,'sort_date' => $sort_date,'date' => $date];
        $start_date = date ("Y-m-d", strtotime("+1 days", strtotime($start_date)));
    }

    // Return results
    return $results;
}


function getDayItem($attendances,$user_id,$vdate){
    $atts = [];
    foreach( $attendances as $att){
        if($att['user_id'] == $user_id and $att['vdate'] == $vdate){
            $atts[] = $att['item'];
        }
    }
    $item_name = implode("",$atts);
    return $item_name;
}




function getOptions($type_id){
    $data = Db::name('mapping')->where(['type_id' => $type_id])->select();
    return $data;
}

function getUsers(){
    $data = Db::name('users')->field("uid,concat_ws(' ',first_name,last_name) as name")->select();
    return $data;
}

function flash_messages(){
    $types = ['success','error','info','warning'];
    foreach ($types as $type){
        if(session("?flash_".$type)){
            echo "<script>tips('".session('flash_'.$type)."','".$type."')</script>";
        }
    }
}


/**
 * 获取当前用户信息
 * @return array|\think\Model|null
 * @throws \think\db\exception\DataNotFoundException
 * @throws \think\db\exception\DbException
 * @throws \think\db\exception\ModelNotFoundException
 */
function getUser(){
    $uid = Session::get('uid');
    $userInfo = User::find($uid);
    return $userInfo;
}


function getStores(){
//    $user_id = getUserId();
//    $store_id = User::where('uid', $user_id)->value('store');
    $stores = Db::name('store')->field("id,name")->select();

    return $stores;
}

function getRooms(){
    $stores = Db::name("room")->field("id,name")->select();
    return $stores;
}

/**
 * 获取当前用户对应店铺的仓库
 * @return mixed
 * @throws \think\db\exception\DataNotFoundException
 * @throws \think\db\exception\DbException
 * @throws \think\db\exception\ModelNotFoundException
 */
function getWarehouse()
{
    $user = getUser();
    $store = Store::find($user->store_id);
    return $store->warehouse_id;
}



//function getConfigNo($app,$type='',$dbName){
//    $app = new Application($app);
//    $no = '';
//    $count = Db::table($dbName)->select()->count();
//    $no = (string)$count;
//    //员工编号拼凑
//    if($type == 'employee') {
//        for($i = strlen($no); $i < strlen($app->sysConfig['value5']); ++$i) {
//            $no = '0'.$no;
//        }
//        $no = $app->sysConfig['employee_data'].$no;
//    }
//    return $no;
//}

//Whatsapp Handler
function check_health($uid){
    $number = "";
    //return number if session[:user_whatsapp].blank?
    $url = "http://127.0.0.1:8088/health?uid=".$uid;
    $response = \Httpful\Request::get($url)
        ->send();
    return $response->body;
}

function wa_sendMessage($to_phone,$content,$sender) {
    if(!empty($to_phone) && !empty($content) && !empty($sender)){
		$to_phone = wa_phone_format($to_phone);
        $url = "http://127.0.0.1:8088/send";
        $response = \Httpful\Request::post($url)
            ->sendsType(\Httpful\Mime::FORM)
            ->body(['msg_type' => 'text', 'phone' => $to_phone, 'content' => $content,'uid' => $sender])
            ->send();
        return $response->body;
    }
}


function wa_phone_format($to_phone){
	    $si = substr($to_phone,0,3);
        $suffixs = ["852","853","861"];
        if(!in_array($si, $suffixs)){
            $to_phone = "852".$to_phone;
        }
		return $to_phone;
}