package com.gem.share.dao;

import com.gem.share.entity.BlogContent;

import java.util.List;

public interface MngBlogMapper {
    List<BlogContent> showBlogInfos();
    int selectBrowseCountByBlogId(int blogid);
    //返回博客下所有的评论的Id
    List<Integer> selectCommentByBlogId(int blogid);
    void deleteBlog(int id);
    BlogContent selectBlogById(int id);
}
