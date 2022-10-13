package me.aowu.service.impl;

import me.aowu.dao.CommentDao;
import me.aowu.dao.impl.CommentDaoImpl;
import me.aowu.domain.Comment;
import me.aowu.service.CommentService;

import java.util.List;

public class CommentServiceImpl implements CommentService {


    private CommentDao commentDao;
    public void setCommentDao(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    @Override
    public List<Comment> list() {
        List<Comment> commentList = commentDao.list();
        return commentList;
    }

    @Override
    public int delComment(String cid) {

        int update=commentDao.delCommentById(cid);
        return update;
    }


}
