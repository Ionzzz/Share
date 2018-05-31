package com.gem.share.entity;

public class BlogLabel {
    private Integer bloglableId;

    private Integer blogId;

    private Integer lableId;

    public BlogLabel() {
    }

    @Override
    public String toString() {
        return "BlogLabel{" +
                "bloglableId=" + bloglableId +
                ", blogId=" + blogId +
                ", lableId=" + lableId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogLabel blogLabel = (BlogLabel) o;

        if (bloglableId != null ? !bloglableId.equals(blogLabel.bloglableId) : blogLabel.bloglableId != null)
            return false;
        if (blogId != null ? !blogId.equals(blogLabel.blogId) : blogLabel.blogId != null) return false;
        return lableId != null ? lableId.equals(blogLabel.lableId) : blogLabel.lableId == null;
    }

    @Override
    public int hashCode() {
        int result = bloglableId != null ? bloglableId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (lableId != null ? lableId.hashCode() : 0);
        return result;
    }

    public Integer getBloglableId() {
        return bloglableId;
    }

    public void setBloglableId(Integer bloglableId) {
        this.bloglableId = bloglableId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getLableId() {
        return lableId;
    }

    public void setLableId(Integer lableId) {
        this.lableId = lableId;
    }
}