package com.gem.share.service.Impl;

import com.gem.share.dao.ChatMapper;
import com.gem.share.entity.ChatRecord;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    private ChatMapper chatMapper;

    @Override
    public List<String> selectChatByUserId(int user_id) {
        return null;
    }

    @Override
    public List<UserInfo> selectFriendByUserId(int usr_id) {
        return chatMapper.selectFriendByUserId(usr_id);
    }

    @Override
    public boolean insertSendMessage(String message, Date sendTime, int sendId, int receiveId) {
        return chatMapper.insertSendMessage(message,sendTime,sendId,receiveId);
    }

    @Override
    public ChatRecord selectMessage(int sendId, int receiveId) {
        return chatMapper.selectMessage(sendId,receiveId);
    }
}
