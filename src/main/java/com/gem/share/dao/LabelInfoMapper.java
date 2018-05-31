package com.gem.share.dao;

import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.LabelInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LabelInfoMapper {
    long countByExample(LabelInfoExample example);

    int deleteByExample(LabelInfoExample example);

    int deleteByPrimaryKey(Integer labelId);

    int insert(LabelInfo record);

    int insertSelective(LabelInfo record);

    List<LabelInfo> selectByExample(LabelInfoExample example);

    LabelInfo selectByPrimaryKey(Integer labelId);

    int updateByExampleSelective(@Param("record") LabelInfo record, @Param("example") LabelInfoExample example);

    int updateByExample(@Param("record") LabelInfo record, @Param("example") LabelInfoExample example);

    int updateByPrimaryKeySelective(LabelInfo record);

    int updateByPrimaryKey(LabelInfo record);
}