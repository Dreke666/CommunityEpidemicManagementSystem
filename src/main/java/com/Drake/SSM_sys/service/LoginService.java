package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Admin;
import com.Drake.SSM_sys.bean.User;
import com.Drake.SSM_sys.dao.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    LoginMapper dao;
    public User userLogin(User user) {
        return dao.userLogin(user);
    }

    public Admin adminLogin(Admin admin) {
        return dao.adminLogin(admin);
    }
}
