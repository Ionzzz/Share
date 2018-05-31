package com.gem.share.service;

import com.gem.share.entity.BlogContent;

import java.util.Date;
import java.util.List;

public interface BlogService {
//    通过博客id修改博客
    public BlogContent updateBlogByBlogId(int blog_id);
//    查询所有博客
    public List<BlogContent> selectAllBlog();



//    根据博客id查找博客全部内容
    public BlogContent selectBlogByBlogId(int blog_id);

//    根据博客id删除博客全部内容
    public boolean deleteBlogByBlogId(int blog_id);

//    插入博客全部内容
    public boolean insertBlog(BlogContent blogContent);

//    按照博客发表时间排序  若时间相同按照用户id升序排列
    public List<BlogContent> orderBlogByCreateTime();

//    通过博客id得到博客图片id，上传相册
    public List<Integer> selectBlogPicsByBlogId(int blog_id);

//    通过博客查询该博客的标签id
    public List<Integer> selectLabelByBlogId(int blog_id);

//    通过博客id找到点赞用户id
    public List<Integer> selectZanUserIdByBlogId(int blog_id);

//    通过博客id找到用户点赞时间
    public Date selectZanTimeByBlogId(int blog_id);

//    通过博客id找到评论用户id
    public List<Integer> selectBlogCommentUserByBlogId(int blog_id);

//    通过博客id找到评论内容
    public String selectCommentContentByBlogId(int blog_id);

//    通过博客id找到评论内容的时间
    public Date selectCommentTimeByBlogId(int blog_id);

//    通过评论id找用户id
    public Integer selectCommentUserIdByCommentId(int comment_id);

//    通过评论id找评论内容
    public String selectCommentContentByCommentId(int comment_id);

//    通过评论id找评论时间
    public Date selectCommentTimeByCommentId(int comment_id);

//    通过评论id找点赞用户id
    public Integer selectZanUserIdByCommentId(int comment_id);

//    根据博客id得到该博客的浏览次数
    public Integer selectBlogBrowseByBlogId(int blog_id);

//    根据博客id得到该博客的点赞次数
    public Integer selectBlogZanByBlogId(int blog_id);

//    通过用户id得到收藏博客id
    public List<Integer> selectCollectBlogIdByUserId(int user_id);

//    通过博客id得到收藏用户id
    public List<Integer> selectCollectUserIdByBlogId(int blog_id);



}
