package com.gem.share.dao;

import com.gem.share.entity.ChatRecord;
import com.gem.share.entity.ChatRecordExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ChatRecordMapper {
    long countByExample(ChatRecordExample example);

    int deleteByExample(ChatRecordExample example);

    int deleteByPrimaryKey(Integer messageId);

    int insert(ChatRecord record);

    int insertSelective(ChatRecord record);

    List<ChatRecord> selectByExample(ChatRecordExample example);

    ChatRecord selectByPrimaryKey(Integer messageId);

    int updateByExampleSelective(@Param("record") ChatRecord record, @Param("example") ChatRecordExample example);

    int updateByExample(@Param("record") ChatRecord record, @Param("example") ChatRecordExample example);

    int updateByPrimaryKeySelective(ChatRecord record);

    int updateByPrimaryKey(ChatRecord record);

    //    通过发送者id找到消息内容
    public String selectMessagePostBySendId(int send_id);

    //  通过接收者id找到消息内容
    public String selectMessagePostByRecvId(int recv_id);

    //    通过记录id得到消息发送时间
    public Date selectMessageTimeByMessageId(int message_ID);
}