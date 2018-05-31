package com.gem.share.dao;

import com.gem.share.entity.FollowGroup;
import com.gem.share.entity.FollowGroupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FollowGroupMapper {
    long countByExample(FollowGroupExample example);

    int deleteByExample(FollowGroupExample example);

    int deleteByPrimaryKey(Integer followgroupId);

    int insert(FollowGroup record);

    int insertSelective(FollowGroup record);

    List<FollowGroup> selectByExample(FollowGroupExample example);

    FollowGroup selectByPrimaryKey(Integer followgroupId);

    int updateByExampleSelective(@Param("record") FollowGroup record, @Param("example") FollowGroupExample example);

    int updateByExample(@Param("record") FollowGroup record, @Param("example") FollowGroupExample example);

    int updateByPrimaryKeySelective(FollowGroup record);

    int updateByPrimaryKey(FollowGroup record);
}