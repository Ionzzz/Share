package com.gem.share.util;

import com.gem.share.entity.UserInfo;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginIntcepter implements HandlerInterceptor{

//    请求没有处理之前拦截（身份检测）
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        安全认证
//        获得用户的请求url
        String url = request.getRequestURI();//获得用户请求的路径
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        System.out.println("userinfo="+userInfo);

        if(userInfo == null){
            //request.getContextPath()得到调用该方法的项目名称
            response.sendRedirect(request.getContextPath()+"/jsp/login-register/login_password.jsp");
            return false;
        }else{
            return true;
        }
    }

//    请求处理后没有到view被拦截
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {

    }

//    全部处理完之后拦截
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {

    }
}
