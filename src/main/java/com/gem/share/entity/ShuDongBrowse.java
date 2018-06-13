package com.gem.share.entity;

public class ShuDongBrowse {

    private Integer blogbrowseId;

    private Integer blogId;

    private Integer userId;

    public ShuDongBrowse() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ShuDongBrowse that = (ShuDongBrowse) o;

        if (blogbrowseId != null ? !blogbrowseId.equals(that.blogbrowseId) : that.blogbrowseId != null) return false;
        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        return userId != null ? userId.equals(that.userId) : that.userId == null;
    }

    @Override
    public int hashCode() {
        int result = blogbrowseId != null ? blogbrowseId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "ShuDongBrowse{" +
                "blogbrowseId=" + blogbrowseId +
                ", blogId=" + blogId +
                ", userId=" + userId +
                '}';
    }

    public Integer getBlogbrowseId() {
        return blogbrowseId;
    }

    public void setBlogbrowseId(Integer blogbrowseId) {
        this.blogbrowseId = blogbrowseId;
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
