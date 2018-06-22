package com.gem.share.entity;

import java.util.Date;

public class MyAllZan {

    private Integer userId;

    private String usernickname;

    private String userimg;

    private Integer blogId;

    private String blogcontent;

    private Date blogcreatetime;

    private Integer commentId;

    private Integer blogzanId;

    private Date zanTime;

    public MyAllZan() {
    }

    public MyAllZan(Integer userId, String usernickname, String userimg, Integer blogId, String blogcontent, Date blogcreatetime, Integer commentId, Integer blogzanId, Date zanTime) {
        this.userId = userId;
        this.usernickname = usernickname;
        this.userimg = userimg;
        this.blogId = blogId;
        this.blogcontent = blogcontent;
        this.blogcreatetime = blogcreatetime;
        this.commentId = commentId;
        this.blogzanId = blogzanId;
        this.zanTime = zanTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsernickname() {
        return usernickname;
    }

    public void setUsernickname(String usernickname) {
        this.usernickname = usernickname;
    }

    public String getUserimg() {
        return userimg;
    }

    public void setUserimg(String userimg) {
        this.userimg = userimg;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public String getBlogcontent() {
        return blogcontent;
    }

    public void setBlogcontent(String blogcontent) {
        this.blogcontent = blogcontent;
    }

    public Date getBlogcreatetime() {
        return blogcreatetime;
    }

    public void setBlogcreatetime(Date blogcreatetime) {
        this.blogcreatetime = blogcreatetime;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getBlogzanId() {
        return blogzanId;
    }

    public void setBlogzanId(Integer blogzanId) {
        this.blogzanId = blogzanId;
    }

    public Date getZanTime() {
        return zanTime;
    }

    public void setZanTime(Date zanTime) {
        this.zanTime = zanTime;
    }

    @Override
    public String toString() {
        return "MyAllZan{" +
                "userId=" + userId +
                ", usernickname='" + usernickname + '\'' +
                ", userimg='" + userimg + '\'' +
                ", blogId=" + blogId +
                ", blogcontent='" + blogcontent + '\'' +
                ", blogcreatetime=" + blogcreatetime +
                ", commentId=" + commentId +
                ", blogzanId=" + blogzanId +
                ", zanTime=" + zanTime +
                '}';
    }
}
