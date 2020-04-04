<?php
/**
 * LookupField控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\LookupField;

use app\validate\LookupFieldValidate;

class LookupFields extends Application
{

    //列表
    public function index(Request $request, LookupField $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['ID','Component','Column','Ordering','Mapping type','New an item for'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['id'] = $item->id;
                $record['component'] = $item->component;
                $record['column'] = $item->column;
                $record['ordering'] = $item->ordering;
                $record['mapping_type_id'] = $item->mapping_type_id;
                $record['module'] = $item->module;


                $body[] = $record;
            }
            return exportData($header, $body, 'LookupField-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['id', 'like', $search . '%'],
            ['column', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);
        return View::fetch();
    }

    //添加
    public function add(Request $request, LookupField $model, LookupFieldValidate $validate)
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
    public function edit($id, Request $request, LookupField $model, LookupFieldValidate $validate)
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
    public function del($id, LookupField $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
