package me.aowu.dao;

import me.aowu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public interface UserDao{

    List<User> findAll();

    User findByUsernameAndPassword(String username,String password);

    User findByUsername(String username);

    int insertUser(String username, String password, String email, String birthDay, String currLocation);

    int delUser(String username);
    int resetPwd(String username);
    int changePwd(String username,String newPwd);
    String findPwdByUsername(String username);
}
