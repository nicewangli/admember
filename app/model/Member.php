<?php
/**
 * Contact模型
 */

namespace app\model;

use think\model\concern\SoftDelete;
use think\facade\Db;

class Member extends Model
{

    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];


    public function findMember($where)
    {
        return $this->field('id, first_name, code as member_no, phone_mobile, salutation')->where($where)->find();
    }

    public function findService($member_id, $service_type)
    {   
        $where['i.member_id'] = $member_id;
        $where['it.service_type'] = $service_type;
        $service = Db::name('invoice')->alias('i')->leftJoin('invoice_item it', 'i.id = it.invoice_id')->where($where)->select()->toArray();
        return $service;
    }

    public function getSalutationAttr($value)
    {
        $salutation = [0=>'男',1=>'女',2=>'保密'];
        return $salutation[intval($value)];
    }
}
