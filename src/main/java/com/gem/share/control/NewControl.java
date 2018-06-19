package com.gem.share.control;

import com.gem.share.entity.BlogUserPicsLabel;
import com.gem.share.entity.LabelInfo;
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
    private LabelInfoService labelInfoService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchContent = request.getParameter("searchContent");
        List<BlogUserPicsLabel> blogUserPicsLabels=blogService.selectBlogCountOrderLiulan(7);
        request.setAttribute("blogpopular",blogUserPicsLabels);
        List<BlogUserPicsLabel> blogUserPicsLabelList=blogService.selectBlogCountOrderZan(7);
        request.setAttribute("blogUserPicsLabelList",blogUserPicsLabelList);
        Map<String,Object> map=new HashMap<>();
        int pageSize=5;
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        if(scurPage!=null&&!scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        map.put("searchContent",searchContent);
        map.put("curPage",curPage);
        map.put("pageSize",pageSize);
        PageInfo<BlogUserPicsLabel> pageInfo=blogService.selectAllBlogUserPicsByPage(map);
        request.setAttribute("pageInfo",pageInfo);

   /*foot*/
        List<LabelInfo> labelInfos=labelInfoService.selectAllLabelInfo();
        List<BlogUserPicsLabel> footblog=blogService.selectAllBlogUserLabel();
        request.setAttribute("foot",footblog);
        request.setAttribute("labelList",labelInfos);

        request.setAttribute("searchContent",searchContent);
        request.getRequestDispatcher("/jsp/new.jsp").forward(request,response);

    }






}
