<?php
/**
 * Project控制器
 */

namespace app\index\controller;

use think\Request;
use app\model\Project;
use think\facade\View;
use app\validate\ProjectValidate;

class Projects extends Application
{

    //列表
    public function index(Request $request, Project $model)
    {
        $param = $request->param();
        $model  = $model->scope('where', $param);
        if (isset($param['export_data']) && $param['export_data'] == 1) {
    $header = ['Booking ','Est. Start Date','Est. End Date','Status','Sales Rep','Incharge','Team Member',];
    $body   = [];
    $data   = $model->select();
    foreach ($data as $item) {
        $record       = [];
        $record['account_id'] = $item->account_id;
$record['expected_start_date'] = $item->expected_start_date;
$record['expected_end_date'] = $item->expected_end_date;
$record['status'] = $item->status_text;
$record['salesperson'] = $item->salesperson;
$record['leader'] = $item->leader;
$record['team_members'] = $item->team_members;

        $body[]       = $record;
    }
    return exportData($header, $body, 'project-' . date('Y-m-d-H-i-s'));
}
        $data = $model->paginate(10, false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        View::assign($request->get());

        View::assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),
            
        ]);
        return View::fetch();
    }

    //添加
    public function add(Request $request, Project $model, ProjectValidate $validate)
    {
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }


            $result = $model::create($param);

            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
               $url = URL_RELOAD;
            }

            return $result ? success('Add success',$url) : error();
        }

        

        return View::fetch();
    }

    //修改
    public function edit($id, Request $request, Project $model, ProjectValidate $validate)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }


            $result = $data->save($param);

        }

        View::assign([
            'data' => $data,
            
        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Project $model)
    {
        if (count($model->noDeletionId) > 0) {
            if (is_array($id)) {
                if (array_intersect($model->noDeletionId, $id)) {
                    return error('ID:' . implode(',', $model->noDeletionId) . 'can not be deleted');
                }
            } else if (in_array($id, $model->noDeletionId)) {
                return error('ID:' . $id . 'can not be deleted');
            }
        }

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('Delete success', URL_RELOAD) : error();
    }

    
}
