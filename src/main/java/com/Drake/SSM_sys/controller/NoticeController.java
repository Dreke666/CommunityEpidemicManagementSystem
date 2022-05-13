package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.Notice;
import com.Drake.SSM_sys.service.NoticeService;
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
public class NoticeController {
    @Autowired
    private NoticeService service;
    //跳转添加公告页面
    @RequestMapping("/toAddNoticePage")
    public ModelAndView toAddNoticePage(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("/addNoticePage");
        return andView;
    }
    //跳转修改公告页面
    @RequestMapping("/toUpdateNoticePage")
    public ModelAndView toAddNoticePage(@RequestParam("noticeid") int noticeid){
        ModelAndView andView = new ModelAndView();
        Notice notice = service.findNoticeById(noticeid);
        andView.addObject("notice",notice);
        andView.setViewName("/updateNoticePage");
        return andView;
    }
    //添加公告
    @RequestMapping("/addNotice")
    public String addNotice(@Valid Notice notice, HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.addNotice(notice);
        ModelAndView andView = new ModelAndView();
        andView.setViewName("/userLogin");
        return "redirect:/findAllNoticeByPage";
    }
    //删除通过id
    @RequestMapping("/deleteNoticeById")
    public String deleteNoticeById(@RequestParam("noticeid") int id){
        service.deleteNoticeById(id);
        return "redirect:/findAllNoticeByPage";
    }
    //查询所有公告
    @RequestMapping("/findAllNoticeByPage")
    public ModelAndView findAllUserByPage(@RequestParam(value = "pageNum",defaultValue = "1") int pageNum){
        PageHelper.startPage(pageNum,5);
        List<Notice> noticeList = service.findAllNoticeByPage();
        PageInfo<Notice> pageInfo = new PageInfo<Notice>(noticeList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("noticeManage");
        return modelAndView;
    }
    //修改
    @RequestMapping("/updateNotice")
    public String updateNotice(@Valid Notice notice){
        System.out.println(notice.toString());
        service.updateNotice(notice);
        return "redirect:/findAllNoticeByPage";
    }


}
