<?php
/**
 * Expense控制器
 */

namespace app\index\controller;

use app\model\Mapping;
use think\facade\View;
use think\Request;
use app\model\Expense;
use app\model\ExpenseItem;
use app\Application;

use app\validate\ExpenseValidate;

class Expenses extends Application
{

    //列表
    public function index(Request $request, Expense $model)
    {

        $param = $request->param();
        $search = isset($param['search']) ? $param['search'] : '';
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Code', 'Expense Time', 'Store', 'Total'];
            $body = [];
            $data = $model->alias('e')->leftJoin('store s', 'e.store_id = s.id')->field('e.*, s.name as store_name')->whereOr([
                ['e.code', 'like', '%'. $search . '%'],
                ['s.name', 'like', '%'. $search . '%'],

            ])->select();

            foreach ($data as $item) {
                $record = [];
                $record['code'] = $item->code;
                $record['expense_time'] = $item->expense_time;
                $record['store'] = $item->store_name;
                $record['total'] = $item->total;


                $body[] = $record;
            }
            return exportData($header, $body, 'Expense-' . date('Y-m-d-H-i-s'));
        }

        $data = $model->alias('e')->leftJoin('store s', 'e.store_id = s.id')->field('e.*, s.name as store_name')->whereOr([
            ['e.code', 'like', '%'. $search . '%'],
            ['s.name', 'like', '%'. $search . '%'],

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


    public function panel(Request $request)
    {
        session('Expense_type',"0");
        $param = $request->param();
        $where = [];
        if(isset($param['account_id'])){
            $where['account_id'] = $param['account_id'];
        }
        if(isset($param['contact_id'])){
            $where['contact_id'] = $param['contact_id'];
        }
        $data = Expense::where($where)->select();
        View::assign('data',$data);
        return View::fetch();
    }





    //添加
    public function add(Request $request, Expense $model, ExpenseValidate $validate, ExpenseItem $expenseItem)
    {

        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['created_user_id'] = getUserId();
            $param['created_time'] = time();
            $result = $model::create($param);
            $expense_id = $result->id;
            if (isset($param['item'])) {
                $expenseItem->saveItem($expense_id, $param['item']);
            }

            return json(['code' => 200]);
        }

        $current_store = getStore();
        $data['store_id'] = $current_store['id'];
        $data['store_name'] = $current_store['name'];
        $data['items'] = [];

        View::assign([
            'act' => url('add'),
            'data' => $data,
        ]);
        return view('form');

    }

    //修改
    public function edit($id, Request $request, Expense $model, ExpenseValidate $validate, ExpenseItem $expenseItem, Mapping $mapping)
    {

        $data = $model->alias('e')->leftJoin('store s', 'e.store_id = s.id')->field('e.*, s.name as store_name')->find($id);
        if ($request->isPost()) {
            $param = input('post.');
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return $this->error($validate->getError());
            }

            $param['updated_user_id'] = getUserId();
            $param['updated_time'] = time();
            $result = $data->save($param);
            if (isset($param['item'])) {
                $expenseItem->saveItem($param['id'], $param['item']);
            }
            if ($result) {
                return json(['code' => 200]);
            } else {
                return json(['code' => 0]);
            }

        }
        $items = $data->items->toArray();

        foreach ($items as $key => $value) {
            $items[$key]['mapping_value'] = $mapping->where('id', $value['mapping_id'])->value('val');
        }
        //排序
        $ordering = array_column($items, 'ordering');
        array_multisort($ordering, $items);
        $data['items'] = $items;

        View::assign([
            'data' => $data,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }


    //删除
    public function del($id, Expense $model, ExpenseItem $expenseItem)
    {
        $data = $model::find($id);
        $result = $data->delete();
        if ($result) {
            $expenseItem->delItems($id);
        }
        return redirect(url('index'));
    }


    //delete item
    public function del_item(ExpenseItem $expenseItem){
        $ids = input('ids');
        $result = $expenseItem->whereIn('id', $ids)->delete();
        if ($result) {
            return json(['code' => 200]);
        }else{
            return json(['code' => 0]);
        }
    }
}
