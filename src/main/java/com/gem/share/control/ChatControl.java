package com.gem.share.control;


import com.gem.share.entity.ChatRecord;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@RequestMapping("/chat")
@Controller
public class ChatControl {

    @Autowired
    private ChatService chatService;


//    聊天界面的好友信息
    @RequestMapping("/chatfriend.action")
    public void chatfriend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
//        int userId = userInfo.getUserId();
        int userId = 101;
        List<UserInfo> friendInfo = chatService.selectFriendByUserId(userId);
        System.out.println("-------------friendInfo:"+friendInfo);
        request.setAttribute("friendInfo",friendInfo);
        request.getRequestDispatcher("/jsp/chat/chat.jsp").forward(request,response);
    }

//    发送消息
    @RequestMapping("/sendmessage.action")
    public Boolean sendMessage(HttpServletRequest request,HttpServletResponse response) throws ParseException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int sendId = userInfo.getUserId();
        String message = request.getParameter("message");

//        从前端获取发送时间，并转换成日期格式
        Calendar c  = Calendar.getInstance();
        c.add(Calendar.DAY_OF_MONTH, 0);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(request.getParameter("sendTime"));
        Date sendTime = format.parse(time);

        int receiveId = Integer.parseInt(request.getParameter("receiveId"));
        Boolean tf = chatService.insertSendMessage(message,sendTime,sendId,receiveId);
        return tf;
    }

    @RequestMapping("receivemessage.action")
//    接收消息
    public ChatRecord receiveMessage(HttpServletRequest request,HttpServletResponse response){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int receiveId = userInfo.getUserId();

        int sendId = Integer.parseInt(request.getParameter("sendId"));

        ChatRecord chatRecord = chatService.selectMessage(sendId,receiveId);

        return chatRecord;
    }

}
