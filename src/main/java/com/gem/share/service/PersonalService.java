package com.gem.share.service;

import com.gem.share.entity.BlogContent;
import com.gem.share.entity.UserInfo;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface PersonalService {

    //    根据用户id查询该用户的所有博客  按时间倒序排列
    public List<BlogContent> selectBlogContentByUserId(int userid);

    //  通过用户id找到用户点赞过的博客内容，并按时间倒序排列
    public List<BlogContent> selectBlogByUserZan(int user_id);

    //  通过用户id找到用户点赞过的博客内容的用户信息，并按时间倒序排列
    public List<UserInfo> selectUserByUserZan(int user_id);

    //    通过用户id找到用户评论过的博客内容，并按时间倒序排列
    public List<BlogContent> selectBlogByUserComment(int user_id);


    //  通过用户id找到用户评论过的博客内容的用户信息，并按时间倒序排列
    public List<UserInfo> selectUserByUserComment(int user_id);

    //    根据用户id查找自己的粉丝
    public List<UserInfo> selectFollowUserByUserId(int user_id);

    //    根据用户id、分组名获取该分组的关注人信息
    public List<UserInfo> selectFollowUserByUserIdAndGroupId(int user_id, String followGroupName);

    //    根据用户id查找自己关注的人
    public List<UserInfo> selectUserByFollowUserId(int user_id);

    //    分页
    public PageInfo<UserInfo> selectAllUserByPage(int user_id, Map<String, Object> map);

    //    根据用户id查询所有的分组
    public List<String> selectAllGroupByUserId(int user_id);

    //    根据用户id查询用户信息
    public UserInfo selectUserById(int id);
}
