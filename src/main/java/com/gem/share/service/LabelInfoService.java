package com.gem.share.service;

import com.gem.share.entity.LabelInfo;

import java.util.List;

public interface LabelInfoService {
//    查询所有标签
    public List<LabelInfo> selectAllLabelInfo();
//    通过标签id查询标签
    public LabelInfo selectLabelInfoByLabelId(int label_id);

    public LabelInfo selectLabelByLabelName(String labelName);

    public LabelInfo selectLabelByLikeLabelName(String labelName);
//    插入一个新标签
    public boolean insertLabelInfo(LabelInfo labelInfo);
//    删除标签
    public boolean deleteLabelInfoByLabelId(int label_id);
//    通过标签id修改一个标签
    public LabelInfo updateLabeiInfoByLabelId(int label_id);





}
