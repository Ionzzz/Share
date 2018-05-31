package com.gem.share.dao;

import com.gem.share.entity.BlogBrowse;
import com.gem.share.entity.BlogBrowseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogBrowseMapper {
    long countByExample(BlogBrowseExample example);

    int deleteByExample(BlogBrowseExample example);

    int deleteByPrimaryKey(Integer blogbrowseId);

    int insert(BlogBrowse record);

    int insertSelective(BlogBrowse record);

    List<BlogBrowse> selectByExample(BlogBrowseExample example);

    BlogBrowse selectByPrimaryKey(Integer blogbrowseId);

    int updateByExampleSelective(@Param("record") BlogBrowse record, @Param("example") BlogBrowseExample example);

    int updateByExample(@Param("record") BlogBrowse record, @Param("example") BlogBrowseExample example);

    int updateByPrimaryKeySelective(BlogBrowse record);

    int updateByPrimaryKey(BlogBrowse record);

    //    根据博客id得到该博客的浏览次数
    public Integer selectBlogBrowseByBlogId(int blog_id);
}