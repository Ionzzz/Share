package com.gem.share.entity;

import java.util.Date;

public class BlogComment {
    private Integer commentId;

    private Integer blogId;

    private Integer commentuserId;

    private String commentcontent;

    private Date commenttime;

    public BlogComment() {
    }

    @Override
    public String toString() {
        return "BlogComment{" +
                "commentId=" + commentId +
                ", blogId=" + blogId +
                ", commentuserId=" + commentuserId +
                ", commentcontent='" + commentcontent + '\'' +
                ", commenttime=" + commenttime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogComment that = (BlogComment) o;

        if (commentId != null ? !commentId.equals(that.commentId) : that.commentId != null) return false;
        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        if (commentuserId != null ? !commentuserId.equals(that.commentuserId) : that.commentuserId != null)
            return false;
        if (commentcontent != null ? !commentcontent.equals(that.commentcontent) : that.commentcontent != null)
            return false;
        return commenttime != null ? commenttime.equals(that.commenttime) : that.commenttime == null;
    }

    @Override
    public int hashCode() {
        int result = commentId != null ? commentId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (commentuserId != null ? commentuserId.hashCode() : 0);
        result = 31 * result + (commentcontent != null ? commentcontent.hashCode() : 0);
        result = 31 * result + (commenttime != null ? commenttime.hashCode() : 0);
        return result;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getCommentuserId() {
        return commentuserId;
    }

    public void setCommentuserId(Integer commentuserId) {
        this.commentuserId = commentuserId;
    }

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentcontent) {
        this.commentcontent = commentcontent == null ? null : commentcontent.trim();
    }

    public Date getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }
}