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

@RequestMapping("/topic")
@Controller
public class TopicControl {
    @Autowired
    private BlogService blogService;
    @Autowired
    private LabelInfoService labelInfoService;
    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String labelId=request.getParameter("labelId");

        LabelInfo labelInfo=labelInfoService.selectLabelInfoByLabelId(Integer.parseInt(labelId));
        request.setAttribute("labelinfo",labelInfo);

        List<BlogUserPicsLabel> bloglist=blogService.selectBlogUserPicsByLabelName(labelInfo.getLabelname());
        request.setAttribute("blogList",bloglist);

        List<BlogUserPicsLabel> blogflist=blogService.selectBlogCountOrderZan(3);
        request.setAttribute("blogzan",blogflist);

        Map<String,Object> map=new HashMap<>();
        int pageSize=4;
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        if(scurPage!=null&&!scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        map.put("curPage",curPage);
        map.put("pageSize",pageSize);
        map.put("labelId",labelId);
        PageInfo<BlogUserPicsLabel> pageInfo=blogService.selectAllBlogUserPicsByPageLabelName(map);
        request.setAttribute("pageInfo",pageInfo);


        request.getRequestDispatcher("/jsp/topic.jsp").forward(request,response);
    }
    @RequestMapping("/all.action")
    public void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<LabelInfo> labelInfos=labelInfoService.selectAllLabelInfo();
        request.setAttribute("labelList",labelInfos);

        List<BlogUserPicsLabel> blog=blogService.selectBlogCountOrderLiulan(10);
        request.setAttribute("blogliulan",blog);

        List<BlogUserPicsLabel> blogflist=blogService.selectBlogCountOrderZan(3);
        request.setAttribute("bloglist",blogflist);

        request.getRequestDispatcher("/jsp/topicAll.jsp").forward(request,response);

    }

}
