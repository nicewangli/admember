<?php
/**
 * Account模型
*/

namespace app\model;


class Attendance extends Model
{

    public static function attendanceType()
    {
        return [
            'O' => 'Day Off',
            'AL' => '年假',
            '*' => '補假',
            'PL' => '事假',
            'SL' => '病假',
            'D' => '工作時間D',
            'E' => '工作時間E',
            'B' => '工作時間B',
            'NP' => '無薪假',
            'OT' => '超時工作',
            'X' => '未到/已遇辦公時間',
            'OF' => '不在公司',
            'ER' => '補鐘',
            'MT' => 'Meeting',
            'TR' => 'Training',

        ];
    }

}
