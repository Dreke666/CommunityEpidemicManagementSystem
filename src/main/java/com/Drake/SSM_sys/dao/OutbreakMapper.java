package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Outbreak;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OutbreakMapper {
    void addOutbreak(Outbreak outbreak);

    void deleteOutbreakById(int id);

    List<Outbreak> findAllOutbreakByPage();

    void updateOutbreak(Outbreak outbreak);

    Outbreak findOutbreakById(int id);
}
