package me.aowu.dao.impl;

import me.aowu.dao.UserDao;
import me.aowu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.DataClassRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {


    private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<User> findAll() {
        List<User> userList = jdbcTemplate.query("select * from user", new BeanPropertyRowMapper<User>(User.class));
        return userList;
    }

    @Override
    public User findByUsernameAndPassword(String username,String password) {
        User user = jdbcTemplate.queryForObject("select * from user where username=? and password=?", new BeanPropertyRowMapper<User>(User.class), username, password);
        return user;
    }

    @Override
    public User findByUsername(String username) {
        User user = jdbcTemplate.queryForObject("select * from user where username=?", new BeanPropertyRowMapper<User>(User.class), username);
        return user;
    }

    @Override
    public int insertUser(String username, String password, String email, String birthDay, String currLocation) {
        int update=jdbcTemplate.update("insert into user (uid,username,password,email,birth_day,curr_location) value(?,?,?,?,?,?)",null,username,password,email,birthDay,currLocation);
        return update;
    }


    @Override
    public int delUser(String username) {
        int del=jdbcTemplate.update("delete from user where username=?",username);
        return del;
    }

    @Override
    public int resetPwd(String username) {
        //int update = jdbcTemplate.update("update user set ?=? where username=?", column, var, username);
        //未知问题 以上代码用不了
        int update = jdbcTemplate.update("update user set password=123456 where username=?", username);
        return update;
    }

    @Override
    public int changePwd(String username, String newPwd) {
        int update = jdbcTemplate.update("update user set password=? where username = ?", newPwd, username);
        return update;
    }

    @Override
    public String findPwdByUsername(String username) {
        User user = jdbcTemplate.queryForObject("select * from user where username=?", new BeanPropertyRowMapper<User>(User.class), username);
        return user.getPassword();
    }
}
