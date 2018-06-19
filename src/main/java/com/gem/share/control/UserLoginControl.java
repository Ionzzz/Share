package com.gem.share.control;


import com.gem.share.entity.UserInfo;
import com.gem.share.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RequestMapping("/userLogin")
@Controller
public class UserLoginControl {

    @Autowired
    private UserLoginService userLoginService;

//    判断手机号和邮箱格式
    @RequestMapping("/checkinput.action")
    public @ResponseBody int checkinput(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        String input = request.getParameter("input");
        System.out.println("-----------------检查格式:"+input);

//        手机号正则表达式
        Pattern pphone = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
        Matcher mphone = pphone.matcher(input);

//        邮箱正则表达式
        String str = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
        Pattern pemail = Pattern.compile(str);
        Matcher memail = pemail.matcher(input);

        if(mphone.matches() || memail.matches()) {
            return 0;
        }else {
            return 1;
        }

    }


    // 判断手机号是否注册
    @RequestMapping("/checkphone.action")
    public @ResponseBody int  checkphone(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        String phone = request.getParameter("phone");
        System.out.println("-------------------是否注册:"+phone);

        UserInfo userInfo = userLoginService.selectUserInfoByPhoneOrEmail(phone);
        System.out.println("-----------用户信息:"+userInfo);

//        判断该用户是否存在
        if(userInfo == null){
            System.out.println("该手机号未注册");
            return 0;
        }else {
            return 1;
        }
    }


//    完善注册信息 --> 判断用户名是否存在
    @RequestMapping("/checknickname.action")
    public @ResponseBody int checkNickName(HttpServletRequest request,HttpServletResponse response){
        String nickname = request.getParameter("nickname");
        UserInfo userInfo = userLoginService.selectUserInfoByNickName(nickname);
        if(userInfo == null){
//            用户名不存在
            return 0;
        }else {
            return 1;
        }

    }

    //    完善用户信息 --> 注册
//    String userPhone = null;
    @RequestMapping("/regist.action")
    public @ResponseBody Boolean regist(HttpSession session,HttpServletRequest request,HttpServletResponse response){
        String userPhone = request.getParameter("phone");
        String userNickName = request.getParameter("nickname");
        String userEmail = request.getParameter("email");
        String userPass = request.getParameter("pass");
        System.out.println("------------注册:"+userPhone+"--"+userNickName+"---"+userEmail+"--"+userPass);
        Boolean tf = userLoginService.insertNewUser(userPhone,userNickName,userEmail,userPass);
        System.out.println("-----------------------tf:"+tf);
        if(tf){
            UserInfo userInfo = userLoginService.selectUserInfoByPhoneOrEmail(userPhone);
            session.setAttribute("userInfo",userInfo);
        }
        return tf;
    }

    @RequestMapping("/register.action")
    public void register(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/login-register/register.jsp").forward(request,response);
    }


//    选择标签 并登录
    @RequestMapping("/lable.action")
    public @ResponseBody Boolean lable(HttpSession session,HttpServletRequest request,HttpServletResponse response){
        String lable = request.getParameter("lable");
        System.out.println("------------标签字符串:"+lable);
        String[] lableArry=lable.split(",");
        System.out.println("------------标签数组:"+lableArry);

        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        int userId = userInfo.getUserId();
        System.out.println("userId-----------"+userId);

        if(lableArry.length>0){
            for(int i=0;i<lableArry.length;i++){
                System.out.println("---000000000000");
                int lableId = Integer.parseInt(lableArry[i]);
                Boolean tf = userLoginService.insertLableByUserId(userId,lableId);
                System.out.println("-----标签信息是否存入数据库："+tf);
                return tf;
            }
        }
        return false;
    }

//    密码登录------判断手机号是否注册、密码是否正确、记住密码-->登录
    @RequestMapping("/loginpass.action")
    public void loginpass(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        String input = request.getParameter("input");
        String pass = request.getParameter("pass");
        String flag = request.getParameter("flag");
        System.out.println("-------------------手机号密码:" + input + "--" + pass+"---"+flag);
        UserInfo userInfo = userLoginService.selectUserInfoByPhoneOrEmail(input);

//        判断该用户是否注册

            System.out.println("----------------------" + userInfo);

            //验证用户名是否存在
            if (userInfo != null) {
                //用户名存在
                if (pass.equals(userInfo.getUserpwd())) {
                    //密码存在
                    session.setAttribute("userInfo", userInfo);

                    if ("1".equals(flag)) {
                        boolean f = false;
                        Cookie[] cs = request.getCookies();
                        for (Cookie c : cs) {
                            if ("userInfo".equals(c.getName())) {
                                f = true;
                                break;
                            }
                        }

                        if (!f) {
                            Cookie cookie = new Cookie("userInfo", input + "-" + pass);
                            cookie.setMaxAge(60 * 60 * 24 * 14);
                            cookie.setPath("/");

                            response.addCookie(cookie);
                        }

                    }

                    //用户存在，则再次通过service转发
//                    System.out.println("1");
                    response.sendRedirect(request.getContextPath() +"/index/main.action");
//                    request.getRequestDispatcher("/index/main.action").forward(request,response);

                } else {
//                    System.out.println("2");
                    //密码错误
                    response.sendRedirect(request.getContextPath() + "/jsp/login_password.jsp?info=1");
                }
            } else {
//                System.out.println("3");
                //用户不存在，重定向至登录页面
                response.sendRedirect(request.getContextPath() + "/jsp/login_password.jsp?info=0");
            }

        }

//        登录
        @RequestMapping("cheklogin.action")
        public void cheklogin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/index/main.action").forward(request,response);
        }


//        设置新密码 -- >登录
    @RequestMapping("savapass.action")
        public void savapass(HttpServletRequest request,HttpServletResponse response) throws IOException {
            String phone = request.getParameter("phone");
            String pass = request.getParameter("pass");
            String newpass = request.getParameter("repass");
            Boolean tf = false;
//            手机号不为空
            if(phone != ""){
//                两次输入密码相同
                if(newpass == pass){
                    tf = userLoginService.updatePassByPhone(phone,newpass);
                    if(tf){
                        response.sendRedirect(request.getContextPath() +"/index/main.action");
                    }else {
                        response.sendRedirect(request.getContextPath() + "/jsp/login-register/login_forget.jsp?info=0");
                    }
                }else {
                    response.sendRedirect(request.getContextPath() + "/jsp/login-register/login_forget.jsp?info=1");
                }
            }else {
                response.sendRedirect(request.getContextPath() + "/jsp/login-register/login_forget.jsp?info=2");
            }

        }
    }