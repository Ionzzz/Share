package com.gem.share.service.Impl;

import com.gem.share.dao.UserInfoMapper;
import com.gem.share.entity.Notice;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserInfoMapper userInfoMapper;
    @Override
    public UserInfo selectUserInfoByUserId(int user_id) {
        return userInfoMapper.selectByPrimaryKey(user_id);
    }

    @Override
    public boolean insertUserInfo(UserInfo userInfo) {
        return false;
    }

    @Override
    public boolean deleteByUserInfoId(int user_id) {
        return false;
    }

    @Override
    public boolean updateByUserInfoId(int user_id) {
        return false;
    }

    @Override
    public boolean addEnergyByUserId(int user_id, int energy) {
        return false;
    }

    @Override
    public boolean subtractEnergyByUserId(int user_id, int energy) {
        return false;
    }

    @Override
    public String selectUserEnergy(int user_id) {
        return null;
    }

    @Override
    public int selectMinEnergyOfGrade(String energy) {
        return 0;
    }

    @Override
    public int selectMaxEnergyOfGrade(String energy) {
        return 0;
    }

    @Override
    public String selectUserStatus(int user_id) {
        return null;
    }

    @Override
    public Date selectUserLoginTime(int user_id) {
        return null;
    }

    @Override
    public Date selectUserCreateTime(int user_id) {
        return null;
    }

    @Override
    public Notice selectAllNotice(int user_id) {
        return null;
    }
}
