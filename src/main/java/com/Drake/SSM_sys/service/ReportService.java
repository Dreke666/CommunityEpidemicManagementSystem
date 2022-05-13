package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Notice;
import com.Drake.SSM_sys.bean.Report;
import com.Drake.SSM_sys.dao.NoticeMapper;
import com.Drake.SSM_sys.dao.ReportMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReportService {
    @Autowired
    private ReportMapper dao;
    public void addReport(Report report) {
        dao.addReport(report);
    }

    public void deleteReportById(int id) {
        dao.deleteReportById(id);
    }

    public List<Report> findAllReportByPage() {
       return dao.findAllReportByPage();
    }

    public void updateReport(Report report) {
        dao.updateReport(report);
    }

    public void doReport(Report report) {
        dao.doReport(report);
    }

    public Report findReportById(int reportid) {
        return  dao.findReportById(reportid);
    }
}
