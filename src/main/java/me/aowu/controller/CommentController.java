package me.aowu.controller;


import com.alibaba.druid.support.json.JSONUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import me.aowu.domain.Comment;
import me.aowu.domain.User;
import me.aowu.service.CommentService;
import me.aowu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RequestMapping("comment")
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;


    @RequestMapping(value = "add",method= RequestMethod.POST)
    public ModelAndView addcmt(String content,String writer,String email){
        System.out.println("Get!!!!");
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(date);
        commentService.addComment(content,writer,email,time);
        List<Comment> commentList = commentService.list();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("comment-page");
        modelAndView.addObject("commentlist",commentList);
        return modelAndView;
    }

    @RequestMapping("list")
    public ModelAndView list(){
        List<Comment> commentList = commentService.list();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("comment-list");
        modelAndView.addObject("commentlist",commentList);
        return modelAndView;
    }

    @RequestMapping("list2")
    public ModelAndView list2(){
        List<Comment> commentList = commentService.list();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("comment-list");
        modelAndView.addObject("commentlist",commentList);
        return modelAndView;
    }


}
