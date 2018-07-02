package com.gem.share.control;


import com.gem.share.entity.*;
import com.gem.share.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@RequestMapping("/single")
@Controller
public class SingleControl {

    @Autowired
    private BlogService blogService;
    @Autowired
    private UserService userService;
    @Autowired
    private LabelInfoService labelInfoService;
    @Autowired
    private ShuDongService shuDongService;
    @Autowired
    private PersonalService personalService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String blogId=request.getParameter("blogId");
        if(blogId==null){

        }else{
            //浏览数加一
            blogService.updateBlogBrowse(Integer.parseInt(blogId));
        }
        List<shuDongDetail> blogComments = blogService.selectAllBlogCommentByBlogId(Integer.parseInt(blogId));

        List<UserInfo> userInfos=new ArrayList<>();
        for(shuDongDetail s:blogComments){
            int userId=s.getUserId();
            UserInfo u=userService.selectUserInfoByUserId(userId);
            userInfos.add(u);
        }
        Map<String,Object> map=new HashMap<>();
   /*foot*/
        List<LabelInfo> labels=labelInfoService.selectAllLabelInfo();
        List<BlogUserPicsLabel> footblog=blogService.selectAllBlogUserLabel();
        request.setAttribute("foot",footblog);
        request.setAttribute("labelList",labels);

        BlogUserPicsLabel blogUserPicsLabel = blogService.selectBlogUserPicsByBlogId(Integer.parseInt(blogId));
        List<LabelInfo> labelInfos=blogService.selectLabelByBlogId(Integer.parseInt(blogId));
        List<BlogUserPicsLabel> bmore=blogService.selectCountBlogByUserId(blogUserPicsLabel.getUserInfo().getUserId(),4);
        List<BlogUserPicsLabel> bpopular=blogService.selectBlogUserPicsCountByLabelName(blogUserPicsLabel.getLabelInfo().getLabelname(),10);

        map.put("blogComments",blogComments);
        map.put("blogCommentUser",userInfos);
        map.put("blog", blogUserPicsLabel);
        map.put("LabelInfo",labelInfos);
        map.put("bmore",bmore);
        map.put("bpopular",bpopular);
        request.setAttribute("blogmap",map);



        UserInfo userInfo= (UserInfo) request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        List<UserInfo> users = personalService.selectUserByFollowUserId(user_id);
        request.setAttribute("follower",users);


        request.getRequestDispatcher("/jsp/single.jsp").forward(request,response);

    }

    @RequestMapping("/ReplyComment.action")
    public @ResponseBody List<ReplyCommentDetail> ReplyComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentId = request.getParameter("commentId");
        System.out.println("--------------------"+commentId);
        List<ReplyCommentDetail> ReplyCommentDetails = blogService.selectAllReplyComment(Integer.parseInt(commentId));
        List<ReplyCommentDetail> ThirdReplyComment = new ArrayList<>();
        //存放三级及以下评论的list集合
        for(int i = 0; i< ReplyCommentDetails.size(); i++){
            int id=ReplyCommentDetails.get(i).getReplycommentId();
            ThirdReplyComment.addAll(blogService.selectAllThirdReplyComment(id));

            if(ThirdReplyComment.size()==0){
                continue;
            }else{
                for(int j=ThirdReplyComment.size()-1;j<ThirdReplyComment.size();j++){
                    if(ThirdReplyComment.get(j).getReplycommentId()!=0){
                        ThirdReplyComment.addAll(blogService.selectAllThirdReplyComment(ThirdReplyComment.get(j).getReplycommentId()));
                    }else {
                        continue;
                    }
                }
            }
        }

        ReplyCommentDetails.addAll(ThirdReplyComment);

        return ReplyCommentDetails;
    }

    String blogid = null;
    String flag = null;//区分回复是几级回复
    @RequestMapping("/InsertBlogCommentBlogId.action")
    public @ResponseBody int insertBlogCommentBlogId(HttpServletRequest request,HttpServletResponse response){
        blogid = request.getParameter("blogId");
        flag = request.getParameter("flag");
        //        判断用户是否被禁言
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();
        int flag = shuDongService.getUserStatus(userId);//flag=0被禁言；flag=1正常

        return flag;
    }

    @RequestMapping("/InsertBlogComment.action")
    public void insertBlogComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String content1 = request.getParameter("content1");//判断内容是否为空
        String content2 = request.getParameter("content2");//获取内容
        Date commentTime = new Date();
        UserInfo userInfo= (UserInfo) request.getSession().getAttribute("userInfo");
        int userid=userInfo.getUserId();
        if(userInfo.getUserId()==null){
            userid=122;
        }
        if("true".equals(content1)){
//            内容不为空
            if("1".equals(flag)){
                //            插入blogComment表
                BlogComment blogComment = new BlogComment(Integer.parseInt(blogid),userid,content2,commentTime);
                boolean flag = blogService.insertBlogComment(blogComment);
            }else if ("2".equals(flag)){
                //             插入replyComment表  二级评论
                ReplyComment replyComment = new ReplyComment(Integer.parseInt(blogid),userid,content2,commentTime);
                boolean f = blogService.insertReplyComment(replyComment);
            }else if("3".equals(flag)){
//                三级评论
                ReplyComment replyComment = new ReplyComment();

//                int replycommentId = blogService.selectUserIdByCommentId(Integer.parseInt(blogid));
                replyComment.setReplycomment(Integer.parseInt(blogid));
                replyComment.setUserId(userid);
                replyComment.setReplycommentcontent(content2);
                replyComment.setReplycommenttime(commentTime);

                boolean f = blogService.insertThirdReplyComment(replyComment);

            }
            request.getRequestDispatcher("/single/main.action?blogId=").forward(request,response);
        }else{
//            内容为空
            request.getRequestDispatcher("/jsp/single.jsp").forward(request,response);
        }
    }

}
