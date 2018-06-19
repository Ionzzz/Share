package com.gem.share.dao;

import com.gem.share.entity.ChatRecord;
import com.gem.share.entity.UserInfo;

import java.util.Date;
import java.util.List;

public interface ChatMapper {

    //    根据用户id查询所有聊过天的好友信息
    public List<UserInfo> selectFriendByUserId(int usr_id);

//    插入聊天信息
    public boolean insertSendMessage(String message, Date sendTime, int sendId, int receiveId);

//    查询最新一条的聊天记录
    public ChatRecord selectMessage(int sendId,int receiveId);
}
