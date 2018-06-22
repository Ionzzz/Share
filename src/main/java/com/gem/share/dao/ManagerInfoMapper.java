package com.gem.share.dao;

import com.gem.share.entity.ManagerInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManagerInfoMapper {
    List<ManagerInfo> selectAllManagerInfos();
    ManagerInfo selectManagerInfoById(int id);
    void insertManagerInfo(ManagerInfo ManagerInfo);
    void updateManagerInfo(ManagerInfo ManagerInfo);
    void deleteManagerInfo(int id);
}