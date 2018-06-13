package com.gem.share.control;

import com.gem.share.entity.*;
import com.gem.share.service.ShuDongService;
import com.github.pagehelper.PageInfo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

@RequestMapping("/shuDong")
@Controller
public class ShuDongControl {

    @Autowired
    private ShuDongService shuDongService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchContent = request.getParameter("searchContent");
        String SDflag = request.getParameter("SDflag");//区分最热排序或者时间排序
        String getDate = request.getParameter("getDate");//获取日期
        System.out.println("-------"+getDate);

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
        request.setAttribute("pageInfo",pageInfo);

        //搜索条件分页
        request.setAttribute("searchContent",searchContent);
        request.setAttribute("SDflag",SDflag);
        request.getRequestDispatcher("/jsp/shuDong.jsp").forward(request,response);

    }

    @RequestMapping("/Zan.action")
    public @ResponseBody int Zan(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        int userId = 1;//后期从session获取
        String blogId = request.getParameter("blogId");
//        查询是否有该用户对该博客的点赞记录
        List<BlogZan> blogZans = shuDongService.selectZanRecordByUserId(Integer.parseInt(blogId),userId);
        int sdCount = 0;

//        如果有，删除该记录，同时文章点赞数-1
        if(blogZans != null && blogZans.size()>0){
//            删除记录
            boolean f1 = shuDongService.deleteZanRecordByZanId(blogZans.get(0).getBlogzanId());
            if(f1){
//                删除成功，得到该篇文章点赞数
                sdCount = shuDongService.selectCountZan(Integer.parseInt(blogId));

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
            sdCount = shuDongService.selectCountZan(Integer.parseInt(blogId));
        }

        return sdCount;

//        request.getRequestDispatcher("/shuDong/main.action").forward(request,response);
    }

    @RequestMapping("/DetailComment.action")
    public void DetailComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String blogId = request.getParameter("blogId");
        int userId = 3;//后期从session中获得

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
        return 1;
    }

    @RequestMapping("/InsertBlogComment.action")
    public void insertBlogComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String content1 = request.getParameter("content1");//判断内容是否为空
        String content2 = request.getParameter("content2");//获取内容
        Date commentTime = new Date();

        if("true".equals(content1)){
//            内容不为空
            if("1".equals(flag)){
                //            插入blogComment表
                BlogComment blogComment = new BlogComment(Integer.parseInt(blogid),409,content2,commentTime);
                boolean flag = shuDongService.insertBlogComment(blogComment);
            }else if ("2".equals(flag)){
                //             插入replyComment表  二级评论
                ReplyComment replyComment = new ReplyComment(Integer.parseInt(blogid),277,content2,commentTime);
                boolean f = shuDongService.insertReplyComment(replyComment);
            }else if("3".equals(flag)){
//                三级评论
                ReplyComment replyComment = new ReplyComment();

//                int replycommentId = shuDongService.selectUserIdByCommentId(Integer.parseInt(blogid));
                replyComment.setReplycomment(Integer.parseInt(blogid));
                replyComment.setUserId(233);
                replyComment.setReplycommentcontent(content2);
                replyComment.setReplycommenttime(commentTime);

                boolean f = shuDongService.insertThirdReplyComment(replyComment);
            }

        }else{
//            内容为空
            request.getRequestDispatcher("/jsp/shuDongDetail.jsp").forward(request,response);
        }

    }

    @RequestMapping("/deleteComment.action")
    public @ResponseBody List<ReplyCommentDetail> deleteComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String replycommentId = request.getParameter("replycommentId");
        String commentId = request.getParameter("commentId");
        System.out.println("----------commentId--"+commentId);
        System.out.println("----------replycommentId--"+replycommentId);

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








    @RequestMapping("/myUplaod.action")
    public void uploadImage(MultipartFile imgFileUp,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletContext().getRealPath("images");
        String temp = request.getServletContext().getRealPath("/temp");

        File f = new File(path);
        File tempFile = new File(temp);
        if(!f.exists()) {
            f.mkdir();
        }
        if(!tempFile.exists()) {
            tempFile.mkdir();
        }

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(1024*10);
        factory.setRepository(tempFile);

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");

        if(!ServletFileUpload.isMultipartContent(request)) {
            String name = request.getParameter("username") ;
            System.out.println(name+"-----------------");

            return ;
        }
        //监听上传进度
        upload.setProgressListener(new ProgressListener() {
            /**
             * readLength  已读取的大小
             * sizeLength  总文件大小
             * count 当前正在上传第几个文件
             */
            @Override
            public void update(long readLength, long sizeLength, int count) {
                // TODO Auto-generated method stub
                System.out.println("文件大小为：" + sizeLength + ",当前已处理：" + readLength +"----当前是：【"+count+"】个文件");
            }
        });

        String info = "";
        try {
            upload.setFileSizeMax(1024*1024*4); //单个文件最大4M
            upload.setSizeMax(1024*1024*4*10); //所有文件加载一起40M

            List<FileItem> list = upload.parseRequest(request);

            for(FileItem item :list) {
                if(item.isFormField()) {
                    //普通表单
                    String name = item.getFieldName();
                    String value = item.getString();

                    System.out.println(name+"-----"+value);
                }else {
                    //上传表单
                    String filename = item.getName();
                    if(filename == null || "".equals(filename)) {
                        continue ;
                    }

                    System.out.println("文件名称:"+filename);
                    //文件名称 根据浏览器不同 ，文件名称也不同
                    //D:\apache-tomcat-8.0.50\webapps\JspDemo_4\images\abc.jpg
                    filename = filename.substring(filename.lastIndexOf("\\")+1);

                    //给每个上传文件 重新定义一个文件名
                    String ms = System.currentTimeMillis()+"";
                    String ss = UUID.randomUUID().toString();
                    System.out.println("UUID:----"+ss);
                    filename = ms+"_"+filename;

                    InputStream in = item.getInputStream();
                    String newPath = makePath(filename,path);
                    FileOutputStream out = null;
                    try {
                        out = new FileOutputStream(new File(newPath+File.separator+filename));
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    }

                    byte[] buffer = new byte[1024];
                    int len = 0;

                    while((len=in.read(buffer)) > 0) {
                        out.write(buffer, 0, len);
                    }

                    in.close();
                    out.close();

                }

                item.delete();//清除上传文件过程中产生的缓存
            }


            info = "上传成功";

            request.setAttribute("info", info);

            request.getRequestDispatcher("/load/message.jsp").forward(request, response);
        } catch(FileUploadBase.FileSizeLimitExceededException e) {
            //单个文件超过最大值
            e.getPermittedSize();
            info = "单个文件超过上传的大小";
            request.setAttribute("info", info);
            request.getRequestDispatcher("/load/message.jsp").forward(request, response);
        }catch (FileUploadBase.SizeLimitExceededException e) {
            //超过上传总大小
            e.getPermittedSize();
            info = "超过上传文件的总大小";
            request.setAttribute("info", info);
            request.getRequestDispatcher("/load/message.jsp").forward(request, response);
        }catch (FileUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            info = "上传失败";
            request.setAttribute("info", info);
            request.getRequestDispatcher("/load/message.jsp").forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //为防止一个目录下面出现太多文件，要使用hash算法打散存储
    private String makePath(String filename,String savePath){
        //得到文件名的hashCode的值，得到的就是filename这个字符串对象在内存中的地址
        int hashcode = filename.hashCode();
        int dir1 = hashcode&0xf;  //1111 //0--15    4
        int dir2 = (hashcode&0xf0)>>4;  //0-15      9

        System.out.println("-================"+dir1+"=================="+dir2);
        //构造新的保存目录
        String dir = savePath + "\\" + dir1 + "\\" + dir2;  //images\2\3  images\3\5
        //D:\apache-tomcat-8.0.50\webapps\JspDemo_4\images\\2\4\\a.jpg
        //D:\apache-tomcat-8.0.50\webapps\JspDemo_4\images\\7\\2\\b.jpg
        //File既可以代表文件也可以代表目录
        File file = new File(dir);
        //如果目录不存在
        if(!file.exists()){
            //创建目录
            file.mkdirs();
        }
        return dir;
    }


    @RequestMapping("/publishAllType.action")
    public void publishAllType(HttpServletRequest request,HttpServletResponse response){
        String content1 = request.getParameter("content1");//判断内容是否为空
        String content2 = request.getParameter("content2");//获取内容
        String content3 = request.getParameter("content3");//获取blogFlag
        String content4 = request.getParameter("content4");//获取essayFlag




    }





}
