LXW_HOST=http://lxw-bll.com
LXW_HOST=http://127.0.0.1:40051


#注册 学生
#学生
http -f $LXW_HOST/rest/user/reg \
acc=zjfz \
psw=123123 \
role=1 \
family_name=张 \
given_name=三 \
gender=1 \
province=福建 \
city=福州 \
email=xxx@qq.com \
src=1 \
src_text=其他来源信息 \
contract_name=王校长 \
contract_mobile=059123123123
#中介
http -f $LXW_HOST/rest/user/reg \
acc=azjfz \
psw=123123 \
role=2 \
name=明珠世界\
province=福建 \
city=福州 \
email=xxx@qq.com \
src=1 \
src_text=其他来源信息 \
website="http://www.qq.com" \
contract_name=王校长 \
contract_mobile=059123123123





#登录
http -f $LXW_HOST/rest/user/reg \
acc=zjfz \
psw=

# 个人信息查询
http -f $LXW_HOST/rest/user/reg \
acc=zjfz \
user_token=

# 修改个人信息
http -f $LXW_HOST/rest/user/reg \
acc=zjfz \

# 提交申请


#申请列表


#修改申请