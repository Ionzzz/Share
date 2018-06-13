package com.gem.share.dao;

import com.gem.share.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface BlogContentMapper {
    long countByExample(BlogContentExample example);

    int deleteByExample(BlogContentExample example);

    int deleteByPrimaryKey(Integer blogId);

    int insert(BlogContent record);

    int insertSelective(BlogContent record);

    List<BlogContent> selectByExampleWithBLOBs(BlogContentExample example);

    List<BlogContent> selectByExample(BlogContentExample example);

    BlogContent selectByPrimaryKey(Integer blogId);

    int updateByExampleSelective(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByExampleWithBLOBs(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByExample(@Param("record") BlogContent record, @Param("example") BlogContentExample example);

    int updateByPrimaryKeySelective(BlogContent record);

    int updateByPrimaryKeyWithBLOBs(BlogContent record);

    int updateByPrimaryKey(BlogContent record);

    public List<BlogContent> selectAllBlogByPage(Map<String,Object> map);

//  按照博客发表时间排序  若时间相同按照用户id升序排列

    public List<BlogContent> orderBlogByCreateTime();

    public BlogContent selectBlogByBlogId(int blog_id);

    public List<BlogContent> selectAllBlog();

    public boolean updateBlogByBlogId(BlogContent blogContent);

    public boolean insertBlog(BlogContent blogContent);

    public boolean deleteBlogByBlogId(int blog_id);

    public Date selectBlogCreateTimeByBlogId(int blog_id);

    public List<BlogUserPicsLabel> selectBlogCountOrderZan(int count);

    public List<BlogUserPicsLabel> selectBlogCountOrderLiulan(int count);

    public List<BlogUserPicsLabel> selectBlogCountOrderPinglun(int count);

    public List<BlogUserPicsLabel> selectOrderBlogUserPics(String searchContent);

    public BlogUserPicsLabel selectBlogUserPicsByBlogId(int blog_id);

//    浏览量最高
    public BlogUserPicsLabel selectOneBlogOrderBlogBrowse();
//    增加一次浏览量
    public boolean updateBlogBrowse(int blog_id);
//      标签名查BlogUserPicsLabel
    public List<BlogUserPicsLabel> selectBlogUserPicsLabelByLabelNameOrderZan(String labelName);
    public List<BlogUserPicsLabel> selectBlogUserPicsLabelByLabelNameOrderPingLun(String labelName);
    public List<BlogUserPicsLabel> selectBlogUserPicsLabelByLabelNameOrderLiuLan(String labelName);
    public List<BlogUserPicsLabel> selectBlogUserPicsLabelByLabelNameOrderTime(String labelName);

  //    删除用户点赞记录-->
    public boolean deleteZanRecordByZanId(int zan_id);
      //    增加用户点赞记录-->
    public boolean addZanRecord(BlogZan blogZan);
    //    根据用户id查询用户是否对该博客有点赞记录-->
    public List<BlogZan> selectZanRecordByUserId(@Param(value = "blogId") int blog_id, @Param(value = "userId") int user_id);
    //    单个博客评论
    public List<shuDongDetail> selectAllBlogCommentByBlogId(int blog_id);
     //    根据一级评论的comment_id获得评论的评论 二级评论-->
    public List<ReplyCommentDetail> selectAllReplyComment(int comment_id);
    //    从二级评论中得到所有的replyComment_id，进而查出所有三级及以下评论-->
    public List<ReplyCommentDetail> selectAllThirdReplyComment(int replyComment_id);
    //    插入一级博客评论内容
    public boolean insertBlogComment(BlogComment blogComment);
    //    插入二级评论内容-->
    public boolean insertReplyComment(ReplyComment replyComment);
    //    插入三级评论内容-->
    public boolean insertThirdReplyComment(ReplyComment replyComment);
    //    三级评论：根据comment_id 查出 replycomment_id-->
    public int selectUserIdByCommentId(int comment_id);

    public List<BlogUserPicsLabel> selectAllBlogByUserId(int user_id);

    public List<BlogUserPicsLabel> selectCountBlogByUserId(int user_id,int count);

}