package com.gem.share.dao;

import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.LabelInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LabelInfoMapper {
    long countByExample(LabelInfoExample example);

    int deleteByExample(LabelInfoExample example);

    int deleteByPrimaryKey(Integer labelId);

    int insert(LabelInfo record);

    int insertSelective(LabelInfo record);

    List<LabelInfo> selectByExample(LabelInfoExample example);

    LabelInfo selectByPrimaryKey(Integer labelId);

    int updateByExampleSelective(@Param("record") LabelInfo record, @Param("example") LabelInfoExample example);

    int updateByExample(@Param("record") LabelInfo record, @Param("example") LabelInfoExample example);

    int updateByPrimaryKeySelective(LabelInfo record);

    int updateByPrimaryKey(LabelInfo record);

    public LabelInfo selectAllLabel();

    public LabelInfo selectLabelByLabelId(int label_id);

    public LabelInfo selectLabelByLabelName(String labelName);

    public LabelInfo selectLabelByLikeLabelName(String labelName);

    public LabelInfo updateLabelByLabelId(LabelInfo labelInfo);

    public boolean insertLabelInfo(LabelInfo labelInfo);

    public boolean deleteLabelByLabelId(int label_id);
}