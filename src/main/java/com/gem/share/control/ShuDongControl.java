package com.gem.share.control;

import com.gem.share.service.ShuDongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping("/shuDong")
@Controller
public class ShuDongControl {

    @Autowired
    private ShuDongService shuDongService;

    @RequestMapping("/main.action")
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("sdContent",shuDongService.selectAllShuDongContent());
//        System.out.println("control=============="+shuDongService.selectAllShuDongContent());

        request.getRequestDispatcher("/jsp/shuDong.jsp").forward(request,response);

    }

}
