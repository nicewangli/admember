<?php
/**
 * Activity
*/

namespace app\model;


class Module extends Model
{

	public function option(){
		return $this->field('id, name as text')->select();
	}
    
}
