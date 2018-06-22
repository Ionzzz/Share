package com.gem.share.dao;

import com.gem.share.entity.LabelInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MngLabelInfoMapper {
    List<LabelInfo> selectAllLabelInfos();
    LabelInfo selectLabelById(int id);
    void insertLableInfo(LabelInfo labelInfo);
    void updateLabelInfo(LabelInfo labelInfo);
    void deleteLabelInfo(int id);
}
