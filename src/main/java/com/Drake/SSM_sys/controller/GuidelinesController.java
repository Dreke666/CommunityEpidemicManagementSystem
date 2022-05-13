package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.Admin;
import com.Drake.SSM_sys.bean.Guidelines;
import com.Drake.SSM_sys.service.AdminsService;
import com.Drake.SSM_sys.service.GuideLinesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@Controller
public class GuidelinesController {
    @Autowired
    private GuideLinesService service;


    //查询防疫须知
    @RequestMapping("/findAllGuideLinesyPage")
    public ModelAndView findAllGuideLinesPage(int pagenum){
        PageHelper.startPage(1,5);
        Guidelines userList = service.findAllGuidelinesByPage();
//        PageInfo<Guidelines> pageInfo = new PageInfo<Guidelines>(userList);
        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("pageInfo",pageInfo);
//        modelAndView.setViewName();
        return modelAndView;
    }
    //修改
    @RequestMapping("/updateGuideLines")
    public String updateGuideLines(@Valid Guidelines guidelines){
        service.updateGuideLines(guidelines);
       return "redirect:/findAllUserByPage";
    }
    //修改
    @RequestMapping("/toUpdateGuidelinesPage")
    public ModelAndView toUpdateGuidelinesPage(){
        Guidelines guidelines = service.findGuidelines();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("guidelines",guidelines);
        modelAndView.setViewName("guidelinesPage");
        return modelAndView;
    }

}
