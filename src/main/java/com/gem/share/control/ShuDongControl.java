package com.gem.share.control;

import com.gem.share.entity.BlogZan;
import com.gem.share.service.ShuDongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@RequestMapping("/shuDong")
@Controller
public class ShuDongControl {

    @Autowired
    private ShuDongService shuDongService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("sdContent",shuDongService.selectAllShuDongContent());
//        System.out.println("control=============="+shuDongService.selectAllShuDongContent());

        request.getRequestDispatcher("/jsp/shuDong.jsp").forward(request,response);

    }

    @RequestMapping("/Zan.action")
    public void Zan(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String blogId = request.getParameter("blogId");
//        查询是否有该用户对该博客的点赞记录
        List<BlogZan> blogZans = shuDongService.selectZanRecordByUserId(Integer.parseInt(blogId),Integer.parseInt(userId));
        System.out.println(blogZans);

//        如果有，删除该记录，同时文章点赞数-1
        if(blogZans != null && blogZans.size()>0){
//            删除记录
            boolean f1 = shuDongService.deleteZanRecordByZanId(blogZans.get(0).getBlogzanId());
            if(f1){
//                删除成功，得到该篇文章点赞数
                int sdCount = shuDongService.selectCountZan(Integer.parseInt(blogId));

            }else{
//                删除失败
                System.out.println("系统维护中，点赞数删除失败");

            }

        }else{
//        如果没有，增加该记录
            BlogZan blogZan = new BlogZan();
            blogZan.setBlogId(Integer.parseInt(blogId));
            blogZan.setUserId(Integer.parseInt(userId));
            blogZan.setZanTime(new Date());

            shuDongService.addZanRecord(blogZan);

//        文章点赞数+1
            int sdCount = shuDongService.selectCountZan(Integer.parseInt(blogId));

        }

        request.getRequestDispatcher("/shuDong/main.action").forward(request,response);
    }

}
