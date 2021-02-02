package com.kantv.ui.bean;

import java.util.HashMap;
import java.util.List;

public class CommentReqBean {
    private DataBean data;
    private String msg;
    private int status;

    public static class DataBean {
        private CommentListBeanX commentList;
        private int more;

        public static class CommentListBeanX {
            private List<CommentListBean> commentList;
            private HashMap<String, CommentUserIDBean> commentUserIDList;
            private List<String> myLikeIDList;

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

                public String getComment() {
                    return this.comment;
                }

                public void setComment(String str) {
                    this.comment = str;
                }

                public int getCreated() {
                    return this.created;
                }

                public void setCreated(int i) {
                    this.created = i;
                }

                public int getLike() {
                    return this.like;
                }

                public void setLike(int i) {
                    this.like = i;
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

                public int getStatus() {
                    return this.status;
                }

                public void setStatus(int i) {
                    this.status = i;
                }

                public int getToUser() {
                    return this.toUser;
                }

                public void setToUser(int i) {
                    this.toUser = i;
                }

                public String getUid() {
                    return this.uid;
                }

                public void setUid(String str) {
                    this.uid = str;
                }

                public List<ChildBean> getChild() {
                    return this.child;
                }

                public void setChild(List<ChildBean> list) {
                    this.child = list;
                }
            }

            public static class CommentUserIDBean {
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
                private String uid;
                private int verify;

                public String getUid() {
                    return this.uid;
                }

                public void setUid(String str) {
                    this.uid = str;
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

            public HashMap<String, CommentUserIDBean> getCommentUserIDList() {
                return this.commentUserIDList;
            }

            public void setCommentUserIDList(HashMap<String, CommentUserIDBean> hashMap) {
                this.commentUserIDList = hashMap;
            }

            public List<CommentListBean> getCommentList() {
                return this.commentList;
            }

            public void setCommentList(List<CommentListBean> list) {
                this.commentList = list;
            }

            public List<String> getMyLikeIDList() {
                return this.myLikeIDList;
            }

            public void setMyLikeIDList(List<String> list) {
                this.myLikeIDList = list;
            }
        }

        public CommentListBeanX getCommentList() {
            return this.commentList;
        }

        public void setCommentList(CommentListBeanX commentListBeanX) {
            this.commentList = commentListBeanX;
        }

        public int getMore() {
            return this.more;
        }

        public void setMore(int i) {
            this.more = i;
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
