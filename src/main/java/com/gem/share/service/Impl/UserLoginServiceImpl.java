package com.gem.share.service.Impl;

import com.gem.share.dao.UserLoginMapper;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginServiceImpl implements UserLoginService {


    @Autowired
    private UserLoginMapper userLoginMapper;


    @Override
    public Boolean insertNewUser(String phone, String nickname, String email, String pass) {
        System.out.println("-----service:"+phone+"---"+nickname+"----"+"---"+email+"---"+pass);
        return userLoginMapper.insertNewUser(phone,nickname,email,pass);
    }

    @Override
    public Boolean insertLableByUserId(int userId, int lableId) {
        return userLoginMapper.insertLableByUserId(userId,lableId);
    }

    @Override
    public UserInfo selectUserInfoByPhoneOrEmail(String input) {
        return userLoginMapper.selectUserInfoByPhoneOrEmail(input);
    }

    @Override
    public UserInfo selectUserInfoByNickName(String nickname) {
        return userLoginMapper.selectUserInfoByNickName(nickname);
    }

    @Override
    public Boolean updatePassByPhone(String userphone, String newpass) {
        return userLoginMapper.updatePassByPhone(userphone,newpass);
    }

    @Override
    public boolean insertUserAccount(String usesrAccount, int userId) {
        return userLoginMapper.insertUserAccount(usesrAccount,userId);
    }


}
