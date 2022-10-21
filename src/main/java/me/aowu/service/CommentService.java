package me.aowu.service;

import me.aowu.domain.Comment;

import java.util.List;

public interface CommentService {
    List<Comment> list();

    int delComment(String cid);

    int addComment(String context,String writer,String email,String time);

}
