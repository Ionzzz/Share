package com.gem.share.entity;

public class BlogBrowse {
    private Integer blogbrowseId;

    private Integer blogId;

    private Integer blogbrowsecount;

    public BlogBrowse() {
    }

    @Override
    public String toString() {
        return "BlogBrowse{" +
                "blogbrowseId=" + blogbrowseId +
                ", blogId=" + blogId +
                ", blogbrowsecount=" + blogbrowsecount +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogBrowse that = (BlogBrowse) o;

        if (blogbrowseId != null ? !blogbrowseId.equals(that.blogbrowseId) : that.blogbrowseId != null) return false;
        if (blogId != null ? !blogId.equals(that.blogId) : that.blogId != null) return false;
        return blogbrowsecount != null ? blogbrowsecount.equals(that.blogbrowsecount) : that.blogbrowsecount == null;
    }

    @Override
    public int hashCode() {
        int result = blogbrowseId != null ? blogbrowseId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (blogbrowsecount != null ? blogbrowsecount.hashCode() : 0);
        return result;
    }

    public Integer getBlogbrowseId() {
        return blogbrowseId;
    }

    public void setBlogbrowseId(Integer blogbrowseId) {
        this.blogbrowseId = blogbrowseId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getBlogbrowsecount() {
        return blogbrowsecount;
    }

    public void setBlogbrowsecount(Integer blogbrowsecount) {
        this.blogbrowsecount = blogbrowsecount;
    }
}