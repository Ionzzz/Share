package com.gem.share.service;

import com.gem.share.entity.Notice;
import com.gem.share.entity.UserInfo;

import java.util.Date;

public interface UserService {

    public UserInfo selectByUserInfoId(int user_id);

    public boolean insertUserInfo(UserInfo userInfo);

    public boolean deleteByUserInfoId(int user_id);

    public boolean updateByUserInfoId(int user_id);

//    根据用户id给用户添加能量
    public boolean addEnergyByUserId(int user_id, int energy);

//    根据用户id给用户减少能量(被举报减能量)
    public boolean subtractEnergyByUserId(int user_id, int energy);

//    查询用户能量
    public String selectUserEnergy(int user_id);

//    查询能量等级的最低能量
    public int selectMinEnergyOfGrade(String energy);

//    查询能量等级的最高能量
    public int selectMaxEnergyOfGrade(String energy);

//    根据用户id查询用户状态
    public String selectUserStatus(int user_id);

//    查询用户登录时间
    public Date selectUserLoginTime(int user_id);

//    查询用户注册时间
    public Date selectUserCreateTime(int user_id);

    //    通知
    public Notice selectAllNotice(int user_id);

}
