package com.gem.share.util.ueditor.controller;

import com.gem.share.util.ueditor.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class UeditorInitController {


    /**
     * 初始化百度编辑器，可传入其他参数生成不同的编辑器,总入口
     *
     * @param response
     * @param request
     */
    @RequestMapping("/ueditor/init")
    public void initUeditor(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("application/json");

        // 配置路径，首先获取static根目录绝对路径
        String rootPath = request.getSession().getServletContext().getRealPath("/static");
        // 将config.json放到与ueditor.config.js同一级的目录下。将ueditor所有文件放入到wapapp-static-ueditor下
        // 设置获取服务端配置文件地址修正路径，此路径同时作用于文件上传
        PrintWriter writer = null;
        try {
            String exec = new ActionEnter(request, rootPath).exec();
            writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            System.out.println("初始化成功");
        } catch (IOException e) {
            System.out.println("百度编辑器初始化错误");
        } finally {
            if (writer != null) {
                writer.close();
            }
        }
    }

}