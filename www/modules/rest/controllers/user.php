<?php
namespace modules\rest\controllers;

use model\PkgPolicyModel;
use model\SeatOrderModel;

class user {
    public static function getIns() {
        return new user();
    }

    //这个是判断是否登陆的东西
    /*function __construct() {
        $this->user_id = get_user_id();
    }*/


//注册账号
    function reg(){
        //先获取注册的类型
        $data=$_REQUEST;
        $role=$data['role'];
        //1：学生 2：中介 3：大学
        $user_fields['1']=[
            'acc',
            'psw',
            'role',
            'family_name',
            'given_name',
            'gender',
            'province',
            'city',
            'email',
            'src',
            'src_text',
            'contract_name',
            'contract_mobile',
        ];
        $user_fields['2']=[
            'acc',
            'psw',
            'role',
            'name',
            'province',
            'city',
            'email',
            'src',
            'src_text',
            'contract_name',
            'contract_mobile',
            'website',
        ];
        $user_fields['3']=[
            'acc',
            'psw',
            'role',
            'name',
            'province',
            'city',
            'email',
            'src',
            'src_text',
            'contract_name',
            'contract_mobile',
            'website',
        ];
        //查看填写信息是否完整

        foreach($user_fields[$role] as $f) {
            if (!$_REQUEST[$f]) {
                print_json(["code" => 1, "msg" => "need_field", "err_msg" => "{$f}_empty", "info" => "请完整填写表单信息"]);
            }
        }
        //判断用户名的数据唯一username 唯一
        //查询数据库的用户名
        $ret = \Mdb::getIns()->get("user", "*", [
            "acc" => $data['acc'],
        ]);
        if($ret){
            print_json(["code" => 1, "msg" => "need_field", "err_msg" => "账号已存在", "info" => "账号已存在"]);
        }


            //数据插入数据库中
            $ret=\Mdb::getIns()->insert("user",[
                'acc'=>$data['acc'],
                'psw'=>md5($data['psw']),//是否进行加密处理??
                'role'=>$data['role'],
                'face'=>$data['face'],
                'family_name'=>$data['family_name'],
                'given_name'=>$data['given_name'],
                'gender'=>$data['gender'],
                'province'=>$data['province'],
                'city'=>$data['city'],
                'email'=>$data['email'],
                'src'=>$data['src'],
                'src_text'=>$data['src_text'],
                'contract_name'=>$data['contract_name'],
                'contract_mobile'=>$data['contract_mobile'],
                'name'=>$data['name'],
                'website'=>$data['website'],
                'create_time'=>time(),//这样写问题大吗???
            ]);
            chk_db_err();
            print_json(["code"=>0,"msg"=>"ok","info"=>"操作成功","result"=>null]);

            }
//查询所有的数据列表
           function user_list(){






                                }



//登录
function  user_login(){
               //获取的数据有acc user_token，但是要怎么获取user_id??
       $data=$_REQUEST;
       //判断是否是第一次登录
    if($data['user_token']!=''){
        //对比token的值进行比较
        chktoken($data['acc'],$data['user_token']);

    }
//对比数据库，看是否相等
    $ret=\Mdb::getIns()->get('user','*',[
        'acc'=>$data['acc']
    ]);
if($data['acc']=''){
    print_json(['code'=>1,msg=>'acc_error','info'=>'账号不能为空']);
}
if($data['psw']=''){
    print_json(['code'=>1,msg=>'psw_error','info'=>'密码不能为空']);
}
if($data['acc']!=$ret['acc']||$data['psw']!=$ret['psw']){
    print_json(['code'=>1,msg=>'psw_or_acc_error','info'=>'账号或密码不能不正确']);
}
//获取token
    $user_token=setoken($data['acc']);
print_json(['code'=>0,msg=>'ok','info'=>'登录成功']);



}

//个人信息查询
function user_perinfo(){
    $data=$_REQUEST;
    //判断是否登录
    chktoken($data['acc'],$data['user_token']);
//获取个人信息
    $ret=\Mdb::getIns()->get('user','*',[
        'acc'=>$data['acc']
    ]);
//该返回什么信息
 return $ret;
}
//个人信息修改
function user_reset(){
    $data=$_REQUEST;
    //获取原来的数据
    $res=\Mdb::getIns()->get('user','*',[
        'acc'=>$data['acc']
    ]);
    //判断是否登录
    chktoken($data['acc'],$data['user_token']);
    //增加一个信息修改是否合理的判断
    $ret=\Mdb::getIns()->updata('user','*',[
       //账号不修改了
        // 'acc'=>$data['acc']?:'',
        'psw'=>md5($data['psw'])?:$res['psw'],
        'role'=>$data['role']?:$res['role'],
        'face'=>$data['face']?:$res['face'],
        'family_name'=>$data['family_name']?:$res['family_name'],
        'given_name'=>$data['given_name']?:$res['given_name'],
        'gender'=>$data['gender']?:$res['gender'],
        'province'=>$data['province']?:$res['province'],
        'city'=>$data['city']?:$res['city'],
        'email'=>$data['email']?:$res['email'],
        'src'=>$data['src']?:$res['src'],
        'src_text'=>$data['src_text']?:$res['src_text'],
        'contract_name'=>$data['contract_name']?:$res['contract_name'],
        'contract_mobile'=>$data['contract_mobile']?:$res['contract_mobile'],
        'name'=>$data['name']?:$res['name'],
        'website'=>$data['website']?:$res['website'],
    ]);
if($ret){
    print_json(['code'=>0,msg=>'ok','info'=>'信息修改成功']);
}
    print_json(['code'=>1,msg=>'info_error','info'=>'信息修改失败不能不正确']);

}

//




}