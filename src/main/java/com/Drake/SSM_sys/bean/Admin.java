package com.Drake.SSM_sys.bean;


public class Admin {

  private int aid;
  private String username;
  private String password;

  public Admin() {
  }

  public Admin(int aid, String username, String password) {
    this.aid = aid;
    this.username = username;
    this.password = password;
  }

  public int getAid() {
    return aid;
  }

  public void setAid(int aid) {
    this.aid = aid;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "Admin{" +
            "aid=" + aid +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            '}';
  }
}
