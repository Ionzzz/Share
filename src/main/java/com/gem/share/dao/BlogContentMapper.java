package com.gem.share.dao;

import com.gem.share.entity.BlogContent;
import com.gem.share.entity.BlogContentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogContentMapper {
    long countByExample(BlogContentExample example);

    int deleteByExample(BlogContentExample example);

    int deleteByPrimaryKey(Integer blogId);

    int insert(BlogContent record);

    int insertSelective(BlogContent record);

    List<BlogContent> selectByExampleWithBLOBs(BlogContentExample example);

    List<BlogContent> selectByExample(BlogContentExample example);

    BlogContent selectByPrimaryKey(Integer blogId);

    int updateByExampleSelective(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByExampleWithBLOBs(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByExample(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByPrimaryKeySelective(BlogContent record);

    int updateByPrimaryKeyWithBLOBs(BlogContent record);

    int updateByPrimaryKey(BlogContent record);


//  按照博客发表时间排序  若时间相同按照用户id升序排列

    public List<BlogContent> orderBlogByCreateTime();

    public BlogContent selectBlogByBlogId(int blog_id);

    public List<BlogContent> selectAllBlog();

    public boolean updateBlogByBlogId(BlogContent blogContent);

    public boolean insertBlog(BlogContent blogContent);

    public boolean deleteBlogByBlogId(int blog_id);
}