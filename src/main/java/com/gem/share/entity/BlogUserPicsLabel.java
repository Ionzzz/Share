package com.gem.share.entity;

public class BlogUserPicsLabel {
    private BlogContent blogContent;
    private UserInfo userInfo;
    private BlogPics blogPics;
    private BlogLabel blogLabel;
    private LabelInfo labelInfo;

    private Integer zan;
    private Integer pinglun;
    private Integer liulan;

    public BlogUserPicsLabel() {
    }

    public BlogUserPicsLabel(BlogContent blogContent, UserInfo userInfo, BlogPics blogPics, BlogLabel blogLabel, LabelInfo labelInfo, Integer zan, Integer pinglun, Integer liulan) {
        this.blogContent = blogContent;
        this.userInfo = userInfo;
        this.blogPics = blogPics;
        this.blogLabel = blogLabel;
        this.labelInfo = labelInfo;
        this.zan = zan;
        this.pinglun = pinglun;
        this.liulan = liulan;
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

    public Integer getZan() {
        return zan;
    }

    public void setZan(Integer zan) {
        this.zan = zan;
    }

    public Integer getPinglun() {
        return pinglun;
    }

    public void setPinglun(Integer pinglun) {
        this.pinglun = pinglun;
    }

    public Integer getLiulan() {
        return liulan;
    }

    public void setLiulan(Integer liulan) {
        this.liulan = liulan;
    }

    @Override
    public String toString() {
        return "BlogUserPicsLabel{" +
                "blogContent=" + blogContent +
                ", userInfo=" + userInfo +
                ", blogPics=" + blogPics +
                ", blogLabel=" + blogLabel +
                ", labelInfo=" + labelInfo +
                ", zan=" + zan +
                ", pinglun=" + pinglun +
                ", liulan=" + liulan +
                '}';
    }
}
