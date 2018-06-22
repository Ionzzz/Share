package com.gem.share.dao;

import com.gem.share.entity.ManagerOpeContent;
import com.gem.share.entity.ManagerOpeTime;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MngOpeMapper {
    List<ManagerOpeContent> selectOpeContents();
    ManagerOpeTime selectOpeTime(int opeid);


    void insertOpeRecord(@Param("managerid") int managerid, @Param("message") String message);
}
