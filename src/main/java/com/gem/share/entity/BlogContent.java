package com.gem.share.entity;

import java.util.Date;

public class BlogContent {
    private Integer blogId;

    private Integer userId;

    private Integer blogpicsId;

    private Date blogcreatetime;

    private String blogflag;

    private String essayflag;

    private String blogcontent;
    private BlogPics pics;
    @Override
    public String toString() {
        return "BlogContent{" +
                "blogId=" + blogId +
                ", userId=" + userId +
                ", blogpicsId=" + blogpicsId +
                ", blogcreatetime=" + blogcreatetime +
                ", blogflag='" + blogflag + '\'' +
                ", essayflag='" + essayflag + '\'' +
                ", blogcontent='" + blogcontent + '\'' +
                ", pics=" + pics +
                '}';
    }



    public BlogContent() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogContent that = (BlogContent) o;

        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (blogpicsId != null ? !blogpicsId.equals(that.blogpicsId) : that.blogpicsId != null) return false;
        if (blogcreatetime != null ? !blogcreatetime.equals(that.blogcreatetime) : that.blogcreatetime != null)
            return false;
        if (blogflag != null ? !blogflag.equals(that.blogflag) : that.blogflag != null) return false;
        if (essayflag != null ? !essayflag.equals(that.essayflag) : that.essayflag != null) return false;
        return blogcontent != null ? blogcontent.equals(that.blogcontent) : that.blogcontent == null;
    }

    @Override
    public int hashCode() {
        int result = blogId != null ? blogId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (blogpicsId != null ? blogpicsId.hashCode() : 0);
        result = 31 * result + (blogcreatetime != null ? blogcreatetime.hashCode() : 0);
        result = 31 * result + (blogflag != null ? blogflag.hashCode() : 0);
        result = 31 * result + (essayflag != null ? essayflag.hashCode() : 0);
        result = 31 * result + (blogcontent != null ? blogcontent.hashCode() : 0);
        return result;
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

    public Integer getBlogpicsId() {
        return blogpicsId;
    }

    public void setBlogpicsId(Integer blogpicsId) {
        this.blogpicsId = blogpicsId;
    }

    public Date getBlogcreatetime() {
        return blogcreatetime;
    }

    public void setBlogcreatetime(Date blogcreatetime) {
        this.blogcreatetime = blogcreatetime;
    }

    public String getBlogflag() {
        return blogflag;
    }

    public void setBlogflag(String blogflag) {
        this.blogflag = blogflag == null ? null : blogflag.trim();
    }

    public String getEssayflag() {
        return essayflag;
    }

    public void setEssayflag(String essayflag) {
        this.essayflag = essayflag == null ? null : essayflag.trim();
    }

    public String getBlogcontent() {
        return blogcontent;
    }

    public void setBlogcontent(String blogcontent) {
        this.blogcontent = blogcontent == null ? null : blogcontent.trim();
    }
    public BlogPics getPics() {
        return pics;
    }

    public void setPics(BlogPics pics) {
        this.pics = pics;
    }

}