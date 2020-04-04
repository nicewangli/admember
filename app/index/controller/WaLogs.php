<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;
use app\model\WaLog;
use think\facade\View;
use think\Request;
use app\Application;

class WaLogs extends Application
{

    //列表
    public function index(Request $request, WaLog $model)
    {

        $param = $request->param();
        $model = $model->scope('where', $param);
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding','Details','Booking','Contact' ];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['regarding'] = $item->regarding;
                $record['detail'] = $item->detail;
                $record['account_id'] = $item->account_id;
                $record['contact_id'] = $item->contact_id;
                $body[] = $record;
            }
            return exportData($header, $body, 'Walog-' . date('Y-m-d-H-i-s'));
        }
        $data = $model->paginate(6, false, ['query' => $request->get()]);
        //关键词，排序等赋值
        View::assign($request->get());

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
        ]);

        return View::fetch();
    }


    //修改
    public function edit($id, Request $request, WaLog $model)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = input('post.');
            $result= $data->save($param);

        }
        View::assign([
            'data' => $data,

        ]);
        return redirect(url('index'));

    }

}
