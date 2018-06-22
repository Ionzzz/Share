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

@RequestMapping("/mngBlog")
@Controller
public class MngBlogControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<Map<String,Object>> showBlogInfo(){
        return managerService.selectBlogInfos();
    }

    @RequestMapping("/delete.action")
    public @ResponseBody String deleteBlog(int id,HttpServletRequest request){
        managerService.deleteBlog(id);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String message = "删除一条博客，id："+id;
        managerService.insertOpeRecord(manager,message);

        return "200";
    }
}
