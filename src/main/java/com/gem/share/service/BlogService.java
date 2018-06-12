package com.gem.share.service;

import com.gem.share.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface BlogService {

    //    插入二级评论内容-->
    public boolean insertReplyComment(ReplyComment replyComment);
    //    插入三级评论内容-->
    public boolean insertThirdReplyComment(ReplyComment replyComment);
    //    三级评论：根据comment_id 查出 replycomment_id-->
    public int selectUserIdByCommentId(int comment_id);

    public boolean insertBlogComment(BlogComment blogComment);
    public List<ReplyCommentDetail> selectAllThirdReplyComment(int replyComment_id);
    public List<ReplyCommentDetail> selectAllReplyComment(int comment_id);
    public List<shuDongDetail> selectAllBlogCommentByBlogId(int blog_id);
    public List<BlogZan> selectZanRecordByUserId(int blog_id,int user_id);
    public boolean addZanRecord(BlogZan blogZan);
    public boolean deleteZanRecordByZanId(int zan_id);
    public BlogUserPicsLabel selectOneBlogOrderBlogBrowse();//查询浏览量最高的博客

    public String selectPicByBlogPicsId(int blogPics_id);

    public List<BlogUserPicsLabel> selectBlogCountOrderZan(int count);
    public List<BlogUserPicsLabel> selectBlogCountOrderLiulan(int count);
    public List<BlogUserPicsLabel> selectBlogCountOrderPinglun(int count);
    public PageInfo<BlogUserPicsLabel> selectAllBlogUserPicsByPage(Map<String,Object> map);

    public PageInfo<BlogUserPicsLabel> selectAllBlogUserPicsByPageLabelName(Map<String,Object> map);


    public List<BlogUserPicsLabel> selectBlogUserPicsByLabelName(String labelName);
    public List<BlogUserPicsLabel> selectBlogUserPicsCountByLabelName(String labelName, int count);
    //    通过标签id找到博客
    public List<BlogContent> selectBlogByLabelId(int label_id);

    public List<BlogContent> selectBlogByLabelName(String labelName);


//    通过博客id修改博客
    public BlogContent updateBlogByBlogId(int blog_id);
//    查询所有博客
    public List<BlogContent> selectAllBlog();

//    根据博客id查找博客全部内容
    public BlogContent selectBlogByBlogId(int blog_id);

    public BlogUserPicsLabel selectBlogUserPicsByBlogId(int blog_id);

    public List<String> selectBlogLabelNameByBlogId(int blog_id);

//    根据博客id删除博客全部内容
    public boolean deleteBlogByBlogId(int blog_id);

//    插入博客全部内容
    public boolean insertBlog(BlogContent blogContent);

//    通过博客id找到博客发表的时间
    public Date selectBlogCreateTimeByBlogId(int blog_id);

//    按照博客发表时间排序  若时间相同按照用户id升序排列
    public List<BlogUserPicsLabel> orderBlogByCreateTime();

//    通过博客id得到博客图片，上传相册
    public Integer selectBlogPicsByBlogId(int blog_id);

//    通过博客查询该博客的标签id
    public List<Integer> selectLabelIdByBlogId(int blog_id);

//    通过博客id找到点赞用户id
    public List<Integer> selectZanUserIdByBlogId(int blog_id);

//    通过博客id,点赞用户id找到用户点赞时间
    public Date selectZanTimeByBlogId(int blog_id,int user_id);

//    通过博客id找评论id
    public List<Integer> selectCommentIdByBlogId(int blog_id);

//    通过博客id找到评论用户id
    public List<Integer> selectBlogCommentUserByBlogId(int blog_id);

//    通过博客id找到评论内容
    public List<String> selectCommentContentByBlogId(int blog_id);

//    通过评论id找用户id
    public List<Integer> selectCommentUserIdByCommentId(int comment_id);

//    通过评论id找评论内容
    public String selectCommentContentByCommentId(int comment_id);

//    通过评论id找评论时间
    public Date selectCommentTimeByCommentId(int comment_id);

//    通过评论id找点赞用户id
    public List<Integer> selectZanUserIdByCommentId(int comment_id);

//    通过评论用户id找全部发表评论id
    public List<Integer> selectCommentByUserId(int user_id);

//    通过评论id找评论的评论
    public List<String> selectReplyCommentByCommentId(int comment_id);

//    根据博客id得到该博客的浏览次数
    public Integer selectBlogBrowseByBlogId(int blog_id);

//    博客id得到该博客的点赞次数
    public Integer selectBlogZanByBlogId(int blog_id);

//    通过用户id得到收藏博客id
    public List<Integer> selectCollectBlogIdByUserId(int user_id);

//    通过博客id得到收藏用户id
    public List<Integer> selectCollectUserIdByBlogId(int blog_id);

    //    通过标签id找到博客id
    public List<Integer> selectBlogIdByLabelId(int label_id);



}
