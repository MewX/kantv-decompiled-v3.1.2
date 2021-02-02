package com.kantv.ui.bean;

import com.google.gson.annotations.Expose;

public class UserInfoBean {
    private long _id;
    private String aboutme;
    private int access;
    private Object areas;
    private String background;
    private String birthday;
    private String cname;
    private String code;
    private int created;
    private String device;
    private int diffexp;
    private int exp;
    private int experience;
    private int gender;
    @Expose
    private HometownBean hometowns;
    private String ip;
    private String iso_code;
    private int level;
    private int login;
    private String mail;
    private String mobile;
    private int modify;
    private int mysql;
    private String name;
    private int nextExp;
    private int nextLevel;
    private String openid;
    private String photo;
    private int role;
    private int status;
    private long today_id;
    private long uid;
    private int verify;

    public static class AreaBean {
        private String country = "";

        public String getCountry() {
            return this.country;
        }

        public void setCountry(String str) {
            this.country = str;
        }
    }

    public static class HometownBean {
        private String city;
        private String city_code;
        private String country;
        private String country_code;
        private String province;
        private String province_code;

        public HometownBean() {
            String str = "";
            this.country = str;
            this.province = str;
            this.city = str;
            this.country_code = str;
            this.province_code = str;
            this.city_code = str;
        }

        public String getCountry_code() {
            return this.country_code;
        }

        public void setCountry_code(String str) {
            this.country_code = str;
        }

        public String getProvince_code() {
            return this.province_code;
        }

        public void setProvince_code(String str) {
            this.province_code = str;
        }

        public String getCity_code() {
            return this.city_code;
        }

        public void setCity_code(String str) {
            this.city_code = str;
        }

        public String getCountry() {
            return this.country;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public String getProvince() {
            return this.province;
        }

        public void setProvince(String str) {
            this.province = str;
        }

        public String getCity() {
            return this.city;
        }

        public void setCity(String str) {
            this.city = str;
        }
    }

    public UserInfoBean() {
        String str = "";
        this.openid = str;
        this.birthday = str;
        this.aboutme = str;
        this.name = str;
        this.mail = str;
        this.mobile = str;
        this.device = str;
        this.code = str;
        this.photo = str;
        this.cname = str;
        this.ip = str;
        this.background = str;
        this.iso_code = str;
    }

    public long get_id() {
        return this._id;
    }

    public void set_id(long j) {
        this._id = j;
    }

    public String getOpenid() {
        return this.openid;
    }

    public void setOpenid(String str) {
        this.openid = str;
    }

    public int getExperience() {
        return this.experience;
    }

    public void setExperience(int i) {
        this.experience = i;
    }

    public int getGender() {
        return this.gender;
    }

    public void setGender(int i) {
        this.gender = i;
    }

    public Object getAreas() {
        return this.areas;
    }

    public void setAreas(Object obj) {
        this.areas = obj;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public String getAboutme() {
        return this.aboutme;
    }

    public void setAboutme(String str) {
        this.aboutme = str;
    }

    public int getModify() {
        return this.modify;
    }

    public void setModify(int i) {
        this.modify = i;
    }

    public int getMysql() {
        return this.mysql;
    }

    public void setMysql(int i) {
        this.mysql = i;
    }

    public long getUid() {
        return this.uid;
    }

    public void setUid(long j) {
        this.uid = j;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getMail() {
        return this.mail;
    }

    public void setMail(String str) {
        this.mail = str;
    }

    public int getCreated() {
        return this.created;
    }

    public void setCreated(int i) {
        this.created = i;
    }

    public int getAccess() {
        return this.access;
    }

    public void setAccess(int i) {
        this.access = i;
    }

    public int getLogin() {
        return this.login;
    }

    public void setLogin(int i) {
        this.login = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public String getDevice() {
        return this.device;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public int getRole() {
        return this.role;
    }

    public void setRole(int i) {
        this.role = i;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String str) {
        this.photo = str;
    }

    public long getToday_id() {
        return this.today_id;
    }

    public void setToday_id(long j) {
        this.today_id = j;
    }

    public String getCname() {
        return this.cname;
    }

    public void setCname(String str) {
        this.cname = str;
    }

    public int getVerify() {
        return this.verify;
    }

    public void setVerify(int i) {
        this.verify = i;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public int getNextLevel() {
        return this.nextLevel;
    }

    public void setNextLevel(int i) {
        this.nextLevel = i;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int i) {
        this.exp = i;
    }

    public int getNextExp() {
        return this.nextExp;
    }

    public void setNextExp(int i) {
        this.nextExp = i;
    }

    public int getDiffexp() {
        return this.diffexp;
    }

    public void setDiffexp(int i) {
        this.diffexp = i;
    }

    public String getBackground() {
        return this.background;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public HometownBean getHometown() {
        return this.hometowns;
    }

    public void setHometown(HometownBean hometownBean) {
        this.hometowns = hometownBean;
    }

    public String getIso_code() {
        return this.iso_code;
    }

    public void setIso_code(String str) {
        this.iso_code = str;
    }
}
