package com.gem.share.dao;

import com.gem.share.entity.ReplyComment;
import com.gem.share.entity.ReplyCommentExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReplyCommentMapper {
    long countByExample(ReplyCommentExample example);

    int deleteByExample(ReplyCommentExample example);

    int deleteByPrimaryKey(Integer replycommentId);

    int insert(ReplyComment record);

    int insertSelective(ReplyComment record);

    List<ReplyComment> selectByExample(ReplyCommentExample example);

    ReplyComment selectByPrimaryKey(Integer replycommentId);

    int updateByExampleSelective(@Param("record") ReplyComment record, @Param("example") ReplyCommentExample example);

    int updateByExample(@Param("record") ReplyComment record, @Param("example") ReplyCommentExample example);

    int updateByPrimaryKeySelective(ReplyComment record);

    int updateByPrimaryKey(ReplyComment record);

    //    通过评论id找用户id
    public Integer selectCommentUserIdByCommentId(int comment_id);

    //    通过评论id找评论内容
    public String selectCommentContentByCommentId(int comment_id);

    //    通过评论id找评论时间
    public Date selectCommentTimeByCommentId(int comment_id);
}