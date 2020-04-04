<?php
// 应用公共文件
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
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

    $store_id = User::where('uid', $user_id)->value('store');
    $store = Store::find($store_id);

    return $store;
}


