package com.gem.share.util;

import com.gem.share.entity.Gender;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GenderTypeHander extends BaseTypeHandler<Gender> {
//setNonNullParameter 将Gender存到数据库编程char
    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, Gender gender, JdbcType jdbcType) throws SQLException {
//               sql语句，对于sex? char
        String sex=gender==Gender.man?"1":"2";
        preparedStatement.setString(i,sex);
    }


//s 列名  通过列名获得该列的值
    @Override
    public Gender getNullableResult(ResultSet resultSet, String s) throws SQLException {
        String sex=resultSet.getString(s);

        return sex.equals("1")?Gender.man:Gender.woman;

    }

//    通过列index获得列值
    @Override
    public Gender getNullableResult(ResultSet resultSet, int i) throws SQLException {
        String sex=resultSet.getString(i);

        return sex.equals("1")?Gender.man:Gender.woman;
    }

    @Override
    public Gender getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        String sex=callableStatement.getString(i);

        return sex.equals("1")?Gender.man:Gender.woman;
    }
}
