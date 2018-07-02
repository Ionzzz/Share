package com.gem.share.service;

import com.gem.share.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface PersonalService {

    //    根据用户id查询该用户的所有博客  按时间倒序排列
    public List<BlogContent> selectBlogContentByUserId(int userid);

    //    根据用户id查找自己的粉丝
    public List<UserInfo> selectFollowUserByUserId(int user_id);

    //    根据用户id、分组名获取该分组的关注人信息
    public List<UserInfo> selectFollowUserByUserIdAndGroupId(int user_id, String followGroupName);

    //    根据用户id查找自己关注的人
    public List<UserInfo> selectUserByFollowUserId(int user_id);

    //    分页
    public PageInfo<UserInfo> selectAllUserByPage(int user_id, Map<String, Object> map);

    //    根据用户id查询所有的分组

    public List<FollowGroup> selectAllGroupByUserId(int user_id);

    //    根据用户id查询用户信息
    public UserInfo selectUserById(int id);

    //    根据地址id查询地址信息
    public Address selectAddressByAddressId(int addressId);

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

    //    修改个人昵称
    public boolean updateNickName(int user_id, String nickname);


    //    修改个人姓名
    public boolean updateName(int user_id, String name);

    //    修改个人简介
    public boolean updateIntroduce(int user_id, String introduce);

    //    修改学校信息
    public boolean updateSchool(int user_id, String school);

    //    修改出生日期
    public boolean updateCreateTime(int user_id, Date createdate);

    //    修改性别
    public boolean updateSex(int user_id, String sex);

    //    从地址表查询插入地址
    public Address selectaddress(String province, String city, String county);

    //    在地址表中插入地址
    public boolean insertaddress(String province, String city, String county);

    //    向用户信息表中插入地址信息
    public boolean updateaddressid(int user_id, int address_id);
}
