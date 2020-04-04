<?php
/**
 * Equipment控制器
 */

namespace app\index\controller;

use think\facade\View;
use think\Request;
use app\model\Equipment;
use app\Application;

use app\validate\EquipmentValidate;

class Equipments extends Application
{

    //列表
    public function index()
    {
/*
        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding', 'Details', 'Account', 'Contact'];
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
            return exportData($header, $body, 'Equipment-' . date('Y-m-d-H-i-s'));
        }
        $search = input('get.search');

        $data = $model::whereOr([
            ['detail', 'like', $search . '%'],
            ['regarding', 'like', $search . '%'],

        ])->paginate();
        //关键词，排序等赋值

        View::assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'search' => $search
        ]);

        return View::fetch();*/
        $store_id = input('get.store_id');
        View::assign([
            'grid_url' => url('lists',['store_id' => $store_id]),
        ]);
        return View::fetch();

    }


/*    public function panel(Request $request)
    {
        session('Equipment_type',"0");
        $param = $request->param();
        $where = [];
        if(isset($param['account_id'])){
            $where['account_id'] = $param['account_id'];
        }
        if(isset($param['contact_id'])){
            $where['contact_id'] = $param['contact_id'];
        }
        $data = Equipment::where($where)->select();
        View::assign('data',$data);
        return View::fetch();
    }*/

    public function panel()
    {
        $store_id = input('get.store_id');
        View::assign([
            'grid_url' => url('lists',['store_id' => $store_id]),
            'store_id' => $store_id
        ]);
        return View::fetch();
    }

    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'name';
        $order = $param['order'];
        $where = [];
        $where[] = ['store_id', '=', $param['store_id']];
        if(!empty($param['search'])){
            $where[] = ['name', 'like', '%'.$param['search'].'%'];
        }
        $items = Equipment::where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Equipment::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }




    //添加
    public function add(Request $request, Equipment $equipment,EquipmentValidate $validate)
    {
/*        $item = [];
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

                    $fileinfo = uploadFile($file, 'Equipment');

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

            $result = $equipment::insertGetId($params);
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
*/
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
            }

            $result = $equipment::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item['store_id'] = input('get.store_id');
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');


    }

    //修改
    public function edit($id, Request $request, Equipment $model, EquipmentValidate $validate)
    {

        $item = $model::find($id);
        if ($request->isPost()) {
            $params = $request->param();
            $validate_result = $validate->scene('edit')->check($params);
            if (!$validate_result) {
                return error($validate->getError());
            }
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

                    $fileinfo = uploadFile($file, 'Equipment');

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
     public function to_download($id,Equipment $Equipment)
     {
        $item =$Equipment->where('id',$id)->find();
        return download($item->save_path,$item->file_name);
     }




    //删除
    public function del($id, Equipment $model)
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
