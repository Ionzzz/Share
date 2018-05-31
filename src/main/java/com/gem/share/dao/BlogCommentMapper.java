package com.gem.share.dao;

import com.gem.share.entity.BlogComment;
import com.gem.share.entity.BlogCommentExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogCommentMapper {
    long countByExample(BlogCommentExample example);

    int deleteByExample(BlogCommentExample example);

    int deleteByPrimaryKey(Integer commentId);

    int insert(BlogComment record);

    int insertSelective(BlogComment record);

    List<BlogComment> selectByExample(BlogCommentExample example);

    BlogComment selectByPrimaryKey(Integer commentId);

    int updateByExampleSelective(@Param("record") BlogComment record, @Param("example") BlogCommentExample example);

    int updateByExample(@Param("record") BlogComment record, @Param("example") BlogCommentExample example);

    int updateByPrimaryKeySelective(BlogComment record);

    int updateByPrimaryKey(BlogComment record);

    //    通过博客id找到评论内容
    public String selectCommentContentByBlogId(int blog_id);

    //    通过博客id找到评论用户id
    public Integer selectBlogCommentUserByBlogId(int blog_id);

    //    通过博客id找到评论内容的时间
    public Date selectCommentTimeByBlogId(int blog_id);
}