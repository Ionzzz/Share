package com.gem.share.dao;

import com.gem.share.entity.BlogLabel;
import com.gem.share.entity.BlogLabelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogLabelMapper {
    long countByExample(BlogLabelExample example);

    int deleteByExample(BlogLabelExample example);

    int deleteByPrimaryKey(Integer bloglableId);

    int insert(BlogLabel record);

    int insertSelective(BlogLabel record);

    List<BlogLabel> selectByExample(BlogLabelExample example);

    BlogLabel selectByPrimaryKey(Integer bloglableId);

    int updateByExampleSelective(@Param("record") BlogLabel record, @Param("example") BlogLabelExample example);

    int updateByExample(@Param("record") BlogLabel record, @Param("example") BlogLabelExample example);

    int updateByPrimaryKeySelective(BlogLabel record);

    int updateByPrimaryKey(BlogLabel record);

    //    通过博客查询该博客的标签
    public List<Integer> selectLabelByBlogId(int blog_id);

    //    通过标签找到博客id
    public List<Integer> selectBlogByLabelId(int label_id);
}