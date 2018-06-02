package com.gem.share.entity;

public class BlogLabel {
    private Integer bloglabelId;

    private Integer blogId;

    private Integer labelId;

    public BlogLabel() {
    }

    @Override
    public String toString() {
        return "BlogLabel{" +
                "bloglabelId=" + bloglabelId +
                ", blogId=" + blogId +
                ", labelId=" + labelId +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogLabel blogLabel = (BlogLabel) o;

        if (bloglabelId != null ? !bloglabelId.equals(blogLabel.bloglabelId) : blogLabel.bloglabelId != null)
            return false;
        if (blogId != null ? !blogId.equals(blogLabel.blogId) : blogLabel.blogId != null) return false;
        return labelId != null ? labelId.equals(blogLabel.labelId) : blogLabel.labelId == null;
    }

    @Override
    public int hashCode() {
        int result = bloglabelId != null ? bloglabelId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (labelId != null ? labelId.hashCode() : 0);
        return result;
    }

    public Integer getBloglabelId() {
        return bloglabelId;
    }

    public void setBloglabelId(Integer bloglabelId) {
        this.bloglabelId = bloglabelId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getlabelId() {
        return labelId;
    }

    public void setlabelId(Integer labelId) {
        this.labelId = labelId;
    }
}