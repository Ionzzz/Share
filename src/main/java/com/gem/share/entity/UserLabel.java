package com.gem.share.entity;

public class UserLabel {
    private Integer userlabelId;

    private Integer userId;

    private Integer labelId;

    public UserLabel() {
    }

    @Override
    public String toString() {
        return "UserLabel{" +
                "userlabelId=" + userlabelId +
                ", userId=" + userId +
                ", labelId=" + labelId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserLabel userLabel = (UserLabel) o;

        if (userlabelId != null ? !userlabelId.equals(userLabel.userlabelId) : userLabel.userlabelId != null)
            return false;
        if (userId != null ? !userId.equals(userLabel.userId) : userLabel.userId != null) return false;
        return labelId != null ? labelId.equals(userLabel.labelId) : userLabel.labelId == null;
    }

    @Override
    public int hashCode() {
        int result = userlabelId != null ? userlabelId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (labelId != null ? labelId.hashCode() : 0);
        return result;
    }

    public Integer getUserlabelId() {
        return userlabelId;
    }

    public void setUserlabelId(Integer userlabelId) {
        this.userlabelId = userlabelId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLabelId() {
        return labelId;
    }

    public void setLabelId(Integer labelId) {
        this.labelId = labelId;
    }
}