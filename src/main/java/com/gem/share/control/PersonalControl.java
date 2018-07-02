package com.gem.share.control;

import com.gem.share.entity.Address;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/personalpage")
@Controller
public class PersonalControl {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("/personal.action")
    public void personal(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int userid = userInfo.getUserId();

        session.setAttribute("userinfo",personalService.selectUserById(userid));
        System.out.println("------------------userinfo:"+personalService.selectUserById(userid));

        request.setAttribute("userblog",personalService.selectBlogContentByUserId(userid));
        request.setAttribute("myzan",personalService.selectallzan(userid));
        request.setAttribute("mycollect",personalService.selectallCollect(userid));
        request.setAttribute("mycomment",personalService.selectallcomment(userid));

        request.getRequestDispatcher("/jsp/personalblog.jsp").forward(request,response);
    }

    @RequestMapping("dynamic.action")
    public void dynamic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int userid = userInfo.getUserId();
        String id = request.getParameter("id");
        request.setAttribute("id",id);
        if("zan".equals(id)){
            request.setAttribute("myallcomment",personalService.selectallzan(userid));
            request.getRequestDispatcher("/jsp/personaldynamic.jsp").forward(request,response);
        }else if("collect".equals(id)){
            request.setAttribute("myallcomment",personalService.selectallCollect(userid));
            request.getRequestDispatcher("/jsp/personaldynamic.jsp").forward(request,response);
        }else {
            request.setAttribute("myallcomment",personalService.selectallcomment(userid));
            request.getRequestDispatcher("/jsp/personaldynamic.jsp").forward(request,response);
        }
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

//        获得所有关注的人
        List<UserInfo> users = personalService.selectUserByFollowUserId(user_id);
        System.out.println("------------------"+users);
        request.setAttribute("cares",users);


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

        request.getRequestDispatcher("/jsp/personalcare.jsp").forward(request,response);
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

    @RequestMapping("/data.action")
    public void data(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getSession();
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        //        查询地址
        String addressId =  userInfo.getAddresssId() + "";
        if(addressId == null){
            request.setAttribute("address",null);
        }else {
            request.setAttribute("address",personalService.selectAddressByAddressId(userInfo.getAddresssId()));
        }
        request.getRequestDispatcher("/jsp/personaldata.jsp").forward(request,response);
    }

    @RequestMapping("updatecontent.action")
    public @ResponseBody boolean updatecontent(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getSession();
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();

//        查询地址
        String addressId =  userInfo.getAddresssId() + "";
        if(addressId == null){
            request.setAttribute("address",null);
        }else {
            request.setAttribute("address",personalService.selectAddressByAddressId(userInfo.getAddresssId()));
        }

        String id = request.getParameter("id");
        String content = request.getParameter("content");
        Boolean tf = false;
        if("nickname".equals(id)){
            tf = personalService.updateNickName(user_id,content);
        }
        if("name".equals(id)){
            tf = personalService.updateName(user_id,content);
        }
        if("introduce".equals(id)){
            tf = personalService.updateIntroduce(user_id,content);
        }
        if("school".equals(id)){
            tf = personalService.updateSchool(user_id,content);
        }
        return tf;

    }

    //        修改填写地址
    @RequestMapping("updateAddress.action")
    public @ResponseBody boolean updateAddress(HttpServletRequest request){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String county = request.getParameter("county");

        Boolean utf = false;
        Address address = personalService.selectaddress(province,city,county);
        if(address == null){
            Boolean tf = personalService.insertaddress(province,city,county);
            if(tf){
                Address address1 = personalService.selectaddress(province,city,county);
                utf = personalService.updateaddressid(user_id,address1.getAddressId());
            }else {
                utf = false;
            }
        }else {
            utf = personalService.updateaddressid(user_id,address.getAddressId());
        }
        return utf;
    }

    //        修改出生日期
    @RequestMapping("/updateCreateTime.action")
    public @ResponseBody boolean updateCreateTime(HttpServletRequest request) throws ParseException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        String date = request.getParameter("date");

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date createTime = formatter.parse(date);

        Boolean tf = personalService.updateCreateTime(user_id,createTime);

        return tf;
    }

    //        修改性别
    @RequestMapping("/updateSex.action")
    public @ResponseBody boolean updateSex(HttpServletRequest request) throws ParseException {
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        String sex = request.getParameter("sex");
        Boolean tf = personalService.updateSex(user_id,sex);
        return tf;
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
    public @ResponseBody int clickfollow(HttpServletRequest request,HttpServletResponse response){
        int n = 1;
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
        int user_id = userInfo.getUserId();
        System.out.println("user_id-----------------:"+user_id);

//        从jsp传入被点击用户的id
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("==========id:"+id);
//        获取已经关注的人的用户信息
        List<UserInfo> users = personalService.selectUserByFollowUserId(user_id);
//        request.setAttribute("follower",users);
        System.out.println("___________follower:"+users);
        if(users.size() == 0){
            System.out.println("aaaaaaaaaaaaaaaa");
            Boolean tf = personalService.insertfollow(id,user_id);
            System.out.println("++++++++++++++++tf:"+tf);
            if (tf) {
//            数据库插入成功
                n = 0;
            } else {
                n = 1;
            }
        }else {
            System.out.println("bbbbbbbbbbbbbbbbbbb");
//        是否存在
            for (UserInfo user : users) {
                if (user.getUserId() == id) {
//                    已经关注过了
                    n = 2;
                } else {
                    //        点击者增加关注人
                    Boolean tf = personalService.insertfollow(id,user_id);
                    System.out.println(tf);
                    if (tf) {
//            数据库插入成功
                        n = 0;
                        break;
                    } else {
                        n = 1;
                    }
                }
            }
        }
        return n;
    }
}
