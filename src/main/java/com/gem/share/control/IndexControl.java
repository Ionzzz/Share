package com.gem.share.control;

import com.gem.share.entity.BlogUserPics;
import com.gem.share.service.BlogService;
import com.gem.share.service.LabelInfoService;
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

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<BlogUserPics> blogfourlist=blogService.selectFourBlog();
//        System.out.println("----------"+pic.get(0));
        request.setAttribute("blogfourlist",blogfourlist);

        List<BlogUserPics> blogjiaju=blogService.selectBlogUserPicsByLabelName("家居");
        request.setAttribute("blogJiaJu",blogjiaju);

        List<BlogUserPics> bloglvxing=blogService.selectBlogUserPicsByLabelName("旅行");
        request.setAttribute("blogLvXing",bloglvxing);

        List<BlogUserPics> blogbook=blogService.selectBlogUserPicsByLabelName("书籍");
        request.setAttribute("blogBook",blogbook);

        request.setAttribute("bloglist",blogService.selectAllBlog());
        request.setAttribute("labellist",infoService.selectAllLabelInfo());

        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);

    }






}
