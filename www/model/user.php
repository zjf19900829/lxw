<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/5
 * Time: 10:38
 */
namespace model;
  class userModel{
static function setoken($key){
    //过期时间的设定
    $user_token=md5('lxw_user'.$key);
    \Mc::set($key,$user_token);
return $user_token;


}

      static function chktoken($key,$token){
              $user_token=\Mc::get($key);
              if($token=!$user_token){

                  print_json(["code"=>1,"msg"=>"token_error","info"=>"未登录，请重新登录"]);
              }



          }


}