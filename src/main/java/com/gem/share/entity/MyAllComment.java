package com.gem.share.entity;

import java.util.Date;

public class MyAllComment {

    private Integer userId;

    private String usernickname;

    private String userimg;

    private Integer blogId;

    private String blogcontent;

    private Date blogcreatetime;

    private Integer commentId;

    private Integer commentuserId;

    private String commentcontent;

    private Date commenttime;

    public MyAllComment() {
    }

    public MyAllComment(Integer userId, String usernickname, String userimg, Integer blogId, String blogcontent, Date blogcreatetime, Integer commentId, Integer commentuserId, String commentcontent, Date commenttime) {
        this.userId = userId;
        this.usernickname = usernickname;
        this.userimg = userimg;
        this.blogId = blogId;
        this.blogcontent = blogcontent;
        this.blogcreatetime = blogcreatetime;
        this.commentId = commentId;
        this.commentuserId = commentuserId;
        this.commentcontent = commentcontent;
        this.commenttime = commenttime;
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
        this.commentcontent = commentcontent;
    }

    public Date getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }

    @Override
    public String toString() {
        return "MyAllComment{" +
                "userId=" + userId +
                ", usernickname='" + usernickname + '\'' +
                ", userimg='" + userimg + '\'' +
                ", blogId=" + blogId +
                ", blogcontent='" + blogcontent + '\'' +
                ", blogcreatetime=" + blogcreatetime +
                ", commentId=" + commentId +
                ", commentuserId=" + commentuserId +
                ", commentcontent='" + commentcontent + '\'' +
                ", commenttime=" + commenttime +
                '}';
    }
}
