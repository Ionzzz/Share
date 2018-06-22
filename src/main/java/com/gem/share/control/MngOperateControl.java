package com.gem.share.control;

import com.gem.share.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@RequestMapping("/mngOpe")
@Controller
public class MngOperateControl {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/show.action")
    public @ResponseBody List<Map<String,Object>> showOpeRecords(){
        return managerService.showOpeRecords();
    }

}
