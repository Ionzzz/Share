package com.gem.share.dao;

import com.gem.share.entity.UserLabel;
import com.gem.share.entity.UserLabelExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserLabelMapper {
    long countByExample(UserLabelExample example);

    int deleteByExample(UserLabelExample example);

    int deleteByPrimaryKey(Integer userlabelId);

    int insert(UserLabel record);

    int insertSelective(UserLabel record);

    List<UserLabel> selectByExample(UserLabelExample example);

    UserLabel selectByPrimaryKey(Integer userlabelId);

    int updateByExampleSelective(@Param("record") UserLabel record, @Param("example") UserLabelExample example);

    int updateByExample(@Param("record") UserLabel record, @Param("example") UserLabelExample example);

    int updateByPrimaryKeySelective(UserLabel record);

    int updateByPrimaryKey(UserLabel record);

//userid查询该用户所选择labelid
    public List<UserLabel> selectLabelIdByUserId(int user_id);

}