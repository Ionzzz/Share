package com.gem.share.control;

import com.gem.share.entity.BlogContent;
import com.gem.share.entity.BlogUserPics;
import com.gem.share.service.BlogService;
import com.gem.share.service.LabelInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/new")
@Controller
public class NewControl {
    @Autowired
    private BlogService blogService;
    @Autowired
    private LabelInfoService infoService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BlogContent> bloglist=blogService.selectAllBlog();
        Map<String,Object> map=new HashMap<>();
        int pageSize=5;
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        if(scurPage!=null&&!scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        map.put("curPage",curPage);
        map.put("pageSize",pageSize);
        PageInfo<BlogUserPics> pageInfo=blogService.selectAllBlogUserPicsByPage(map);
        request.setAttribute("pageInfo",pageInfo);
/*        for (BlogContent blogContent:bloglist){
            BlogContent blog=blogContent;
            map.put("blogcontent",blog);
            request.setAttribute("blogcontent",blog);
        }*/



        request.setAttribute("bloglist",bloglist);
        request.setAttribute("labellist",infoService.selectAllLabelInfo());

        request.getRequestDispatcher("/jsp/new.jsp").forward(request,response);

    }






}
