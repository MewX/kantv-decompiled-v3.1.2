package com.kantv.ui.m3u8downloader;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.m3u8downloader.bean.M3U8;
import com.kantv.ui.m3u8downloader.utils.MUtils;
import com.kantv.ui.utils.NetWorkUtils;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Timer;
import java.util.concurrent.ExecutorService;
import javax.jmdns.impl.constants.DNSConstants;

class M3U8DownloadTask {
    private static final String TAG = "VideoDownloadManager";
    private static final int WHAT_ON_ERROR = 1001;
    private static final int WHAT_ON_PROGRESS = 1002;
    private static final int WHAT_ON_START_DOWNLOAD = 1004;
    private static final int WHAT_ON_SUCCESS = 1003;
    /* access modifiers changed from: private */
    public int connTimeout = 10000;
    /* access modifiers changed from: private */
    public long curLength = 0;
    /* access modifiers changed from: private */
    public volatile int curTs = 0;
    /* access modifiers changed from: private */
    public M3U8 currentM3U8;
    private String encryptKey = null;
    /* access modifiers changed from: private */
    public ExecutorService executor;
    /* access modifiers changed from: private */
    public boolean isRunning = false;
    /* access modifiers changed from: private */
    public volatile boolean isStartDownload = true;
    /* access modifiers changed from: private */
    public volatile long itemFileSize = 0;
    /* access modifiers changed from: private */
    public String m3u8FileName = SettingsManager.M3U8;
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1001:
                    M3U8DownloadTask.this.onTaskDownloadListener.onError((Throwable) message.obj);
                    return;
                case 1002:
                    M3U8DownloadTask.this.onTaskDownloadListener.onDownloading(M3U8DownloadTask.this.totalFileSize, M3U8DownloadTask.this.itemFileSize, M3U8DownloadTask.this.totalTs, M3U8DownloadTask.this.curTs);
                    return;
                case 1003:
                    if (M3U8DownloadTask.this.netSpeedTimer != null) {
                        M3U8DownloadTask.this.netSpeedTimer.cancel();
                    }
                    M3U8DownloadTask.this.onTaskDownloadListener.onSuccess(M3U8DownloadTask.this.currentM3U8);
                    return;
                case 1004:
                    M3U8DownloadTask.this.onTaskDownloadListener.onStartDownload(M3U8DownloadTask.this.totalTs, M3U8DownloadTask.this.curTs);
                    return;
                default:
                    return;
            }
        }
    };
    private int mNetworktype = 0;
    /* access modifiers changed from: private */
    public Timer netSpeedTimer;
    /* access modifiers changed from: private */
    public OnTaskDownloadListener onTaskDownloadListener;
    /* access modifiers changed from: private */
    public int readTimeout = DNSConstants.ANNOUNCED_RENEWAL_TTL_INTERVAL;
    /* access modifiers changed from: private */
    public String saveDir;
    private int threadCount = 3;
    /* access modifiers changed from: private */
    public volatile long totalFileSize = 0;
    /* access modifiers changed from: private */
    public volatile int totalTs = 0;
    private String tsFileName = SettingsManager.TS;
    private String url;

    public M3U8DownloadTask() {
        String str = "M3U8DownloadTask";
        AILog.d(str, "111");
        this.connTimeout = M3U8DownloaderConfig.getConnTimeout();
        StringBuilder sb = new StringBuilder();
        sb.append("connTimeout");
        sb.append(this.connTimeout);
        AILog.d(str, sb.toString());
        this.readTimeout = M3U8DownloaderConfig.getReadTimeout();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("readTimeout");
        sb2.append(this.readTimeout);
        AILog.d(str, sb2.toString());
        this.threadCount = M3U8DownloaderConfig.getThreadCount();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("threadCount");
        sb3.append(this.threadCount);
        AILog.d(str, sb3.toString());
    }

    public void download(String str, String str2, OnTaskDownloadListener onTaskDownloadListener2) {
        this.saveDir = MUtils.getSaveFileDir(str2);
        AILog.d("start download ,SaveDir: ", this.saveDir);
        this.onTaskDownloadListener = onTaskDownloadListener2;
        if (!isRunning()) {
            this.isRunning = true;
            getM3U8Info(str);
            return;
        }
        handlerError(new Throwable("Task running"));
    }

    public void setEncryptKey(String str) {
        this.encryptKey = str;
    }

    public String getEncryptKey() {
        return this.encryptKey;
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    private void getM3U8Info(String str) {
        M3U8InfoManger.getInstance().getM3U8Info(str, new OnM3U8InfoListener() {
            public void onSuccess(final M3U8 m3u8, final String str) {
                if (M3U8DownloadTask.this.isRunning) {
                    M3U8DownloadTask.this.currentM3U8 = m3u8;
                    StringBuilder sb = new StringBuilder();
                    sb.append("key");
                    sb.append(str);
                    AILog.d("currentM3U8", sb.toString());
                    new Thread() {
                        public void run() {
                            String str = M3U8DownloadTask.TAG;
                            try {
                                M3U8DownloadTask.this.startDownload(m3u8, str);
                                if (M3U8DownloadTask.this.executor != null) {
                                    M3U8DownloadTask.this.executor.shutdown();
                                }
                                while (M3U8DownloadTask.this.executor != null && !M3U8DownloadTask.this.executor.isTerminated()) {
                                    Thread.sleep(100);
                                }
                                if (M3U8DownloadTask.this.isRunning && M3U8DownloadTask.this.currentM3U8.getTsList().size() > 0 && M3U8DownloadTask.this.curTs == M3U8DownloadTask.this.currentM3U8.getTsList().size() + 1) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("OnM3U8DownloadListenercurTs=");
                                    sb.append(M3U8DownloadTask.this.curTs);
                                    AILog.d(str, sb.toString());
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("OnM3U8DownloadListenercurrentM3U8.size()=");
                                    sb2.append(M3U8DownloadTask.this.currentM3U8.getTsList().size());
                                    AILog.d(str, sb2.toString());
                                    if (M3U8DownloadTask.this.netWorkChange() == 0) {
                                        M3U8DownloadTask.this.isRunning = false;
                                        return;
                                    }
                                    M3U8DownloadTask.this.currentM3U8.setM3u8FilePath(MUtils.createLocalM3U8(new File(M3U8DownloadTask.this.saveDir), M3U8DownloadTask.this.m3u8FileName, M3U8DownloadTask.this.currentM3U8, str).getPath());
                                    M3U8DownloadTask.this.currentM3U8.setDirFilePath(M3U8DownloadTask.this.saveDir);
                                    M3U8DownloadTask.this.currentM3U8.getFileSize();
                                    M3U8DownloadTask.this.mHandler.sendEmptyMessage(1003);
                                    M3U8DownloadTask.this.isRunning = false;
                                }
                            } catch (InterruptedIOException e) {
                                M3U8DownloadTask.this.mHandler.removeMessages(1003);
                                M3U8DownloadTask.this.handlerError(e);
                            } catch (IOException e2) {
                                M3U8DownloadTask.this.mHandler.removeMessages(1003);
                                M3U8DownloadTask.this.handlerError(e2);
                            } catch (Exception e3) {
                                M3U8DownloadTask.this.mHandler.removeMessages(1003);
                                M3U8DownloadTask.this.handlerError(e3);
                            }
                        }
                    }.start();
                }
            }

            public void onStart() {
                M3U8DownloadTask.this.onTaskDownloadListener.onStart();
            }

            public void onError(Throwable th) {
                M3U8DownloadTask.this.handlerError(th);
            }
        });
    }

    public static ArrayList<String> orderByName(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] listFiles = new File(str).listFiles();
        Collections.sort(Arrays.asList(listFiles), new Comparator<File>() {
            public int compare(File file, File file2) {
                if (file.isDirectory() && file2.isFile()) {
                    return -1;
                }
                if (!file.isFile() || !file2.isDirectory()) {
                    return file.getName().compareTo(file2.getName());
                }
                return 1;
            }
        });
        for (File file : listFiles) {
            if (file.isDirectory()) {
                arrayList.add(file.getName());
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x007b */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x009e A[SYNTHETIC, Splitter:B:47:0x009e] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00a5 A[SYNTHETIC, Splitter:B:51:0x00a5] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00b3 A[SYNTHETIC, Splitter:B:60:0x00b3] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00ba A[SYNTHETIC, Splitter:B:64:0x00ba] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00c2 A[SYNTHETIC, Splitter:B:71:0x00c2] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00c9 A[SYNTHETIC, Splitter:B:75:0x00c9] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:44:0x0096=Splitter:B:44:0x0096, B:57:0x00ab=Splitter:B:57:0x00ab} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void merge(java.io.File r7, java.lang.String r8, com.kantv.ui.m3u8downloader.bean.M3U8 r9) {
        /*
            r6 = this;
            java.io.File r9 = new java.io.File
            r9.<init>(r7, r8)
            boolean r0 = r9.exists()
            if (r0 == 0) goto L_0x0013
            r9.delete()
            java.io.File r9 = new java.io.File
            r9.<init>(r7, r8)
        L_0x0013:
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.io.File[] r7 = r7.listFiles()
            if (r7 == 0) goto L_0x00d1
            int r0 = r7.length
            if (r0 <= 0) goto L_0x00d1
            java.util.List r0 = java.util.Arrays.asList(r7)
            com.kantv.ui.m3u8downloader.M3U8DownloadTask$4 r1 = new com.kantv.ui.m3u8downloader.M3U8DownloadTask$4
            r1.<init>()
            java.util.Collections.sort(r0, r1)
            int r1 = r7.length
            r2 = 0
            r3 = 0
        L_0x0030:
            if (r3 >= r1) goto L_0x003a
            r4 = r7[r3]
            r8.add(r4)
            int r3 = r3 + 1
            goto L_0x0030
        L_0x003a:
            r7 = 0
        L_0x003b:
            int r8 = r0.size()
            if (r7 >= r8) goto L_0x00d1
            java.lang.Object r8 = r0.get(r7)
            java.io.File r8 = (java.io.File) r8
            java.lang.String r1 = r8.getName()
            java.lang.String r3 = ".ts"
            boolean r1 = r1.contains(r3)
            if (r1 == 0) goto L_0x00cd
            r1 = 0
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch:{ FileNotFoundException -> 0x00a9, IOException -> 0x0094, all -> 0x0090 }
            java.lang.String r4 = "r"
            r3.<init>(r8, r4)     // Catch:{ FileNotFoundException -> 0x00a9, IOException -> 0x0094, all -> 0x0090 }
            java.io.RandomAccessFile r8 = new java.io.RandomAccessFile     // Catch:{ FileNotFoundException -> 0x008c, IOException -> 0x0088, all -> 0x0085 }
            java.lang.String r4 = "rw"
            r8.<init>(r9, r4)     // Catch:{ FileNotFoundException -> 0x008c, IOException -> 0x0088, all -> 0x0085 }
            long r4 = r9.length()     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x0081, all -> 0x007f }
            r8.seek(r4)     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x0081, all -> 0x007f }
            r1 = 2097152(0x200000, float:2.938736E-39)
            byte[] r1 = new byte[r1]     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x0081, all -> 0x007f }
        L_0x006d:
            int r4 = r3.read(r1)     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x0081, all -> 0x007f }
            r5 = -1
            if (r4 == r5) goto L_0x0078
            r8.write(r1, r2, r4)     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x0081, all -> 0x007f }
            goto L_0x006d
        L_0x0078:
            r3.close()     // Catch:{ IOException -> 0x007b }
        L_0x007b:
            r8.close()     // Catch:{ IOException -> 0x00cd }
            goto L_0x00cd
        L_0x007f:
            r7 = move-exception
            goto L_0x00c0
        L_0x0081:
            r7 = move-exception
            goto L_0x008a
        L_0x0083:
            r7 = move-exception
            goto L_0x008e
        L_0x0085:
            r7 = move-exception
            r8 = r1
            goto L_0x00c0
        L_0x0088:
            r7 = move-exception
            r8 = r1
        L_0x008a:
            r1 = r3
            goto L_0x0096
        L_0x008c:
            r7 = move-exception
            r8 = r1
        L_0x008e:
            r1 = r3
            goto L_0x00ab
        L_0x0090:
            r7 = move-exception
            r8 = r1
            r3 = r8
            goto L_0x00c0
        L_0x0094:
            r7 = move-exception
            r8 = r1
        L_0x0096:
            r7.printStackTrace()     // Catch:{ all -> 0x00be }
            r6.handlerError(r7)     // Catch:{ all -> 0x00be }
            if (r1 == 0) goto L_0x00a3
            r1.close()     // Catch:{ IOException -> 0x00a2 }
            goto L_0x00a3
        L_0x00a2:
        L_0x00a3:
            if (r8 == 0) goto L_0x00a8
            r8.close()     // Catch:{ IOException -> 0x00a8 }
        L_0x00a8:
            return
        L_0x00a9:
            r7 = move-exception
            r8 = r1
        L_0x00ab:
            r7.printStackTrace()     // Catch:{ all -> 0x00be }
            r6.handlerError(r7)     // Catch:{ all -> 0x00be }
            if (r1 == 0) goto L_0x00b8
            r1.close()     // Catch:{ IOException -> 0x00b7 }
            goto L_0x00b8
        L_0x00b7:
        L_0x00b8:
            if (r8 == 0) goto L_0x00bd
            r8.close()     // Catch:{ IOException -> 0x00bd }
        L_0x00bd:
            return
        L_0x00be:
            r7 = move-exception
            r3 = r1
        L_0x00c0:
            if (r3 == 0) goto L_0x00c7
            r3.close()     // Catch:{ IOException -> 0x00c6 }
            goto L_0x00c7
        L_0x00c6:
        L_0x00c7:
            if (r8 == 0) goto L_0x00cc
            r8.close()     // Catch:{ IOException -> 0x00cc }
        L_0x00cc:
            throw r7
        L_0x00cd:
            int r7 = r7 + 1
            goto L_0x003b
        L_0x00d1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.m3u8downloader.M3U8DownloadTask.merge(java.io.File, java.lang.String, com.kantv.ui.m3u8downloader.bean.M3U8):void");
    }

    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r5v5, types: [java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r1v15, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: type inference failed for: r1v17, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v8 */
    /* JADX WARNING: type inference failed for: r5v9 */
    /* JADX WARNING: type inference failed for: r1v18, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v10 */
    /* JADX WARNING: type inference failed for: r5v11, types: [java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r5v12 */
    /* JADX WARNING: type inference failed for: r1v19, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v13 */
    /* JADX WARNING: type inference failed for: r5v14 */
    /* JADX WARNING: type inference failed for: r13v14, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r1v20, types: [java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r13v17 */
    /* JADX WARNING: type inference failed for: r13v18, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v20 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r5v21 */
    /* JADX WARNING: type inference failed for: r1v22 */
    /* JADX WARNING: type inference failed for: r5v22 */
    /* JADX WARNING: type inference failed for: r1v23 */
    /* JADX WARNING: type inference failed for: r5v23 */
    /* JADX WARNING: type inference failed for: r1v24 */
    /* JADX WARNING: type inference failed for: r5v24 */
    /* JADX WARNING: type inference failed for: r5v25, types: [java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r1v27 */
    /* JADX WARNING: type inference failed for: r1v29 */
    /* JADX WARNING: type inference failed for: r1v31 */
    /* JADX WARNING: type inference failed for: r1v33 */
    /* JADX WARNING: type inference failed for: r1v34 */
    /* JADX WARNING: type inference failed for: r1v35 */
    /* JADX WARNING: type inference failed for: r1v36 */
    /* JADX WARNING: type inference failed for: r1v37 */
    /* JADX WARNING: type inference failed for: r1v38 */
    /* JADX WARNING: type inference failed for: r5v27 */
    /* JADX WARNING: type inference failed for: r1v39 */
    /* JADX WARNING: type inference failed for: r5v28 */
    /* JADX WARNING: type inference failed for: r5v29 */
    /* JADX WARNING: type inference failed for: r1v40 */
    /* JADX WARNING: type inference failed for: r1v41 */
    /* JADX WARNING: type inference failed for: r5v30 */
    /* JADX WARNING: type inference failed for: r5v31 */
    /* JADX WARNING: type inference failed for: r1v42 */
    /* JADX WARNING: type inference failed for: r1v43 */
    /* JADX WARNING: type inference failed for: r5v32 */
    /* JADX WARNING: type inference failed for: r5v33 */
    /* JADX WARNING: type inference failed for: r1v44 */
    /* JADX WARNING: type inference failed for: r1v45 */
    /* JADX WARNING: type inference failed for: r13v25 */
    /* JADX WARNING: type inference failed for: r5v34 */
    /* JADX WARNING: type inference failed for: r5v35 */
    /* JADX WARNING: type inference failed for: r5v36 */
    /* JADX WARNING: type inference failed for: r5v37 */
    /* JADX WARNING: type inference failed for: r5v38 */
    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x013d, code lost:
        if (r5 == 0) goto L_0x016f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x014f, code lost:
        if (r5 == 0) goto L_0x016f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x015e, code lost:
        if (r5 == 0) goto L_0x016f;
     */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v6
      assigns: []
      uses: []
      mth insns count: 191
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0138 A[SYNTHETIC, Splitter:B:60:0x0138] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x014a A[SYNTHETIC, Splitter:B:71:0x014a] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0159 A[SYNTHETIC, Splitter:B:80:0x0159] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0164 A[SYNTHETIC, Splitter:B:86:0x0164] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x016b A[SYNTHETIC, Splitter:B:90:0x016b] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:57:0x0133=Splitter:B:57:0x0133, B:77:0x0154=Splitter:B:77:0x0154, B:68:0x0145=Splitter:B:68:0x0145} */
    /* JADX WARNING: Unknown variable types count: 18 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void startDownload(com.kantv.ui.m3u8downloader.bean.M3U8 r12, java.lang.String r13) {
        /*
            r11 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "保存视屏的路径"
            r0.append(r1)
            java.lang.String r1 = r11.saveDir
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "M3u8DownloadTask"
            com.kantv.common.log.AILog.d(r1, r0)
            java.io.File r0 = new java.io.File
            java.lang.String r1 = r11.saveDir
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 != 0) goto L_0x0028
            r0.mkdirs()
        L_0x0028:
            java.util.List r1 = r12.getTsList()
            int r1 = r1.size()
            r11.totalTs = r1
            java.util.concurrent.ExecutorService r1 = r11.executor
            if (r1 == 0) goto L_0x0039
            r1.shutdownNow()
        L_0x0039:
            java.lang.String r1 = "executor is shutDown ! downloading !"
            java.lang.String r2 = ""
            com.kantv.common.log.AILog.d(r1, r2)
            r1 = 1
            r11.curTs = r1
            r11.isRunning = r1
            r11.isStartDownload = r1
            r1 = 0
            r11.executor = r1
            int r2 = r11.threadCount
            java.util.concurrent.ExecutorService r2 = java.util.concurrent.Executors.newFixedThreadPool(r2)
            r11.executor = r2
            java.lang.String r2 = r12.getBasePath()
            java.util.Timer r3 = new java.util.Timer
            r3.<init>()
            r11.netSpeedTimer = r3
            java.util.Timer r4 = r11.netSpeedTimer
            com.kantv.ui.m3u8downloader.M3U8DownloadTask$5 r5 = new com.kantv.ui.m3u8downloader.M3U8DownloadTask$5
            r5.<init>()
            r6 = 0
            r8 = 1500(0x5dc, double:7.41E-321)
            r4.schedule(r5, r6, r8)
            r3 = 0
            if (r13 == 0) goto L_0x016f
            java.io.File r4 = new java.io.File
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r0)
            java.lang.String r6 = java.io.File.separator
            r5.append(r6)
            r5.append(r13)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            boolean r5 = r4.exists()
            if (r5 != 0) goto L_0x016f
            java.net.URL r5 = new java.net.URL     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r6.<init>()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r6.append(r2)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r6.append(r13)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.lang.String r13 = r6.toString()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r5.<init>(r13)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.net.URLConnection r13 = r5.openConnection()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.net.HttpURLConnection r13 = (java.net.HttpURLConnection) r13     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            int r5 = r11.connTimeout     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r13.setConnectTimeout(r5)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            int r5 = r11.readTimeout     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r13.setReadTimeout(r5)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            int r5 = r13.getResponseCode()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r6 = 200(0xc8, float:2.8E-43)
            if (r5 != r6) goto L_0x010e
            boolean r5 = r11.isStartDownload     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            if (r5 == 0) goto L_0x00c6
            r11.isStartDownload = r3     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            android.os.Handler r5 = r11.mHandler     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r6 = 1004(0x3ec, float:1.407E-42)
            r5.sendEmptyMessage(r6)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
        L_0x00c6:
            java.io.InputStream r13 = r13.getInputStream()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch:{ MalformedURLException -> 0x0109, IOException -> 0x0104, Exception -> 0x00ff, all -> 0x00fa }
            r5.<init>(r4)     // Catch:{ MalformedURLException -> 0x0109, IOException -> 0x0104, Exception -> 0x00ff, all -> 0x00fa }
            r1 = 2097152(0x200000, float:2.938736E-39)
            byte[] r1 = new byte[r1]     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
        L_0x00d3:
            int r4 = r13.read(r1)     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
            r6 = -1
            if (r4 == r6) goto L_0x00e4
            long r6 = r11.curLength     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
            long r8 = (long) r4     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
            long r6 = r6 + r8
            r11.curLength = r6     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
            r5.write(r1, r3, r4)     // Catch:{ MalformedURLException -> 0x00f4, IOException -> 0x00ee, Exception -> 0x00e8, all -> 0x00e6 }
            goto L_0x00d3
        L_0x00e4:
            r1 = r5
            goto L_0x011f
        L_0x00e6:
            r12 = move-exception
            goto L_0x00fc
        L_0x00e8:
            r1 = move-exception
            r10 = r1
            r1 = r13
            r13 = r10
            goto L_0x0133
        L_0x00ee:
            r1 = move-exception
            r10 = r1
            r1 = r13
            r13 = r10
            goto L_0x0145
        L_0x00f4:
            r1 = move-exception
            r10 = r1
            r1 = r13
            r13 = r10
            goto L_0x0154
        L_0x00fa:
            r12 = move-exception
            r5 = r1
        L_0x00fc:
            r1 = r13
            goto L_0x0162
        L_0x00ff:
            r4 = move-exception
            r5 = r1
            r1 = r13
            r13 = r4
            goto L_0x0133
        L_0x0104:
            r4 = move-exception
            r5 = r1
            r1 = r13
            r13 = r4
            goto L_0x0145
        L_0x0109:
            r4 = move-exception
            r5 = r1
            r1 = r13
            r13 = r4
            goto L_0x0154
        L_0x010e:
            java.lang.Throwable r4 = new java.lang.Throwable     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            int r13 = r13.getResponseCode()     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            java.lang.String r13 = java.lang.String.valueOf(r13)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r4.<init>(r13)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r11.handlerError(r4)     // Catch:{ MalformedURLException -> 0x0152, IOException -> 0x0143, Exception -> 0x0131, all -> 0x012e }
            r13 = r1
        L_0x011f:
            if (r13 == 0) goto L_0x0126
            r13.close()     // Catch:{ IOException -> 0x0125 }
            goto L_0x0126
        L_0x0125:
        L_0x0126:
            if (r1 == 0) goto L_0x016f
            r1.close()     // Catch:{ IOException -> 0x012c }
            goto L_0x016f
        L_0x012c:
            goto L_0x016f
        L_0x012e:
            r12 = move-exception
            r5 = r1
            goto L_0x0162
        L_0x0131:
            r13 = move-exception
            r5 = r1
        L_0x0133:
            r11.handlerError(r13)     // Catch:{ all -> 0x0161 }
            if (r1 == 0) goto L_0x013d
            r1.close()     // Catch:{ IOException -> 0x013c }
            goto L_0x013d
        L_0x013c:
        L_0x013d:
            if (r5 == 0) goto L_0x016f
        L_0x013f:
            r5.close()     // Catch:{ IOException -> 0x012c }
            goto L_0x016f
        L_0x0143:
            r13 = move-exception
            r5 = r1
        L_0x0145:
            r11.handlerError(r13)     // Catch:{ all -> 0x0161 }
            if (r1 == 0) goto L_0x014f
            r1.close()     // Catch:{ IOException -> 0x014e }
            goto L_0x014f
        L_0x014e:
        L_0x014f:
            if (r5 == 0) goto L_0x016f
            goto L_0x013f
        L_0x0152:
            r13 = move-exception
            r5 = r1
        L_0x0154:
            r11.handlerError(r13)     // Catch:{ all -> 0x0161 }
            if (r1 == 0) goto L_0x015e
            r1.close()     // Catch:{ IOException -> 0x015d }
            goto L_0x015e
        L_0x015d:
        L_0x015e:
            if (r5 == 0) goto L_0x016f
            goto L_0x013f
        L_0x0161:
            r12 = move-exception
        L_0x0162:
            if (r1 == 0) goto L_0x0169
            r1.close()     // Catch:{ IOException -> 0x0168 }
            goto L_0x0169
        L_0x0168:
        L_0x0169:
            if (r5 == 0) goto L_0x016e
            r5.close()     // Catch:{ IOException -> 0x016e }
        L_0x016e:
            throw r12
        L_0x016f:
            java.io.File[] r13 = r0.listFiles()
            if (r13 == 0) goto L_0x0198
            r1 = 0
        L_0x0176:
            int r4 = r13.length
            if (r1 >= r4) goto L_0x0198
            r4 = r13[r1]
            boolean r4 = r4.isDirectory()
            if (r4 != 0) goto L_0x0195
            r4 = r13[r1]
            java.lang.String r4 = r4.getName()
            java.lang.String r4 = r4.trim()
            java.lang.String r4 = r4.toLowerCase()
            java.lang.String r5 = ".ts"
            boolean r4 = r4.endsWith(r5)
        L_0x0195:
            int r1 = r1 + 1
            goto L_0x0176
        L_0x0198:
            java.util.List r12 = r12.getTsList()
        L_0x019c:
            int r13 = r12.size()
            if (r3 >= r13) goto L_0x01b5
            java.lang.Object r13 = r12.get(r3)
            com.kantv.ui.m3u8downloader.bean.M3U8Ts r13 = (com.kantv.ui.m3u8downloader.bean.M3U8Ts) r13
            java.util.concurrent.ExecutorService r1 = r11.executor
            com.kantv.ui.m3u8downloader.M3U8DownloadTask$6 r4 = new com.kantv.ui.m3u8downloader.M3U8DownloadTask$6
            r4.<init>(r0, r13, r2)
            r1.execute(r4)
            int r3 = r3 + 1
            goto L_0x019c
        L_0x01b5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.m3u8downloader.M3U8DownloadTask.startDownload(com.kantv.ui.m3u8downloader.bean.M3U8, java.lang.String):void");
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:11|12|13|14|15|25|21|22) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0020 */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0026 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0078 A[SYNTHETIC, Splitter:B:49:0x0078] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x007f A[SYNTHETIC, Splitter:B:53:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0085 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x00b4 A[SYNTHETIC, Splitter:B:72:0x00b4] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00bb A[SYNTHETIC, Splitter:B:76:0x00bb] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x00c1 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x00df A[SYNTHETIC, Splitter:B:90:0x00df] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x00e6 A[SYNTHETIC, Splitter:B:94:0x00e6] */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x00ec A[SYNTHETIC] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:69:0x00a9=Splitter:B:69:0x00a9, B:46:0x006d=Splitter:B:46:0x006d} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void mergeFile(java.io.File r7, java.io.File r8, com.kantv.ui.m3u8downloader.bean.M3U8Ts r9) {
        /*
            r6 = this;
            r0 = 0
            r1 = 1002(0x3ea, float:1.404E-42)
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x006b, all -> 0x0067 }
            r2.<init>(r7)     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x006b, all -> 0x0067 }
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x0062, IOException -> 0x005d, all -> 0x0057 }
            r7.<init>(r8)     // Catch:{ FileNotFoundException -> 0x0062, IOException -> 0x005d, all -> 0x0057 }
            r0 = 2097152(0x200000, float:2.938736E-39)
            byte[] r0 = new byte[r0]     // Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x004d, all -> 0x0048 }
        L_0x0011:
            int r3 = r2.read(r0)     // Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x004d, all -> 0x0048 }
            r4 = -1
            if (r3 == r4) goto L_0x001d
            r4 = 0
            r7.write(r0, r4, r3)     // Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x004d, all -> 0x0048 }
            goto L_0x0011
        L_0x001d:
            r2.close()     // Catch:{ IOException -> 0x0020 }
        L_0x0020:
            r7.close()     // Catch:{ IOException -> 0x0023 }
        L_0x0023:
            java.lang.Class<com.kantv.ui.m3u8downloader.M3U8DownloadTask> r0 = com.kantv.ui.m3u8downloader.M3U8DownloadTask.class
            monitor-enter(r0)
            long r7 = r8.length()     // Catch:{ all -> 0x0045 }
            r6.itemFileSize = r7     // Catch:{ all -> 0x0045 }
            long r7 = r6.itemFileSize     // Catch:{ all -> 0x0045 }
            r9.setFileSize(r7)     // Catch:{ all -> 0x0045 }
            android.os.Handler r7 = r6.mHandler     // Catch:{ all -> 0x0045 }
            r7.sendEmptyMessage(r1)     // Catch:{ all -> 0x0045 }
            int r7 = r6.curTs     // Catch:{ all -> 0x0045 }
            int r7 = r7 + 1
            r6.curTs = r7     // Catch:{ all -> 0x0045 }
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            java.lang.String r7 = "VideoDownloadManager"
            java.lang.String r8 = "OnM3U8DownloadListener合并成功="
            com.kantv.common.log.AILog.d(r7, r8)
            return
        L_0x0045:
            r7 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            throw r7
        L_0x0048:
            r0 = move-exception
            r5 = r2
            r2 = r7
            r7 = r0
            goto L_0x005a
        L_0x004d:
            r0 = move-exception
            r5 = r2
            r2 = r7
            r7 = r0
            goto L_0x0060
        L_0x0052:
            r0 = move-exception
            r5 = r2
            r2 = r7
            r7 = r0
            goto L_0x0065
        L_0x0057:
            r7 = move-exception
            r5 = r2
            r2 = r0
        L_0x005a:
            r0 = r5
            goto L_0x00dd
        L_0x005d:
            r7 = move-exception
            r5 = r2
            r2 = r0
        L_0x0060:
            r0 = r5
            goto L_0x006d
        L_0x0062:
            r7 = move-exception
            r5 = r2
            r2 = r0
        L_0x0065:
            r0 = r5
            goto L_0x00a9
        L_0x0067:
            r7 = move-exception
            r2 = r0
            goto L_0x00dd
        L_0x006b:
            r7 = move-exception
            r2 = r0
        L_0x006d:
            r7.printStackTrace()     // Catch:{ all -> 0x00dc }
            r6.handlerError(r7)     // Catch:{ all -> 0x00dc }
            r8.delete()     // Catch:{ all -> 0x00dc }
            if (r0 == 0) goto L_0x007d
            r0.close()     // Catch:{ IOException -> 0x007c }
            goto L_0x007d
        L_0x007c:
        L_0x007d:
            if (r2 == 0) goto L_0x0082
            r2.close()     // Catch:{ IOException -> 0x0082 }
        L_0x0082:
            java.lang.Class<com.kantv.ui.m3u8downloader.M3U8DownloadTask> r7 = com.kantv.ui.m3u8downloader.M3U8DownloadTask.class
            monitor-enter(r7)
            long r2 = r8.length()     // Catch:{ all -> 0x00a4 }
            r6.itemFileSize = r2     // Catch:{ all -> 0x00a4 }
            long r2 = r6.itemFileSize     // Catch:{ all -> 0x00a4 }
            r9.setFileSize(r2)     // Catch:{ all -> 0x00a4 }
            android.os.Handler r8 = r6.mHandler     // Catch:{ all -> 0x00a4 }
            r8.sendEmptyMessage(r1)     // Catch:{ all -> 0x00a4 }
            int r8 = r6.curTs     // Catch:{ all -> 0x00a4 }
            int r8 = r8 + 1
            r6.curTs = r8     // Catch:{ all -> 0x00a4 }
            monitor-exit(r7)     // Catch:{ all -> 0x00a4 }
        L_0x009c:
            java.lang.String r7 = "VideoDownloadManager"
            java.lang.String r8 = "OnM3U8DownloadListener合并成功="
            com.kantv.common.log.AILog.d(r7, r8)
            return
        L_0x00a4:
            r8 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x00a4 }
            throw r8
        L_0x00a7:
            r7 = move-exception
            r2 = r0
        L_0x00a9:
            r7.printStackTrace()     // Catch:{ all -> 0x00dc }
            r6.handlerError(r7)     // Catch:{ all -> 0x00dc }
            r8.delete()     // Catch:{ all -> 0x00dc }
            if (r0 == 0) goto L_0x00b9
            r0.close()     // Catch:{ IOException -> 0x00b8 }
            goto L_0x00b9
        L_0x00b8:
        L_0x00b9:
            if (r2 == 0) goto L_0x00be
            r2.close()     // Catch:{ IOException -> 0x00be }
        L_0x00be:
            java.lang.Class<com.kantv.ui.m3u8downloader.M3U8DownloadTask> r7 = com.kantv.ui.m3u8downloader.M3U8DownloadTask.class
            monitor-enter(r7)
            long r2 = r8.length()     // Catch:{ all -> 0x00d9 }
            r6.itemFileSize = r2     // Catch:{ all -> 0x00d9 }
            long r2 = r6.itemFileSize     // Catch:{ all -> 0x00d9 }
            r9.setFileSize(r2)     // Catch:{ all -> 0x00d9 }
            android.os.Handler r8 = r6.mHandler     // Catch:{ all -> 0x00d9 }
            r8.sendEmptyMessage(r1)     // Catch:{ all -> 0x00d9 }
            int r8 = r6.curTs     // Catch:{ all -> 0x00d9 }
            int r8 = r8 + 1
            r6.curTs = r8     // Catch:{ all -> 0x00d9 }
            monitor-exit(r7)     // Catch:{ all -> 0x00d9 }
            goto L_0x009c
        L_0x00d9:
            r8 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x00d9 }
            throw r8
        L_0x00dc:
            r7 = move-exception
        L_0x00dd:
            if (r0 == 0) goto L_0x00e4
            r0.close()     // Catch:{ IOException -> 0x00e3 }
            goto L_0x00e4
        L_0x00e3:
        L_0x00e4:
            if (r2 == 0) goto L_0x00e9
            r2.close()     // Catch:{ IOException -> 0x00e9 }
        L_0x00e9:
            java.lang.Class<com.kantv.ui.m3u8downloader.M3U8DownloadTask> r0 = com.kantv.ui.m3u8downloader.M3U8DownloadTask.class
            monitor-enter(r0)
            long r2 = r8.length()     // Catch:{ all -> 0x010b }
            r6.itemFileSize = r2     // Catch:{ all -> 0x010b }
            long r2 = r6.itemFileSize     // Catch:{ all -> 0x010b }
            r9.setFileSize(r2)     // Catch:{ all -> 0x010b }
            android.os.Handler r8 = r6.mHandler     // Catch:{ all -> 0x010b }
            r8.sendEmptyMessage(r1)     // Catch:{ all -> 0x010b }
            int r8 = r6.curTs     // Catch:{ all -> 0x010b }
            int r8 = r8 + 1
            r6.curTs = r8     // Catch:{ all -> 0x010b }
            monitor-exit(r0)     // Catch:{ all -> 0x010b }
            java.lang.String r8 = "VideoDownloadManager"
            java.lang.String r9 = "OnM3U8DownloadListener合并成功="
            com.kantv.common.log.AILog.d(r8, r9)
            throw r7
        L_0x010b:
            r7 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x010b }
            goto L_0x010f
        L_0x010e:
            throw r7
        L_0x010f:
            goto L_0x010e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.m3u8downloader.M3U8DownloadTask.mergeFile(java.io.File, java.io.File, com.kantv.ui.m3u8downloader.bean.M3U8Ts):void");
    }

    /* access modifiers changed from: private */
    public void handlerError(Throwable th) {
        AILog.d("handlerError", th.toString());
        if (!"thread interrupted".equals(th.getMessage())) {
            Message obtain = Message.obtain();
            obtain.obj = th;
            obtain.what = 1001;
            this.mHandler.sendMessage(obtain);
        }
    }

    public void stop() {
        try {
            if (this.netSpeedTimer != null) {
                this.netSpeedTimer.cancel();
                this.netSpeedTimer = null;
            }
            this.isRunning = false;
            if (this.executor != null) {
                this.executor.shutdownNow();
                this.executor = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public File getM3u8File(String str) {
        try {
            AILog.d("getM3u8File", str);
            return new File(MUtils.getSaveFileDir(str), this.m3u8FileName);
        } catch (Exception e) {
            AILog.d(e.getMessage(), "");
            return null;
        }
    }

    /* access modifiers changed from: private */
    public int netWorkChange() {
        int isWrokType = NetWorkUtils.isWrokType(Utils.getContext());
        if (isWrokType != 0) {
        }
        return isWrokType;
    }
}
