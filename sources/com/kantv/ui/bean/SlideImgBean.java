package com.kantv.ui.bean;

public class SlideImgBean {
    String _id;
    String background;
    String desc;
    String opentype;
    String photo;
    String seo;
    String title;
    String tvid;
    String url;

    public String get_id() {
        return this._id;
    }

    public void set_id(String str) {
        this._id = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getTvid() {
        return this.tvid;
    }

    public void setTvid(String str) {
        this.tvid = str;
    }

    public String getBackground() {
        return this.background;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String str) {
        this.photo = str;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public String getSeo() {
        return this.seo;
    }

    public void setSeo(String str) {
        this.seo = str;
    }

    public String getOpentype() {
        return this.opentype;
    }

    public void setOpentype(String str) {
        this.opentype = str;
    }

    public SlideImgBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this._id = str;
        this.title = str2;
        this.url = str3;
        this.background = str4;
        this.photo = str5;
        this.desc = str6;
        this.seo = str7;
        this.tvid = str8;
        this.opentype = str9;
    }
}
