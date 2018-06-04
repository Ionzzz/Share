package com.gem.share.control;

import com.gem.share.entity.BlogContent;
import com.gem.share.service.BlogService;
import com.gem.share.service.LabelInfoService;
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

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BlogContent> blogfourlist=blogService.selectFourBlog();
        List<String> pic= new ArrayList<>();
        for(BlogContent blogContent:blogfourlist){
            String picc=blogService.selectPicByBlogPicsId(blogContent.getBlogpicsId());
            pic.add(picc);
        }
        System.out.println("----------"+pic.get(0));

        request.setAttribute("pic",pic);
        request.setAttribute("blogfourlist",blogfourlist);
        request.setAttribute("bloglist",blogService.selectAllBlog());
        request.setAttribute("labellist",infoService.selectAllLabelInfo());

        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);

    }






}
