package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Report;

import java.util.List;

public interface ReportMapper {
    void addReport(Report report);

    void deleteReportById(int id);

    List<Report> findAllReportByPage();

    void updateReport(Report report);

    void doReport(Report report);

    Report findReportById(int reportid);
}
