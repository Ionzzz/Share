package com.gem.share.entity;

public class FollowGroup {
    private Integer followgroupId;

    private String followgroupname;

    private Integer userId;

    public FollowGroup() {
    }

    @Override
    public String toString() {
        return "FollowGroup{" +
                "followgroupId=" + followgroupId +
                ", followgroupname='" + followgroupname + '\'' +
                ", userId=" + userId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FollowGroup that = (FollowGroup) o;

        if (followgroupId != null ? !followgroupId.equals(that.followgroupId) : that.followgroupId != null)
            return false;
        if (followgroupname != null ? !followgroupname.equals(that.followgroupname) : that.followgroupname != null)
            return false;
        return userId != null ? userId.equals(that.userId) : that.userId == null;
    }

    @Override
    public int hashCode() {
        int result = followgroupId != null ? followgroupId.hashCode() : 0;
        result = 31 * result + (followgroupname != null ? followgroupname.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }

    public Integer getFollowgroupId() {
        return followgroupId;
    }

    public void setFollowgroupId(Integer followgroupId) {
        this.followgroupId = followgroupId;
    }

    public String getFollowgroupname() {
        return followgroupname;
    }

    public void setFollowgroupname(String followgroupname) {
        this.followgroupname = followgroupname == null ? null : followgroupname.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}