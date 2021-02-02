package com.kantv.ui.bean;

import java.util.ArrayList;
import java.util.List;

public class KeyWordBean {
    private List<ActorBean> actor;
    public List<IKeyWord> mData = new ArrayList();
    private List<VideoBean> video;

    public static class ActorBean implements IKeyWord {
        private long id;
        private String name;
        private String photo;

        public int getType() {
            return 1;
        }

        public long getId() {
            return this.id;
        }

        public void setId(long j) {
            this.id = j;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String getPhoto() {
            return this.photo;
        }

        public void setPhoto(String str) {
            this.photo = str;
        }

        public String getText() {
            String str = this.name;
            return str == null ? "" : str;
        }
    }

    public interface IKeyWord {
        public static final int ACTOR = 1;
        public static final int VIDEO = 0;

        String getText();

        int getType();
    }

    public static class VideoBean implements IKeyWord {
        private String channel_name;
        private int hide;
        private long id;
        private long people;
        private String photo;
        private String seo;
        private String title;
        private long tvid;
        private String url;
        private int year;

        public int getType() {
            return 0;
        }

        public long getId() {
            return this.id;
        }

        public void setId(long j) {
            this.id = j;
        }

        public long getPeople() {
            return this.people;
        }

        public void setPeople(long j) {
            this.people = j;
        }

        public String getPhoto() {
            return this.photo;
        }

        public void setPhoto(String str) {
            this.photo = str;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public int getYear() {
            return this.year;
        }

        public void setYear(int i) {
            this.year = i;
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

        public int getHide() {
            return this.hide;
        }

        public void setHide(int i) {
            this.hide = i;
        }

        public String getText() {
            String str = this.title;
            return str == null ? "" : str;
        }
    }

    public List<VideoBean> getVideo() {
        return this.video;
    }

    public void setVideo(List<VideoBean> list) {
        this.video = list;
    }

    public List<ActorBean> getActor() {
        return this.actor;
    }

    public void setActor(List<ActorBean> list) {
        this.actor = list;
    }

    public static boolean isNull(KeyWordBean keyWordBean) {
        boolean z = true;
        if (keyWordBean == null) {
            return true;
        }
        List actor2 = keyWordBean.getActor();
        List video2 = keyWordBean.getVideo();
        if (actor2 != null && actor2.size() > 0) {
            z = false;
        }
        if (video2 == null || video2.size() <= 0) {
            return z;
        }
        return false;
    }

    public List<IKeyWord> getData() {
        this.mData.clear();
        List actor2 = getActor();
        List video2 = getVideo();
        if (actor2 != null && actor2.size() > 0) {
            this.mData.addAll(actor2);
        }
        if (video2 != null && video2.size() > 0) {
            this.mData.addAll(video2);
        }
        return this.mData;
    }
}
