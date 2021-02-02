package com.avos.avoscloud;

public class AVSaveOption {
    boolean fetchWhenSave;
    AVQuery matchQuery;

    public AVSaveOption setFetchWhenSave(boolean z) {
        this.fetchWhenSave = z;
        return this;
    }

    public AVSaveOption query(AVQuery aVQuery) {
        this.matchQuery = aVQuery;
        return this;
    }
}
