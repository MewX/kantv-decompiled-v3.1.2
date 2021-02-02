package com.kantv.ui.bean;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class LookBean {
    private DataBean data;
    private String msg;
    private int status;

    public static class DataBean {
        private List<ListBean> list;

        public static class ListBean {
            private long _id;
            @SerializedName("class")
            private List<Integer> classX;
            private int comm_nums;
            private int created;
            private int isplay;
            private int posttime;
            private String seo;
            private String source;
            private String thumb;
            private String title;
            private int totalcount;

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

            public String getThumb() {
                return this.thumb;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public String getSource() {
                return this.source;
            }

            public void setSource(String str) {
                this.source = str;
            }

            public int getCreated() {
                return this.created;
            }

            public void setCreated(int i) {
                this.created = i;
            }

            public int getPosttime() {
                return this.posttime;
            }

            public void setPosttime(int i) {
                this.posttime = i;
            }

            public int getTotalcount() {
                return this.totalcount;
            }

            public void setTotalcount(int i) {
                this.totalcount = i;
            }

            public int getIsplay() {
                return this.isplay;
            }

            public void setIsplay(int i) {
                this.isplay = i;
            }

            public String getSeo() {
                return this.seo;
            }

            public void setSeo(String str) {
                this.seo = str;
            }

            public int getComm_nums() {
                return this.comm_nums;
            }

            public void setComm_nums(int i) {
                this.comm_nums = i;
            }

            public List<Integer> getClassX() {
                return this.classX;
            }

            public void setClassX(List<Integer> list) {
                this.classX = list;
            }
        }

        public List<ListBean> getList() {
            return this.list;
        }

        public void setList(List<ListBean> list2) {
            this.list = list2;
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
