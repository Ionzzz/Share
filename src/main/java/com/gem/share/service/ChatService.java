package com.gem.share.service;

import java.util.List;

public interface ChatService {
//    根据用户id 查询发送记录
    public List<String> selectChatByUserId(int user_id);

}
