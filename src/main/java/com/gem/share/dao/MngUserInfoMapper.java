package com.gem.share.dao;

import com.gem.share.entity.UserInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MngUserInfoMapper {
    UserInfo selectUserById(int id);
    List<UserInfo> showUserInfos();
    void changeUserStatus(UserInfo userInfo);
    void changeUserEnergy(UserInfo userInfo);
}
