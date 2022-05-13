package com.Drake.SSM_sys.bean;


import java.sql.Date;

public class Notice {

  private int noticeid;
  private String content;
  private String date;
  private String publisher;

  public Notice() {
  }

  public Notice(int noticeid, String content, String date, String publisher) {
    this.noticeid = noticeid;
    this.content = content;
    this.date = date;
    this.publisher = publisher;
  }

  public int getNoticeid() {
    return noticeid;
  }

  public void setNoticeid(int noticeid) {
    this.noticeid = noticeid;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public String getPublisher() {
    return publisher;
  }

  public void setPublisher(String publisher) {
    this.publisher = publisher;
  }

  @Override
  public String toString() {
    return "Notice{" +
            "noticeid=" + noticeid +
            ", content='" + content + '\'' +
            ", date=" + date +
            ", publisher='" + publisher + '\'' +
            '}';
  }
}
