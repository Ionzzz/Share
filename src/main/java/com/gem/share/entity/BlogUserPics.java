package com.gem.share.entity;

public class BlogUserPics {
    private BlogContent blogContent;
    private UserInfo userInfo;
    private BlogPics blogPics;

    public BlogUserPics() {
    }

    public BlogUserPics(BlogContent blogContent, UserInfo userInfo, BlogPics blogPics) {
        this.blogContent = blogContent;
        this.userInfo = userInfo;
        this.blogPics = blogPics;
    }

    public BlogContent getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(BlogContent blogContent) {
        this.blogContent = blogContent;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public BlogPics getBlogPics() {
        return blogPics;
    }

    public void setBlogPics(BlogPics blogPics) {
        this.blogPics = blogPics;
    }

    @Override
    public String toString() {
        return "BlogUserPics{" +
                "blogContent=" + blogContent +
                ", userInfo=" + userInfo +
                ", blogPics=" + blogPics +
                '}';
    }
}
