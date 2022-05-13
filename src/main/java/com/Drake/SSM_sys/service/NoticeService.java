package com.Drake.SSM_sys.service;

import com.Drake.SSM_sys.bean.Notice;
import com.Drake.SSM_sys.dao.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {
    @Autowired
    private NoticeMapper dao;
    public void addNotice(Notice notice) {
        dao.addNotice(notice);
    }

    public void deleteNoticeById(int id) {
        dao.deleteNoticeById(id);
    }

    public List<Notice> findAllNoticeByPage() {
       return dao.findAllNoticeByPage();
    }

    public void updateNotice(Notice notice) {
        dao.updateNotice(notice);
    }

    public Notice findNoticeById(int noticeid) {
     return    dao.findNoticeById(noticeid);
    }
}
