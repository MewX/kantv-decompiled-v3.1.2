package com.kantv.ui.bean;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class TempBean {
    private DataBean data;
    private String msg;
    private int status;

    public static class DataBean {
        private int comm_nums;
        private List<CommentListBean> commentList;
        private CommentUserIDListBean commentUserIDList;
        private int is_collect;
        private int islike;
        private int like;
        private int more;
        private List<?> myLikeIDList;

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
            private long uid;

            public static class ChildBean {
                private long _id;
                private String comment;
                private int created;
                private int like;
                private long pid;
                private int status;
                private long toUser;
                private long tvid;
                private long uid;

                public long get_id() {
                    return this._id;
                }

                public void set_id(long j) {
                    this._id = j;
                }

                public long getPid() {
                    return this.pid;
                }

                public void setPid(long j) {
                    this.pid = j;
                }

                public long getToUser() {
                    return this.toUser;
                }

                public void setToUser(long j) {
                    this.toUser = j;
                }

                public long getTvid() {
                    return this.tvid;
                }

                public void setTvid(long j) {
                    this.tvid = j;
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

            public int getPid() {
                return this.pid;
            }

            public void setPid(int i) {
                this.pid = i;
            }

            public int getToUser() {
                return this.toUser;
            }

            public void setToUser(int i) {
                this.toUser = i;
            }

            public long getTvid() {
                return this.tvid;
            }

            public void setTvid(long j) {
                this.tvid = j;
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
            @SerializedName("91913246769001")
            private TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean _$91913246769001;
            @SerializedName("91914408562001")
            private List<?> _$91914408562001;
            @SerializedName("91914431089001")
            private List<?> _$91914431089001;

            public TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean get_$91913246769001() {
                return this._$91913246769001;
            }

            public void set_$91913246769001(TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean tempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean) {
                this._$91913246769001 = tempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;
            }

            public List<?> get_$91914431089001() {
                return this._$91914431089001;
            }

            public void set_$91914431089001(List<?> list) {
                this._$91914431089001 = list;
            }

            public List<?> get_$91914408562001() {
                return this._$91914408562001;
            }

            public void set_$91914408562001(List<?> list) {
                this._$91914408562001 = list;
            }
        }

        public int getIslike() {
            return this.islike;
        }

        public void setIslike(int i) {
            this.islike = i;
        }

        public int getComm_nums() {
            return this.comm_nums;
        }

        public void setComm_nums(int i) {
            this.comm_nums = i;
        }

        public int getLike() {
            return this.like;
        }

        public void setLike(int i) {
            this.like = i;
        }

        public int getIs_collect() {
            return this.is_collect;
        }

        public void setIs_collect(int i) {
            this.is_collect = i;
        }

        public CommentUserIDListBean getCommentUserIDList() {
            return this.commentUserIDList;
        }

        public void setCommentUserIDList(CommentUserIDListBean commentUserIDListBean) {
            this.commentUserIDList = commentUserIDListBean;
        }

        public int getMore() {
            return this.more;
        }

        public void setMore(int i) {
            this.more = i;
        }

        public List<?> getMyLikeIDList() {
            return this.myLikeIDList;
        }

        public void setMyLikeIDList(List<?> list) {
            this.myLikeIDList = list;
        }

        public List<CommentListBean> getCommentList() {
            return this.commentList;
        }

        public void setCommentList(List<CommentListBean> list) {
            this.commentList = list;
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
