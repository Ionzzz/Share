package com.gem.share.entity;

public class BlogCollect {
    private Integer bcollectId;

    private Integer blogId;

    private Integer userId;

    public BlogCollect() {
    }

    @Override
    public String toString() {
        return "BlogCollect{" +
                "bcollectId=" + bcollectId +
                ", blogId=" + blogId +
                ", userId=" + userId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogCollect that = (BlogCollect) o;

        if (bcollectId != null ? !bcollectId.equals(that.bcollectId) : that.bcollectId != null) return false;
        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        return userId != null ? userId.equals(that.userId) : that.userId == null;
    }

    @Override
    public int hashCode() {
        int result = bcollectId != null ? bcollectId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }

    public Integer getBcollectId() {
        return bcollectId;
    }

    public void setBcollectId(Integer bcollectId) {
        this.bcollectId = bcollectId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}