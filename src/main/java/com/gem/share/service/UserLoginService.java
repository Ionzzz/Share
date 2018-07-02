package com.gem.share.service;

import com.gem.share.entity.UserInfo;

public interface UserLoginService {

    //    插入用户信息数据
    public Boolean insertNewUser(String phone, String nickname, String email, String pass);

    //    根据用户id插入lable
    public Boolean insertLableByUserId(int userId, int lableId);

    //    根据手机号或者邮箱查询用户信息
    public UserInfo selectUserInfoByPhoneOrEmail(String input);

    //   根据用户名查询用户信息
    public UserInfo selectUserInfoByNickName(String nickname);

    //    修改密码
    public Boolean updatePassByPhone(String userphone,String newpass);

    //    更新信息，插入userAccount
    public boolean insertUserAccount(String usesrAccount,int userId);
}
