<?php
/**
 * Expense控制器
 */

namespace app\index\controller;

use think\facade\View;
use think\Request;
use app\model\Expense;
use app\Application;

use app\validate\ExpenseValidate;

class Expenses extends Application
{

    //列表
    public function index(Request $request, Expense $model)
    {

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding', 'Details', 'Booking', 'Contact'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['type'] = $item->type;
                $record['name'] = $item->name;
                $record['comment'] = $item->comment;
                $record['quantity'] = $item->quantity;
                $record['amount'] = $item->amount;


                $body[] = $record;
            }
            return exportData($header, $body, 'Expense-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['type', 'like', $search . '%'],
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
    public function add(Request $request, Expense $Expense)
    {

        if ($request->isPost()) {
            $params = input('post.');
            if ($_FILES) {
                // 上传文件错误或者文件验证不通过时，都会抛出异常，所以要使用try来捕捉异常
                try {
                    // 获取上传的文件，如果有上传错误，会抛出异常
                    $file = \think\Facade\Request::file('file');

                    // 如果上传的文件为null，手动抛出一个异常，统一处理异常
                    if (null === $file) {
                        // 异常代码使用UPLOAD_ERR_NO_FILE常量，方便需要进一步处理异常时使用
                        throw new \Exception('请上传文件', UPLOAD_ERR_NO_FILE);
                    }

                    $fileinfo = uploadFile($file, 'Expense');

                    if ($fileinfo) {
                        $params['file_name'] = $fileinfo['original_name'];
                        $params['save_name'] = $fileinfo['save_name'];
                        $params['file_ext'] = $fileinfo['extension'];
                        $params['file_mime_type'] = $fileinfo['mine'];
                        $params['file_size'] = $fileinfo['size'];
                        $params['url'] = $fileinfo['url'];
                        $params['save_path'] = $fileinfo['save_path'];
                    }

                } catch (\Exception $e) {
                    // 如果上传时有异常，会执行这里的代码，可以在这里处理异常
                    return json([
                        'code' => 1,
                        'msg' => $e->getMessage(),
                    ]);
                }
            }
            unset($params['file']);
            //编号
            $param['code'] = Expenses::getConfigNo('expenditure','expense');
            $result = $Expense::insertGetId($params);
            $params['id'] = $result;
            if ($result) {
                return json_encode(['code' => 200]);
            } else {
                return json_encode(['code' => 0]);
            }
        }
        View::assign([
            'act' => url('add'),
        ]);
        return view('form');

    }

    //修改
    public function edit($id, Request $request, Expense $model, ExpenseValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $params = $request->param();

            if ($_FILES) {
                // 上传文件错误或者文件验证不通过时，都会抛出异常，所以要使用try来捕捉异常
                try {
                    // 获取上传的文件，如果有上传错误，会抛出异常
                    $file = \think\Facade\Request::file('file');

                    // 如果上传的文件为null，手动抛出一个异常，统一处理异常
                    if (null === $file) {
                        // 异常代码使用UPLOAD_ERR_NO_FILE常量，方便需要进一步处理异常时使用
                        throw new \Exception('请上传文件', UPLOAD_ERR_NO_FILE);
                    }

                    $fileinfo = uploadFile($file, 'Expense');

                    if ($fileinfo) {
                        $params['file_name'] = $fileinfo['original_name'];
                        $params['save_name'] = $fileinfo['save_name'];
                        $params['file_ext'] = $fileinfo['extension'];
                        $params['file_mime_type'] = $fileinfo['mine'];
                        $params['file_size'] = $fileinfo['size'];
                        $params['url'] = $fileinfo['url'];
                        $params['save_path'] = $fileinfo['save_path'];
                    }

                } catch (\Exception $e) {
                    // 如果上传时有异常，会执行这里的代码，可以在这里处理异常
                    return json([
                        'code' => 1,
                        'msg' => $e->getMessage(),
                    ]);
                }
            }

            $result = $item->save($params);
            if ($result) {
                return json_encode(['code' => 200]);
            } else {
                return json_encode(['code' => 0]);
            }

        }
        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }

    //下载
     public function to_download($id,Expense $Expense)
     {
        $item =$Expense->where('id',$id)->find();
        return download($item->save_path,$item->name);
     }




    //删除
    public function del($id, Expense $model)
    {
        $data = $model::find($id);
        View::assign('data', $data);
        $data->delete();
        View::assign('page', $data);
        return redirect(url('index'));
    }


}
