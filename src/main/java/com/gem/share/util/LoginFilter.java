package com.gem.share.util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        String currentURL = request.getRequestURI();

        HttpSession session = request.getSession(false);
        //对当前页面进行判断，如果当前页面不为登录页面
        if(!currentURL.endsWith("/login-register/login_password.jsp") || !currentURL.endsWith("/login-register/register.jsp")
                ||!currentURL.endsWith("login-register/login_forget.jsp") || !currentURL.endsWith("login-register/login_verify.jsp")){
            //在不为登陆页面时，再进行判断，如果不是登陆页面也没有session则跳转到登录页面，
            System.out.println("------------LoginFilter------");
            if(session == null || session.getAttribute("userInfo") == null){
                System.out.println("session="+session);
                response.sendRedirect("/ShareMaven/login-register/login_password.jsp");
                return;
            }else{
                //这里表示正确，会去寻找下一个链，如果不存在，则进行正常的页面跳转
                filterChain.doFilter(request, response);
                return;
            }
        }else{
            //这里表示如果当前页面是登陆页面，跳转到登陆页面
            filterChain.doFilter(request, response);
            return;
        }

    }

    @Override
    public void destroy() {

    }
}
