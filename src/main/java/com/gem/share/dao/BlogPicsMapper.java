package com.gem.share.dao;

import com.gem.share.entity.BlogPics;
import com.gem.share.entity.BlogPicsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogPicsMapper {
    long countByExample(BlogPicsExample example);

    int deleteByExample(BlogPicsExample example);

    int deleteByPrimaryKey(Integer blogpicsId);

    int insert(BlogPics record);

    int insertSelective(BlogPics record);

    List<BlogPics> selectByExample(BlogPicsExample example);

    BlogPics selectByPrimaryKey(Integer blogpicsId);

    int updateByExampleSelective(@Param("record") BlogPics record, @Param("example") BlogPicsExample example);

    int updateByExample(@Param("record") BlogPics record, @Param("example") BlogPicsExample example);

    int updateByPrimaryKeySelective(BlogPics record);

    int updateByPrimaryKey(BlogPics record);

    //    通过博客id得到博客图片，上传相册
    public Integer selectBlogPicsByBlogId(int blog_id);


}