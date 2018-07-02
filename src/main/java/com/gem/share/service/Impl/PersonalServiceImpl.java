package com.gem.share.service.Impl;

import com.gem.share.dao.PersonalMapper;
import com.gem.share.entity.*;
import com.gem.share.service.PersonalService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class PersonalServiceImpl implements PersonalService {

    @Autowired
    private PersonalMapper personalMapper;

    @Override
    public List<BlogContent> selectBlogContentByUserId(int userid) {
        return personalMapper.selectBlogContentByUserId(userid);
    }

    @Override
    public List<UserInfo> selectFollowUserByUserId(int user_id) {
        return personalMapper.selectFollowUserByUserId(user_id);
    }

    @Override
    public List<UserInfo> selectFollowUserByUserIdAndGroupId(int user_id, String followGroupName) {
        return personalMapper.selectFollowUserByUserIdAndGroupId(user_id,followGroupName);
    }

    @Override
    public List<UserInfo> selectUserByFollowUserId(int user_id) {
        return personalMapper.selectUserByFollowUserId(user_id);
    }

    @Override
    public PageInfo<UserInfo> selectAllUserByPage(int user_id, Map<String, Object> map) {
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<UserInfo> list=personalMapper.selectUserByFollowUserId(user_id);
        PageInfo<UserInfo> pageInfo=new PageInfo<>(list);

        return pageInfo;
    }

    @Override
    public List<FollowGroup> selectAllGroupByUserId(int user_id) {
        return personalMapper.selectAllGroupByUserId(user_id);
    }

    @Override
    public UserInfo selectUserById(int id) {
        return personalMapper.selectUserById(id);
    }

    @Override
    public Address selectAddressByAddressId(int addressId) {
        return personalMapper.selectAddressByAddressId(addressId);
    }

    @Override
    public boolean deleteUserByUserIdAndFollowUser(int userId,int followUserId){
        return personalMapper.deleteUserByUserIdAndFollowUser(userId,followUserId);
    }


    @Override
    public Boolean insertfollow(int user_id, int followUser_id) {
        return personalMapper.insertfollow(user_id,followUser_id);
    }

    @Override
    public List<MyAllComment> selectallcomment(int commentUser_id) {
        return personalMapper.selectallcomment(commentUser_id);
    }

    @Override
    public List<MyAllZan> selectallzan(int zanUser_id) {
        return personalMapper.selectallzan(zanUser_id);
    }

    @Override
    public List<MyAllZan> selectallCollect(int collectUser_id) {
        return personalMapper.selectallCollect(collectUser_id);
    }

    @Override
    public boolean updateNickName(int user_id, String nickname) {
        return personalMapper.updateNickName(user_id,nickname);
    }

    @Override
    public boolean updateName(int user_id, String name) {
        return personalMapper.updateName(user_id,name);
    }

    @Override
    public boolean updateIntroduce(int user_id, String introduce) {
        return personalMapper.updateIntroduce(user_id,introduce);
    }

    @Override
    public boolean updateSchool(int user_id, String school) {
        return false;
    }

    @Override
    public boolean updateCreateTime(int user_id, Date createdate) {
        return personalMapper.updateCreateTime(user_id,createdate);
    }

    @Override
    public boolean updateSex(int user_id, String sex) {
        return personalMapper.updateSex(user_id,sex);
    }

    @Override
    public Address selectaddress(String province, String city, String county) {
        return personalMapper.selectaddress(province,city,county);
    }

    @Override
    public boolean insertaddress(String province, String city, String county) {
        return personalMapper.insertaddress(province,city,county);
    }

    @Override
    public boolean updateaddressid(int user_id, int address_id) {
        return personalMapper.updateaddressid(user_id,address_id);
    }
}
