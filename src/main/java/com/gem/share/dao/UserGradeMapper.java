package com.gem.share.dao;

import com.gem.share.entity.UserGrade;
import com.gem.share.entity.UserGradeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserGradeMapper {
    long countByExample(UserGradeExample example);

    int deleteByExample(UserGradeExample example);

    int deleteByPrimaryKey(Integer usergradeId);

    int insert(UserGrade record);

    int insertSelective(UserGrade record);

    List<UserGrade> selectByExample(UserGradeExample example);

    UserGrade selectByPrimaryKey(Integer usergradeId);

    int updateByExampleSelective(@Param("record") UserGrade record, @Param("example") UserGradeExample example);

    int updateByExample(@Param("record") UserGrade record, @Param("example") UserGradeExample example);

    int updateByPrimaryKeySelective(UserGrade record);

    int updateByPrimaryKey(UserGrade record);
}