package com.kantv.ui.download;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class MyDownLoadService extends Service {
    private String name;
    private boolean needStop;
    private String saveDir;
    private String url;

    public void onCreate() {
        super.onCreate();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            this.url = intent.getStringExtra("url");
            this.name = intent.getStringExtra("name");
            this.needStop = intent.getBooleanExtra("needStop", false);
            VideoDownloadManager.instance();
            VideoDownloadManager.ClikcDownload(this.url, this.name, false);
        }
        return super.onStartCommand(intent, i, i2);
    }

    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    public void onDestroy() {
        super.onDestroy();
        System.out.println("dwonload= onDestroy");
    }
}
