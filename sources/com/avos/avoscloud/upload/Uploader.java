package com.avos.avoscloud.upload;

import com.avos.avoscloud.AVException;

public interface Uploader {

    public interface UploadCallback {
        void finishedWithResults(String str, String str2);
    }

    boolean cancel(boolean z);

    AVException doWork();

    void execute();

    String getFinalObjectId();

    String getFinalUrl();

    boolean isCancelled();

    void publishProgress(int i);
}
