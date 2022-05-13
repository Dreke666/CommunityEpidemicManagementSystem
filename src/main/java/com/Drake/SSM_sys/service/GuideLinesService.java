package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Guidelines;
import com.Drake.SSM_sys.dao.GuideLinesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.Action;
import java.util.List;

/**
 * Created by Drake.
 * Date: 2022/5/7
 * Time: 17:48
 * Email: drake816@163.com
 * Tip: Practice makes prefect!
 **/
@Service
public class GuideLinesService {
    @Autowired
    private GuideLinesMapper dao;
    public Guidelines findAllGuidelinesByPage() {
        return dao.findAllGuidelinesByPage();
    }

    public void updateGuideLines(Guidelines guidelines) {
        dao.updateGuideLines(guidelines);
    }

    public Guidelines findGuidelines() {
        return  dao.findGuidelines();
    }
}
