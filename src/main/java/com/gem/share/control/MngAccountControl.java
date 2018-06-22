package com.gem.share.control;

import com.gem.share.entity.ManagerInfo;
import com.gem.share.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RequestMapping("/mngAccount")
@Controller
public class MngAccountControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/login.action")
    public @ResponseBody Boolean MngLogin(HttpServletRequest request, HttpServletResponse response){
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        ManagerInfo m = managerService.login(name,pass);
        if(m != null){
            HttpSession session=request.getSession();
            session.setAttribute("manager",m);
            //不活动8小时后退出
            session.setMaxInactiveInterval(60*60*8);
            return true;
        }
        return false;
    }

    @RequestMapping("/logout.action")
    public void MngLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().removeAttribute("manager");
        request.getRequestDispatcher("/jsp/manage/mng_login.jsp").forward(request,response);
    }

    @RequestMapping("/show.action")
    public @ResponseBody List<ManagerInfo> showManagerInfos(){
        return managerService.showManagerInfos();
    }
    @RequestMapping("/add.action")
    public @ResponseBody String addManagerInfo(String account,String password,HttpServletRequest request){
        ManagerInfo ManagerInfo = new ManagerInfo();
        ManagerInfo.setManageraccount(account);
        ManagerInfo.setManagerpwd(password);
        managerService.addManagerInfo(ManagerInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "添加了账户："+account;
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
    @RequestMapping("/update.action")
    public @ResponseBody String updateManagerInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ManagerInfo managerInfo = new ManagerInfo();
        managerInfo.setManageraccount(request.getParameter("account"));
        managerInfo.setManagerpwd(request.getParameter("password"));
        managerInfo.setManagerId(Integer.parseInt(request.getParameter("id")));
        managerService.updateManagerInfo(managerInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "修改了账户信息";
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
    @RequestMapping("/delete.action")
    public @ResponseBody String deleteManagerInfo(int id,HttpServletRequest request){
        managerService.deleteManagerInfo(id);

/*        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "注销账户";
        mngOpeService.insertOpeRecord(manager,message);*/
        return "200";
    }
    @RequestMapping("/select.action")
    public void selectById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ManagerInfo managerInfo = managerService.selectManagerById(id);
        request.setAttribute("managerInfo",managerInfo);
        request.getRequestDispatcher("/jsp/manage/modify_mng.jsp").forward(request,response);
    }
}
