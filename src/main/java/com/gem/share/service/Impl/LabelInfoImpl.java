package com.gem.share.service.Impl;

import com.gem.share.entity.LabelInfo;
import com.gem.share.service.LabelInfoService;

import java.util.List;

public class LabelInfoImpl implements LabelInfoService {
    @Override
    public List<LabelInfo> selectAllLabelInfo() {
        return null;
    }

    @Override
    public LabelInfo selectLabelInfoById(int label_id) {
        return null;
    }

    @Override
    public boolean insertLabelInfo() {
        return false;
    }

    @Override
    public boolean deleteLabelInfoByLabelId(int label_id) {
        return false;
    }

    @Override
    public LabelInfo updateLabeiInfoByLabelId(int label_id) {
        return null;
    }

    @Override
    public List<Integer> selectBlogByLabelId(int label_id) {
        return null;
    }
}
