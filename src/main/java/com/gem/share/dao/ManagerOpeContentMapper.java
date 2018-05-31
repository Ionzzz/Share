package com.gem.share.dao;

import com.gem.share.entity.ManagerOpeContent;
import com.gem.share.entity.ManagerOpeContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ManagerOpeContentMapper {
    long countByExample(ManagerOpeContentExample example);

    int deleteByExample(ManagerOpeContentExample example);

    int deleteByPrimaryKey(Integer manageroperateId);

    int insert(ManagerOpeContent record);

    int insertSelective(ManagerOpeContent record);

    List<ManagerOpeContent> selectByExample(ManagerOpeContentExample example);

    ManagerOpeContent selectByPrimaryKey(Integer manageroperateId);

    int updateByExampleSelective(@Param("record") ManagerOpeContent record, @Param("example") ManagerOpeContentExample example);

    int updateByExample(@Param("record") ManagerOpeContent record, @Param("example") ManagerOpeContentExample example);

    int updateByPrimaryKeySelective(ManagerOpeContent record);

    int updateByPrimaryKey(ManagerOpeContent record);
}