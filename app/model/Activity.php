<?php
/**
 * Activity
*/

namespace app\model;


class Activity extends Model
{


    public function lead()
    {
        return $this->belongsTo(Lead::class)->bind([
            'lead_name'	=> 'name',
        ]);
    }

    public function contact()
    {
        return $this->belongsTo(Contact::class)->bind([
            'contact_name' => 'full_name',
        ]);
    }



}
