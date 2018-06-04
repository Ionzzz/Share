package com.gem.share.control;

import com.gem.share.entity.BlogContent;
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
import java.util.ArrayList;
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

        List<BlogContent> blogfourlist=blogService.selectFourBlog();
        List<String> pic= new ArrayList<>();
        for(BlogContent blogContent:blogfourlist){
            String picc=blogService.selectPicByBlogPicsId(blogContent.getBlogpicsId());
            pic.add(picc);
        }
//        System.out.println("----------"+pic.get(0));

        request.setAttribute("pic",pic);
        request.setAttribute("blogfourlist",blogfourlist);

        List<BlogContent> blogjiaju=blogService.selectBlogByLabelName("家居");
        List<UserInfo> listjiaju=new ArrayList<>();
        for(BlogContent blogContent:blogjiaju){
            UserInfo userInfo=userService.selectUserInfoByUserId(blogContent.getUserId());
            listjiaju.add(userInfo);
        }



        request.setAttribute("blogJiaJu",blogjiaju);


        List<BlogContent> bloglvxing=blogService.selectBlogByLabelName("旅行");
        request.setAttribute("blogLvXing",bloglvxing);

        List<BlogContent> blogbook=blogService.selectBlogByLabelName("书籍");
        request.setAttribute("blogbook",blogbook);

        request.setAttribute("bloglist",blogService.selectAllBlog());
        request.setAttribute("labellist",infoService.selectAllLabelInfo());

        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);

    }






}
