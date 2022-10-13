package me.aowu.controller;


import me.aowu.domain.Comment;
import me.aowu.domain.User;
import me.aowu.service.CommentService;
import me.aowu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("comment")
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;


    @RequestMapping("list")
    public ModelAndView list(){

        List<Comment> commentList = commentService.list();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("comment-list");
        modelAndView.addObject("commentlist",commentList);
        return modelAndView;
    }
}
