package com.gem.share.control;

import com.gem.share.entity.*;
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
import java.util.*;


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
 /*foot*/
        List<LabelInfo> labelInfos=labelInfoService.selectAllLabelInfo();
        List<BlogUserPicsLabel> footblog=blogService.selectAllBlogUserLabel();
        request.setAttribute("foot",footblog);
        request.setAttribute("labelList",labelInfos);

        UserInfo userInfo= (UserInfo) request.getSession().getAttribute("userInfo");
        List<UserLabel> userLabels=userService.selectLabelIdByUserId(userInfo.getUserId());

        List<Integer> set=new ArrayList<>();
        Random random=new Random();
        while(set.size()<=4){
            int i=random.nextInt(labelInfos.size())+1;
            if(!set.contains(i)){
                for(UserLabel u:userLabels){
                    if(u.getLabelId()!=i){
                        set.add(i);
//                        System.out.println("======="+i);
                        break;
                    }
                }
            }

        }
        for(Integer i:set){
            System.out.println("-------"+i);
        }

        List<BlogUserPicsLabel> onelist;
        List<BlogUserPicsLabel> twolist;
        List<BlogUserPicsLabel> threelist;
        List<BlogUserPicsLabel> fourlist;
        if((userLabels.size()==1&&userLabels.get(0)==null)||userLabels.size()==0){
            onelist=blogService.selectBlogUserPicsCountByLabelId(set.get(0));
            twolist=blogService.selectBlogUserPicsCountByLabelId(set.get(1));
            threelist=blogService.selectBlogUserPicsCountByLabelId(set.get(2));
            fourlist=blogService.selectBlogUserPicsCountByLabelId(set.get(3));
        }else if(userLabels.size()==1){
            onelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(0).getLabelId());
            twolist=blogService.selectBlogUserPicsCountByLabelId(set.get(1));
            threelist=blogService.selectBlogUserPicsCountByLabelId(set.get(2));
            fourlist=blogService.selectBlogUserPicsCountByLabelId(set.get(3));
        }else if(userLabels.size()==2){
            onelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(0).getLabelId());
            twolist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(1).getLabelId());
            threelist=blogService.selectBlogUserPicsCountByLabelId(set.get(2));
            fourlist=blogService.selectBlogUserPicsCountByLabelId(set.get(3));
        }else if(userLabels.size()==3){
            onelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(0).getLabelId());
            twolist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(1).getLabelId());
            threelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(2).getLabelId());
            fourlist=blogService.selectBlogUserPicsCountByLabelId(set.get(3));
        }else{
            onelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(0).getLabelId());
            twolist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(1).getLabelId());
            threelist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(2).getLabelId());
            fourlist=blogService.selectBlogUserPicsCountByLabelId(userLabels.get(3).getLabelId());
        }

        BlogUserPicsLabel blogtheone=blogService.selectOneBlogOrderBlogBrowse();
        List<BlogUserPicsLabel> blogflist=blogService.selectBlogCountOrderZan(4);
//        System.out.println("----------"+pic.get(0));
        List<BlogUserPicsLabel> blogjiaju=blogService.selectBlogUserPicsLabelByLabelNameOrderLiuLan("家居");
        List<BlogUserPicsLabel> bloglvxing=blogService.selectBlogUserPicsLabelByLabelNameOrderZan("旅行");
        List<BlogUserPicsLabel> blogfood=blogService.selectBlogUserPicsLabelByLabelNameOrderTime("美食");
        List<BlogUserPicsLabel> blogbook=blogService.selectBlogUserPicsCountByLabelName("书籍",4);
        List<UserInfo> userInfos=userService.selectCountUserInfo(5);
        Map<String,Object> map=new HashMap<>();
        map.put("blogone",blogtheone);
        map.put("blogfour",blogflist);

        map.put("blogonelist",onelist);
        map.put("blogtwolist",twolist);
        map.put("blogthreelist",threelist);
        map.put("blogfourlist",fourlist);

        map.put("userList5",userInfos);
        request.setAttribute("indexmap",map);
        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);
    }


    @RequestMapping("/userself.action")
    public void userself(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId=request.getParameter("userId");

        List<BlogUserPicsLabel> blogUserPicsLabels=blogService.selectAllBlogByUserId(Integer.parseInt(userId));
        UserInfo userInfo=userService.selectUserInfoByUserId(Integer.parseInt(userId));
        List<BlogUserPicsLabel> blogBrowse=blogService.selectBlogZanPinglunByUserId(Integer.parseInt(userId));
        Set<LabelInfo> set=new HashSet<>();
        for(BlogUserPicsLabel b:blogUserPicsLabels){
            if(b.getLabelInfo()!=null){
                LabelInfo labelInfo=b.getLabelInfo();
                set.add(labelInfo);
            }
        }
        Map<String,Object> map=new HashMap<>();
        map.put("blogBrowse",blogBrowse);
        map.put("blogUserPicsLabels",blogUserPicsLabels);
        map.put("userInfo",userInfo);
        map.put("labelInfo",set);
        request.setAttribute("userselfmap",map);

        request.getRequestDispatcher("/jsp/userself.jsp").forward(request,response);

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
