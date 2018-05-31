package com.gem.share.dao;

import com.gem.share.entity.FollowRelation;
import com.gem.share.entity.FollowRelationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FollowRelationMapper {
    long countByExample(FollowRelationExample example);

    int deleteByExample(FollowRelationExample example);

    int deleteByPrimaryKey(Integer followrelaionId);

    int insert(FollowRelation record);

    int insertSelective(FollowRelation record);

    List<FollowRelation> selectByExample(FollowRelationExample example);

    FollowRelation selectByPrimaryKey(Integer followrelaionId);

    int updateByExampleSelective(@Param("record") FollowRelation record, @Param("example") FollowRelationExample example);

    int updateByExample(@Param("record") FollowRelation record, @Param("example") FollowRelationExample example);

    int updateByPrimaryKeySelective(FollowRelation record);

    int updateByPrimaryKey(FollowRelation record);
}