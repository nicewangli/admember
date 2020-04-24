<?php
/**
 * Contact控制器
 */

namespace app\index\controller;
use app\Application;
use app\model\Activity;
use app\model\Mapping;
use app\model\User;
use app\validate\ActivityValidate;
use think\facade\View;
use think\facade\Request;


class Activities extends Application
{

    //列表
    public function index()
    {
        $param = input('get.');
        $users = [];
        if(isset($param['share'])){
            $share = $param['share']  == 'true' ? true : false;
            session('calendar_share',$share);
        }else{
            $share = session('?calendar_share') ?: false;
        }
        $users = [];
        if(session('?calendar_share')){
            $users = User::order('username')->field('uid,username')->select();

        }

        $users = Mapping::where(['type_id' => 'activity_type'])->order('ordering')->select();


        if(!session('?activity_type')){
            session('activity_type',[0, 1, 2, 3,4]);
        }
        if(!session('?activity_user')){
            session('activity_user',[]);
        }
        return View::fetch('index',['calendar_share' => $share,'calendar_users' => $users]);
    }



    public function panel()
    {
        $param = input('get.');
        $panel = $param['panel'];
        $panel_id = $param['panel_id'];
        $panel_field = $panel.'_id';
        $grid_url = url("activities/lists",[$panel_field => $panel_id]);
        $add_url = url("activities/add",[$panel_field => $panel_id]);
        return View::fetch('panel',['grid_url' => $grid_url,'add_url' => $add_url]);
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'title';
        $order = $param['order'];
        $where = [];
        if(isset($param['lead_id'])){
            $where[] = ['lead_id', '=', $param['lead_id']];
        }
        if(isset($param['contact_id'])){
            $where[] = ['contact_id', '=', $param['contact_id']];
        }
        if(!empty($param['search'])){
            $where[] = ['title', 'like', '%'.$param['search'].'%'];
        }

        if(isset($param['filter'])){
            $filter = json_decode($param['filter'], JSON_UNESCAPED_UNICODE);

            $query_fields = ['parent_type','title','start_date','phone_work','email1'];
            foreach ($query_fields as $field){
                if(isset($filter[$field])) {
                    $where[] = [$field, 'like', $filter[$field] . '%'];
                }
            }

        }

        $items = Activity::with(['lead'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Activity::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }


    public function calendar(){
        $start_date = input('get.start');
        $end_date = input('get.end');
        $where = [];
        if(!empty($start_date) && !empty($end_date)){
            $where[] = ['date_start','between time' ,[$start_date,$end_date] ];
        }else if(!empty($start_date)){
            $end_date = strtotime("+1 day", strtotime($start_date));
            $where[] = ['date_start','between time' ,[$start_date,$end_date] ];
        }else if(!empty($end_date)){
            $where[] = ['date_start', '<= time', $end_date];
        }

        if(session('calendar_share')){
                if(!session('?activity_user')){
                    $uids = User::column("uid");
                    session('activity_user',$uids);
                }
                $where[] = ['assigned_user_id','in',session('activity_user')];
        }else{
            $where[] = ['assigned_user_id','=',session('uid')];
        }


        if(session('?act_type')){
            $where[] = ['act_type','in',session('act_type')];
        }


        $items = Activity::where($where)->field('id,title,act_type,assigned_user_id,date_start as start,date_end as end')->select();
        $data = [];
        foreach($items as $item){
            //$item['color'] = "#00a65a";
            $data[] = $item;
        }
        return json($data);
    }


    public function add(Activity $model, ActivityValidate $validate)
    {

        if (Request::isPost()) {
            $param = input('post.');
            $res = $model::create($param);
            if ($res) {
                $event = ['id' => $res['id'],'start' => $res['date_start'],'end' => $res['date_end'],'title' => $res['title']];
                return json(['code' => 200,'action' => 'add','event' => $event,'msg' => "Activity was created successfully!"]);
            } else {
                return json(['code' => 0,'msg' => "Create failure!"]);
            }
        }else{
            $item = [];
            $item = new Activity();

            $param = input('get.');
            $item['date_start'] = isset($param['date_start']) ? $param['date_start'] : date("Y-m-d H:i:s");
            $item['date_end'] = isset($param['date_end'])  ? $param['date_end'] : date("Y-m-d H:i:s", strtotime("+1 hour"));
            if(isset($param['lead_id'])){
                $item = setLead($item,$param['lead_id']);
            }
            if(isset($param['contact_id'])){
                $item = setContact($item,$param['contact_id']);
            }

            View::assign([
                'item' => $item,
                'act' => url('add'),
            ]);
            return view('form');
        }


    }



    //修改
    public function edit($id, Activity $model, ActivityValidate $validate)
    {

        $item = $model::find($id);
        if (Request::isPost()) {
            $param = Request::param();
            $res = $item->save($param);
            if ($res) {
                $event = ['id' => $item['id'],'start' => $item['date_start'],'end' => $item['date_end'],'title' => $item['title']];
                return json(['code' => 200,'action' => 'update','event' => $event,'msg' => "Activity was updated successfully!"]);
            } else {
                return json(['code' => 0,'msg' => "Create failure!"]);
            }
        }

         $item = setLead($item,$item['contact_id']);


        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }


    public function typeFilter(){
        $activity_type = intval(input('post.activity_type'));
        $checked = input('post.checked');
        $typs = session('activity_type');
        if($checked == "true"){
            $typs[] = $activity_type;
        }else{
            unset($typs[array_search($activity_type,$typs)]);
        }
        session('activity_type',$typs);
        return json($typs);
    }

    public function userFilter(){
        $uid = input('post.uid');
        $checked = input('post.checked');
        $typs = session('activity_user');
        if($checked == "true"){
            $typs[] = $uid;
        }else{
            unset($typs[array_search($uid,$typs)]);
        }
        session('activity_user',$typs);
        return json($typs);
    }

    protected function activityColor($activity_type){
        switch ($activity_type)
        {
            case 1:
                $color = 'label-info';
                break;
            case 2:
                $color = 'label-success';
                break;
            case 3:
                $color = 'label-danger';
                break;
            default:
                $color = 'label-yellow';
        }
        return $color;
    }

}
