package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Guidelines;

import java.util.List;

public interface GuideLinesMapper {
    Guidelines findAllGuidelinesByPage();

    void updateGuideLines(Guidelines guidelines);

    Guidelines findGuidelines();
}
