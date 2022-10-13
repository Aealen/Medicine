package me.aowu.dao.impl;

import me.aowu.dao.CommentDao;
import me.aowu.domain.Comment;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class CommentDaoImpl implements CommentDao {

    private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Comment> list() {
        List<Comment> commentList = jdbcTemplate.query("select * from comment", new BeanPropertyRowMapper<Comment>(Comment.class));
        return commentList;
    }

    @Override
    public int delCommentById(String cid) {
        int update = jdbcTemplate.update("delete from comment where cid=?", cid);
        return update;
    }


}
