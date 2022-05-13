package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.*;
import com.Drake.SSM_sys.service.GuideLinesService;
import com.Drake.SSM_sys.service.LoginService;
import com.Drake.SSM_sys.service.NoticeService;
import com.Drake.SSM_sys.service.OutbreakService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    LoginService service;
    @Autowired
    NoticeService noticeService;
    @Autowired
    OutbreakService outbreakService;
    @Autowired
    GuideLinesService guideLinesService;

    //用户登录
    @RequestMapping("/toUserLogin")
    public ModelAndView toUserLogin() {
        ModelAndView andView = new ModelAndView();
        andView.setViewName("redirect:/findAllMsgToIndex");
        return andView;
    }

    @RequestMapping("/doUserLogin")
    public ModelAndView login(@RequestParam(value = "username",defaultValue = "admin") String username, @RequestParam(value = "password",defaultValue = "123456") String password, HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        httpSession.setAttribute("username", username);
        User user1 = service.userLogin(user);
        if (user1 == null) {
            modelAndView.setViewName("userLogin");
        } else {
            //公告信息
            PageHelper.startPage(1, 5);
            List<Notice> noticeServiceAllNoticeByPage = noticeService.findAllNoticeByPage();
            PageInfo<Notice> noticePageInfo = new PageInfo<Notice>(noticeServiceAllNoticeByPage);
            modelAndView.addObject("noticePageInfo", noticePageInfo);
            //疫情信息
            PageHelper.startPage(1, 5);
            List<Outbreak> allOutbreakByPage = outbreakService.findAllOutbreakByPage();
            PageInfo<Outbreak> outbreakPageInfo = new PageInfo<Outbreak>(allOutbreakByPage);
            modelAndView.addObject("outbreakPageInfo", outbreakPageInfo);
            modelAndView.setViewName("index");
            //防疫须知
            Guidelines guidelines = guideLinesService.findAllGuidelinesByPage();
            modelAndView.addObject("guidelines", guidelines);
            //保存用户名
            modelAndView.addObject("username", username);
            modelAndView.setViewName("index");
        }
        return modelAndView;
    }


    @RequestMapping({"/login","/"})
    public ModelAndView login(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("userLogin");
        return andView;
    }
    //管理员登录
    @RequestMapping("/toAdminLogin")
    public ModelAndView toAdminLogin(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("adminLoginPage");
        return andView;
    }
    @RequestMapping("/doAdminLogin")
    public String doAdminLogin(@Valid Admin admin){
        Admin admin1 = service.adminLogin(admin);
        System.out.println();
        if (admin1==null){
            return "adminLoginPage";
        }else {
            return "adminIndex";
        }
    }
    @RequestMapping("/findAllMsgToIndex")
    public ModelAndView findAllMsgToIndex(){
        ModelAndView modelAndView = new ModelAndView();
        //公告信息
        PageHelper.startPage(1,5);
        List<Notice> noticeServiceAllNoticeByPage = noticeService.findAllNoticeByPage();
        PageInfo<Notice> noticePageInfo = new PageInfo<Notice>(noticeServiceAllNoticeByPage);
        modelAndView.addObject("noticePageInfo",noticePageInfo);
        //疫情信息
        PageHelper.startPage(1,5);
        List<Outbreak> allOutbreakByPage = outbreakService.findAllOutbreakByPage();
        PageInfo<Outbreak> outbreakPageInfo = new PageInfo<Outbreak>(allOutbreakByPage);
        modelAndView.addObject("outbreakPageInfo",outbreakPageInfo);
        modelAndView.setViewName("index");
        //防疫须知
        Guidelines guidelines = guideLinesService.findAllGuidelinesByPage();
        modelAndView.addObject("guidelines",guidelines);

        modelAndView.setViewName("index");
        return modelAndView;

    }
}
