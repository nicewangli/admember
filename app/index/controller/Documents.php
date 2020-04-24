<?php
/**
 * Document控制器
 */

namespace app\index\controller;

use think\facade\View;
use think\Request;
use app\model\Document;
use app\Application;

use app\validate\DocumentValidate;

class Documents extends Application
{

    //列表

    public function index()
    {

        $param = input('get.');
        $grid_url = url("lists");
        return View::fetch('index',['grid_url' => $grid_url]);
    }




    public function export(Request $request, Document $model)
    {

        $param = $request->param();
        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['Regarding', 'Details', 'Booking', 'Contact'];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['regarding'] = $item->regarding;
                $record['detail'] = $item->detail;
                $record['lead_id'] = $item->account_id;
                $record['contact_id'] = $item->contact_id;


                $body[] = $record;
            }
            return exportData($header, $body, 'Document-' . date('Y-m-d-H-i-s'));
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

        return View::fetch();
    }


    public function panel()
    {
        $param = input('get.');
        $panel = $param['panel'];
        $panel_id = $param['panel_id'];
        $panel_field = $panel.'_id';
        $grid_url = url("documents/lists",[$panel_field => $panel_id]);
        $add_url = url("documents/add",[$panel_field => $panel_id]);
        return View::fetch('panel',['grid_url' => $grid_url,'add_url' => $add_url]);
    }



    public function lists(){
        $param = input('get.');
        $limit = $param['limit'];
        $offset = $param['offset'];
        $sort = isset($param['sort']) ?  $param['sort'] :  'file_name';
        $order = $param['order'];
        $where = [];
        if(isset($param['lead_id'])){
            $where[] = ['lead_id', '=', $param['lead_id']];
        }
        if(isset($param['contact_id'])){
            $where[] = ['contact_id', '=', $param['contact_id']];
        }
        if(!empty($param['search'])){
            $where[] = ['file_name', 'like', '%'.$param['search'].'%'];
        }
        $items = Document::with(['lead'])->where($where)->limit($offset, $limit)->order($sort.' '.$order)->select();
        $total = Document::where($where)->count();
        $data = [
            'rows' => $items,
            'total' => $total,
        ];
        return $data;
    }




    //添加
    public function add(Request $request, Document $document,DocumentValidate $validate)
    {
        $item = [];
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return json(['code' => 0,'msg' => $validate->getError()]);
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

                    $fileinfo = uploadFile($file, 'document');

                    if ($fileinfo) {
                        $param['file_name'] = $fileinfo['original_name'];
                        $param['save_name'] = $fileinfo['save_name'];
                        $param['file_ext'] = $fileinfo['extension'];
                        $param['file_mime_type'] = $fileinfo['mine'];
                        $param['file_size'] = $fileinfo['size'];
                        $param['url'] = $fileinfo['url'];
                        $param['save_path'] = $fileinfo['save_path'];
                    }

                } catch (\Exception $e) {
                    // 如果上传时有异常，会执行这里的代码，可以在这里处理异常
                    return json([
                        'code' => 1,
                        'msg' => $e->getMessage(),
                    ]);
                }
            }

            unset($param['file']);

            $result = $document::insertGetId($param);
            $param['id'] = $result;
            if ($result) {
                return json(['code' => 200,'msg' => ' successfully.']);
            } else {
                return json(['code' => 0]);
            }
        }else{
            $item = [];
            $item = new Document();
            $param = input('get.');
            $item['date_start'] = isset($param['date_start']) ? $param['date_start'] : date("Y-m-d H:i:s");
            $item['date_end'] = isset($param['date_end']) ? $param['date_end'] : date("Y-m-d H:i:s", strtotime("+1 hour"));
            if (isset($param['lead_id'])) {
                $item = setLead($item, $param['lead_id']);
            }
            if (isset($param['contact_id'])) {
                $item = setContact($item, $param['contact_id']);
            }
        }
        View::assign([
            'item' => $item,
            'act' => url('add'),
        ]);
        return view('form');

    }

    //修改
    public function edit($id, Request $request, Document $model, DocumentValidate $validate)
    {

        $item = $model::find($id);

        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
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

                    $fileinfo = uploadFile($file, 'document');
                    if ($fileinfo) {
                        $param['file_name'] = $fileinfo['original_name'];
                        $param['save_name'] = $fileinfo['save_name'];
                        $param['file_ext'] = $fileinfo['extension'];
                        $param['file_mime_type'] = $fileinfo['mine'];
                        $param['file_size'] = $fileinfo['size'];
                        $param['url'] = $fileinfo['url'];
                        $param['save_path'] = $fileinfo['save_path'];
                    }

                } catch (\Exception $e) {
                    // 如果上传时有异常，会执行这里的代码，可以在这里处理异常
                    return json([
                        'code' => 1,
                        'msg' => $e->getMessage(),
                    ]);

                }
            }
            unset($param['file']);

            $result = $item->save($param);
            if ($result) {
                return json(['code' => 200,'msg'=> 'Success']);
            } else {
                return json(['code' => 0,'msg'=> 'Failed!']);

            }

        }
        $item = setLead($item,$item['contact_id']);

        View::assign([
            'item' => $item,
            'act' => url('edit'),
        ]);
        return View::fetch('form');

    }


    //下载
     public function to_download($id,Document $document)
     {
        $item =$document->where('id',$id)->find();
         if(file_exists($item->save_path)) {
             return download($item->save_path,$item->file_name);
         }else{
             echo '<literal><script>alert("File not exists!");</script></literal>';
         }
     }




    //删除
    public function del($id, Document $model)
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
