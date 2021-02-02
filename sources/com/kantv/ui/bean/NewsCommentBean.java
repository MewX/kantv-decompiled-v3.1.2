package com.kantv.ui.bean;

import java.util.HashMap;
import java.util.List;

public class NewsCommentBean {
    private DataBean data;
    private String msg;
    private int status;

    public static class DataBean {
        private List<AssociateBean> associate;
        private int comm_nums;
        private List<Long> commentIDList;
        private List<CommentListBean> commentList;
        private HashMap<String, CommentUserIDListBean> commentUserIDList;
        private String is_collect;
        private int islike;
        private int like;
        private int more;
        private List<String> myLikeIDList;

        public static class AssociateBean {
            private long _id;
            private int comm_nums;
            private int created;
            private int isplay;
            private int posttime;
            private String seo;
            private String source;
            private String thumb;
            private String title;
            private String totalcount;

            public int getComm_nums() {
                return this.comm_nums;
            }

            public void setComm_nums(int i) {
                this.comm_nums = i;
            }

            public long get_id() {
                return this._id;
            }

            public void set_id(long j) {
                this._id = j;
            }

            public int getCreated() {
                return this.created;
            }

            public void setCreated(int i) {
                this.created = i;
            }

            public int getIsplay() {
                return this.isplay;
            }

            public void setIsplay(int i) {
                this.isplay = i;
            }

            public int getPosttime() {
                return this.posttime;
            }

            public void setPosttime(int i) {
                this.posttime = i;
            }

            public String getSeo() {
                return this.seo;
            }

            public void setSeo(String str) {
                this.seo = str;
            }

            public String getSource() {
                return this.source;
            }

            public void setSource(String str) {
                this.source = str;
            }

            public String getThumb() {
                return this.thumb;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public String getTitle() {
                return this.title;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public String getTotalcount() {
                return this.totalcount;
            }

            public void setTotalcount(String str) {
                this.totalcount = str;
            }
        }

        public static class CommentListBean {
            private long _id;
            private List<ChildBean> child;
            private String comment;
            private int created;
            private int like;
            private int pid;
            private int status;
            private int toUser;
            private long tvid;
            private String uid;

            public static class ChildBean {
                private long _id;
                private String comment;
                private int created;
                private int like;
                private long pid;
                private int status;
                private long toUser;
                private long tvid;
                private String uid;

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

                public long getToUser() {
                    return this.toUser;
                }

                public void setToUser(long j) {
                    this.toUser = j;
                }

                public String getComment() {
                    return this.comment;
                }

                public void setComment(String str) {
                    this.comment = str;
                }

                public String getUid() {
                    return this.uid;
                }

                public void setUid(String str) {
                    this.uid = str;
                }

                public int getStatus() {
                    return this.status;
                }

                public void setStatus(int i) {
                    this.status = i;
                }

                public int getCreated() {
                    return this.created;
                }

                public void setCreated(int i) {
                    this.created = i;
                }
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

            public int getPid() {
                return this.pid;
            }

            public void setPid(int i) {
                this.pid = i;
            }

            public int getLike() {
                return this.like;
            }

            public void setLike(int i) {
                this.like = i;
            }

            public int getToUser() {
                return this.toUser;
            }

            public void setToUser(int i) {
                this.toUser = i;
            }

            public String getComment() {
                return this.comment;
            }

            public void setComment(String str) {
                this.comment = str;
            }

            public String getUid() {
                return this.uid;
            }

            public void setUid(String str) {
                this.uid = str;
            }

            public int getStatus() {
                return this.status;
            }

            public void setStatus(int i) {
                this.status = i;
            }

            public int getCreated() {
                return this.created;
            }

            public void setCreated(int i) {
                this.created = i;
            }

            public List<ChildBean> getChild() {
                return this.child;
            }

            public void setChild(List<ChildBean> list) {
                this.child = list;
            }
        }

        public static class CommentUserIDListBean {
            private int access;
            private String ccode;
            private String cname;
            private String code;
            private int created;
            private String device;
            private int experience;
            private String init;
            private String ip;
            private int login;
            private String mail;
            private String mobile;
            private String name;
            private String password;
            private String photo;
            private int role;
            private int status;
            private long today_id;
            private long uid;
            private int verify;

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
        }

        public List<AssociateBean> getAssociate() {
            return this.associate;
        }

        public void setAssociate(List<AssociateBean> list) {
            this.associate = list;
        }

        public int getIslike() {
            return this.islike;
        }

        public void setIslike(int i) {
            this.islike = i;
        }

        public int getLike() {
            return this.like;
        }

        public void setLike(int i) {
            this.like = i;
        }

        public String getIs_collect() {
            return this.is_collect;
        }

        public void setLike(String str) {
            this.is_collect = str;
        }

        public int getComm_nums() {
            return this.comm_nums;
        }

        public void setComm_nums(int i) {
            this.comm_nums = i;
        }

        public HashMap<String, CommentUserIDListBean> getCommentUserIDList() {
            return this.commentUserIDList;
        }

        public void setCommentUserIDList(HashMap<String, CommentUserIDListBean> hashMap) {
            this.commentUserIDList = hashMap;
        }

        public List<String> getMyLikeIDList() {
            return this.myLikeIDList;
        }

        public void setMyLikeIDList(List<String> list) {
            this.myLikeIDList = list;
        }

        public int getMore() {
            return this.more;
        }

        public void setMore(int i) {
            this.more = i;
        }

        public List<CommentListBean> getCommentList() {
            return this.commentList;
        }

        public void setCommentList(List<CommentListBean> list) {
            this.commentList = list;
        }

        public List<Long> getCommentIDList() {
            return this.commentIDList;
        }

        public void setCommentIDList(List<Long> list) {
            this.commentIDList = list;
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
