<?php
/**
 * Currencie控制器
 */

namespace app\index\controller;

use app\Application;
use think\facade\View;
use think\Request;
use app\model\Currencie;

use app\validate\CurrencieValidate;

class Currencies extends Application
{

    //列表
    public function index(Request $request, Currencie $model)
    {
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['ID','Currency name','Symbol','ISO 4217','Conversion rate','Written symbol'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['id'] = $item->id;
                $record['name'] = $item->name;
                $record['symbol'] = $item->symbol;
                $record['iso4217'] = $item->iso4217;
                $record['conversion_rate'] = $item->conversion_rate;
                $record['common_symbol'] = $item->common_symbol;

                $body[] = $record;
            }
            return exportData($header, $body, 'Currencie-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['id', 'like', $search . '%'],
            ['name', 'like', $search . '%'],

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
    public function add(Request $request, Currencie $model, CurrencieValidate $validate)
    {
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $result = $model::create($param);
            return $this->redirect(url("index"));
        }

        return view('add');
    }

    //修改
    public function edit($id, Request $request, Currencie $model, CurrencieValidate $validate)
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
    public function del($id, Currencie $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
