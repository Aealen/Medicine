package me.aowu.service;

import me.aowu.domain.User;

import java.util.List;

public interface UserService {
    List<User> list();
    User login(String username,String password);
    int addUser(String username, String password, String email, String birthDay, String currLocation);
    int delUser(String username);
    int reset(String username);
    int changePwd(String username,String oldPwd,String newPwd);
}
