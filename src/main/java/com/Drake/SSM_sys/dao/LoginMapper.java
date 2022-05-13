package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Admin;
import com.Drake.SSM_sys.bean.User;

public interface LoginMapper {


     User userLogin(User user);

     Admin adminLogin(Admin admin);
}
