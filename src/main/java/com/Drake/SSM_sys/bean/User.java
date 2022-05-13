package com.Drake.SSM_sys.bean;


public class User {

  private int uid;
  private String username;
  private String password;
  private String sex;
  private int age;
  private String roomid;
  private String identity;
  private String phone;

  public User() {
  }

  public User(int uid, String username, String password, String sex, int age, String roomid, String identity, String phone) {
    this.uid = uid;
    this.username = username;
    this.password = password;
    this.sex = sex;
    this.age = age;
    this.roomid = roomid;
    this.identity = identity;
    this.phone = phone;
  }

  public int getUid() {
    return uid;
  }

  public void setUid(int uid) {
    this.uid = uid;
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

  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public String getRoomid() {
    return roomid;
  }

  public void setRoomid(String roomid) {
    this.roomid = roomid;
  }

  public String getIdentity() {
    return identity;
  }

  public void setIdentity(String identity) {
    this.identity = identity;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  @Override
  public String toString() {
    return "User{" +
            "uid=" + uid +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", sex='" + sex + '\'' +
            ", age=" + age +
            ", roomid='" + roomid + '\'' +
            ", identity='" + identity + '\'' +
            ", phone='" + phone + '\'' +
            '}';
  }
}
