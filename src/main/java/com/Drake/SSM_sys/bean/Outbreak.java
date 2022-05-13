package com.Drake.SSM_sys.bean;


public class Outbreak {

  private int outbreakid;
  private String localtion;
  private String risklevel;
  private String content;

  public Outbreak() {
  }

  public Outbreak(int outbreakid, String localtion, String risklevel, String content) {
    this.outbreakid = outbreakid;
    this.localtion = localtion;
    this.risklevel = risklevel;
    this.content = content;
  }

  public int getOutbreakid() {
    return outbreakid;
  }

  public void setOutbreakid(int outbreakid) {
    this.outbreakid = outbreakid;
  }

  public String getLocaltion() {
    return localtion;
  }

  public void setLocaltion(String localtion) {
    this.localtion = localtion;
  }

  public String getRisklevel() {
    return risklevel;
  }

  public void setRisklevel(String risklevel) {
    this.risklevel = risklevel;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  @Override
  public String toString() {
    return "Outbreak{" +
            "outbreakid=" + outbreakid +
            ", localtion='" + localtion + '\'' +
            ", risklevel='" + risklevel + '\'' +
            ", content='" + content + '\'' +
            '}';
  }
}
