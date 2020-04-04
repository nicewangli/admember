<?php
/**
 * Account模型
*/

namespace app\model;

use think\model\concern\SoftDelete;

class Booking extends Model
{

    public function account()
    {
        return $this->belongsTo(Account::class)->bind([
            'account_name'	=> 'name',
        ]);
    }

    public function contact()
    {
        return $this->belongsTo(Contact::class)->bind([
            'contact_name' => 'full_name',
        ]);
    }

    
}
