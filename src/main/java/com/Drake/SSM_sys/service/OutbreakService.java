package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Outbreak;
import com.Drake.SSM_sys.dao.OutbreakMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OutbreakService {
    @Autowired
    private OutbreakMapper dao;
    public void addOutbreak(Outbreak outbreak) {
        dao.addOutbreak(outbreak);
    }

    public void deleteOutbreakById(int id) {
        dao.deleteOutbreakById(id);
    }

    public List<Outbreak> findAllOutbreakByPage() {
        return dao.findAllOutbreakByPage();
    }

    public void updateOutbreak(Outbreak outbreak) {
        dao.updateOutbreak(outbreak);
    }

    public Outbreak findOutbreakById(int id) {
        return dao.findOutbreakById(id);
    }
}
