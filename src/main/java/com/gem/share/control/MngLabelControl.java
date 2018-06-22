package com.gem.share.control;

import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.ManagerInfo;
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

@RequestMapping("/mngLabel")
@Controller
public class MngLabelControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<LabelInfo> showLabelInfos(){
        return managerService.showLabelInfos();
    }
    @RequestMapping("/add.action")
    public @ResponseBody String addLabelInfo(String labelname,String describe,HttpServletRequest request){
        LabelInfo labelInfo = new LabelInfo();
        labelInfo.setLabelname(labelname);
        labelInfo.setLabelcontent(describe);
        managerService.addLableInfo(labelInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "添加了一个标签:"+labelname;
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
    @RequestMapping("/update.action")
    public @ResponseBody String updateLabelInfo(int id,String labelname,String describe,HttpServletRequest request)
            throws ServletException, IOException {
        LabelInfo labelInfo = new LabelInfo();
        labelInfo.setLabelname(labelname);
        labelInfo.setLabelcontent(describe);
        labelInfo.setLabelId(id);
        managerService.updateLabelInfo(labelInfo);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "修改了标签（"+request.getParameter("labelname")+"）信息";
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
    @RequestMapping("/delete.action")
    public @ResponseBody String deleteLabelInfo(int id,HttpServletRequest request){
        managerService.deleteLabelInfo(id);
        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "删除一个标签（id："+id+"）";
        managerService.insertOpeRecord(manager,message);

        return "200";
    }
    @RequestMapping("/select.action")
    public void selectById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        LabelInfo labelInfo = managerService.selectLabelById(id);
        request.setAttribute("labelInfo",labelInfo);
        request.getRequestDispatcher("/jsp/manage/modify_label.jsp").forward(request,response);
    }
}
