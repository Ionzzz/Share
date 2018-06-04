package com.gem.share.entity;

import java.util.Date;

public class shuDong {
    private int userId;
    private int blogId;
    private String  blogContent;
    private Date blogCreateTime;
    private int bbrowse; // 树洞点赞数
    private int blogBrowseCount; //浏览总数

    public shuDong() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getBbrowse() {
        return bbrowse;
    }

    public void setBbrowse(int bbrowse) {
        this.bbrowse = bbrowse;
    }

    public int getBlogBrowseCount() {
        return blogBrowseCount;
    }

    public void setBlogBrowseCount(int blogBrowseCount) {
        this.blogBrowseCount = blogBrowseCount;
    }

    @Override
    public String toString() {
        return "shuDong{" +
                "userId=" + userId +
                ", blogId=" + blogId +
                ", blogContent='" + blogContent + '\'' +
                ", blogCreateTime=" + blogCreateTime +
                ", bbrowse=" + bbrowse +
                ", blogBrowseCount=" + blogBrowseCount +
                '}';
    }
}
