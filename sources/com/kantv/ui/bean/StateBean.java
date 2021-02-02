package com.kantv.ui.bean;

public class StateBean {
    private String area;
    private int img;
    private String imgUrl;
    private String iso_code;
    private String name;

    public int getImg() {
        return this.img;
    }

    public void setImg(int i) {
        this.img = i;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public String getIsoCode() {
        return this.iso_code;
    }

    public void setIsoCode(String str) {
        this.iso_code = str;
    }

    public String getArea() {
        return this.area;
    }

    public void setArea(String str) {
        this.area = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public StateBean(int i, String str, String str2) {
        this.img = i;
        this.area = str;
        this.name = str2;
    }

    public StateBean(String str, String str2, String str3, String str4) {
        this.imgUrl = str;
        this.area = str2;
        this.name = str3;
        this.iso_code = str4;
    }
}
