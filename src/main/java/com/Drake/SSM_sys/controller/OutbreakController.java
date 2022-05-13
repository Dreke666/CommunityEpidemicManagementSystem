package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.Outbreak;
import com.Drake.SSM_sys.service.OutbreakService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@Controller
public class OutbreakController {
    @Autowired
    OutbreakService service;
    //添加疫情信息
    @RequestMapping("/addOutbreak")
    public String addOutbreak(@Valid Outbreak outbreak, HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        System.out.println(outbreak.toString());
        service.addOutbreak(outbreak);
        return "redirect:/findAllOutbreakByPage";
    }
    //删除通过id
    @RequestMapping("/deleteOutbreakById")
    public String deleteOutbreakById(@RequestParam("outbreakid") int id){
        service.deleteOutbreakById(id);
      return "redirect:/findAllOutbreakByPage";
    }
    //查询所以用户
    @RequestMapping("/findAllOutbreakByPage")
    public ModelAndView findAllOutbreakByPage(@RequestParam(value = "pageNum",defaultValue = "1") int pageNum){
        PageHelper.startPage(pageNum,5);
        List<Outbreak> outbreakList = service.findAllOutbreakByPage();
        PageInfo<Outbreak> pageInfo = new PageInfo<Outbreak>(outbreakList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("outBreakManage");
        return modelAndView;
    }

    //跳转修改页面
    @RequestMapping("/toUpdateOutbreakPage")
    public ModelAndView toUpdateOutbreakPage(@RequestParam("outbreakid") int id){
        Outbreak outbreak = service.findOutbreakById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("outbreak",outbreak);
        modelAndView.setViewName("updateOutbreakPage");
        return modelAndView;
    }
    //修改
    @RequestMapping("/updateOutbreak")
    public ModelAndView updateOutbreak(@Valid Outbreak outbreak){
        System.out.println(outbreak.toString());
        service.updateOutbreak(outbreak);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/findAllOutbreakByPage");
        return modelAndView;
    }
    //toAddOutbreakPage跳转添加疫情信息页面
    @RequestMapping("/toAddOutbreakPage")
    public ModelAndView toAddOutbreakPage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("AddOutbreakPage");
        return modelAndView;
    }

}
