package com.gem.share.entity;

import java.util.Date;

public class ReplyComment {
    private Integer replycommentId;

    private Integer commentId;

    private Integer userId;

    private String replycommentcontent;

    private Date replycommenttime;

    private int replycomment;

    public ReplyComment() {
    }

    public ReplyComment(Integer commentId, Integer userId, String replycommentcontent, Date replycommenttime) {
        this.commentId = commentId;
        this.userId = userId;
        this.replycommentcontent = replycommentcontent;
        this.replycommenttime = replycommenttime;
    }

    @Override
    public String toString() {
        return "ReplyComment{" +
                "replycommentId=" + replycommentId +
                ", commentId=" + commentId +
                ", userId=" + userId +
                ", replycommentcontent='" + replycommentcontent + '\'' +
                ", replycommenttime=" + replycommenttime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ReplyComment that = (ReplyComment) o;

        if (replycommentId != null ? !replycommentId.equals(that.replycommentId) : that.replycommentId != null)
            return false;
        if (commentId != null ? !commentId.equals(that.commentId) : that.commentId != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (replycommentcontent != null ? !replycommentcontent.equals(that.replycommentcontent) : that.replycommentcontent != null)
            return false;
        return replycommenttime != null ? replycommenttime.equals(that.replycommenttime) : that.replycommenttime == null;
    }

    @Override
    public int hashCode() {
        int result = replycommentId != null ? replycommentId.hashCode() : 0;
        result = 31 * result + (commentId != null ? commentId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (replycommentcontent != null ? replycommentcontent.hashCode() : 0);
        result = 31 * result + (replycommenttime != null ? replycommenttime.hashCode() : 0);
        return result;
    }

    public int getReplycomment() {
        return replycomment;
    }

    public void setReplycomment(int replycomment) {
        this.replycomment = replycomment;
    }

    public Integer getReplycommentId() {
        return replycommentId;
    }

    public void setReplycommentId(Integer replycommentId) {
        this.replycommentId = replycommentId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getReplycommentcontent() {
        return replycommentcontent;
    }

    public void setReplycommentcontent(String replycommentcontent) {
        this.replycommentcontent = replycommentcontent == null ? null : replycommentcontent.trim();
    }

    public Date getReplycommenttime() {
        return replycommenttime;
    }

    public void setReplycommenttime(Date replycommenttime) {
        this.replycommenttime = replycommenttime;
    }
}