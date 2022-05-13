package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.Admin;
import com.Drake.SSM_sys.service.AdminsService;
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
public class AdminController {
    @Autowired
    private AdminsService service;
    //用户注册
    @RequestMapping("/addAdmin")
    public ModelAndView addAdmin(@Valid Admin admin, HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.addAdmin(admin);
        ModelAndView andView = new ModelAndView();
        return andView;
    }
    //删除通过id
    @RequestMapping("/deleteAdminById")
    public ModelAndView deleteAdminById(int id){
        service.deleteAdminById(id);
        ModelAndView modelAndView = new ModelAndView();
        return modelAndView;
    }
    //查询所以用户
    @RequestMapping("/findAllAdminByPage")
    public ModelAndView findAllAdminByPage(int pagenum){
        PageHelper.startPage(1,5);
        List<Admin> userList = service.findAllAdminByPage();
        PageInfo<Admin> pageInfo = new PageInfo<Admin>(userList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("");
        return modelAndView;
    }
    //修改
    @RequestMapping("/updateAdmin")
    public String updateAdmin(@Valid Admin admin){
        service.updateAdmin(admin);
       return "redirect:/findAllMsgToIndex";
    }
    @RequestMapping("/toUpdateAdmin")
    public ModelAndView updateAdmin(@RequestParam("aid") int aid){
        Admin admin = service.findAdminById(aid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admin",admin);
        modelAndView.setViewName("updatePassword");
        return modelAndView;
    }

}
