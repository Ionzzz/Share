package com.gem.share.dao;

import com.gem.share.entity.BlogContent;
import com.gem.share.entity.BlogContentExample;
import com.gem.share.entity.BlogUserPicsLabel;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

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

    public List<BlogContent> selectAllBlogByPage(Map<String,Object> map);

//  按照博客发表时间排序  若时间相同按照用户id升序排列

    public List<BlogContent> orderBlogByCreateTime();

    public BlogContent selectBlogByBlogId(int blog_id);

    public List<BlogContent> selectAllBlog();

    public boolean updateBlogByBlogId(BlogContent blogContent);

    public boolean insertBlog(BlogContent blogContent);

    public boolean deleteBlogByBlogId(int blog_id);

    public Date selectBlogCreateTimeByBlogId(int blog_id);

    public List<BlogUserPicsLabel> selectBlogCount(int count);

    public List<BlogUserPicsLabel> selectOrderBlogUserPics();

    public BlogUserPicsLabel selectBlogUserPicsByBlogId(int blog_id);

//    浏览量最高
    public BlogUserPicsLabel selectOneBlogOrderBlogBrowse();
//    增加一次浏览量
    public boolean updateBlogBrowse(int blog_id);

}