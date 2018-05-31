package com.gem.share.service;

import java.util.Date;

public interface ChatRecordService {

//    通过发送者id找到消息内容
    public String selectMessagePostBySendId(int send_id);

//  通过接收者id找到消息内容
    public String selectMessagePostByRecvId(int recv_id);

//    通过记录id得到消息发送时间
    public Date selectMessageTimeByMessageId(int message_ID);


}
