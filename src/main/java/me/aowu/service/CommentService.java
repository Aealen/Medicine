package me.aowu.service;

import me.aowu.domain.Comment;

import java.util.List;

public interface CommentService {
    List<Comment> list();

    int delComment(String cid);
}
