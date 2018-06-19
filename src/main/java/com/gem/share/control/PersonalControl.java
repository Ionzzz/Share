package com.gem.share.control;

import com.gem.share.entity.FollowGroup;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.PersonalService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/personalpage")
@Controller
public class PersonalControl {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("personal.action")
    public void personal(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int userid = userInfo.getUserId();
        session.setAttribute("userblog",personalService.selectBlogContentByUserId(userid));
        session.setAttribute("zan",personalService.selectBlogByUserZan(userid));
        session.setAttribute("zanuser",personalService.selectUserByUserZan(userid));
        session.setAttribute("comment",personalService.selectBlogByUserComment(userid));
        session.setAttribute("commentuser",personalService.selectUserByUserComment(userid));
        request.getSession();
        request.getRequestDispatcher("/jsp/personalpage/personal.jsp").forward(request,response);
    }

    @RequestMapping("picture.action")
    public void picture(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getSession();
        request.getRequestDispatcher("/jsp/personalpage/picture.jsp").forward(request,response);
    }

    @RequestMapping("dynamic.action")
    public void dynamic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession();
        request.getRequestDispatcher("/jsp/personalpage/dynamic.jsp").forward(request,response);
    }

    @RequestMapping("fellow.action")
    public void fellow(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
//        获得粉丝信息
        request.setAttribute("follower",personalService.selectFollowUserByUserId(user_id));
        String followGroupName = request.getParameter("followGroupName");
        request.setAttribute("care",personalService.selectFollowUserByUserIdAndGroupId(user_id,followGroupName));
        session.setAttribute("group",personalService.selectAllGroupByUserId(user_id));

//        分页
        Map<String,Object> map=new HashMap<>();
        int pageSize=15;
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        System.out.println("curpage:-------------------"+curPage);
        if(scurPage!=null&&!scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        map.put("curPage",curPage);
        map.put("pageSize",pageSize);

        PageInfo<UserInfo> pageInfo=personalService.selectAllUserByPage(user_id,map);
        request.setAttribute("pageInfo",pageInfo);

        request.getRequestDispatcher("/jsp/personalpage/follow.jsp").forward(request,response);
    }


//    获得分组名
    @RequestMapping("/groupname.action")
    public @ResponseBody List<FollowGroup> groupname(HttpServletRequest request, HttpServletResponse response){
        List<FollowGroup> group = (List<FollowGroup>) request.getSession().getAttribute("group");
        System.out.println("------------group"+group);
        return group;
    }

    @RequestMapping("groupfellow.action")
    public @ResponseBody List<UserInfo> groupfellow(HttpServletRequest request){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        String followGroupName = request.getParameter("followGroupName");
        System.out.println("-----------------"+followGroupName);
        List<UserInfo> userInfos = personalService.selectFollowUserByUserIdAndGroupId(user_id,followGroupName);
        System.out.println(userInfos);
        return userInfos;
    }

    @RequestMapping("data.action")
    public void data(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        session.setAttribute("userinfo",personalService.selectUserById(user_id));
        request.getSession();
        System.out.println("============="+personalService.selectUserById(user_id));
        request.getRequestDispatcher("/jsp/personalpage/personaldata.jsp").forward(request,response);
    }

    //        根据用户id和关注人id取消关注
    @RequestMapping("deletefollow.action")
    public @ResponseBody int deletefollow(HttpServletRequest request){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
//        从jsp传入的关注者的id
        int userId =Integer.parseInt(request.getParameter("userId"));
        System.out.println("--------------------"+userId);
        Boolean tf = personalService.deleteUserByUserIdAndFollowUser(userId,user_id);
        System.out.println("----------------------"+tf);
        if(tf){
            return 0;
        }else {
            return 1;
        }
    }



//    点击关注
    @RequestMapping("clickfollow.action")
    public Boolean clickfollow(HttpServletRequest request,HttpServletResponse response){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();

//        从jsp传入被点击用户的id
        int followUser_id = Integer.parseInt(request.getParameter("followUser_id"));
//        点击者增加关注人
        Boolean tf = personalService.insertfollow(user_id,followUser_id);
        return tf;
    }
}
