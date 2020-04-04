<?php
/**
 * Opportunitie控制器
 */

namespace app\index\controller;
use think\facade\View;
use think\Request;
use app\model\Opportunity;
use app\Application;
use app\validate\OpportunityValidate;

class Opportunities extends Application
{
    //列表
    public function index()
    {

        $param = input('get.');
        $grid_url = url("lists");
        return View::fetch('index',['grid_url' => $grid_url]);
    }







    public function export(Request $request, Opportunity $model)
    {
        $param = $request->param();

        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding','Account','Contact','Campaign','Status','stage','Competitor1','Competitor2',
                'Create date','Est.closing date','Date closed','Sales Estimate($)','Sales%','Company%','Competitor3'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['title'] = $item->title;
                $record['account_id'] = $item->account_id;
                $record['contact_id'] = $item->contact_id;
                $record['status'] = $item->status;
                $record['sales_stage'] = $item->sales_stage;
                $record['competitor1_id'] = $item->competitor1_id;
                $record['competitor2_id'] = $item->competitor2_id;
                $record['created_at'] = $item->created_at;
                $record['est_date_closed'] = $item->est_date_closed;
                $record['date_closed'] = $item->date_closed;
                $record['amount'] = $item->amount;
                $record['probability'] = $item->probability;
                $record['company'] = $item->company;
                $record['competitor3_id'] = $item->competitor3_id;

                $body[] = $record;
            }
            return exportData($header, $body, 'Opportunitie-' . date('Y-m-d-H-i-s'));
        }
          $search = input('get.search');

        $data = $model::whereOr([
            ['campaign_id', 'like', $search . '%'],
            ['account_id', 'like', $search . '%'],

        ])->paginate();

        //关键词，排序等赋值

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search'=>$search

        ]);
        return View::fetch();
    }


    public function panel(Request $request)
    {
        $param = input('get.');
        $panel = $param['panel'];
        $panel_id = $param['panel_id'];
        $panel_field = $panel.'_id';
        $grid_url = url("opportunities/lists",[$panel_field => $panel_id]);
        $add_url = url("opportunities/add",[$panel_field => $panel_id]);
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
        $items = Opportunity::with(['lead'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Opportunity::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }


    //添加
    public function add(Request $request, Opportunity $model, OpportunityValidate $validate)
    {
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }
            $result = $model::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item = [];
            $param = input('get.');
            $item['date_start'] = isset($param['date_start']) ? $param['date_start'] : date("Y-m-d H:i:s");
            $item['date_end'] = isset($param['date_end']) ? $param['date_end'] : date("Y-m-d H:i:s", strtotime("+1 hour"));
            if (isset($param['lead_id'])) {
                $item = setLead($item, $param['lead_id']);
            }
            if (isset($param['contact_id'])) {
                $item = setContact($item, $param['contact_id']);
            }
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');

    }
    //修改
    public function edit($id, Request $request, Opportunity $model, OpportunityValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg'=> 'Success']);
            } else {
                return json(['code' => 0,'msg'=> 'Failed!']);

            }

        }
        $item = setLead($item,$item['contact_id']);

        View::assign([
            'item' => $item,
            'act' => url('edit'),

        ]);
        return View::fetch('form');

    }

    //删除
    public function del($id, Opportunity $model)
    {
        $data = $model::find($id);
        $res = $data->delete();
        if ($res) {
            return json(['code' => 200,'msg' => 'Delete success.']);
        } else {
            return json(['code' => 0,'msg' => 'Delete fail']);
        }
    }



}
