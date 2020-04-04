<?php
/**
*
* 函数：日志记录
* @param  string $log   日志内容。
* @param  string $name （可选）用户名。
*
**/

use app\model\Lead;
use app\model\Contact;
use think\facade\Db;


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
            $item['contact_name'] = $contact['first_name'] . ' ' . $contact['last_name'];
            if (!empty($contact['lead_id'])) {
                $item = setLead($item, $contact['lead_id']);
            }
            return $item;
        }
    }
}


function getDays($month, $year){
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