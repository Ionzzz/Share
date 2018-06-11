package com.gem.share.service.Impl;

import com.gem.share.dao.LabelInfoMapper;
import com.gem.share.entity.LabelInfo;
import com.gem.share.service.LabelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LabelInfoServiceImpl implements LabelInfoService {
    @Autowired
    private LabelInfoMapper labelInfoMapper;

    @Override
    public List<LabelInfo> selectAllLabelInfo() {

        return labelInfoMapper.selectAllLabelInfo();
    }

    @Override
    public LabelInfo selectLabelInfoByLabelId(int label_id) {

        LabelInfo labelInfo=labelInfoMapper.selectLabelByLabelId(label_id);

        return labelInfo;
    }

    @Override
    public LabelInfo selectLabelByLabelName(String labelName) {
        return labelInfoMapper.selectLabelByLabelName(labelName);
    }

    @Override
    public LabelInfo selectLabelByLikeLabelName(String labelName) {
        return labelInfoMapper.selectLabelByLikeLabelName(labelName);
    }

    @Override
    public boolean insertLabelInfo(LabelInfo labelInfo) {
        return false;
    }

    @Override
    public boolean deleteLabelInfoByLabelId(int label_id) {
        return labelInfoMapper.deleteLabelByLabelId(label_id);
    }

    @Override
    public LabelInfo updateLabeiInfoByLabelId(int label_id) {
        return null;
    }

}
