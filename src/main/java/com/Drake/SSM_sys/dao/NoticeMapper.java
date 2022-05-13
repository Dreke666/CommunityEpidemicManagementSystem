package com.Drake.SSM_sys.dao;

import com.Drake.SSM_sys.bean.Notice;

import java.util.List;

public interface NoticeMapper {
    public void addNotice(Notice notice);

    void deleteNoticeById(int id);

    List<Notice> findAllNoticeByPage();

    void updateNotice(Notice notice);

    Notice findNoticeById(int noticeid);
}
