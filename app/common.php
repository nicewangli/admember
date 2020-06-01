<?php
// 应用公共文件
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use think\facade\Db;
use think\facade\Session;
use app\model\User;
use app\model\Store;
/**
 * 函数：单图上传
 * @param string            表单名
 * @param number            宽度
 * @param number            高度
 * @param string            高度
 * @return string           显示图的URL
 * @return string           上传图的URL
 */
function UploadImage($name="image",$width=100,$height=100,$url=''){
	echo '<iframe scrolling="no" frameborder="0" border="0" onload="this.height=this.contentWindow.document.body.scrollHeight;this.width=this.contentWindow.document.body.scrollWidth;" width='.$width.' height="'.$height.'"  src="'.url('admin/upload/uploadpic',['name'=>$name,'width'=>$width,'height'=>$height,'url'=>base64_encode($url)]).'"></iframe><input type="hidden" name="'.$name.'" id="'.$name.'">';
}

/**
 * 函数：多图上传
 * @param string            表单名
 * @return string           显示图的URL
 * @return string           上传图的URL
 */
function UploadImages($name="image",$url=""){
    echo '<iframe scrolling="no" frameborder="0" border="0" onload="this.height=this.contentWindow.document.body.scrollHeight;this.width=this.contentWindow.document.body.scrollWidth;" src="'.url('admin/upload/uploadpics',['name'=>$name,'url'=>base64_encode($url)]).'"></iframe><input type="hidden" name="'.$name.'" id="'.$name.'">';
}

/**
 * 函数：加密
 * @param string            密码
 * @return string           加密后的密码
 */
function password($password){
    /*
    *后续整强有力的加密函数
    */
    return md5('~Chun!'.$password.'!Yan~');

}

/**
 * 随机字符
 * @param number $length 长度
 * @param string $type 类型
 * @param number $convert 转换大小写
 * @return string
 */
function random($length=6, $type='string', $convert=0){
    $config = array(
        'number'=>'1234567890',
        'letter'=>'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
        'string'=>'abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789',
        'all'=>'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'
    );

    if(!isset($config[$type])) $type = 'string';
    $string = $config[$type];

    $code = '';
    $strlen = strlen($string) -1;
    for($i = 0; $i < $length; $i++){
        $code .= $string{mt_rand(0, $strlen)};
    }
    if(!empty($convert)){
        $code = ($convert > 0)? strtoupper($code) : strtolower($code);
    }
    return $code;
}

/**
 * 函数：格式化字节大小
 * @param  number $size      字节数
 * @param  string $delimiter 数字和单位分隔符
 * @return string            格式化后的带单位的大小
 */
function format_bytes($size, $delimiter = '') {
	$units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
	for ($i = 0; $size >= 1024 && $i < 5; $i++) $size /= 1024;
	return round($size, 2) . $delimiter . $units[$i];
}

/**
 * 函数：性别获取
 * @param  number $sex      性别
 * @return string           返回性别
 */
function sex($sex=0) {
	if($sex==0){
		return '保密';
	}
	if($sex==1){
		return '男';
	}
	if($sex==2){
		return '女';
	}
}


//获取前一页面的action
function getAction($referer){
    $array = explode('/', $referer);
    $action = $array[count($array) - 2];
    return $action;
}



function uploadFiles($files, $dir){
    try {
        validate(['image'=>'filesize:10240|fileExt:jpg|image:200,200,jpg'])
            ->check($files);
        $savename = [];
        foreach($files as $file) {
            $path = \think\facade\Filesystem::disk('public')->putFile( $dir, $file, 'uniqid');
            $savename[] = \think\Facade\Filesystem::getDiskConfig('public', 'url') . '/' . str_replace('\\', '/', $path);
        }
    } catch (think\exception\ValidateException $e) {
        echo $e->getMessage();
    }
    $img = implode($savename, ',');
    return $img;
}

function uploadFile($file, $dir){

    // 使用验证器验证上传的文件
//    validate(['file' => [
//        // 限制文件大小(单位b)，这里限制为4M
//        'fileSize' => 4 * 1024 * 1024,
//        // 限制文件后缀，多个后缀以英文逗号分割
//        'fileExt'  => 'gif,jpg,png'
//        // 更多规则请看“上传验证”的规则，文档地址https://www.kancloud.cn/manual/thinkphp6_0/1037629#_444
//    ]])->check(['file' => $file]);

    // 文件名规则，默认是当前时间。可以使用哈希算法，如：md5,sha1等。还可以传入匿名函数
    $rule = 'date()';
    // 将文件保存public磁盘，文件名为$rule指定的规则。然后将文件路径赋值给$path
    $path = \think\Facade\Filesystem::disk('public')->putFile($dir, $file);
    // 拼接URL路径
    $url = \think\Facade\Filesystem::getDiskConfig('public', 'url') . '/' . str_replace('\\', '/', $path);
    $save_path = \think\Facade\Filesystem::getDiskConfig('public', 'root') . '/' . str_replace('\\', '/', $path);

    $url_arr = explode('/', $url );

    $info = [
        'save_path' => str_replace('\\', '/', $save_path),
        // URL路径
        'url'  => str_replace('\\', '/', $url),
        // 文件大小（字节）
        'size' => $file->getSize(),
        // 文件名
        'save_name' => $url_arr[count($url_arr)-1],
        'original_name' => $file->getOriginalName(),
        // 文件MINE：image/jpeg
        'mine' => $file->getMime(),
        //文件扩展名
        'extension' => $file->getOriginalExtension(),
    ];

    return $info;
}



function exportData($head, $body, $name = '', $version = '2007',$title='导出记录')
{
    try {
        // 输出 Excel 文件头
        if(empty($name)){
            $name =date('Y-m-d-H-i-s');
        }

        $spreadsheet   = new Spreadsheet();
        $sheetPHPExcel = $spreadsheet->setActiveSheetIndex(0);
        $char_index    = range('A', 'Z');
        //处理超过26列
        $a = 'A';
        foreach ($char_index as $item){
            $char_index[] = $a . $item;
        }

        // Excel 表格头
        foreach ($head as $key => $val) {
            $sheetPHPExcel->setCellValue("{$char_index[$key]}1", $val);
        }
        $spreadsheet->getActiveSheet()->setTitle($title);

        // Excel body 部分
        foreach ($body as $key => $val) {
            $row = $key + 2;
            $col = 0;
            foreach ($val as $k => $v) {
                $spreadsheet->getActiveSheet()->setCellValue("{$char_index[$col]}{$row}", $v);
                $col++;
            }
        }
        // 版本差异信息
        $version_opt = [
            '2007' => [
                'mime'       => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                'ext'        => '.xlsx',
                'write_type' => 'Xlsx',
            ],
            '2003' => ['mime'       => 'application/vnd.ms-excel',
                'ext'        => '.xls',
                'write_type' => 'Xls',
            ],
            'pdf'  => ['mime'       => 'application/pdf',
                'ext'        => '.pdf',
                'write_type' => 'PDF',
            ],
            'ods'  => ['mime'       => 'application/vnd.oasis.opendocument.spreadsheet',
                'ext'        => '.ods',
                'write_type' => 'OpenDocument',
            ],
        ];

        header('Content-Type: ' . $version_opt[$version]['mime']);
        header('Content-Disposition: attachment;filename="' . $name . $version_opt[$version]['ext'] . '"');
        header('Cache-Control: max-age=0');

        $objWriter = IOFactory::createWriter($spreadsheet, 'Xlsx');
        return $objWriter->save('php://output');
    } catch (Exception $e) {
        return $e->getMessage();
    }
}


function getUserId(){
    //登录判断
//    $auth = Cookie::get('auth');
    $auth = Session::get('auth');

    if ($auth) {
        list($identifier, $token) = str_split($auth,32);
            if (ctype_alnum($identifier) && ctype_alnum($token)) {
            $user_id = User::where(['identifier'=>$identifier,'token'=>$token,'status'=>1])->value('uid');
            if ($user_id) {
                return $user_id;
            }
        }
    }
}

function getStore(){
    $user_id = getUserId();

    $store_id = User::where('uid', $user_id)->value('store_id');
    $store = Store::find($store_id);

    return $store;
}

// 员工1对多店铺
function getStoreArr(){
    $storeModel = new Store();
    $user_id = getUserId();
    $storeIds = User::where('uid', $user_id)->value('store_id');
    $storeArr = explode(',',$storeIds);
    return $storeModel->whereIn('id',$storeArr)->select()->toArray();
}



function array_group_by($arr, $key)
{
    $grouped = [];
    foreach ($arr as $value) {
        $grouped[$value[$key]][] = $value;
    }
    if (func_num_args() > 2) {
        $args = func_get_args();
        foreach ($grouped as $key => $value) {
            $parms = array_merge([$value], array_slice($args, 2, func_num_args()));
            $grouped[$key] = call_user_func_array('array_group_by', $parms);
        }
    }
    return $grouped;
}


/**
 * 二维数组根据某个字段排序
 * @param array $array 要排序的数组
 * @param string $keys   要排序的键字段
 * @param string $sort  排序类型  SORT_ASC     SORT_DESC
 * @return array 排序后的数组
 */
function arraySort($array, $keys, $sort = SORT_DESC) {
    $keysValue = [];
    foreach ($array as $k => $v) {
        $keysValue[$k] = $v[$keys];
    }
    array_multisort($keysValue, $sort, $array);

    return $array;
}

function array_get_by_index($index, $array) {
    $i=0;
    foreach ($array as $value) {
        if($i==$index) {
            return $value;
        }
        $i++;
    }
    return NULL;
}


function workingHours($to_json=false){
    $start = '10:00:00';
    $end = '22:30:00';
    $time = strtotime($start);
    $timeStop = strtotime($end);
    $times = [];
    $val['id'] = date('H:i:s', $time);
    $val['text'] = date('H:i A', $time);
    $times[] = $val;
    while($time<$timeStop) {
        $time = strtotime('+30 minutes', $time);
        $val2['id'] = date('H:i:s', $time);
        $val2['text'] = date('H:i A', $time);
        $times[] = $val2;
    }
    if($to_json){
        return json_encode($times);
    }else{
        return $times;
    }
}

function attendanceHours($to_json=false){
    $start = '00:00:00';
    $end = '23:30:00';
    $time = strtotime($start);
    $timeStop = strtotime($end);
    $times = [];
    $val['id'] = date('H:i:s', $time);
    $val['text'] = date('h:i A', $time);
    $times[] = $val;
    while($time<$timeStop) {
        $time = strtotime('+30 minutes', $time);
        $val2['id'] = date('H:i:s', $time);
        $val2['text'] = date('h:i A', $time);
        $times[] = $val2;
    }
    if($to_json){
        return json_encode($times);
    }else{
        return $times;
    }
}

function datetime_merge($arr,$fmt='Y-m-d H:i')
{
    $all_dates = array();
    array_walk_recursive($arr, function ($date) use (&$all_dates) {
        $all_dates[] = strtotime($date);
    });
    sort($all_dates);
    $res = array('start_time' => date($fmt, reset($all_dates)), 'end_time' => date($fmt, end($all_dates)));
    return $res;
}



/**
 * 使用PHPEXECL导入
 *
 * @param string $file      文件地址
 * @param int    $sheet     工作表sheet(传0则获取第一个sheet)
 * @param int    $columnCnt 列数(传0则自动获取最大列)
 * @param array  $options   操作选项
 *                          array mergeCells 合并单元格数组
 *                          array formula    公式数组
 *                          array format     单元格格式数组
 *
 * @return array
 * @throws Exception
 */
function importExecl(string $file = '', int $sheet = 0, int $columnCnt = 0, &$options = [])
{
    try {
        /* 转码 */
        $file = iconv("utf-8", "gb2312", $file);

        /** @var Xlsx $objRead */
        $objRead = IOFactory::createReader('Xlsx');

        if (!$objRead->canRead($file)) {
            /** @var Xls $objRead */
            $objRead = IOFactory::createReader('Xls');

            if (!$objRead->canRead($file)) {
                throw new \Exception('只支持导入Excel文件！');
            }
        }

        /* 如果不需要获取特殊操作，则只读内容，可以大幅度提升读取Excel效率 */
        empty($options) && $objRead->setReadDataOnly(true);
        /* 建立excel对象 */
        $objPHPExcel = $objRead->load($file);
        /* 获取指定的sheet表 */
        $currSheet = $objPHPExcel->getSheet($sheet);

        if (isset($options['mergeCells'])) {
            /* 读取合并行列 */
            $options['mergeCells'] = $currSheet->getMergeCells();
        }

        if (0 == $columnCnt) {
            /* 取得最大的列号 */
            $columnH = $currSheet->getHighestColumn();
            /* 兼容原逻辑，循环时使用的是小于等于 */
            $columnCnt = Coordinate::columnIndexFromString($columnH);
        }

        /* 获取总行数 */
        $highestRow = $currSheet->getHighestRow();
        $data   = [];

        //定义$usersExits，循环表格的时候，找出已存在的用户。
        $usersExits = [];
        //循环读取excel表格，整合成数组。如果是不指定key的二维，就用$data[i][j]表示。
        for ($j = 2; $j <= $highestRow; $j++) {
            $data[$j - 2] = [
                'opt' => $objPHPExcel->getActiveSheet()->getCell("A" . $j)->getValue(),
                'categors' => $objPHPExcel->getActiveSheet()->getCell("B" . $j)->getValue(),
                'store_id' => $objPHPExcel->getActiveSheet()->getCell("C" . $j)->getValue(),
                'register_date' => $objPHPExcel->getActiveSheet()->getCell("D" . $j)->getValue(),
                'date_of_accession' => $objPHPExcel->getActiveSheet()->getCell("E" . $j)->getValue(),
                'member_no' => $objPHPExcel->getActiveSheet()->getCell("F" . $j)->getValue(),
                'last_name' => $objPHPExcel->getActiveSheet()->getCell("G" . $j)->getValue(),
                'first_name' => $objPHPExcel->getActiveSheet()->getCell("H" . $j)->getValue(),
                'salutation' => $objPHPExcel->getActiveSheet()->getCell("I" . $j)->getValue(),
                'date_of_birth' => $objPHPExcel->getActiveSheet()->getCell("J" . $j)->getValue(),
                'identity_card' => $objPHPExcel->getActiveSheet()->getCell("K" . $j)->getValue(),
                'phone_mobile' => $objPHPExcel->getActiveSheet()->getCell("L" . $j)->getValue(),
                'phone_work' => $objPHPExcel->getActiveSheet()->getCell("M" . $j)->getValue(),
                'email1' => $objPHPExcel->getActiveSheet()->getCell("N" . $j)->getValue(),
                'address' => $objPHPExcel->getActiveSheet()->getCell("O" . $j)->getValue(),
                'source' => $objPHPExcel->getActiveSheet()->getCell("P" . $j)->getValue(),
                'source_notes' => $objPHPExcel->getActiveSheet()->getCell("Q" . $j)->getValue(),
                'remark' => $objPHPExcel->getActiveSheet()->getCell("R" . $j)->getValue(),
                'reservation_remarks' => $objPHPExcel->getActiveSheet()->getCell("S" . $j)->getValue(),
            ];

            if (empty($data[$j - 2]['member_no'])) {
                unset($data[$j - 2]);
                continue;
            }

            //看下用户名是否存在。将存在的用户名保存在数组里。
            $userExist = Db::name('member')->where('member_no', $data[$j - 2]['member_no'])->find();
            if ($userExist) {
                array_push($usersExits, $data[$j - 2]['member_no']);
//                continue;
            }


            //分類
            if (!empty($data[$j - 2]['opt'])){
                $data[$j - 2]['opt'] = Db::name('mapping')->where(['type_id' => 'opt', 'val' => $data[$j - 2]['opt']])->value('id');
            }
            //類別
            if (!empty($data[$j - 2]['categors'])){
                $data[$j - 2]['categors'] = Db::name('mapping')->where(['type_id' => 'categors', 'val' => $data[$j - 2]['categors']])->value('id');
            }
            //到店時間
            if (!empty($data[$j - 2]['register_date'])){
                $data[$j - 2]['register_date'] = Db::name('mapping')->where(['type_id' => 'register_date', 'val' => $data[$j - 2]['register_date']])->value('id');
            }
            //店舖
            if (!empty($data[$j - 2]['store_id'])){
                $data[$j - 2]['store_id'] = Db::name('store')->where(['name' => $data[$j - 2]['store_id']])->value('id');
            }
            //性別
            if (!empty($data[$j - 2]['salutation'])){
                $data[$j - 2]['salutation'] = $data[$j - 2]['salutation'] == '女' ? '1' : '0';
            }
            //加入日期
            if (!empty($data[$j - 2]['date_of_accession'])){
                $data[$j - 2]['date_of_accession'] = date('Y/n/j', ($data[$j - 2]['date_of_accession'] - 25569) * 24 * 3600);
            }
            //出生日期
            if (!empty($data[$j - 2]['date_of_birth'])){
                $data[$j - 2]['date_of_birth'] = date('Y/n/j', ($data[$j - 2]['date_of_birth'] - 25569) * 24 * 3600);
                $temp = explode('/', $data[$j - 2]['date_of_birth']);
                if ($temp[0] == '2020'){
                    $data[$j - 2]['date_of_birth'] = implode('/', [$temp[1], $temp[2]]);
                }
            }

            //地址
            if (!empty($data[$j - 2]['address'])){
                $data[$j - 2]['address'] = str_replace('<br>', "\r\n", $data[$j - 2]['address']);
            }
            //備註
            if (!empty($data[$j - 2]['remark'])){
                $data[$j - 2]['remark'] = str_replace('<br>', "\r\n", $data[$j - 2]['remark']);
            }
            //預約備註
            if (!empty($data[$j - 2]['reservation_remarks'])){
                $data[$j - 2]['reservation_remarks'] = str_replace('<br>', "\r\n", $data[$j - 2]['reservation_remarks']);
            }
            //來源備註
            if (!empty($data[$j - 2]['source_notes'])){
                $data[$j - 2]['source_notes'] = str_replace('<br>', "\r\n", $data[$j - 2]['source_notes']);
            }
        }
        //halt($usersExits);

//        //如果有已存在的用户名，就不插入数据库了。
//        if ($usersExits != []) {
//            //把数组变成字符串，向前端输出。
//            $c = implode(" / ", $usersExits);
//            return json(['code' => 0, 'msg' => 'Excel中以下會員編號已存在:' . $c]);
//        }

        return ['code' => 200, 'data' => $data, 'usersExits' => $usersExits];
    } catch (\Exception $e) {
//        throw $e;
        return ['code' => 0, 'msg' => $e->getMessage()];
    }
}
