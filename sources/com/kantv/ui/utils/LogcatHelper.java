package com.kantv.ui.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class LogcatHelper {
    private static LogcatHelper INSTANCE;
    private static String PATH_LOGCAT;
    private LogDumper mLogDumper = null;
    private int mPId;

    private class LogDumper extends Thread {
        String cmds = null;
        private Process logcatProc;
        private String mPID;
        private BufferedReader mReader = null;
        private boolean mRunning = true;
        private FileOutputStream out = null;

        public LogDumper(String str, String str2) {
            this.mPID = str;
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("GPS-");
                sb.append(MyDate.getFileName());
                sb.append(".log");
                this.out = new FileOutputStream(new File(str2, sb.toString()));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("logcat *:e *:i | grep \"(");
            sb2.append(this.mPID);
            sb2.append(")\"");
            this.cmds = sb2.toString();
        }

        public void stopLogs() {
            this.mRunning = false;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0084, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
            r1.printStackTrace();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x0099, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:63:0x00cd, code lost:
            if (r5.logcatProc != null) goto L_0x00cf;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:64:0x00cf, code lost:
            r5.logcatProc.destroy();
            r5.logcatProc = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:66:0x00d8, code lost:
            if (r5.mReader != null) goto L_0x00da;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
            r5.mReader.close();
            r5.mReader = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:69:0x00e2, code lost:
            r2 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:71:?, code lost:
            r2.printStackTrace();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:73:0x00e8, code lost:
            if (r5.out != null) goto L_0x00ea;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:75:?, code lost:
            r5.out.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:76:0x00f0, code lost:
            r2 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:78:?, code lost:
            r2.printStackTrace();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:79:0x00f4, code lost:
            r5.out = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:80:0x00f6, code lost:
            throw r1;
         */
        /* JADX WARNING: Exception block dominator not found, dom blocks: [B:25:0x007c, B:40:0x009c] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r5 = this;
                monitor-enter(r5)
                r0 = 0
                java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch:{ IOException -> 0x009b }
                java.lang.String r2 = r5.cmds     // Catch:{ IOException -> 0x009b }
                java.lang.Process r1 = r1.exec(r2)     // Catch:{ IOException -> 0x009b }
                r5.logcatProc = r1     // Catch:{ IOException -> 0x009b }
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x009b }
                java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x009b }
                java.lang.Process r3 = r5.logcatProc     // Catch:{ IOException -> 0x009b }
                java.io.InputStream r3 = r3.getInputStream()     // Catch:{ IOException -> 0x009b }
                r2.<init>(r3)     // Catch:{ IOException -> 0x009b }
                r3 = 1024(0x400, float:1.435E-42)
                r1.<init>(r2, r3)     // Catch:{ IOException -> 0x009b }
                r5.mReader = r1     // Catch:{ IOException -> 0x009b }
            L_0x0022:
                boolean r1 = r5.mRunning     // Catch:{ IOException -> 0x009b }
                if (r1 == 0) goto L_0x006d
                java.io.BufferedReader r1 = r5.mReader     // Catch:{ IOException -> 0x009b }
                java.lang.String r1 = r1.readLine()     // Catch:{ IOException -> 0x009b }
                if (r1 == 0) goto L_0x006d
                boolean r2 = r5.mRunning     // Catch:{ IOException -> 0x009b }
                if (r2 != 0) goto L_0x0033
                goto L_0x006d
            L_0x0033:
                int r2 = r1.length()     // Catch:{ IOException -> 0x009b }
                if (r2 != 0) goto L_0x003a
                goto L_0x0022
            L_0x003a:
                java.io.FileOutputStream r2 = r5.out     // Catch:{ IOException -> 0x009b }
                if (r2 == 0) goto L_0x0022
                java.lang.String r2 = r5.mPID     // Catch:{ IOException -> 0x009b }
                boolean r2 = r1.contains(r2)     // Catch:{ IOException -> 0x009b }
                if (r2 == 0) goto L_0x0022
                java.io.FileOutputStream r2 = r5.out     // Catch:{ IOException -> 0x009b }
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x009b }
                r3.<init>()     // Catch:{ IOException -> 0x009b }
                java.lang.String r4 = com.kantv.ui.utils.MyDate.getDateEN()     // Catch:{ IOException -> 0x009b }
                r3.append(r4)     // Catch:{ IOException -> 0x009b }
                java.lang.String r4 = "  "
                r3.append(r4)     // Catch:{ IOException -> 0x009b }
                r3.append(r1)     // Catch:{ IOException -> 0x009b }
                java.lang.String r1 = "\n"
                r3.append(r1)     // Catch:{ IOException -> 0x009b }
                java.lang.String r1 = r3.toString()     // Catch:{ IOException -> 0x009b }
                byte[] r1 = r1.getBytes()     // Catch:{ IOException -> 0x009b }
                r2.write(r1)     // Catch:{ IOException -> 0x009b }
                goto L_0x0022
            L_0x006d:
                java.lang.Process r1 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x0078
                java.lang.Process r1 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                r1.destroy()     // Catch:{ all -> 0x00f7 }
                r5.logcatProc = r0     // Catch:{ all -> 0x00f7 }
            L_0x0078:
                java.io.BufferedReader r1 = r5.mReader     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x0088
                java.io.BufferedReader r1 = r5.mReader     // Catch:{ IOException -> 0x0084 }
                r1.close()     // Catch:{ IOException -> 0x0084 }
                r5.mReader = r0     // Catch:{ IOException -> 0x0084 }
                goto L_0x0088
            L_0x0084:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ all -> 0x00f7 }
            L_0x0088:
                java.io.FileOutputStream r1 = r5.out     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x00c9
                java.io.FileOutputStream r1 = r5.out     // Catch:{ IOException -> 0x0092 }
                r1.close()     // Catch:{ IOException -> 0x0092 }
                goto L_0x0096
            L_0x0092:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ all -> 0x00f7 }
            L_0x0096:
                r5.out = r0     // Catch:{ all -> 0x00f7 }
                goto L_0x00c9
            L_0x0099:
                r1 = move-exception
                goto L_0x00cb
            L_0x009b:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ all -> 0x0099 }
                java.lang.Process r1 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x00aa
                java.lang.Process r1 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                r1.destroy()     // Catch:{ all -> 0x00f7 }
                r5.logcatProc = r0     // Catch:{ all -> 0x00f7 }
            L_0x00aa:
                java.io.BufferedReader r1 = r5.mReader     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x00ba
                java.io.BufferedReader r1 = r5.mReader     // Catch:{ IOException -> 0x00b6 }
                r1.close()     // Catch:{ IOException -> 0x00b6 }
                r5.mReader = r0     // Catch:{ IOException -> 0x00b6 }
                goto L_0x00ba
            L_0x00b6:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ all -> 0x00f7 }
            L_0x00ba:
                java.io.FileOutputStream r1 = r5.out     // Catch:{ all -> 0x00f7 }
                if (r1 == 0) goto L_0x00c9
                java.io.FileOutputStream r1 = r5.out     // Catch:{ IOException -> 0x00c4 }
                r1.close()     // Catch:{ IOException -> 0x00c4 }
                goto L_0x0096
            L_0x00c4:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ all -> 0x00f7 }
                goto L_0x0096
            L_0x00c9:
                monitor-exit(r5)     // Catch:{ all -> 0x00f7 }
                return
            L_0x00cb:
                java.lang.Process r2 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                if (r2 == 0) goto L_0x00d6
                java.lang.Process r2 = r5.logcatProc     // Catch:{ all -> 0x00f7 }
                r2.destroy()     // Catch:{ all -> 0x00f7 }
                r5.logcatProc = r0     // Catch:{ all -> 0x00f7 }
            L_0x00d6:
                java.io.BufferedReader r2 = r5.mReader     // Catch:{ all -> 0x00f7 }
                if (r2 == 0) goto L_0x00e6
                java.io.BufferedReader r2 = r5.mReader     // Catch:{ IOException -> 0x00e2 }
                r2.close()     // Catch:{ IOException -> 0x00e2 }
                r5.mReader = r0     // Catch:{ IOException -> 0x00e2 }
                goto L_0x00e6
            L_0x00e2:
                r2 = move-exception
                r2.printStackTrace()     // Catch:{ all -> 0x00f7 }
            L_0x00e6:
                java.io.FileOutputStream r2 = r5.out     // Catch:{ all -> 0x00f7 }
                if (r2 == 0) goto L_0x00f6
                java.io.FileOutputStream r2 = r5.out     // Catch:{ IOException -> 0x00f0 }
                r2.close()     // Catch:{ IOException -> 0x00f0 }
                goto L_0x00f4
            L_0x00f0:
                r2 = move-exception
                r2.printStackTrace()     // Catch:{ all -> 0x00f7 }
            L_0x00f4:
                r5.out = r0     // Catch:{ all -> 0x00f7 }
            L_0x00f6:
                throw r1     // Catch:{ all -> 0x00f7 }
            L_0x00f7:
                r0 = move-exception
                monitor-exit(r5)     // Catch:{ all -> 0x00f7 }
                goto L_0x00fb
            L_0x00fa:
                throw r0
            L_0x00fb:
                goto L_0x00fa
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.utils.LogcatHelper.LogDumper.run():void");
        }
    }

    public void init(Context context) {
        String str = "logs";
        if (Environment.getExternalStorageState().equals("mounted")) {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
            sb.append(File.separator);
            sb.append(str);
            PATH_LOGCAT = sb.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(context.getFilesDir().getAbsolutePath());
            sb2.append(File.separator);
            sb2.append(str);
            PATH_LOGCAT = sb2.toString();
        }
        File file = new File(PATH_LOGCAT);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static LogcatHelper getInstance(Context context) {
        if (INSTANCE == null) {
            INSTANCE = new LogcatHelper(context);
        }
        return INSTANCE;
    }

    private LogcatHelper(Context context) {
        init(context);
        this.mPId = Process.myPid();
    }

    public void start() {
        if (this.mLogDumper == null) {
            this.mLogDumper = new LogDumper(String.valueOf(this.mPId), PATH_LOGCAT);
        }
        this.mLogDumper.start();
    }

    public void stop() {
        LogDumper logDumper = this.mLogDumper;
        if (logDumper != null) {
            logDumper.stopLogs();
            this.mLogDumper = null;
        }
    }
}
