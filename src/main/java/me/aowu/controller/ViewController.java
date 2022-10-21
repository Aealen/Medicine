package me.aowu.controller;


import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("view")
public class ViewController{

    @RequestMapping("home")
    public String home(){
        return "redirect:/index.jsp";
    }
    @RequestMapping("cmt")
    public String cmt(){
        return "redirect:/pages/comment-page.jsp";
    }

}
