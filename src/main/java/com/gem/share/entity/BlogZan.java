package com.gem.share.entity;

import java.util.Date;

public class BlogZan {
    private Integer blogzanId;

    private Integer blogId;

    private Integer userId;

    private Date zanTime;

    public BlogZan() {
    }

    @Override
    public String toString() {
        return "BlogZan{" +
                "blogzanId=" + blogzanId +
                ", blogId=" + blogId +
                ", userId=" + userId +
                ", zanTime=" + zanTime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogZan blogZan = (BlogZan) o;

        if (blogzanId != null ? !blogzanId.equals(blogZan.blogzanId) : blogZan.blogzanId != null) return false;
        if (blogId != null ? !blogId.equals(blogZan.blogId) : blogZan.blogId != null) return false;
        if (userId != null ? !userId.equals(blogZan.userId) : blogZan.userId != null) return false;
        return zanTime != null ? zanTime.equals(blogZan.zanTime) : blogZan.zanTime == null;
    }

    @Override
    public int hashCode() {
        int result = blogzanId != null ? blogzanId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (zanTime != null ? zanTime.hashCode() : 0);
        return result;
    }

    public Integer getBlogzanId() {
        return blogzanId;
    }

    public void setBlogzanId(Integer blogzanId) {
        this.blogzanId = blogzanId;
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

    public Date getZanTime() {
        return zanTime;
    }

    public void setZanTime(Date zanTime) {
        this.zanTime = zanTime;
    }
}