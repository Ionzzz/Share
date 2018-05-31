package com.gem.share.entity;

public class DressUp {
    private Integer dressupId;

    private Integer userId;

    private String dresspic;

    public DressUp() {
    }

    @Override
    public String toString() {
        return "DressUp{" +
                "dressupId=" + dressupId +
                ", userId=" + userId +
                ", dresspic='" + dresspic + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DressUp dressUp = (DressUp) o;

        if (dressupId != null ? !dressupId.equals(dressUp.dressupId) : dressUp.dressupId != null) return false;
        if (userId != null ? !userId.equals(dressUp.userId) : dressUp.userId != null) return false;
        return dresspic != null ? dresspic.equals(dressUp.dresspic) : dressUp.dresspic == null;
    }

    @Override
    public int hashCode() {
        int result = dressupId != null ? dressupId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (dresspic != null ? dresspic.hashCode() : 0);
        return result;
    }

    public Integer getDressupId() {
        return dressupId;
    }

    public void setDressupId(Integer dressupId) {
        this.dressupId = dressupId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDresspic() {
        return dresspic;
    }

    public void setDresspic(String dresspic) {
        this.dresspic = dresspic == null ? null : dresspic.trim();
    }
}