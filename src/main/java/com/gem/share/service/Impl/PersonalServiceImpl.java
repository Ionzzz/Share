package com.gem.share.service.Impl;

import com.gem.share.dao.PersonalMapper;
import com.gem.share.entity.BlogContent;
import com.gem.share.entity.FollowGroup;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.PersonalService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<BlogContent> selectBlogByUserZan(int user_id) {
        return personalMapper.selectBlogByUserZan(user_id);
    }

    @Override
    public List<UserInfo> selectUserByUserZan(int user_id) {
        return personalMapper.selectUserByUserZan(user_id);
    }

    @Override
    public List<BlogContent> selectBlogByUserComment(int user_id) {
        return personalMapper.selectBlogByUserComment(user_id);
    }

    @Override
    public List<UserInfo> selectUserByUserComment(int user_id) {
        return personalMapper.selectUserByUserComment(user_id);
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
    public boolean deleteUserByUserIdAndFollowUser(int userId,int followUserId){
        return personalMapper.deleteUserByUserIdAndFollowUser(userId,followUserId);
    }


    @Override
    public Boolean insertfollow(int user_id, int followUser_id) {
        return personalMapper.insertfollow(user_id,followUser_id);
    }
}
