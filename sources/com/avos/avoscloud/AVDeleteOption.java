package com.avos.avoscloud;

public class AVDeleteOption {
    AVQuery matchQuery;

    public AVDeleteOption query(AVQuery aVQuery) {
        this.matchQuery = aVQuery;
        return this;
    }
}
