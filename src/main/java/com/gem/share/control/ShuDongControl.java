package com.gem.share.control;

import com.gem.share.entity.*;
import com.gem.share.service.ShuDongService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@RequestMapping("/shuDong")
@Controller
public class ShuDongControl {

    @Autowired
    private ShuDongService shuDongService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchContent = request.getParameter("searchContent");
        String SDflag = request.getParameter("SDflag");//区分最热排序或者时间排序

        int flag = 0;
        if(null==SDflag || "".equals(SDflag)){
            flag = 0;
        }else{
            flag = Integer.parseInt(SDflag);
        }

//        分页功能
        Map<String,Object> map=new HashMap<>();
        int pageSize=8;
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        if(scurPage!=null&&!scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        map.put("curPage",curPage);
        map.put("pageSize",pageSize);
        PageInfo<shuDong> pageInfo=shuDongService.pageShuDong(map,searchContent,flag);

        request.getServletContext().setAttribute("pageInfo",pageInfo);
        request.getServletContext().setAttribute("searchContent",searchContent);//搜索条件分页
        request.getServletContext().setAttribute("SDflag",SDflag);

        request.getRequestDispatcher("/jsp/shuDong.jsp").forward(request,response);
//         response.sendRedirect(request.getContextPath()+"/jsp/shuDong.jsp");

    }

    @RequestMapping("/ZanFlag.action")
    public @ResponseBody String ZanFlag(HttpServletRequest request,HttpServletResponse response){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();
        String blogId = request.getParameter("blogId");
        List<BlogZan> blogZans = shuDongService.selectZanRecordByUserId(Integer.parseInt(blogId),userId);
        String flag = "flase";//默认该用户没有点赞
        if(blogZans != null && blogZans.size()>0){
            flag = "true";
        }

        return  flag;
    }

    @RequestMapping("/Zan.action")
    public @ResponseBody String Zan(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();
        String blogId = request.getParameter("blogId");
//        查询是否有该用户对该博客的点赞记录
        List<BlogZan> blogZans = shuDongService.selectZanRecordByUserId(Integer.parseInt(blogId),userId);
        String sdCount = null;
        String flag = "flase";//默认该用户没有点赞

//        如果有，删除该记录，同时文章点赞数-1
        if(blogZans != null && blogZans.size()>0){
//            删除记录
            boolean f1 = shuDongService.deleteZanRecordByZanId(blogZans.get(0).getBlogzanId());
            flag = "true";
            if(f1){
//                删除成功，得到该篇文章点赞数
                sdCount = String.valueOf(shuDongService.selectCountZan(Integer.parseInt(blogId)));

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

            shuDongService.addZanRecord(blogZan);

//        文章点赞数+1
            sdCount = String.valueOf(shuDongService.selectCountZan(Integer.parseInt(blogId)));
        }

        return sdCount+"&"+flag;

//        request.getRequestDispatcher("/shuDong/main.action").forward(request,response);
    }

    @RequestMapping("/DetailComment.action")
    public void DetailComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String blogId = request.getParameter("blogId");
        String bbrowse = request.getParameter("bbrowse");
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();

//        查询该用户对该博客树洞的浏览数：
//        如果同一用户对该树洞浏览次数超过5次，则不做任何操作；否则浏览量加1
        int SDBrowseCount = shuDongService.selectSDBrowseByUserIdAndBlogId(userId,Integer.parseInt(blogId));
        if(SDBrowseCount < 5){
//            在shudongbrowse表中插入浏览记录
            shuDongService.insertSDBrowse(userId,Integer.parseInt(blogId));
        }

        List<shuDongDetail> shuDongDetails = shuDongService.selectAllShuDongComment(Integer.parseInt(blogId));
        int bcommentCount = shuDongService.selectBcommentCount(Integer.parseInt(blogId));

        request.setAttribute("bcommentCount",bcommentCount);
        request.setAttribute("shuDongDetails",shuDongDetails);
        request.setAttribute("bbrowse",bbrowse);
        request.getRequestDispatcher("/jsp/shuDongDetail.jsp").forward(request,response);
    }


    @RequestMapping("/ReplyComment.action")
    public @ResponseBody List<ReplyCommentDetail> ReplyComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentId = request.getParameter("commentId");
//        得到所有的二级评论
        List<ReplyCommentDetail> ReplyCommentDetails = shuDongService.selectAllReplyComment(Integer.parseInt(commentId));

//        以二级评论返回值中的属性作为参数查询三级及以下评论
        List<ReplyCommentDetail> ThirdReplyComment = new ArrayList<>();//存放三级及以下评论的list集合
        for(int i=0; i<ReplyCommentDetails.size(); i++){
            ThirdReplyComment.addAll(shuDongService.selectAllThirdReplyComment(ReplyCommentDetails.get(i).getReplycommentId()));

            if(ThirdReplyComment.size()==0){
                continue;
            }else{
                for(int j=ThirdReplyComment.size()-1;j<ThirdReplyComment.size();j++){
                    if(ThirdReplyComment.get(j).getReplycommentId()!=0){
                        ThirdReplyComment.addAll(shuDongService.selectAllThirdReplyComment(ThirdReplyComment.get(j).getReplycommentId()));
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

        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();

        if("true".equals(content1)){
//            内容不为空
            if("1".equals(flag)){
                //            插入blogComment表
                BlogComment blogComment = new BlogComment(Integer.parseInt(blogid),userId,content2,commentTime);
                boolean flag = shuDongService.insertBlogComment(blogComment);
            }else if ("2".equals(flag)){
                //             插入replyComment表  二级评论
                ReplyComment replyComment = new ReplyComment(Integer.parseInt(blogid),userId,content2,commentTime);
                boolean f = shuDongService.insertReplyComment(replyComment);
            }else if("3".equals(flag)){
//                三级评论
                ReplyComment replyComment = new ReplyComment();

//                int replycommentId = shuDongService.selectUserIdByCommentId(Integer.parseInt(blogid));
                replyComment.setReplycomment(Integer.parseInt(blogid));
                replyComment.setUserId(userId);
                replyComment.setReplycommentcontent(content2);
                replyComment.setReplycommenttime(commentTime);

                boolean f = shuDongService.insertThirdReplyComment(replyComment);
            }

            request.getRequestDispatcher("/shuDong/DetailComment.action?blogId="+blogid).forward(request,response);

        }else{
//            内容为空
            request.getRequestDispatcher("/shuDong/DetailComment.action?blogId="+blogid).forward(request,response);
        }

    }

    @RequestMapping("/deleteComment.action")
    public @ResponseBody List<ReplyCommentDetail> deleteComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String replycommentId = request.getParameter("replycommentId");
        String commentId = request.getParameter("commentId");

//        获取到当前评论，并查出该评论下所有的评论，并删除


//        该评论下的所有评论
        List<ReplyCommentDetail> replyCommentDetails = shuDongService.selectAllThirdReplyComment(Integer.parseInt(replycommentId));
        System.out.println("-----replyCommentDetails--------"+replyCommentDetails);

//        删除所有评论
        for(int i=0; i<replyCommentDetails.size(); i++){
            shuDongService.deleteComment(replyCommentDetails.get(i).getReplycommentId());
        }

//        查出删除后的二级评论+三级评论 集合合并后返回
//        二级评论
        List<ReplyCommentDetail> replyCommentDetails1 = shuDongService.selectAllReplyComment(Integer.parseInt(commentId));

        //     二级评论中，   删除本条评论
        for(int i=0; i<replyCommentDetails1.size(); i++){
            if(replyCommentDetails1.get(i).getReplycommentId()==Integer.parseInt(replycommentId)){
                shuDongService.deleteComment(replyCommentDetails1.get(i).getReplycommentId());
                replyCommentDetails1.remove(i);
            }
        }

//        以二级评论返回值中的属性作为参数查询三级及以下评论
        List<ReplyCommentDetail> thirdReplyComment = new ArrayList<>();//存放三级及以下评论的list集合
        for(int i=0; i<replyCommentDetails1.size(); i++){
            thirdReplyComment.addAll(shuDongService.selectAllThirdReplyComment(replyCommentDetails1.get(i).getReplycommentId()));

            if(thirdReplyComment.size()==0){
                continue;
            }else{
                for(int j=thirdReplyComment.size()-1;j<thirdReplyComment.size();j++){
                    if(thirdReplyComment.get(j).getReplycommentId()!=0){
                        thirdReplyComment.addAll(shuDongService.selectAllThirdReplyComment(thirdReplyComment.get(j).getReplycommentId()));
                    }else {
                        continue;
                    }
                }
            }

        }

        replyCommentDetails1.addAll(thirdReplyComment);

        return replyCommentDetails1;
    }

//    获取str属性
    public  Set<String> getImgStr(String htmlStr) {
        Set<String> pics = new HashSet<String>();
        String img = "";
        Pattern p_image;
        Matcher m_image;
        String regEx_img = "<img.*src\\s*=\\s*(.*?)[^>]*?>";
        p_image = Pattern.compile(regEx_img, Pattern.CASE_INSENSITIVE);
        m_image = p_image.matcher(htmlStr);
        while (m_image.find()) {
            // 得到<img />数据
            img = m_image.group();
            // 匹配<img>中的src数据
            Matcher m = Pattern.compile("src\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img);
            while (m.find()) {
                pics.add(m.group(1));
            }
        }
        return pics;
    }

    @RequestMapping("/publishAllType.action")
    public void publishAllType(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String content1 = request.getParameter("content1");//判断内容是否为空
        String content2 = request.getParameter("content2");//获取内容
        String content3 = request.getParameter("content3");//获取blogFlag
        String content4 = request.getParameter("content4");//获取essayFlag
        String content5 = request.getParameter("content5");//标签

        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        int userId = userInfo.getUserId();
        Date commentTime = new Date();
        BlogContent blogContent = new BlogContent();
        blogContent.setUserId(userId);
        blogContent.setBlogcreatetime(commentTime);
        if(Integer.parseInt(content3)!=-1 && Integer.parseInt(content4)!=-1){
            blogContent.setBlogflag(content3);
            blogContent.setEssayflag(content4);
        }

        Set<String> set = getImgStr(content2);//src属性值
        String[] str = new String[set.size()];
        if(str.length>0){
//            发布有图片
            set.toArray(str);
            String src[] = str[0].split("ShareMaven");
            String zi[] = content2.split("<");;//文字内容

            blogContent.setBlogcontent(zi[0]);
            shuDongService.publishAllType(blogContent);//发布博客或者树洞（没有图片）
            int blogId = shuDongService.selectPublishBlogId(blogContent);
            boolean flag = shuDongService.insertPublishPics(blogId,src[1]);//将图片插入blogPics
            if(flag){
//            插入成功
                int blogPicsId = shuDongService.getPublishPicsId(blogId,src[1]);
                blogContent.setBlogpicsId(blogPicsId);
                boolean f1 = shuDongService.updateBlog(blogContent);//带图片插入博客

//            插入标签
                boolean f2 = shuDongService.insertPublishLabel(blogId,Integer.parseInt(content5));

            }else{
                System.out.println("插入失败");
            }
        }else{
//            发布只有文字
            blogContent.setBlogcontent(content2);
            shuDongService.publishAllType(blogContent);//发布博客或者树洞（没有图片）
            int blogId = shuDongService.selectPublishBlogId(blogContent);
            //            插入标签
            boolean f2 = shuDongService.insertPublishLabel(blogId,Integer.parseInt(content5));
        }



        request.getRequestDispatcher("/new/main.action").forward(request,response);
    }

    @RequestMapping("/getPublishFlag.action")
    public @ResponseBody int getPublishFlag(HttpServletRequest request,HttpServletResponse response){
        System.out.println("---------userId-----");
        String userId = request.getParameter("userId");
        int flag = shuDongService.getUserStatus(Integer.parseInt(userId));
//        flag=0 被禁言     flag=1正常

        return flag;
    }








}
