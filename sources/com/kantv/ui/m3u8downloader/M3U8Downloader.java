package com.kantv.ui.m3u8downloader;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kantv.common.log.AILog;
import com.kantv.ui.m3u8downloader.bean.M3U8;
import com.kantv.ui.m3u8downloader.bean.M3U8Task;
import com.kantv.ui.m3u8downloader.utils.MUtils;
import java.io.File;
import java.util.List;
import java.util.Timer;

public class M3U8Downloader {
    /* access modifiers changed from: private */
    public M3U8Task currentM3U8Task;
    private long currentTime;
    public DownloadQueue downLoadQueue;
    /* access modifiers changed from: private */
    public M3U8DownloadTask m3U8DownLoadTask;
    private int mNetworktype;
    private Timer netSpeedTimer;
    /* access modifiers changed from: private */
    public OnM3U8DownloadListener onM3U8DownloadListener;
    private OnTaskDownloadListener onTaskDownloadListener;

    private static class SingletonHolder {
        static M3U8Downloader instance = new M3U8Downloader();

        private SingletonHolder() {
        }
    }

    private M3U8Downloader() {
        this.mNetworktype = 0;
        this.onTaskDownloadListener = new OnTaskDownloadListener() {
            private float downloadProgress;
            private long lastLength;

            public void onStartDownload(int i, int i2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append("|");
                sb.append(i2);
                AILog.d("onStartDownload: ", sb.toString());
                M3U8Downloader.this.currentM3U8Task.setState(2);
                this.downloadProgress = (((float) i2) * 1.0f) / ((float) i);
            }

            public void onDownloading(long j, long j2, int i, int i2) {
                if (M3U8Downloader.this.m3U8DownLoadTask.isRunning()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(j);
                    String str = "|";
                    sb.append(str);
                    sb.append(j2);
                    sb.append(str);
                    sb.append(i);
                    sb.append(str);
                    sb.append(i2);
                    AILog.d("onDownloading: ", sb.toString());
                    this.downloadProgress = (((float) i2) * 1.0f) / ((float) i);
                    if (M3U8Downloader.this.onM3U8DownloadListener != null) {
                        M3U8Downloader.this.onM3U8DownloadListener.onDownloadItem(M3U8Downloader.this.currentM3U8Task, j2, i, i2);
                    }
                }
            }

            public void onSuccess(M3U8 m3u8) {
                M3U8Downloader.this.m3U8DownLoadTask.stop();
                M3U8Downloader.this.currentM3U8Task.setM3U8(m3u8);
                M3U8Downloader.this.currentM3U8Task.setState(3);
                if (M3U8Downloader.this.onM3U8DownloadListener != null) {
                    M3U8Downloader.this.onM3U8DownloadListener.onDownloadSuccess(M3U8Downloader.this.currentM3U8Task);
                }
                AILog.d("m3u8 Downloader onSuccess: ", m3u8.toString());
                M3U8Downloader.this.downloadNextTask();
            }

            public void onProgress(long j) {
                if (j - this.lastLength > 0) {
                    M3U8Downloader.this.currentM3U8Task.setProgress(this.downloadProgress);
                    M3U8Downloader.this.currentM3U8Task.setSpeed(j - this.lastLength);
                    if (M3U8Downloader.this.onM3U8DownloadListener != null) {
                        M3U8Downloader.this.onM3U8DownloadListener.onDownloadProgress(M3U8Downloader.this.currentM3U8Task);
                    }
                    this.lastLength = j;
                }
            }

            public void onStart() {
                M3U8Downloader.this.currentM3U8Task.setState(1);
                if (M3U8Downloader.this.onM3U8DownloadListener != null) {
                    M3U8Downloader.this.onM3U8DownloadListener.onDownloadPrepare(M3U8Downloader.this.currentM3U8Task);
                }
                AILog.d("onDownloadPrepare: ", M3U8Downloader.this.currentM3U8Task.getUrl());
            }

            public void onError(Throwable th) {
                if (th.getMessage() == null || !th.getMessage().contains("ENOSPC")) {
                    M3U8Downloader.this.currentM3U8Task.setState(4);
                } else {
                    M3U8Downloader.this.currentM3U8Task.setState(6);
                }
                if (M3U8Downloader.this.onM3U8DownloadListener != null) {
                    M3U8Downloader.this.onM3U8DownloadListener.onDownloadError(M3U8Downloader.this.currentM3U8Task, th);
                }
                M3U8Downloader.this.m3U8DownLoadTask.stop();
                M3U8Downloader m3U8Downloader = M3U8Downloader.this;
                m3U8Downloader.download(m3U8Downloader.currentM3U8Task.getUrl(), M3U8Downloader.this.currentM3U8Task.getName(), false);
            }
        };
        AILog.d("M3U8Downloader", "111");
        this.downLoadQueue = new DownloadQueue();
        this.m3U8DownLoadTask = new M3U8DownloadTask();
    }

    public static M3U8Downloader getInstance() {
        AILog.d("M3U8Downloader getInstance", "初始化");
        return SingletonHolder.instance;
    }

    private boolean isQuicklyClick() {
        boolean z;
        if (System.currentTimeMillis() - this.currentTime <= 100) {
            z = true;
            AILog.d("M3U8DownloaderisQuicklyClick!", "点击过快");
        } else {
            z = false;
        }
        this.currentTime = System.currentTimeMillis();
        return z;
    }

    /* access modifiers changed from: private */
    public void downloadNextTask() {
        startDownloadTask(this.downLoadQueue.poll());
    }

    private void pendingTask(M3U8Task m3U8Task) {
        m3U8Task.setState(-1);
        OnM3U8DownloadListener onM3U8DownloadListener2 = this.onM3U8DownloadListener;
        if (onM3U8DownloadListener2 != null) {
            onM3U8DownloadListener2.onDownloadPending(m3U8Task);
        }
    }

    public void download(String str, String str2, boolean z) {
        if (z) {
            if (TextUtils.isEmpty(str) || isQuicklyClick()) {
                return;
            }
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return;
        }
        M3U8Task m3U8Task = new M3U8Task(str);
        m3U8Task.setName(str2);
        StringBuilder sb = new StringBuilder();
        sb.append("加入队列走走");
        sb.append(str2);
        String str3 = "加入队列";
        AILog.d(str3, sb.toString());
        if (this.downLoadQueue.contains(m3U8Task)) {
            M3U8Task task = this.downLoadQueue.getTask(str);
            if (task.getState() == 5 || task.getState() == 4) {
                startDownloadTask(task);
            } else {
                pause(str);
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str3);
            sb2.append(str2);
            AILog.d(str3, sb2.toString());
            this.downLoadQueue.offer(m3U8Task);
            startDownloadTask(m3U8Task);
        }
    }

    public void pause(String str) {
        if (!TextUtils.isEmpty(str)) {
            M3U8Task task = this.downLoadQueue.getTask(str);
            StringBuilder sb = new StringBuilder();
            sb.append("url");
            sb.append(str);
            String str2 = "paude";
            AILog.d(str2, sb.toString());
            if (task != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("url2");
                sb2.append(str);
                AILog.d(str2, sb2.toString());
                task.setState(5);
                String str3 = "pause";
                if (this.onM3U8DownloadListener != null) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("onDownloadPause");
                    sb3.append(str);
                    AILog.d(str3, sb3.toString());
                    this.onM3U8DownloadListener.onDownloadPause(task);
                }
                if (str.equals(this.currentM3U8Task.getUrl())) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("stop");
                    sb4.append(str);
                    AILog.d(str3, sb4.toString());
                    this.m3U8DownLoadTask.stop();
                    downloadNextTask();
                } else {
                    this.downLoadQueue.remove(task);
                }
            }
        }
    }

    public void pause(List<String> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    boolean z = false;
                    synchronized (list) {
                        for (String str : list) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("setOnClickListenername  4url");
                            sb.append(str);
                            sb.append("        ");
                            sb.append(this.downLoadQueue.contains(new M3U8Task(str)));
                            AILog.d("全部暂停", sb.toString());
                            if (this.downLoadQueue.contains(new M3U8Task(str))) {
                                M3U8Task task = this.downLoadQueue.getTask(str);
                                if (task != null) {
                                    task.setState(5);
                                    if (this.onM3U8DownloadListener != null) {
                                        this.onM3U8DownloadListener.onDownloadPause(task);
                                    }
                                    if (task.equals(this.currentM3U8Task)) {
                                        this.m3U8DownLoadTask.stop();
                                        z = true;
                                    }
                                    this.downLoadQueue.remove(task);
                                }
                            }
                        }
                    }
                    if (z) {
                        startDownloadTask(this.downLoadQueue.peek());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean checkM3U8IsExist(String str) {
        try {
            return this.m3U8DownLoadTask.getM3u8File(str).exists();
        } catch (Exception e) {
            Log.e(e.getMessage(), "");
            return false;
        }
    }

    public String getM3U8Path(String str) {
        AILog.d("getM3U8Path", str);
        return this.m3U8DownLoadTask.getM3u8File(str).getPath();
    }

    public boolean isRunning() {
        return this.m3U8DownLoadTask.isRunning();
    }

    public boolean isCurrentTask(String str) {
        return !TextUtils.isEmpty(str) && this.downLoadQueue.peek() != null && this.downLoadQueue.peek().getUrl().equals(str);
    }

    public void setOnM3U8DownloadListener(OnM3U8DownloadListener onM3U8DownloadListener2) {
        this.onM3U8DownloadListener = onM3U8DownloadListener2;
    }

    public void setEncryptKey(String str) {
        this.m3U8DownLoadTask.setEncryptKey(str);
    }

    public String getEncryptKey() {
        return this.m3U8DownLoadTask.getEncryptKey();
    }

    private void startDownloadTask(M3U8Task m3U8Task) {
        if (m3U8Task != null) {
            pendingTask(m3U8Task);
            if (!this.downLoadQueue.isHead(m3U8Task)) {
                AILog.d("start download task, but task is running:", m3U8Task.getUrl());
            } else if (m3U8Task.getState() == 5) {
                AILog.d("start download task, but task has pause: ", m3U8Task.getUrl());
            } else {
                try {
                    this.currentM3U8Task = m3U8Task;
                    AILog.d("====== start downloading ===== ", m3U8Task.getUrl());
                    this.m3U8DownLoadTask.download(m3U8Task.getUrl(), m3U8Task.getName(), this.onTaskDownloadListener);
                } catch (Exception e) {
                    AILog.d("startDownloadTask Error:", e.getMessage());
                }
            }
        }
    }

    public void cancel(String str) {
        pause(str);
    }

    public void cancel(List<String> list) {
        pause(list);
    }

    public void cancelAndDelete(final String str, @Nullable final OnDeleteTaskListener onDeleteTaskListener) {
        pause(str);
        if (onDeleteTaskListener != null) {
            onDeleteTaskListener.onStart();
        }
        new Thread(new Runnable() {
            public void run() {
                boolean clearDir = MUtils.clearDir(new File(MUtils.getSaveFileDir(str)));
                OnDeleteTaskListener onDeleteTaskListener = onDeleteTaskListener;
                if (onDeleteTaskListener == null) {
                    return;
                }
                if (clearDir) {
                    onDeleteTaskListener.onSuccess();
                } else {
                    onDeleteTaskListener.onFail();
                }
            }
        }).start();
    }

    public void cancelAndDelete(final List<String> list, @Nullable final OnDeleteTaskListener onDeleteTaskListener) {
        pause(list);
        if (onDeleteTaskListener != null) {
            onDeleteTaskListener.onStart();
        }
        new Thread(new Runnable() {
            public void run() {
                boolean z;
                synchronized (list) {
                    loop0:
                    while (true) {
                        z = true;
                        for (String str : list) {
                            if (!z || !MUtils.clearDir(new File(MUtils.getSaveFileDir(str)))) {
                                z = false;
                            }
                        }
                        break loop0;
                    }
                }
                OnDeleteTaskListener onDeleteTaskListener = onDeleteTaskListener;
                if (onDeleteTaskListener == null) {
                    return;
                }
                if (z) {
                    onDeleteTaskListener.onSuccess();
                } else {
                    onDeleteTaskListener.onFail();
                }
            }
        }).start();
    }
}
