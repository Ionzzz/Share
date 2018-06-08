package com.gem.share.control;


import com.gem.share.entity.BlogUserPicsLabel;
import com.gem.share.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("/topic")
@Controller
public class TopicControl {
    @Autowired
    private BlogService blogService;
    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<BlogUserPicsLabel> blogjiaju=blogService.selectBlogUserPicsByLabelName("家居");
        request.setAttribute("blogJiaJu",blogjiaju);

        request.getRequestDispatcher("/jsp/topic.jsp").forward(request,response);

    }


}
