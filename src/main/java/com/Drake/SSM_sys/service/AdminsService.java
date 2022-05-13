package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Admin;
import com.Drake.SSM_sys.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Drake.
 * Date: 2022/5/6
 * Time: 23:55
 * Email: drake816@163.com
 * Tip: Practice makes prefect!
 **/
@Service
public class AdminsService {
    @Autowired
    private AdminMapper dao;
    public void addAdmin(Admin admin) {
        dao.addAdmin(admin);
    }

    public void deleteAdminById(int id) {
        dao.deleteAdminById(id);
    }

    public List<Admin> findAllAdminByPage() {
        return  dao.findAllAdminByPage();
    }

    public void updateAdmin(Admin admin) {
        dao.updateAdmin(admin);
    }

    public Admin findAdminById(int aid) {
        return dao.findAdminById(aid);
    }
}
