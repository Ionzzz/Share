package com.gem.share.dao;

import com.gem.share.entity.UserInfo;
import com.gem.share.entity.UserInfoExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserInfoMapper {
    long countByExample(UserInfoExample example);

    int deleteByExample(UserInfoExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    List<UserInfo> selectByExample(UserInfoExample example);

    UserInfo selectByPrimaryKey(Integer userId);

    int updateByExampleSelective(@Param("record") UserInfo record, @Param("example") UserInfoExample example);

    int updateByExample(@Param("record") UserInfo record, @Param("example") UserInfoExample example);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);


    //    根据用户id查询用户状态
    public String selectUserStatus(int user_id);

    //    查询用户登录时间
    public Date selectUserLoginTime(int user_id);

    //    查询用户注册时间
    public Date selectUserCreateTime(int user_id);

}