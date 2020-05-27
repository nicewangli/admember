<?php
/**
 * Account模型
*/

namespace app\model;
use app\model\Member;


class Booking extends Model
{

    public function member()
    {
        return $this->belongsTo(Member::class);
    }

    public function room()
    {
        return $this->belongsTo(Room::class);
    }


    public function bookingItems(){
        return $this->hasMany(BookingItem::class);
    }

    public static  function event_status(){
        return ['new' => 1,'confirmed' => 2, 'new_confirmed' => 3,'unreachable' => 4,'present' => 5,'absent' => 6,'charged' => 9,'closed' => -1,'deleted' => 0];
    }
    public static function event_status_zn(){
        return ['新預約' => 1,'已通知' => 2, '新客已通知' => 3,'未能聯絡' => 4,'已到' => 5,'缺席' => 6,'已扣除套票' => 9,'closed' => -1,'deleted' => 0];
    }
    public static  function event_colors(){
        return [1 => '#28a745',2 => '#ffc107', 3 => '#fd7e14', 4 => '#dc3545', 5 => '#17a2b8',6 => '#D3D3D3',9 => '#e83e8c'];
    }

    public static function status_colors()
    {
        $statusArr = Booking::event_status_zn();
        $colorsArr = Booking::event_colors();
        $scArr = [];
        foreach ($statusArr as $sk=>$sv) {
            foreach ($colorsArr as $ck=>$cv) {
                if($sv == $ck) {
                    $scArr[$sk] = $cv;
                }
            }
        }
        return $scArr;
    }

    public function getCreatedUserNameAttr($value, $data)
    {
        return User::where('uid', $data['created_user_id'])->value('first_name');
    }

    public function getUpdatedUserNameAttr($value, $data)
    {
        return User::where('uid', $data['updated_user_id'])->value('first_name');
    }

    public function getTeamTitleAttr($value, $data)
    {
        return Team::where('id', $data['team_id'])->value('title');
    }

    public function booking_notes($member_id)
    {
        $booking = $this->where(['member_id' => $member_id])->count();
        $absence = $this->where(['member_id' => $member_id, 'status' => 6])->count();
        $birthday = Member::where('id', $member_id)->value('date_of_birth');

        $notes = [];
        $notes['booking'] = intval($booking);
        $notes['absence'] = intval($absence);
        $notes['percent'] = $booking == 0 ? 0 : number_format($absence / $booking * 100, 1);
        $notes['birthday'] = date('n月j日', strtotime($birthday));
        $notes['reservation_remarks'] = Member::where('id', $member_id)->value('reservation_remarks');

        return $notes;
    }

}
