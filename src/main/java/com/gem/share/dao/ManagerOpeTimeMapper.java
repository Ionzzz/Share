package com.gem.share.dao;

import com.gem.share.entity.ManagerOpeTime;
import com.gem.share.entity.ManagerOpeTimeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ManagerOpeTimeMapper {
    long countByExample(ManagerOpeTimeExample example);

    int deleteByExample(ManagerOpeTimeExample example);

    int insert(ManagerOpeTime record);

    int insertSelective(ManagerOpeTime record);

    List<ManagerOpeTime> selectByExample(ManagerOpeTimeExample example);

    int updateByExampleSelective(@Param("record") ManagerOpeTime record, @Param("example") ManagerOpeTimeExample example);

    int updateByExample(@Param("record") ManagerOpeTime record, @Param("example") ManagerOpeTimeExample example);
}