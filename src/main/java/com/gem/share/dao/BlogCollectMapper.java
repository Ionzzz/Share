package com.gem.share.dao;

import com.gem.share.entity.BlogCollect;
import com.gem.share.entity.BlogCollectExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogCollectMapper {
    long countByExample(BlogCollectExample example);

    int deleteByExample(BlogCollectExample example);

    int deleteByPrimaryKey(Integer bcollectId);

    int insert(BlogCollect record);

    int insertSelective(BlogCollect record);

    List<BlogCollect> selectByExample(BlogCollectExample example);

    BlogCollect selectByPrimaryKey(Integer bcollectId);

    int updateByExampleSelective(@Param("record") BlogCollect record, @Param("example") BlogCollectExample example);

    int updateByExample(@Param("record") BlogCollect record, @Param("example") BlogCollectExample example);

    int updateByPrimaryKeySelective(BlogCollect record);

    int updateByPrimaryKey(BlogCollect record);

    //    通过用户id得到收藏id
    public Integer selectCollectIdByUserId(int user_id);
}