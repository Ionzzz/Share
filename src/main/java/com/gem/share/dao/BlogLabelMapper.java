package com.gem.share.dao;

import com.gem.share.entity.BlogContent;
import com.gem.share.entity.BlogLabel;
import com.gem.share.entity.BlogLabelExample;
import com.gem.share.entity.LabelInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogLabelMapper {
    long countByExample(BlogLabelExample example);

    int deleteByExample(BlogLabelExample example);

    int deleteByPrimaryKey(Integer bloglabelId);

    int insert(BlogLabel record);

    int insertSelective(BlogLabel record);

    List<BlogLabel> selectByExample(BlogLabelExample example);

    BlogLabel selectByPrimaryKey(Integer bloglabelId);

    int updateByExampleSelective(@Param("record") BlogLabel record, @Param("example") BlogLabelExample example);

    int updateByExample(@Param("record") BlogLabel record, @Param("example") BlogLabelExample example);

    int updateByPrimaryKeySelective(BlogLabel record);

    int updateByPrimaryKey(BlogLabel record);

    //    通过博客查询该博客的标签
    public List<Integer> selectLabelIdByBlogId(int blog_id);
//        通过博客id查标签
    public List<LabelInfo> selectLabelByBlogId(int blog_id);
    //    通过标签找到博客id
    public List<Integer> selectBlogIdByLabelId(int label_id);
//    通过标签找博客
    public List<BlogContent> selectBlogByLabelId(int label_id);
    public List<BlogContent> selectBlogByLabelName(String labelName);
}