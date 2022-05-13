package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Admin;

import java.util.List;

public interface AdminMapper {

    void addAdmin(Admin admin);

    void deleteAdminById(int id);

    List<Admin> findAllAdminByPage();

    void updateAdmin(Admin admin);

    Admin findAdminById(int aid);
}
