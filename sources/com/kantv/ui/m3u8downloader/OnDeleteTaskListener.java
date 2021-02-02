package com.kantv.ui.m3u8downloader;

public interface OnDeleteTaskListener extends BaseListener {
    void onFail();

    void onStart();

    void onSuccess();
}
