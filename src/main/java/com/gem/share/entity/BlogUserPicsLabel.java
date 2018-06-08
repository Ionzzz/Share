package com.gem.share.entity;

public class BlogUserPicsLabel {
    private BlogContent blogContent;
    private UserInfo userInfo;
    private BlogPics blogPics;
    private BlogLabel blogLabel;
    private LabelInfo labelInfo;

    public BlogUserPicsLabel() {
    }

    public BlogUserPicsLabel(BlogContent blogContent, UserInfo userInfo, BlogPics blogPics, BlogLabel blogLabel, LabelInfo labelInfo) {
        this.blogContent = blogContent;
        this.userInfo = userInfo;
        this.blogPics = blogPics;
        this.blogLabel = blogLabel;
        this.labelInfo = labelInfo;
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

    public BlogLabel getBlogLabel() {
        return blogLabel;
    }

    public void setBlogLabel(BlogLabel blogLabel) {
        this.blogLabel = blogLabel;
    }

    public LabelInfo getLabelInfo() {
        return labelInfo;
    }

    public void setLabelInfo(LabelInfo labelInfo) {
        this.labelInfo = labelInfo;
    }

    @Override
    public String toString() {
        return "BlogUserPicsLabel{" +
                "blogContent=" + blogContent +
                ", userInfo=" + userInfo +
                ", blogPics=" + blogPics +
                ", blogLabel=" + blogLabel +
                ", labelInfo=" + labelInfo +
                '}';
    }
}
