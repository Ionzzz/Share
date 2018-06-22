package com.gem.share.control;

import com.gem.share.entity.ManagerInfo;
import com.gem.share.entity.UserInfo;
import com.gem.share.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("/mngUser")
@Controller
public class MngUserControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<UserInfo> showUserInfos(){
        return managerService.showUserInfos();
    }

    @RequestMapping("/changeStatus.action")
    public @ResponseBody String changeStatus(int id,String status,HttpServletRequest request){
        UserInfo userInfo = new UserInfo();
        status = "0".equals(status)?"1":"0"; //若已禁言则解禁，否则禁言
        userInfo.setUserId(id);
        userInfo.setUserstatus(status);
        managerService.changeUserStatus(userInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "";
        if("0".equals(status)){
            message = "禁言用户（id："+id+"）";
        }
        else{
            message = "解禁用户（id："+id+"）";

        }
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
    @RequestMapping("/changeEnergy.action")
    public @ResponseBody String changeEnergy(int id,String energy,HttpServletRequest request){
        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(id);
        userInfo.setUserenergy(energy);
        managerService.changeUserEnergy(userInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "修改用户（id："+id+"）积分为"+energy;
        managerService.insertOpeRecord(manager,message);
        return "200";
    }

    @RequestMapping("/select.action")
    public void selectUserById(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("user",managerService.selectById(id));
        request.getRequestDispatcher("/jsp/manage/modify_energy.jsp").forward(request,response);
    }
}
