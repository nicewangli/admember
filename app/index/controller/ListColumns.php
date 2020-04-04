<?php
/**
 * ListField控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\ListColumn;

use app\validate\ListColumnValidate;

class ListColumns extends Application
{

    //列表
    public function index(Request $request, ListColumn $model)
    {
        $param = $request->param();

        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['ID','Component','Column','Ordering','New an item for'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['id'] = $item->id;
                $record['component'] = $item->component;
                $record['column'] = $item->column;
                $record['ordering'] = $item->ordering;
                $record['module'] = $item->module;

                $body[] = $record;
            }
            return exportData($header, $body, 'ListField-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['id', 'like', $search . '%'],
            ['tables', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值
        View::assign($request->get());

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);
        return View::fetch();
    }

    //添加
    public function add(Request $request, ListColumn $model, ListColumnValidate $validate)
    {
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $result = $model::create($param);
            return $this->redirect(url("index"));
        }

        return view('add');
    }

    //修改
    public function edit($id, Request $request, ListColumn $model, ListColumnValidate $validate)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = $request->param();
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
    public function del($id, ListColumn $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
