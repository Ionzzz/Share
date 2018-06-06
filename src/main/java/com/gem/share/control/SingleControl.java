package com.gem.share.control;


import com.gem.share.entity.BlogUserPics;
import com.gem.share.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("/single")
@Controller
public class SingleControl {

    @Autowired
    private BlogService blogService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String blogId=request.getParameter("blogId");
  /*      if(blogId.equals(null)){

        }*/
        BlogUserPics blogUserPics=blogService.selectBlogUserPicsByBlogId(Integer.parseInt(blogId));
        List<String> blogLabelName=blogService.selectBlogLabelNameByBlogId(Integer.parseInt(blogId));

        request.setAttribute("blog",blogUserPics);
        request.setAttribute("LabelName",blogLabelName);

        request.getRequestDispatcher("/jsp/single.jsp").forward(request,response);

    }


}
