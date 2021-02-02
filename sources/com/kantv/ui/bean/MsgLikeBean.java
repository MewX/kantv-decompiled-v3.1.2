package com.kantv.ui.bean;

public class MsgLikeBean {
    private long _id;
    private long cid;
    private String comment;
    private int created;
    private int like;
    private CommentUserInfo mCommentUserInfo;
    private VideoDetail mVideoInfo;
    private long pid;
    private String sourceCommnet;
    private long tvid;
    private long uid;

    public class CommentUserInfo {
        private int access;
        private String ccode;
        private String cname;
        private String code;
        private int created;
        private String device;
        private int experience;
        private int experience_copy;
        private int hide;
        private String init;
        private String ip;
        private int login;
        private String mail;
        private String mobile;
        private String name;
        private String password;
        private String photo = "";
        private int role;
        private int status;
        private long today_id;
        private long uid;
        private int verify;

        public CommentUserInfo() {
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

        public String getPassword() {
            return this.password;
        }

        public void setPassword(String str) {
            this.password = str;
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

        public String getInit() {
            return this.init;
        }

        public void setInit(String str) {
            this.init = str;
        }

        public String getCcode() {
            return this.ccode;
        }

        public void setCcode(String str) {
            this.ccode = str;
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

        public int getExperience() {
            return this.experience;
        }

        public void setExperience(int i) {
            this.experience = i;
        }

        public String getIp() {
            return this.ip;
        }

        public void setIp(String str) {
            this.ip = str;
        }

        public int getExperience_copy() {
            return this.experience_copy;
        }

        public void setExperience_copy(int i) {
            this.experience_copy = i;
        }

        public int getHide() {
            return this.hide;
        }

        public void setHide(int i) {
            this.hide = i;
        }
    }

    public class VideoDetail {
        private long _id;
        private String aboutme;
        private String actor;
        private String channel_name;
        private String descript;
        private String director;
        private String ext_link;
        private int hide;
        private String msg;
        private int people;
        private String photo;
        private String score;
        private String seo;
        private int status;
        private String title;
        private int totalcount;
        private String tvclass_name;
        private int tvcountry;
        private String tvcountry_name;
        private long tvid;
        private String url;
        private int year;

        public VideoDetail() {
        }

        public long get_id() {
            return this._id;
        }

        public void set_id(long j) {
            this._id = j;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public String getPhoto() {
            return this.photo;
        }

        public void setPhoto(String str) {
            this.photo = str;
        }

        public String getExt_link() {
            return this.ext_link;
        }

        public void setExt_link(String str) {
            this.ext_link = str;
        }

        public String getScore() {
            return this.score;
        }

        public void setScore(String str) {
            this.score = str;
        }

        public int getTotalcount() {
            return this.totalcount;
        }

        public void setTotalcount(int i) {
            this.totalcount = i;
        }

        public int getStatus() {
            return this.status;
        }

        public void setStatus(int i) {
            this.status = i;
        }

        public String getAboutme() {
            return this.aboutme;
        }

        public void setAboutme(String str) {
            this.aboutme = str;
        }

        public int getYear() {
            return this.year;
        }

        public void setYear(int i) {
            this.year = i;
        }

        public int getTvcountry() {
            return this.tvcountry;
        }

        public void setTvcountry(int i) {
            this.tvcountry = i;
        }

        public String getActor() {
            return this.actor;
        }

        public void setActor(String str) {
            this.actor = str;
        }

        public String getDirector() {
            return this.director;
        }

        public void setDirector(String str) {
            this.director = str;
        }

        public int getPeople() {
            return this.people;
        }

        public void setPeople(int i) {
            this.people = i;
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

        public String getChannel_name() {
            return this.channel_name;
        }

        public void setChannel_name(String str) {
            this.channel_name = str;
        }

        public String getUrl() {
            return this.url;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public long getTvid() {
            return this.tvid;
        }

        public void setTvid(long j) {
            this.tvid = j;
        }

        public String getDescript() {
            return this.descript;
        }

        public void setDescript(String str) {
            this.descript = str;
        }

        public String getTvclass_name() {
            return this.tvclass_name;
        }

        public void setTvclass_name(String str) {
            this.tvclass_name = str;
        }

        public String getTvcountry_name() {
            return this.tvcountry_name;
        }

        public void setTvcountry_name(String str) {
            this.tvcountry_name = str;
        }

        public int getHide() {
            return this.hide;
        }

        public void setHide(int i) {
            this.hide = i;
        }
    }

    public MsgLikeBean() {
        String str = "";
        this.comment = str;
        this.sourceCommnet = str;
    }

    public CommentUserInfo getmCommentUserInfo() {
        return this.mCommentUserInfo;
    }

    public void setmCommentUserInfo(CommentUserInfo commentUserInfo) {
        this.mCommentUserInfo = commentUserInfo;
    }

    public VideoDetail getmVideoDetail() {
        return this.mVideoInfo;
    }

    public void setmVideoInfo(VideoDetail videoDetail) {
        this.mVideoInfo = videoDetail;
    }

    public String getSourceCommnet() {
        return this.sourceCommnet;
    }

    public void setSourceCommnet(String str) {
        this.sourceCommnet = str;
    }

    public long get_id() {
        return this._id;
    }

    public void set_id(long j) {
        this._id = j;
    }

    public long getTvid() {
        return this.tvid;
    }

    public void setTvid(long j) {
        this.tvid = j;
    }

    public long getPid() {
        return this.pid;
    }

    public void setPid(long j) {
        this.pid = j;
    }

    public int getLike() {
        return this.like;
    }

    public void setLike(int i) {
        this.like = i;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public long getUid() {
        return this.uid;
    }

    public void setUid(long j) {
        this.uid = j;
    }

    public int getCreated() {
        return this.created;
    }

    public void setCreated(int i) {
        this.created = i;
    }

    public long getCid() {
        return this.cid;
    }

    public void setCid(long j) {
        this.cid = j;
    }
}
