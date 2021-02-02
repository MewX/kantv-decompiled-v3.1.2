package com.kantv.ui.bean;

import java.util.List;

public class MineBean {
    private DataBean data;
    private String msg;
    private int status;

    public static class DataBean {
        private List<HistoryBean> history;
        private InfoCountBean info_count;
        private UserInfoBean userInfo;
        private String wx;

        public static class HistoryBean {
            private long _id;
            private String aboutme;
            private List<ActorBean> actor;
            private int allpart;
            private int created;
            private int curpart;
            private List<DirectorBean> director;
            private String ext_link;
            private int part;
            private long part_id;
            private String photo;
            private double score;
            private int sec;
            private String seo;
            private int status;
            private String title;
            private int totalcount;
            private List<Integer> tvclass;
            private int tvcountry;
            private long tvid;
            private String url;
            private int year;

            public static class ActorBean {
                private int id;
                private String name;
                private String role;

                public int getId() {
                    return this.id;
                }

                public void setId(int i) {
                    this.id = i;
                }

                public String getName() {
                    return this.name;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public String getRole() {
                    return this.role;
                }

                public void setRole(String str) {
                    this.role = str;
                }
            }

            public static class DirectorBean {
                private int id;
                private String name;

                public int getId() {
                    return this.id;
                }

                public void setId(int i) {
                    this.id = i;
                }

                public String getName() {
                    return this.name;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            public int getCreated() {
                return this.created;
            }

            public void setCreated(int i) {
                this.created = i;
            }

            public int getPart() {
                return this.part;
            }

            public void setPart(int i) {
                this.part = i;
            }

            public long getPart_id() {
                return this.part_id;
            }

            public void setPart_id(long j) {
                this.part_id = j;
            }

            public int getSec() {
                return this.sec;
            }

            public void setSec(int i) {
                this.sec = i;
            }

            public String getSeo() {
                return this.seo;
            }

            public void setSeo(String str) {
                this.seo = str;
            }

            public long getTvid() {
                return this.tvid;
            }

            public void setTvid(long j) {
                this.tvid = j;
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

            public int getAllpart() {
                return this.allpart;
            }

            public void setAllpart(int i) {
                this.allpart = i;
            }

            public int getCurpart() {
                return this.curpart;
            }

            public void setCurpart(int i) {
                this.curpart = i;
            }

            public String getExt_link() {
                return this.ext_link;
            }

            public void setExt_link(String str) {
                this.ext_link = str;
            }

            public double getScore() {
                return this.score;
            }

            public void setScore(double d) {
                this.score = d;
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

            public String getUrl() {
                return this.url;
            }

            public void setUrl(String str) {
                this.url = str;
            }

            public List<Integer> getTvclass() {
                return this.tvclass;
            }

            public void setTvclass(List<Integer> list) {
                this.tvclass = list;
            }

            public List<ActorBean> getActor() {
                return this.actor;
            }

            public void setActor(List<ActorBean> list) {
                this.actor = list;
            }

            public List<DirectorBean> getDirector() {
                return this.director;
            }

            public void setDirector(List<DirectorBean> list) {
                this.director = list;
            }
        }

        public static class InfoCountBean {
            private int kandan_like;
            private int kandan_msg;
            private int new_like;
            private int new_msg;
            private int new_systemmsg;
            private int news_like;
            private int news_msg;
            private int update_count;
            private int video_like;
            private int video_msg;

            public int getUpdate_count() {
                return this.update_count;
            }

            public void setUpdate_count(int i) {
                this.update_count = i;
            }

            public int getVideo_msg() {
                return this.video_msg;
            }

            public void setVideo_msg(int i) {
                this.video_msg = i;
            }

            public int getVideo_like() {
                return this.video_like;
            }

            public void setVideo_like(int i) {
                this.video_like = i;
            }

            public int getNews_msg() {
                return this.news_msg;
            }

            public void setNews_msg(int i) {
                this.news_msg = i;
            }

            public int getNews_like() {
                return this.news_like;
            }

            public void setNews_like(int i) {
                this.news_like = i;
            }

            public int getKandan_msg() {
                return this.kandan_msg;
            }

            public void setKandan_msg(int i) {
                this.kandan_msg = i;
            }

            public int getKandan_like() {
                return this.kandan_like;
            }

            public void setKandan_like(int i) {
                this.kandan_like = i;
            }

            public int getNew_systemmsg() {
                return this.new_systemmsg;
            }

            public void setNew_systemmsg(int i) {
                this.new_systemmsg = i;
            }

            public int getNew_msg() {
                return this.new_msg;
            }

            public void setNew_msg(int i) {
                this.new_msg = i;
            }

            public int getNew_like() {
                return this.new_like;
            }

            public void setNew_like(int i) {
                this.new_like = i;
            }
        }

        public UserInfoBean getUserInfo() {
            return this.userInfo;
        }

        public void setUserInfo(UserInfoBean userInfoBean) {
            this.userInfo = userInfoBean;
        }

        public InfoCountBean getInfo_count() {
            return this.info_count;
        }

        public void setInfo_count(InfoCountBean infoCountBean) {
            this.info_count = infoCountBean;
        }

        public String getWx() {
            return this.wx;
        }

        public void setWx(String str) {
            this.wx = str;
        }

        public List<HistoryBean> getHistory() {
            return this.history;
        }

        public void setHistory(List<HistoryBean> list) {
            this.history = list;
        }
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }
}
