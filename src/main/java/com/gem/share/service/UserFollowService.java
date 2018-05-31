package com.gem.share.service;

import com.gem.share.entity.UserInfo;

import java.util.List;

public interface UserFollowService {

//    根据用户id得到关注分组名
    public List<String> selectGroupNameByUserId(int user_id);
//    根据用户id得到关注用户
    public List<UserInfo> selectFollowUserByUserId(int user_id);

}
