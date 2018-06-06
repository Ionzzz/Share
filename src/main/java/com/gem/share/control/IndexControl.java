package com.gem.share.control;

import com.gem.share.entity.BlogUserPics;
import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.BlogService;
import com.gem.share.service.LabelInfoService;
import com.gem.share.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@RequestMapping("/index")
@Controller
public class IndexControl {
    @Autowired
    private BlogService blogService;
    @Autowired
    private LabelInfoService infoService;
    @Autowired
    private UserService userService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        BlogUserPics blogtheone=blogService.selectOneBlogOrderBlogBrowse();
        request.setAttribute("blogone",blogtheone);
        List<BlogUserPics> blogfourlist=blogService.selectBlogCount(4);
//        System.out.println("----------"+pic.get(0));
        request.setAttribute("blogfourlist",blogfourlist);

        List<BlogUserPics> blogjiaju=blogService.selectBlogUserPicsByLabelName("家居");
        request.setAttribute("blogJiaJu",blogjiaju);

        List<BlogUserPics> bloglvxing=blogService.selectBlogUserPicsByLabelName("旅行");
        request.setAttribute("blogLvXing",bloglvxing);

        List<BlogUserPics> blogfood=blogService.selectBlogUserPicsByLabelName("美食");
        request.setAttribute("blogFood",blogfood);

        List<BlogUserPics> blogbook=blogService.selectBlogUserPicsCountByLabelName("书籍",4);
        request.setAttribute("blogBook4",blogbook);

        List<LabelInfo> labelInfos=infoService.selectAllLabelInfo();
        request.setAttribute("labelList",labelInfos);

        List<UserInfo> userInfos=userService.selectCountUserInfo(5);
        request.setAttribute("userList5",userInfos);

        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);

    }






}
