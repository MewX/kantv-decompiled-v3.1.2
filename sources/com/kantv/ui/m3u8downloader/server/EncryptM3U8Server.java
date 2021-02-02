package com.kantv.ui.m3u8downloader.server;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.kantv.ui.m3u8downloader.M3U8Downloader;
import com.kantv.ui.m3u8downloader.M3U8EncryptHelper;
import java.io.File;

public class EncryptM3U8Server extends M3U8HttpServer {
    public void encrypt() {
        if (!TextUtils.isEmpty(this.filesDir) && !isEncrypt(this.filesDir)) {
            new Thread(new Runnable() {
                public void run() {
                    try {
                        Looper.prepare();
                        M3U8EncryptHelper.encryptTsFilesName(M3U8Downloader.getInstance().getEncryptKey(), EncryptM3U8Server.this.filesDir);
                        Looper.loop();
                    } catch (Exception e) {
                        Log.e("M3u8Server encrypt: ", e.getMessage());
                    }
                }
            }).start();
        }
    }

    public void decrypt() {
        if (!TextUtils.isEmpty(this.filesDir) && isEncrypt(this.filesDir)) {
            new Thread(new Runnable() {
                public void run() {
                    try {
                        M3U8EncryptHelper.decryptTsFilesName(M3U8Downloader.getInstance().getEncryptKey(), EncryptM3U8Server.this.filesDir);
                    } catch (Exception e) {
                        Log.e("M3u8Server decrypt: ", e.getMessage());
                    }
                }
            }).start();
        }
    }

    private boolean isEncrypt(String str) {
        try {
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File name : listFiles) {
                    if (name.getName().contains(".ts")) {
                        return false;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }
}
