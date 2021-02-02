package com.avos.avoscloud;

import android.os.AsyncTask;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Request.Builder;
import org.apache.http.Header;

class AVFileDownloader extends AsyncTask<String, Integer, AVException> {
    private static final int READ_BUF_SIZE = 8192;
    /* access modifiers changed from: private */
    public final GetDataCallback dataCallback;
    /* access modifiers changed from: private */
    public final GetDataStreamCallback dataStreamCallback;
    /* access modifiers changed from: private */
    public byte[] fileData;
    /* access modifiers changed from: private */
    public InputStream is;
    private final ProgressCallback progressCallback;

    public AVFileDownloader() {
        this.dataCallback = null;
        this.dataStreamCallback = null;
        this.progressCallback = null;
    }

    public AVFileDownloader(ProgressCallback progressCallback2, GetDataCallback getDataCallback) {
        this.dataCallback = getDataCallback;
        this.dataStreamCallback = null;
        this.progressCallback = progressCallback2;
    }

    public AVFileDownloader(ProgressCallback progressCallback2, GetDataStreamCallback getDataStreamCallback) {
        this.dataCallback = null;
        this.dataStreamCallback = getDataStreamCallback;
        this.progressCallback = progressCallback2;
    }

    /* access modifiers changed from: protected */
    public AVException doWork(String str) {
        this.fileData = null;
        if (AVUtils.isBlankContent(str)) {
            return new AVException(new IllegalArgumentException("url is null"));
        }
        File cacheFile = getCacheFile(str);
        if (!cacheFile.exists()) {
            return downloadFileFromNetwork(str);
        }
        publishProgress(new Integer[]{Integer.valueOf(100)});
        if (this.dataCallback != null) {
            this.fileData = AVPersistenceUtils.readContentBytesFromFile(cacheFile);
        } else if (this.dataStreamCallback != null) {
            try {
                this.is = AVPersistenceUtils.getInputStreamFromFile(cacheFile);
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("failed to invoke doWork() url:");
                sb.append(str);
                log.e(sb.toString(), (Exception) e);
                this.is = null;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public AVException doInBackground(String... strArr) {
        return doWork(strArr[0]);
    }

    /* access modifiers changed from: protected */
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
        ProgressCallback progressCallback2 = this.progressCallback;
        if (progressCallback2 != null) {
            progressCallback2.internalDone(numArr[0], null);
        }
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(AVException aVException) {
        super.onPostExecute(aVException);
        GetDataCallback getDataCallback = this.dataCallback;
        if (getDataCallback != null) {
            getDataCallback.internalDone(this.fileData, aVException);
            return;
        }
        GetDataStreamCallback getDataStreamCallback = this.dataStreamCallback;
        if (getDataStreamCallback != null) {
            getDataStreamCallback.internalDone0(this.is, aVException);
        }
    }

    private AVException downloadFileFromNetwork(final String str) {
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("downloadFileFromNetwork: ");
            sb.append(str);
            avlog.d(sb.toString());
        }
        final File cacheFile = getCacheFile(str);
        final AVException[] aVExceptionArr = new AVException[1];
        Builder builder = new Builder();
        builder.url(str);
        AVHttpClient.progressClientInstance(new ProgressListener() {
            public void update(long j, long j2, boolean z) {
                AVFileDownloader.this.publishProgress(new Integer[]{Integer.valueOf((int) (((float) (j * 98)) / ((float) j2)))});
            }
        }).execute(builder.build(), true, new AsyncHttpStreamResponseHandler() {
            /* JADX WARNING: Removed duplicated region for block: B:24:0x0052 A[Catch:{ IOException -> 0x0056 }] */
            /* JADX WARNING: Removed duplicated region for block: B:32:0x0068 A[Catch:{ IOException -> 0x006c }] */
            /* JADX WARNING: Removed duplicated region for block: B:39:0x0080  */
            /* JADX WARNING: Removed duplicated region for block: B:40:0x008c  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onSuccess(int r5, org.apache.http.Header[] r6, java.io.InputStream r7) {
                /*
                    r4 = this;
                    int r6 = r5 / 100
                    r0 = 0
                    r1 = 2
                    if (r6 != r1) goto L_0x00bd
                    if (r7 == 0) goto L_0x00bd
                    r5 = 8192(0x2000, float:1.14794E-41)
                    byte[] r5 = new byte[r5]
                    java.io.File r6 = r0
                    java.lang.String r6 = r6.getAbsolutePath()
                    java.util.concurrent.locks.ReentrantReadWriteLock r6 = com.avos.avoscloud.AVPersistenceUtils.getLock(r6)
                    java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r6 = r6.writeLock()
                    boolean r1 = r6.tryLock()
                    r2 = 0
                    if (r1 == 0) goto L_0x0078
                    java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0044, all -> 0x0041 }
                    java.io.File r3 = r0     // Catch:{ Exception -> 0x0044, all -> 0x0041 }
                    r1.<init>(r3, r0)     // Catch:{ Exception -> 0x0044, all -> 0x0041 }
                    int r3 = r7.read(r5)     // Catch:{ Exception -> 0x003f }
                L_0x002c:
                    if (r3 <= 0) goto L_0x0036
                    r1.write(r5, r0, r3)     // Catch:{ Exception -> 0x003f }
                    int r3 = r7.read(r5)     // Catch:{ Exception -> 0x003f }
                    goto L_0x002c
                L_0x0036:
                    r7.close()     // Catch:{ IOException -> 0x003d }
                    r1.close()     // Catch:{ IOException -> 0x003d }
                    goto L_0x005e
                L_0x003d:
                    r5 = move-exception
                    goto L_0x0057
                L_0x003f:
                    r5 = move-exception
                    goto L_0x0046
                L_0x0041:
                    r5 = move-exception
                    r1 = r2
                    goto L_0x0063
                L_0x0044:
                    r5 = move-exception
                    r1 = r2
                L_0x0046:
                    java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x0062 }
                    com.avos.avoscloud.LogUtil.log.d(r5)     // Catch:{ all -> 0x0062 }
                    r7.close()     // Catch:{ IOException -> 0x0056 }
                    if (r1 == 0) goto L_0x005e
                    r1.close()     // Catch:{ IOException -> 0x0056 }
                    goto L_0x005e
                L_0x0056:
                    r5 = move-exception
                L_0x0057:
                    java.lang.String r5 = r5.toString()
                    com.avos.avoscloud.LogUtil.log.d(r5)
                L_0x005e:
                    r6.unlock()
                    goto L_0x0078
                L_0x0062:
                    r5 = move-exception
                L_0x0063:
                    r7.close()     // Catch:{ IOException -> 0x006c }
                    if (r1 == 0) goto L_0x0074
                    r1.close()     // Catch:{ IOException -> 0x006c }
                    goto L_0x0074
                L_0x006c:
                    r7 = move-exception
                    java.lang.String r7 = r7.toString()
                    com.avos.avoscloud.LogUtil.log.d(r7)
                L_0x0074:
                    r6.unlock()
                    throw r5
                L_0x0078:
                    com.avos.avoscloud.AVFileDownloader r5 = com.avos.avoscloud.AVFileDownloader.this
                    com.avos.avoscloud.GetDataCallback r5 = r5.dataCallback
                    if (r5 == 0) goto L_0x008c
                    com.avos.avoscloud.AVFileDownloader r5 = com.avos.avoscloud.AVFileDownloader.this
                    java.io.File r6 = r0
                    byte[] r6 = com.avos.avoscloud.AVPersistenceUtils.readContentBytesFromFile(r6)
                    r5.fileData = r6
                    goto L_0x00d6
                L_0x008c:
                    com.avos.avoscloud.AVFileDownloader r5 = com.avos.avoscloud.AVFileDownloader.this
                    com.avos.avoscloud.GetDataStreamCallback r5 = r5.dataStreamCallback
                    if (r5 == 0) goto L_0x00d6
                    com.avos.avoscloud.AVFileDownloader r5 = com.avos.avoscloud.AVFileDownloader.this     // Catch:{ IOException -> 0x00a0 }
                    java.io.File r6 = r0     // Catch:{ IOException -> 0x00a0 }
                    java.io.InputStream r6 = com.avos.avoscloud.AVPersistenceUtils.getInputStreamFromFile(r6)     // Catch:{ IOException -> 0x00a0 }
                    r5.is = r6     // Catch:{ IOException -> 0x00a0 }
                    goto L_0x00d6
                L_0x00a0:
                    r5 = move-exception
                    java.lang.StringBuilder r6 = new java.lang.StringBuilder
                    r6.<init>()
                    java.lang.String r7 = "failed to invoke downloadFileFromNetwork() url:"
                    r6.append(r7)
                    java.lang.String r7 = r7
                    r6.append(r7)
                    java.lang.String r6 = r6.toString()
                    com.avos.avoscloud.LogUtil.log.e(r6, r5)
                    com.avos.avoscloud.AVFileDownloader r5 = com.avos.avoscloud.AVFileDownloader.this
                    r5.is = r2
                    goto L_0x00d6
                L_0x00bd:
                    if (r7 == 0) goto L_0x00cb
                    com.avos.avoscloud.AVException[] r6 = r2
                    com.avos.avoscloud.AVException r7 = new com.avos.avoscloud.AVException
                    java.lang.String r1 = "status code is invalid"
                    r7.<init>(r5, r1)
                    r6[r0] = r7
                    goto L_0x00d6
                L_0x00cb:
                    com.avos.avoscloud.AVException[] r6 = r2
                    com.avos.avoscloud.AVException r7 = new com.avos.avoscloud.AVException
                    java.lang.String r1 = "data is empty!"
                    r7.<init>(r5, r1)
                    r6[r0] = r7
                L_0x00d6:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVFileDownloader.AnonymousClass2.onSuccess(int, org.apache.http.Header[], java.io.InputStream):void");
            }

            public void onFailure(int i, Header[] headerArr, Throwable th) {
                aVExceptionArr[0] = new AVException(th);
            }
        });
        publishProgress(new Integer[]{Integer.valueOf(100)});
        if (aVExceptionArr[0] != null) {
            return aVExceptionArr[0];
        }
        return null;
    }

    static File getCacheFile(String str) {
        return new File(getAVFileCachePath(), AVUtils.md5(str));
    }

    static String getAVFileCachePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(AVPersistenceUtils.getCacheDir());
        sb.append("/avfile/");
        String sb2 = sb.toString();
        File file = new File(sb2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return sb2;
    }
}
