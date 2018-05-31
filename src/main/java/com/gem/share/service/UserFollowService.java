package com.gem.share.service;

import com.gem.share.entity.UserInfo;

import java.util.List;

public interface UserFollowService {

//    根据用户id得到关注分组名
    public List<String> selectGroupNameByUserId(int user_id);
//    根据用户id得到关注用户    关注
    public List<UserInfo> selectFollowUserByUserId(int user_id);
//    根据分组id得到该分租下的用户
    public List<UserInfo> selectFollowUserByFollowGroupId(int followGroup_id);
//    根据用户id 分组id 查询该分组下用户关注的用户id
    public List<Integer> selectUserByUserIdAndFollowGroupId(int user_id,int followGroup_id);
//    根据用户关注的用户id得到用户id    粉丝
    public List<UserInfo> selectFollowedUserByUserId(int user_id);


}
