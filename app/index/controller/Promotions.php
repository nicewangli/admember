<?php
/**
 * Promotion控制器
 */

namespace app\index\controller;
use app\BaseController;
use app\model\Model;
use app\model\Promotion;
use app\validate\PromotionValidate;
use think\facade\View;
use think\Request;
use app\Application;

class Promotions extends Application
{

    //列表
    public function index(Request $request, Promotion $model)
    {

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Subject','Content','Group Name','Created At','Delivery Time','Send By' ];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['subject'] = $item->subject;
                $record['content'] = $item->content;
                $record['group_name'] = $item->group_name;
                $record['created_time'] = $item->contact_id;
                $record['delivery_time'] = $item->delivery_time;
                $record['sender'] = $item->sender;
                $body[] = $record;
            }
            return exportData($header, $body, 'Wapromotion-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['subject', 'like', $search . '%'],
            ['sender', 'like', $search . '%'],
        ])->paginate();

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
    public function add(Request $request, Promotion $model, PromotionValidate $validate)
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
    public function edit($id, Request $request, Promotion $model, PromotionValidate $validate)
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
    public function del($id, Promotion $model)
    {

        $params = input("get.");
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
