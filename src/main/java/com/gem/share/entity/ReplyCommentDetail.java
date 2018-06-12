package com.gem.share.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class ReplyCommentDetail {
    private int replycommentId;
    private int commentUserId;
    private int userId;
    private String userAccount;
    private String userNickName;
    private String replycommentcontent;
    private Date replycommenttime;

    public ReplyCommentDetail() {
    }

    @Override
    public String toString() {
        return "ReplyCommentDetail{" +
                "replycommentId=" + replycommentId +
                ", commentUserId=" + commentUserId +
                ", userId=" + userId +
                ", userAccount='" + userAccount + '\'' +
                ", userNickName='" + userNickName + '\'' +
                ", replycommentcontent='" + replycommentcontent + '\'' +
                ", replycommenttime=" + replycommenttime +
                '}';
    }

    public int getReplycommentId() {
        return replycommentId;
    }

    public void setReplycommentId(int replycommentId) {
        this.replycommentId = replycommentId;
    }

    public int getCommentUserId() {
        return commentUserId;
    }

    public void setCommentUserId(int commentUserId) {
        this.commentUserId = commentUserId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getReplycommentcontent() {
        return replycommentcontent;
    }

    public void setReplycommentcontent(String replycommentcontent) {
        this.replycommentcontent = replycommentcontent;
    }

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getReplycommenttime() {
        return replycommenttime;
    }

    public void setReplycommenttime(Date replycommenttime) {
        this.replycommenttime = replycommenttime;
    }

    public String getUserNickName() {
        return userNickName;
    }

    public void setUserNickName(String userNickName) {
        this.userNickName = userNickName;
    }
}
