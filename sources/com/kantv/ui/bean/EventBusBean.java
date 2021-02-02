package com.kantv.ui.bean;

public class EventBusBean {
    String classname;
    String data;
    String type;

    public String getClassname() {
        return this.classname;
    }

    public void setClassname(String str) {
        this.classname = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    public EventBusBean(String str, String str2, String str3) {
        this.classname = str;
        this.type = str2;
        this.data = str3;
    }
}
