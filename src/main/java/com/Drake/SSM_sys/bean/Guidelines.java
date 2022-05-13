package com.Drake.SSM_sys.bean;

/**
 * Created by Drake.
 * Date: 2022/5/7
 * Time: 17:43
 * Email: drake816@163.com
 * Tip: Practice makes prefect!
 **/
public class Guidelines {
    private int gid;
    private String content;

    public Guidelines() {
    }

    public Guidelines(int gid, String content) {
        this.gid = gid;
        this.content = content;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Guidelines{" +
                "gid=" + gid +
                ", content='" + content + '\'' +
                '}';
    }
}
