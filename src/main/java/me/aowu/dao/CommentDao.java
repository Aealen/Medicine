package me.aowu.dao;

import me.aowu.domain.Comment;

import java.util.List;

public interface CommentDao {
    List<Comment> list();

    int delCommentById(String cid);

    int addComment(String context,String writer,String email,String time);
}
