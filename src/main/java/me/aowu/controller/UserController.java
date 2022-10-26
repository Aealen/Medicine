package me.aowu.controller;


import me.aowu.domain.User;
import me.aowu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ConcurrentModel;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@RequestMapping("user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("login")
    public ModelAndView login(String username, String password, HttpSession session){
        User user = userService.login(username, password);
        ModelAndView modelAndView = new ModelAndView();
        if (user!=null){
            session.setAttribute("user",user);
            session.setAttribute("userName",user.getUsername());
            modelAndView.setViewName("main");

            //return "redirect:/user/list";
        }else {
            modelAndView.setViewName("login");
            //return "redirect:/pages/login.jsp";
        }
        return modelAndView;
    }


    @RequestMapping("regist")
    public ModelAndView regist(String username, String password, String email, String birthDay, String currLocation){
        int regRet = userService.addUser(username, password,email,birthDay,currLocation);
        ModelAndView modelAndView=new ModelAndView();
        String showStatus="";//报错提示

        switch (regRet){
            case 0:
                showStatus="";
                modelAndView.setViewName("login");
                break;
            case 1:
                showStatus = "用户名已存在!!";
                modelAndView.setViewName("regist");
                break;
            case 2:
                showStatus = "发生未知错误,请检查输入无误后联系系统管理员!";
                modelAndView.setViewName("regist");
                break;
            case 3:
                showStatus = "用户名不能为空!!";
                modelAndView.setViewName("regist");

        }

        modelAndView.addObject("showstatus",showStatus);

        return modelAndView;
    }

    @RequestMapping("addUser")
    public ModelAndView addUser(String username, String password, String email, String birthDay, String currLocation){
        int regRet = userService.addUser(username, password,email,birthDay,currLocation);
        ModelAndView modelAndView=new ModelAndView();
        String showStatus="";//报错提示

        switch (regRet){
            case 0:
                showStatus="";
                modelAndView.setViewName("user-add");
                break;
            case 1:
                showStatus = "用户名已存在!!";
                modelAndView.setViewName("user-add");
                break;
            case 2:
                showStatus = "发生未知错误,请检查输入无误后联系系统管理员!";
                modelAndView.setViewName("user-add");
                break;
            case 3:
                showStatus = "用户名不能为空!!";
                modelAndView.setViewName("user-add");

        }

        modelAndView.addObject("showstatus",showStatus);

        return modelAndView;
    }


    @RequestMapping("list")
    public ModelAndView list(){

        ModelAndView modelAndView=new ModelAndView();

        List<User> userList = userService.list();

        modelAndView.addObject("userlist",userList);

        modelAndView.setViewName("user-list");

        return modelAndView;
    }

    @RequestMapping("changePwd")
    public ModelAndView changePwd(String originPassword,String newPassword,HttpSession session){
        String username= (String) session.getAttribute("userName");

        ModelAndView modelAndView=new ModelAndView();
        String showStatus="修改失败";//报错提示
        int ret=userService.changePwd(username,originPassword,newPassword);

//        switch (ret){
//            case -1:
//                showStatus="原始密码错误!!";
//                modelAndView.setViewName("changepwd");
//                break;
//            case 1:
//                showStatus="修改成功";
//                modelAndView.setViewName("login");
//                break;
//        }
        if (ret!=0){
            showStatus="修改成功";
            modelAndView.setViewName("login");
        }else {
            showStatus="修改失败";
            modelAndView.setViewName("changepwd");
        }

        modelAndView.addObject("showStatus",showStatus);

        return modelAndView;
    }





}
