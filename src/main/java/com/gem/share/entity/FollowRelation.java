package com.gem.share.entity;

public class FollowRelation {
    private Integer followrelaionId;

    private Integer userId;

    private Integer followuserId;

    private Integer followgroupId;

    public FollowRelation() {
    }

    @Override
    public String toString() {
        return "FollowRelation{" +
                "followrelaionId=" + followrelaionId +
                ", userId=" + userId +
                ", followuserId=" + followuserId +
                ", followgroupId=" + followgroupId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FollowRelation that = (FollowRelation) o;

        if (followrelaionId != null ? !followrelaionId.equals(that.followrelaionId) : that.followrelaionId != null)
            return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (followuserId != null ? !followuserId.equals(that.followuserId) : that.followuserId != null) return false;
        return followgroupId != null ? followgroupId.equals(that.followgroupId) : that.followgroupId == null;
    }

    @Override
    public int hashCode() {
        int result = followrelaionId != null ? followrelaionId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (followuserId != null ? followuserId.hashCode() : 0);
        result = 31 * result + (followgroupId != null ? followgroupId.hashCode() : 0);
        return result;
    }

    public Integer getFollowrelaionId() {
        return followrelaionId;
    }

    public void setFollowrelaionId(Integer followrelaionId) {
        this.followrelaionId = followrelaionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFollowuserId() {
        return followuserId;
    }

    public void setFollowuserId(Integer followuserId) {
        this.followuserId = followuserId;
    }

    public Integer getFollowgroupId() {
        return followgroupId;
    }

    public void setFollowgroupId(Integer followgroupId) {
        this.followgroupId = followgroupId;
    }
}