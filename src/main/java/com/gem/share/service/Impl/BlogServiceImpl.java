package com.gem.share.service.Impl;

import com.gem.share.dao.BlogContentMapper;
import com.gem.share.dao.BlogPicsMapper;
import com.gem.share.entity.BlogContent;
import com.gem.share.service.BlogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogContentMapper blogContentMapper;
    @Autowired
    private BlogPicsMapper blogPicsMapper;

    @Override//分页
    public PageInfo<BlogContent> selectAllBlogByPage(Map<String, Object> map) {
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<BlogContent> list=blogContentMapper.selectAllBlogByPage((Map<String, Object>) map.get("blogcontent"));
        PageInfo<BlogContent> pageInfo= (PageInfo<BlogContent>) blogContentMapper.selectAllBlogByPage((Map<String, Object>) map.get("blogcontent"));
        return null;
    }

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
        return blogContentMapper.selectBlogByBlogId(blog_id);
    }

    @Override
    public boolean deleteBlogByBlogId(int blog_id) {
        return blogContentMapper.deleteBlogByBlogId(blog_id);
    }

    @Override
    public boolean insertBlog(BlogContent blogContent) {
        return false;
    }

    @Override
    public Date selectBlogCreateTimeByBlogId(int blog_id) {
        return blogContentMapper.selectBlogCreateTimeByBlogId(blog_id);
    }

    @Override
    public List<BlogContent> orderBlogByCreateTime() {
        return null;
    }

    @Override
    public Integer selectBlogPicsByBlogId(int blog_id) {
        return blogPicsMapper.selectBlogPicsByBlogId(blog_id);
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

    @Override
    public List<Integer> selectBlogIdByLabelId(int label_id) {
        return null;
    }

    @Override
    public List<BlogContent> selectBlogByLabelId(int label_id) {
        return null;
    }

    @Override
    public List<BlogContent> selectBlogByLabelName(String labelName) {
        return null;
    }


}
