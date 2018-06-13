package com.gem.share.control;

import com.gem.share.entity.BlogUserPicsLabel;
import com.gem.share.entity.BlogZan;
import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.BlogService;
import com.gem.share.service.LabelInfoService;
import com.gem.share.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;


@RequestMapping("/index")
@Controller
public class IndexControl {
    @Autowired
    private BlogService blogService;
    @Autowired
    private LabelInfoService labelInfoService;
    @Autowired
    private UserService userService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BlogUserPicsLabel blogtheone=blogService.selectOneBlogOrderBlogBrowse();
        request.setAttribute("blogone",blogtheone);
        List<BlogUserPicsLabel> blogflist=blogService.selectBlogCountOrderZan(4);
//        System.out.println("----------"+pic.get(0));
        request.setAttribute("blogfourlist",blogflist);

        List<BlogUserPicsLabel> blogjiaju=blogService.selectBlogUserPicsLabelByLabelNameOrderLiuLan("家居");
        request.setAttribute("blogJiaJu",blogjiaju);

        List<BlogUserPicsLabel> bloglvxing=blogService.selectBlogUserPicsLabelByLabelNameOrderZan("旅行");
        request.setAttribute("blogLvXing",bloglvxing);

        List<BlogUserPicsLabel> blogfood=blogService.selectBlogUserPicsLabelByLabelNameOrderTime("美食");
        request.setAttribute("blogFood",blogfood);

        List<BlogUserPicsLabel> blogbook=blogService.selectBlogUserPicsCountByLabelName("书籍",4);
        request.setAttribute("blogBook4",blogbook);

        List<LabelInfo> labelInfos=labelInfoService.selectAllLabelInfo();
        request.setAttribute("labelList",labelInfos);

        List<UserInfo> userInfos=userService.selectCountUserInfo(5);
        request.setAttribute("userList5",userInfos);

        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);

    }


    @RequestMapping("/zan.action")
    public @ResponseBody int zan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = 1;//后期从session获取
        String blogId = request.getParameter("blogId");

        List<BlogZan> blogZans =blogService.selectZanRecordByUserId(Integer.parseInt(blogId),userId);
        int sdCount = 0;
        if(blogZans != null && blogZans.size()>0){
//            删除记录
            boolean f1 = blogService.deleteZanRecordByZanId(blogZans.get(0).getBlogzanId());
            if(f1){
//                删除成功，得到该篇文章点赞数
                sdCount = blogService.selectBlogUserPicsByBlogId(Integer.parseInt(blogId)).getZan();
            }else{
//                删除失败
                System.out.println("系统维护中，点赞数删除失败");
            }
        }else{
//        如果没有，增加该记录
            BlogZan blogZan = new BlogZan();
            blogZan.setBlogId(Integer.parseInt(blogId));
            blogZan.setUserId(userId);
            blogZan.setZanTime(new Date());

            blogService.addZanRecord(blogZan);

//        文章点赞数+1
            sdCount = blogService.selectBlogUserPicsByBlogId(Integer.parseInt(blogId)).getZan();
        }
        return sdCount;

    }



}
