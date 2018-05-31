package com.gem.share.dao;

import com.gem.share.entity.DressUp;
import com.gem.share.entity.DressUpExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DressUpMapper {
    long countByExample(DressUpExample example);

    int deleteByExample(DressUpExample example);

    int deleteByPrimaryKey(Integer dressupId);

    int insert(DressUp record);

    int insertSelective(DressUp record);

    List<DressUp> selectByExample(DressUpExample example);

    DressUp selectByPrimaryKey(Integer dressupId);

    int updateByExampleSelective(@Param("record") DressUp record, @Param("example") DressUpExample example);

    int updateByExample(@Param("record") DressUp record, @Param("example") DressUpExample example);

    int updateByPrimaryKeySelective(DressUp record);

    int updateByPrimaryKey(DressUp record);

    //    根据用户id得到用户的装扮图片
    public String selectDressUpPicsByUserId(int user_id);
}