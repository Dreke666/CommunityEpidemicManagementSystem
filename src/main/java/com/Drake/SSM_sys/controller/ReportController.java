package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.Notice;
import com.Drake.SSM_sys.bean.Report;
import com.Drake.SSM_sys.service.NoticeService;
import com.Drake.SSM_sys.service.ReportService;
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
public class ReportController {
    @Autowired
    private ReportService service;
    //跳转正常报备
    @RequestMapping("/toReportPage")
    public ModelAndView toReportPage(@Valid Report report, HttpServletResponse response, HttpServletRequest request,@RequestParam("username") String username){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
//        service.addReport(report);
        ModelAndView andView = new ModelAndView();
        andView.addObject("username",username);
        andView.setViewName("/userReport");
        return andView;
    }
    //高风险报备
    @RequestMapping("/toHeightLevelReportPage")
    public String toHeightLevelReportPage(@Valid Report report, HttpServletResponse response, HttpServletRequest request,@RequestParam("username") String username){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.addReport(report);
        return "redirect:/findAllMsgToIndex";
    }
    //高风险报备调转
    @RequestMapping("/toHeightLevelReport")
    public ModelAndView addReport( HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        String username="null";
        ModelAndView andView = new ModelAndView();
        andView.addObject("username",username);
        andView.setViewName("/HeightLevelReport");
        return andView;
    }
    //正常报备
    @RequestMapping("/doReport")
    public String  doReport(@Valid Report report, HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.doReport(report);
        return "redirect:/findAllMsgToIndex";
    }
    //删除通过id
    @RequestMapping("/deleteReportById")
    public ModelAndView deleteReportById(@RequestParam("reportid") int id){
        service.deleteReportById(id);
        ModelAndView modelAndView = new ModelAndView();
        return modelAndView;
    }
    //查询所有报备
    @RequestMapping("/findAllReportByPage")
    public ModelAndView findAllUserByPage(@RequestParam(value = "pageNum",defaultValue = "1") int pageNum){
        PageHelper.startPage(pageNum,5);
        List<Report> reportList = service.findAllReportByPage();
        PageInfo<Report> pageInfo = new PageInfo<Report>(reportList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("reportManage");
        return modelAndView;
    }
    //跳转修改页面
    @RequestMapping("/toUpdateReportPage")
    public ModelAndView updateReport(@RequestParam("reportid") int reportid){
        Report report = service.findReportById(reportid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("report",report);
        modelAndView.setViewName("updateReportPage");
        return modelAndView;
    }
    //修改
    @RequestMapping("/updateReport")
    public String updateReport(@Valid Report report, HttpServletResponse response, HttpServletRequest request,@RequestParam("username") String username){
   /*     System.out.printf( report.toString());*/
        report.setusername(username);
        service.addReport(report);
        return "redirect:/findAllReportByPage";
    }

    //跳转添加报备信息
    @RequestMapping("/toAddReportPage")
    public ModelAndView toAddReportPage(Report report){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addReportPage");
        return modelAndView;
    }

    //添加报备信息
    @RequestMapping("/addReport")
    public String addReport(@Valid Report report){
        service.addReport(report);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return "redirect:/findAllReportByPage";
    }

}
