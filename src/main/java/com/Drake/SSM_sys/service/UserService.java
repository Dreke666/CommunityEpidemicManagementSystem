package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.User;
import com.Drake.SSM_sys.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper dao;
    public void userAdd(User user) {
        dao.userAdd(user);
    }

    public void deleteUserById(int id) {
        dao.deleteUserById(id);
    }

    public List<User> findAllUserByPage() {
      return   dao.findAllUserByPage();
    }

    public void updateUser(User user) {
        dao.updateUser(user);
    }

    public User findUserById(int uid) {
     return   dao.findUserById(uid);
    }

    public List<User> findAllUserByName(String username) {
       return dao.findAllUserByName(username);
    }
}
