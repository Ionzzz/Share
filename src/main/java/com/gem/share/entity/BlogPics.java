package com.gem.share.entity;

public class BlogPics {
    private Integer blogpicsId;

    private Integer blogId;

    private String pic;

    public BlogPics() {
    }

    @Override
    public String toString() {
        return "BlogPics{" +
                "blogpicsId=" + blogpicsId +
                ", blogId=" + blogId +
                ", pic='" + pic + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BlogPics blogPics = (BlogPics) o;

        if (blogpicsId != null ? !blogpicsId.equals(blogPics.blogpicsId) : blogPics.blogpicsId != null) return false;
        if (blogId != null ? !blogId.equals(blogPics.blogId) : blogPics.blogId != null) return false;
        return pic != null ? pic.equals(blogPics.pic) : blogPics.pic == null;
    }

    @Override
    public int hashCode() {
        int result = blogpicsId != null ? blogpicsId.hashCode() : 0;
        result = 31 * result + (blogId != null ? blogId.hashCode() : 0);
        result = 31 * result + (pic != null ? pic.hashCode() : 0);
        return result;
    }

    public Integer getBlogpicsId() {
        return blogpicsId;
    }

    public void setBlogpicsId(Integer blogpicsId) {
        this.blogpicsId = blogpicsId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }
}