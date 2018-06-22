package com.gem.share.control;


import com.gem.share.entity.ManagerInfo;
import com.gem.share.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@RequestMapping("/mngPics")
@Controller
public class MngPicsControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<Map<String,Object>> showPics(){
        return managerService.showPics();
    }
    @RequestMapping("/delete.action")
    public @ResponseBody String deletePic(int id, HttpServletRequest request){
        managerService.deletePic(id);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "删除一幅图片（id："+id+")";
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
}
