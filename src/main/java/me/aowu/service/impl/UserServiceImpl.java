package me.aowu.service.impl;

import me.aowu.dao.UserDao;
import me.aowu.domain.User;
import me.aowu.service.UserService;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {


    private UserDao userDao;
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }


    @Override
    public List<User> list() {
        List<User> userList = userDao.findAll();
        return userList;
    }

    @Override
    public User login(String username, String password) {
        User user;
        try {
            user = userDao.findByUsernameAndPassword(username, password);

        }catch (EmptyResultDataAccessException e){
            return null;
        }
        return user;
    }

    @Override
    public int addUser(String username, String password, String email, String birthDay, String currLocation) {
        if (username=="") return 3;//用户名为空
        //先验证用户名是否存在
        try {
            if (userDao.findByUsername(username)!=null) return 1;//"用户已存在!!";
        }catch (EmptyResultDataAccessException e){}
        //插入数据
        int update = userDao.insertUser(username, password, email, birthDay, currLocation);
        if (update==0) return 2;//"添加用户失败:未知错误(请检查输入情况后向管理员反应)";
        return 0;//"注册成功!!";
    }

    @Override
    public int delUser(String username) {
        int update=userDao.delUser(username);
        return update;
    }

    @Override
    public int reset(String username) {
        int reset = userDao.resetPwd(username);
        return reset;
    }

    @Override
    public int changePwd(String username,String oldPwd, String newPwd) {

        //if (userDao.findPwdByUsername(username) != oldPwd) return -1;//输入原始密码与原密码不同


        int i = userDao.changePwd(username, newPwd);
        return i;//-1  原密码错误 0 没改 1改了
    }
}
