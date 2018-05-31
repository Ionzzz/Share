package com.gem.share.entity;

public class BlogCommentZan {
    private Integer commentzanId;

    private Integer blogId;

    private Integer userId;

    public BlogCommentZan() {
    }

    @Override
    public String toString() {
        return "BlogCommentZan{" +
                "commentzanId=" + commentzanId +
                ", blogId=" + blogId +
                ", userId=" + userId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogCommentZan that = (BlogCommentZan) o;

        if (commentzanId != null ? !commentzanId.equals(that.commentzanId) : that.commentzanId != null) return false;
        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        return userId != null ? userId.equals(that.userId) : that.userId == null;
    }

    @Override
    public int hashCode() {
        int result = commentzanId != null ? commentzanId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }

    public Integer getCommentzanId() {
        return commentzanId;
    }

    public void setCommentzanId(Integer commentzanId) {
        this.commentzanId = commentzanId;
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