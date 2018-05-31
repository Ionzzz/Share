package com.gem.share.control;


import com.gem.share.util.GetMessageCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping("/user")
@Controller
public class SendSms extends HttpServlet {

	 @Override
	 @RequestMapping("/sendSMS.action")
	 public void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
		 System.out.println("4444444");
			String phone=req.getParameter("phone");
		 System.out.println("sendsm:"+phone);
			String code= GetMessageCode.getCode(phone);
			System.out.println(code);
			resp.getWriter().print(code);
		}
}
