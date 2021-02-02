package com.kantv.ui.bean;

public class MsgCountBean {
    private InfoCountBean info_count;

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

        public int getVideo_like() {
            return this.video_like;
        }

        public void setVideo_like(int i) {
            this.video_like = i;
        }

        public int getNews_like() {
            return this.news_like;
        }

        public void setNews_like(int i) {
            this.news_like = i;
        }

        public int getNews_msg() {
            return this.news_msg;
        }

        public void setNews_msg(int i) {
            this.news_msg = i;
        }

        public int getVideo_msg() {
            return this.video_msg;
        }

        public void setVideo_msg(int i) {
            this.video_msg = i;
        }

        public int getUpdate_count() {
            return this.update_count;
        }

        public void setUpdate_count(int i) {
            this.update_count = i;
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

    public InfoCountBean getInfo_count() {
        return this.info_count;
    }

    public void setInfo_count(InfoCountBean infoCountBean) {
        this.info_count = infoCountBean;
    }
}
