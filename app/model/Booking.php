<?php
/**
 * Account模型
*/

namespace app\model;


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

    public static  function event_colors(){
        return [1 => '#28a745',2 => '#ffc107', 3 => '#fd7e14', 4 => '#dc3545', 5 => '#17a2b8',6 => '#6c757d',9 => '#e83e8c'];
    }

}
