package com.gem.share.service.Impl;

import com.gem.share.dao.ShuDongMapper;
import com.gem.share.entity.*;
import com.gem.share.service.ShuDongService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ShuDongServiceImpl implements ShuDongService {

    @Autowired
    private ShuDongMapper shuDongMapper;

    @Override
    public List<shuDong> selectAllShuDongContent(String searchContent) {
//        System.out.println("shudongserviceImpl========="+shuDongMapper.selectAllShuDongContent());
        return shuDongMapper.selectAllShuDongContent(searchContent);
    }

    @Override
    public List<BlogZan> selectZanRecordByUserId(int blog_id,int user_id) {
        return shuDongMapper.selectZanRecordByUserId(blog_id,user_id);
    }

    @Override
    public boolean deleteZanRecordByZanId(int zan_id) {
        return shuDongMapper.deleteZanRecordByZanId(zan_id);
    }

    @Override
    public int selectCountZan(int blog_id) {
        return shuDongMapper.selectCountZan(blog_id);
    }

    @Override
    public boolean addZanRecord(BlogZan blogZan) {
        return shuDongMapper.addZanRecord(blogZan);
    }

    @Override
    public List<shuDongDetail> selectAllShuDongComment(int blog_id) {
        return shuDongMapper.selectAllShuDongComment(blog_id);
    }

    @Override
    public int selectBcommentCount(int blog_id) {
        return shuDongMapper.selectBcommentCount(blog_id);
    }

    @Override
    public List<replyCommentDetail> selectAllReplyComment(int comment_id) {
        return shuDongMapper.selectAllReplyComment(comment_id);
    }

    @Override
    public boolean insertBlogComment(BlogComment blogComment) {
        return shuDongMapper.insertBlogComment(blogComment);
    }

    @Override
    public List<replyCommentDetail> selectAllThirdReplyComment(int replyComment_id){
        return shuDongMapper.selectAllThirdReplyComment(replyComment_id);
    }

    @Override
    public boolean insertReplyComment(ReplyComment replyComment) {
        return shuDongMapper.insertReplyComment(replyComment);
    }

    @Override
    public boolean insertThirdReplyComment(ReplyComment replyComment) {
        return shuDongMapper.insertThirdReplyComment(replyComment);
    }

    @Override
    public int selectUserIdByCommentId(int comment_id) {
        return shuDongMapper.selectUserIdByCommentId(comment_id);
    }

    @Override
    public List<shuDong> searchShuDong(String searchSDContent) {
        return shuDongMapper.searchShuDong(searchSDContent);
    }

    @Override
    public PageInfo<shuDong> pageShuDong(Map<String, Object> map,String searchContent) {
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<shuDong> list=shuDongMapper.selectAllShuDongContent(searchContent);
        PageInfo<shuDong> pageInfo=new PageInfo<>(list);

        return pageInfo;

    }


}

