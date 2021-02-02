package com.kantv.ui.bean;

public class MovieHitroyBeanJson {
    private String content;
    private String name;
    private String photo;
    private String seo;
    private String tid;

    public MovieHitroyBeanJson(String str, String str2, String str3, String str4, String str5) {
        this.tid = str;
        this.seo = str2;
        this.name = str3;
        this.content = str4;
        this.photo = str5;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String str) {
        this.photo = str;
    }

    public String getTid() {
        return this.tid;
    }

    public void setTid(String str) {
        this.tid = str;
    }

    public String getSeo() {
        return this.seo;
    }

    public void setSeo(String str) {
        this.seo = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }
}
