package com.kantv.ui.m3u8downloader;

import com.kantv.ui.m3u8downloader.bean.M3U8;
import com.kantv.ui.m3u8downloader.utils.MUtils;
import java.io.IOException;

public class M3U8InfoManger {
    private static M3U8InfoManger mM3U8InfoManger;
    private OnM3U8InfoListener onM3U8InfoListener;

    private M3U8InfoManger() {
    }

    public static M3U8InfoManger getInstance() {
        synchronized (M3U8InfoManger.class) {
            if (mM3U8InfoManger == null) {
                mM3U8InfoManger = new M3U8InfoManger();
            }
        }
        return mM3U8InfoManger;
    }

    public synchronized void getM3U8Info(final String str, OnM3U8InfoListener onM3U8InfoListener2) {
        this.onM3U8InfoListener = onM3U8InfoListener2;
        onM3U8InfoListener2.onStart();
        new Thread() {
            public void run() {
                try {
                    M3U8InfoManger.this.handlerSuccess(MUtils.parseIndex(str), MUtils.getKey(str));
                } catch (IOException e) {
                    M3U8InfoManger.this.handlerError(e);
                }
            }
        }.start();
    }

    /* access modifiers changed from: private */
    public void handlerError(Throwable th) {
        this.onM3U8InfoListener.onError(th);
    }

    /* access modifiers changed from: private */
    public void handlerSuccess(M3U8 m3u8, String str) {
        this.onM3U8InfoListener.onSuccess(m3u8, str);
    }
}
