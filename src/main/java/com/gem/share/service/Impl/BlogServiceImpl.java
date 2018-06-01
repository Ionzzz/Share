package com.gem.share.service.Impl;

import com.gem.share.dao.BlogContentMapper;
import com.gem.share.entity.BlogContent;
import com.gem.share.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogContentMapper blogContentMapper;

    @Override
    public BlogContent updateBlogByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<BlogContent> selectAllBlog() {
        return blogContentMapper.selectAllBlog();
    }

    @Override
    public BlogContent selectBlogByBlogId(int blog_id) {
        return null;
    }

    @Override
    public boolean deleteBlogByBlogId(int blog_id) {
        return false;
    }

    @Override
    public boolean insertBlog(BlogContent blogContent) {
        return false;
    }

    @Override
    public Date selectBlogCreateTimeByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<BlogContent> orderBlogByCreateTime() {
        return null;
    }

    @Override
    public List<Integer> selectBlogPicsByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectLabelByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectZanUserIdByBlogId(int blog_id) {
        return null;
    }

    @Override
    public Date selectZanTimeByBlogId(int blog_id, int user_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentIdByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectBlogCommentUserByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<String> selectCommentContentByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentUserIdByCommentId(int comment_id) {
        return null;
    }

    @Override
    public String selectCommentContentByCommentId(int comment_id) {
        return null;
    }

    @Override
    public Date selectCommentTimeByCommentId(int comment_id) {
        return null;
    }

    @Override
    public List<Integer> selectZanUserIdByCommentId(int comment_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentByUserId(int user_id) {
        return null;
    }

    @Override
    public List<String> selectReplyCommentByCommentId(int comment_id) {
        return null;
    }

    @Override
    public Integer selectBlogBrowseByBlogId(int blog_id) {
        return null;
    }

    @Override
    public Integer selectBlogZanByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectCollectBlogIdByUserId(int user_id) {
        return null;
    }

    @Override
    public List<Integer> selectCollectUserIdByBlogId(int blog_id) {
        return null;
    }
}
