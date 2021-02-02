package com.kantv.ui.bean;

import java.io.Serializable;

public class MovieBean implements Serializable {
    String allpart;
    String changed;
    String curpart;
    String descript;
    String msg;
    String photo;
    String score;
    String seo;
    String title;
    String totalcount;
    String url;
    String videoTag;

    public MovieBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.title = str;
        this.score = str2;
        this.photo = str3;
        this.descript = str4;
        this.totalcount = str5;
        this.curpart = str6;
        this.changed = str7;
        this.allpart = str8;
        this.msg = str9;
        this.seo = str10;
        this.url = str11;
        this.videoTag = str12;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getScore() {
        return this.score;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String str) {
        this.photo = str;
    }

    public String getDescript() {
        return this.descript;
    }

    public void setDescript(String str) {
        this.descript = str;
    }

    public String getTotalcount() {
        return this.totalcount;
    }

    public void setTotalcount(String str) {
        this.totalcount = str;
    }

    public String getCurpart() {
        return this.curpart;
    }

    public void setCurpart(String str) {
        this.curpart = str;
    }

    public String getChanged() {
        return this.changed;
    }

    public void setChanged(String str) {
        this.changed = str;
    }

    public String getAllpart() {
        return this.allpart;
    }

    public void setAllpart(String str) {
        this.allpart = str;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String getSeo() {
        return this.seo;
    }

    public void setSeo(String str) {
        this.seo = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getVideoTag() {
        return this.videoTag;
    }

    public void setVideoTag(String str) {
        this.videoTag = str;
    }
}
