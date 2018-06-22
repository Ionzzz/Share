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

@RequestMapping("/mngComment")
@Controller
public class MngCommentControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<Map<String,Object>> showCommentInfo(){
        return managerService.showCommentInfos();
    }

    @RequestMapping("/delete.action")
    public @ResponseBody String deleteComment(String id, HttpServletRequest request){
        managerService.deleteComment(id);

        ManagerInfo manager = (ManagerInfo) request.getSession().getAttribute("manager");
        String[] idInfo = id.split("_");
        String message="";
        if("c".equals(idInfo[0])){
           message = "删除一条评论（id:"+idInfo[1]+")";
        }else{
            message = "删除一条回复（id:"+idInfo[1]+")";
        }
        managerService.insertOpeRecord(manager,message);
        return "200";
    }
}
