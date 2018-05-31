package com.gem.share.dao;

import com.gem.share.entity.BlogZan;
import com.gem.share.entity.BlogZanExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogZanMapper {
    long countByExample(BlogZanExample example);

    int deleteByExample(BlogZanExample example);

    int deleteByPrimaryKey(Integer blogzanId);

    int insert(BlogZan record);

    int insertSelective(BlogZan record);

    List<BlogZan> selectByExample(BlogZanExample example);

    BlogZan selectByPrimaryKey(Integer blogzanId);

    int updateByExampleSelective(@Param("record") BlogZan record, @Param("example") BlogZanExample example);

    int updateByExample(@Param("record") BlogZan record, @Param("example") BlogZanExample example);

    int updateByPrimaryKeySelective(BlogZan record);

    int updateByPrimaryKey(BlogZan record);

    //    通过博客id找到点赞用户id
    public Integer selectZanUserIdByBlogId(int blog_id);

    //    通过博客id找到用户点赞时间
    public Date selectZanTimeByBlogId(int blog_id);
}