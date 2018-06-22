package com.gem.share.dao;

import com.gem.share.entity.*;

import java.util.List;

public interface PersonalMapper {
    //    根据用户id查询该用户的所有博客  按时间倒序排列
    public List<BlogContent> selectBlogContentByUserId(int userid);

    //    根据用户id查找自己的粉丝
    public List<UserInfo> selectFollowUserByUserId(int user_id);

    //    根据用户id、分组名获取该分组的关注人信息
    public List<UserInfo> selectFollowUserByUserIdAndGroupId(int user_id, String followGroupName);

    //    根据用户id查找自己关注的人
    public List<UserInfo> selectUserByFollowUserId(int user_id);

    //    根据用户id查询所有的分组
    public List<FollowGroup> selectAllGroupByUserId(int user_id);

    //    根据用户id查询用户信息
    public UserInfo selectUserById(int id);

    //    根据自己的id和关注人的id取消关注此人
    public boolean deleteUserByUserIdAndFollowUser(int userId, int followUserId);

//    添加关注人
    public Boolean insertfollow(int user_id, int followUser_id);


//    查询我所有的评论内容、评论的博客内容、发布这条博客的用户信息、评论时间降序
    public List<MyAllComment> selectallcomment(int commentUser_id);

//    查询我所有点赞的博客内容、发布这条博客的用户信息、点赞时间降序
    public List<MyAllZan> selectallzan(int zanUser_id);

//    查询我所有收藏的博客内容、发布这条博客的用户信息、点赞时间降序
    public List<MyAllZan> selectallCollect(int collectUser_id);
}
