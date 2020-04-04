<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;
use app\BaseController;
use app\model\Model;
use app\model\Ar;
use app\validate\ArValidate;
use think\facade\View;
use think\Request;
use app\Application;

class Ars extends Application
{

    //列表
    public function index(Request $request, Ar $model)
    {

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Category','Keyword','Content','Ordering' ];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['category'] = $item->category;
                $record['keyword'] = $item->keyword;
                $record['content'] = $item->content;
                $record['ordering'] = $item->ordering;
                $body[] = $record;
            }
            return exportData($header, $body, 'Ar-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['category', 'like', $search . '%'],
            ['ordering', 'like', $search . '%'],
        ])->paginate(5);
        //关键词，排序等赋值

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' =>  $search
        ]);

        return View::fetch();
    }

    //添加
    public function add(Request $request, Ar $model, ArValidate $validate)
    {

        if ($request->isPost()) {
            $param = input('post.');
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
    public function edit($id, Request $request, Ar $model, ArValidate $validate)
    {

        $data = $model::find($id);
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }
            $result= $data->save($param);

        }
        View::assign([
            'data' => $data,

        ]);
        return View::fetch('add');

    }

    //删除
    public function del($id, Ar $model)
    {

        $params = input("get.");
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        return redirect(url('index'));

    }



}
