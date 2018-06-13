package com.gem.share.entity;

import java.util.Date;

public class shuDongDetail {

    private int blogId;
    private int commentId;
    private String blogContent;
    private Date blogCreateTime;
//    private int bcommentcount;
    private String commentContent;
    private String commentTime;
    private int userId;
    private String userAccount;
    private String userNickName;

    public shuDongDetail() {
    }

    @Override
    public String toString() {
        return "shuDongDetail{" +
                "blogId=" + blogId +
                ", commentId=" + commentId +
                ", blogContent='" + blogContent + '\'' +
                ", blogCreateTime=" + blogCreateTime +
                ", commentContent='" + commentContent + '\'' +
                ", commentTime='" + commentTime + '\'' +
                ", userId=" + userId +
                ", userAccount='" + userAccount + '\'' +
                ", userNickName='" + userNickName + '\'' +
                '}';
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public Date getBlogCreateTime() {
        return blogCreateTime;
    }

    public void setBlogCreateTime(Date blogCreateTime) {
        this.blogCreateTime = blogCreateTime;
    }

//    public int getBcommentcount() {
//        return bcommentcount;
//    }

//    public void setBcommentcount(int bcommentcount) {
//        this.bcommentcount = bcommentcount;
//    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public String getUserNickName() {
        return userNickName;
    }

    public void setUserNickName(String userNickName) {
        this.userNickName = userNickName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
