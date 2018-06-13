package com.gem.share.service.Impl;

import com.gem.share.dao.ShuDongMapper;
import com.gem.share.entity.*;
import com.gem.share.service.ShuDongService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ShuDongServiceImpl implements ShuDongService {

    @Autowired
    private ShuDongMapper shuDongMapper;

    @Override
    public List<shuDong> selectAllShuDongContent(String searchContent) {
        return shuDongMapper.selectAllShuDongContent(searchContent);
    }

    @Override
    public List<shuDong> selectAllShuDongContentBySDBrowse(String searchContent) {
        return shuDongMapper.selectAllShuDongContentBySDBrowse(searchContent);
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
    public List<ReplyCommentDetail> selectAllReplyComment(int comment_id) {
        return shuDongMapper.selectAllReplyComment(comment_id);
    }

    @Override
    public boolean insertBlogComment(BlogComment blogComment) {
        return shuDongMapper.insertBlogComment(blogComment);
    }

    @Override
    public List<ReplyCommentDetail> selectAllThirdReplyComment(int replyComment_id){
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
    public PageInfo<shuDong> pageShuDong(Map<String, Object> map,String searchContent,int pageShuDong) {
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);

        List<shuDong> list = new ArrayList<>();
        if(pageShuDong==0){
//            按时间排序
            list=shuDongMapper.selectAllShuDongContent(searchContent);
        }else if(pageShuDong==1){
//            按热度(浏览量)排序
            list=shuDongMapper.selectAllShuDongContentBySDBrowse(searchContent);

        }else if (pageShuDong==2){
//            按照选定的时间显示---时光机
        }

        PageInfo<shuDong> pageInfo=new PageInfo<>(list);

        return pageInfo;

    }

    @Override
    public int selectSDBrowseByUserIdAndBlogId(int user_id, int blog_id) {
        return shuDongMapper.selectSDBrowseByUserIdAndBlogId(user_id,blog_id);
    }

    @Override
    public void insertSDBrowse(int user_id, int blog_id) {
        shuDongMapper.insertSDBrowse(user_id,blog_id);
    }

    @Override
    public boolean deleteComment(int replyComment_id) {
        return shuDongMapper.deleteComment(replyComment_id);
    }

}

