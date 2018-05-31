package com.gem.share.entity;

import java.util.Date;

public class LabelInfo {
    private Integer labelId;

    private String labelname;

    private String labelcontent;

    private Date labelcreatetime;

    private Date labelmodifytime;

    public LabelInfo() {
    }

    @Override
    public String toString() {
        return "LabelInfo{" +
                "labelId=" + labelId +
                ", labelname='" + labelname + '\'' +
                ", labelcontent='" + labelcontent + '\'' +
                ", labelcreatetime=" + labelcreatetime +
                ", labelmodifytime=" + labelmodifytime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LabelInfo labelInfo = (LabelInfo) o;

        if (labelId != null ? !labelId.equals(labelInfo.labelId) : labelInfo.labelId != null) return false;
        if (labelname != null ? !labelname.equals(labelInfo.labelname) : labelInfo.labelname != null) return false;
        if (labelcontent != null ? !labelcontent.equals(labelInfo.labelcontent) : labelInfo.labelcontent != null)
            return false;
        if (labelcreatetime != null ? !labelcreatetime.equals(labelInfo.labelcreatetime) : labelInfo.labelcreatetime != null)
            return false;
        return labelmodifytime != null ? labelmodifytime.equals(labelInfo.labelmodifytime) : labelInfo.labelmodifytime == null;
    }

    @Override
    public int hashCode() {
        int result = labelId != null ? labelId.hashCode() : 0;
        result = 31 * result + (labelname != null ? labelname.hashCode() : 0);
        result = 31 * result + (labelcontent != null ? labelcontent.hashCode() : 0);
        result = 31 * result + (labelcreatetime != null ? labelcreatetime.hashCode() : 0);
        result = 31 * result + (labelmodifytime != null ? labelmodifytime.hashCode() : 0);
        return result;
    }

    public Integer getLabelId() {
        return labelId;
    }

    public void setLabelId(Integer labelId) {
        this.labelId = labelId;
    }

    public String getLabelname() {
        return labelname;
    }

    public void setLabelname(String labelname) {
        this.labelname = labelname == null ? null : labelname.trim();
    }

    public String getLabelcontent() {
        return labelcontent;
    }

    public void setLabelcontent(String labelcontent) {
        this.labelcontent = labelcontent == null ? null : labelcontent.trim();
    }

    public Date getLabelcreatetime() {
        return labelcreatetime;
    }

    public void setLabelcreatetime(Date labelcreatetime) {
        this.labelcreatetime = labelcreatetime;
    }

    public Date getLabelmodifytime() {
        return labelmodifytime;
    }

    public void setLabelmodifytime(Date labelmodifytime) {
        this.labelmodifytime = labelmodifytime;
    }
}