package me.aowu.controller;

import me.aowu.service.CommentService;
import me.aowu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("ajax")
public class AjaxController {

    @Autowired
    private UserService userService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("delUser")
    public String delUser(String username){
        String msg="del fail";

        int update=userService.delUser(username);
        if (update!=0) msg="ok";

        return msg;
    }


    @RequestMapping("resetPwd")
    public String resetPwd(String username){
        String msg="reset fail";

        int update=userService.reset(username);
        if (update!=0) msg="ok";

        return msg;
    }



    @RequestMapping("delComment")
    public String delComment(String cid){
        String msg="del fail";

        int update=commentService.delComment(cid);
        if (update!=0) msg="ok";

        return msg;
    }


}
