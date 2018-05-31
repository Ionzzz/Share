package com.gem.share.dao;

import com.gem.share.entity.BlogCommentZan;
import com.gem.share.entity.BlogCommentZanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogCommentZanMapper {
    long countByExample(BlogCommentZanExample example);

    int deleteByExample(BlogCommentZanExample example);

    int deleteByPrimaryKey(Integer commentzanId);

    int insert(BlogCommentZan record);

    int insertSelective(BlogCommentZan record);

    List<BlogCommentZan> selectByExample(BlogCommentZanExample example);

    BlogCommentZan selectByPrimaryKey(Integer commentzanId);

    int updateByExampleSelective(@Param("record") BlogCommentZan record, @Param("example") BlogCommentZanExample example);

    int updateByExample(@Param("record") BlogCommentZan record, @Param("example") BlogCommentZanExample example);

    int updateByPrimaryKeySelective(BlogCommentZan record);

    int updateByPrimaryKey(BlogCommentZan record);

    //    通过评论id找点赞用户id
    public Integer selectZanUserIdByCommentId(int comment_id);
}