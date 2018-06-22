package com.gem.share.dao;

import com.gem.share.entity.BlogComment;
import com.gem.share.entity.ReplyComment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MngCommentMapper {
    //选择所有的评论、回复，按时间排序
    List<BlogComment> selectCommentInfos();
    List<ReplyComment> selectReplyInfos();
    //根据评论id选择子回复
    List<Integer> selectReply(int cmtid);
    //根据上级回复id选择子回复
    List<Integer> selectSubReply(int replyid);
    void deleteCommentZan(int cmtid);
    void deleteComment(int id);
    void deleteReply(int id);
}
