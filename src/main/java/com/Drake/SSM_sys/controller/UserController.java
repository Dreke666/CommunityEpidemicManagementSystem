package com.Drake.SSM_sys.controller;

import com.Drake.SSM_sys.bean.User;
import com.Drake.SSM_sys.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.jdbc.Null;
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
public class UserController {
    @Autowired
    UserService service;
    //主页
    @RequestMapping("/index")
    public ModelAndView login(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("userLogin");
        return andView;
    }
    //用户注册
    @RequestMapping("/toRegister")
    public ModelAndView toRegister(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("/register");
        return andView;
    }
    @RequestMapping("/doRegister")
    public ModelAndView doRegister(@Valid User user, HttpServletResponse response, HttpServletRequest request){
        System.out.printf( user.toString());
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.userAdd(user);
        ModelAndView andView = new ModelAndView();
        andView.setViewName("/userLogin");
        return andView;
    }
    //跳转添加用户
    @RequestMapping("/toAddUserPage")
    public ModelAndView toAddUserPage(){
        ModelAndView andView = new ModelAndView();
        andView.setViewName("/addUser");
        return andView;
    }

    @RequestMapping("/doAddUser")
    public String doAddUser(@Valid User user, HttpServletResponse response, HttpServletRequest request){
        response.setContentType("text/html;charset=gb2312");
        response.setCharacterEncoding("UTF-8");
        service.userAdd(user);
        return   "redirect:/findAllUserByPage";
    }

    //删除通过id
    @RequestMapping("/deleteUserById")
    public String deleteUserById(@RequestParam("uid") int uid){
        service.deleteUserById(uid);
        return "redirect:/findAllUserByPage";
    }
    //查询所有用户
    @RequestMapping("/findAllUserByPage")
    public ModelAndView findAllUserByPage(@RequestParam(value = "pagenum",defaultValue = "1") int pageNum,@RequestParam(value = "username",defaultValue = "")String username){
        PageHelper.startPage(pageNum,5);
        List<User> userList = service.findAllUserByPage();
        PageInfo<User> pageInfo = new PageInfo<User>(userList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("userManage");
        return modelAndView;
    }
    //按用户名搜索
    @RequestMapping("/findAllUserByName")
    public ModelAndView findAllUserByName(@RequestParam(value = "username",defaultValue = "")String username){
        PageHelper.startPage(1,5);
        List<User> userList = service.findAllUserByName(username);
        PageInfo<User> pageInfo = new PageInfo<User>(userList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("userManage");
        return modelAndView;
    }
    //修改
    @RequestMapping("/toUpdateUserPage")
    public ModelAndView toUpdateUserPage(@RequestParam("uid") int uid){
        User user = service.findUserById(uid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("updateUserPage");
        return modelAndView;
    }
    //执行修改
    @RequestMapping("/updateUser")
    public String updateUser(User user){
        service.updateUser(user);
        return "redirect:/findAllUserByPage";
    }


}
