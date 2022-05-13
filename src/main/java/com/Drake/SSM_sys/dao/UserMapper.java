package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.User;

import java.util.List;

public interface UserMapper {
     void userAdd(User user);

    void deleteUserById(int uid);

    List<User> findAllUserByPage();

    void updateUser(User user);

    User findUserById(int uid);

    List<User> findAllUserByName(String username);
}
