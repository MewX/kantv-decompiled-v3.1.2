package com.kantv.common.log;

import android.util.Log;

public class AILog extends Constant {
    public static final String ADAPTER_MARK_TAG = "adapter_mark";
    public static final int DEFAULT_LOG_LEVEL = 1;
    private static final String LOG_PREFIX = "KanTV-";
    private static final String TAG = "AILog";
    private static int currentLogLevel = 1;

    public static void d(String str, String str2) {
    }

    public static void v(Object obj) {
        if (obj != null) {
            printLog(1, "", obj.toString());
        }
    }

    public static void v(String str, Object obj) {
        if (obj != null) {
            printLog(1, str, obj.toString());
        }
    }

    public static void v(String str, String str2) {
        if (str2 != null) {
            printLog(1, str, str2);
        }
    }

    public static void vHighFreq(Object obj) {
        if (obj != null) {
            printLogHighFreq(1, "", obj.toString());
        }
    }

    public static void vHighFreq(String str, Object obj) {
        if (obj != null) {
            printLogHighFreq(1, str, obj.toString());
        }
    }

    public static void vHighFreq(String str, String str2) {
        if (str2 != null) {
            printLogHighFreq(1, str, str2);
        }
    }

    public static void d(Object obj) {
        if (obj != null) {
            printLog(2, "", obj.toString());
        }
    }

    public static void d(String str, Object obj) {
        if (obj != null) {
            printLog(2, str, obj.toString());
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(10);
            sb.append(Log.getStackTraceString(th));
            printLog(2, str, sb.toString());
        }
    }

    public static void dHighFreq(Object obj) {
        if (obj != null) {
            printLogHighFreq(2, "", obj.toString());
        }
    }

    public static void dHighFreq(String str, Object obj) {
        if (obj != null) {
            printLogHighFreq(2, str, obj.toString());
        }
    }

    public static void dHighFreq(String str, String str2) {
        if (str2 != null) {
            printLogHighFreq(2, str, str2);
        }
    }

    public static void dHighFreq(String str, String str2, Throwable th) {
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(10);
            sb.append(Log.getStackTraceString(th));
            printLogHighFreq(2, str, sb.toString());
        }
    }

    public static void i(Object obj) {
        if (obj != null) {
            printLog(3, "", obj.toString());
        }
    }

    public static void i(String str, Object obj) {
        if (obj != null) {
            printLog(3, str, obj.toString());
        }
    }

    public static void i(String str, String str2) {
        if (str2 != null) {
            printLog(3, str, str2);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(10);
            sb.append(Log.getStackTraceString(th));
            printLog(3, str, sb.toString());
        }
    }

    public static void i(String str, String str2, byte[]... bArr) {
        for (int i = 0; i < bArr.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("\nargs[");
            sb.append(i);
            sb.append("]: ");
            sb.append(new String(bArr[i]));
            str2 = sb.toString();
        }
        printLog(3, str, str2);
    }

    public static void i(String str, String str2, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("\nargs[");
            sb.append(i);
            sb.append("]: ");
            sb.append(strArr[i]);
            str2 = sb.toString();
        }
        printLog(3, str, str2);
    }

    public static void w(Object obj) {
        if (obj != null) {
            printLog(4, "", obj.toString());
        }
    }

    public static void w(String str, Object obj) {
        if (obj != null) {
            printLog(4, str, obj.toString());
        }
    }

    public static void w(String str, String str2) {
        if (str2 != null) {
            printLog(4, str, str2);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(10);
            sb.append(Log.getStackTraceString(th));
            printLog(4, str, sb.toString());
        }
    }

    public static void e(Object obj) {
        if (obj != null) {
            printLog(5, "", obj.toString());
        }
    }

    public static void e(String str, Object obj) {
        if (obj != null) {
            printLog(5, str, obj.toString());
        }
    }

    public static void e(String str, String str2) {
        if (str2 != null) {
            printLog(5, str, str2);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(10);
            sb.append(Log.getStackTraceString(th));
            printLog(5, str, sb.toString());
        }
    }

    public static void a(Object obj) {
        if (obj != null) {
            printLog(6, "", obj.toString());
        }
    }

    public static void a(String str, Object obj) {
        if (obj != null) {
            printLog(6, str, obj.toString());
        }
    }

    public static void a(String str, String str2) {
        if (str2 != null) {
            printLog(6, str, str2);
        }
    }

    public static void wtf(String str, String str2) {
        if (str2 != null) {
            Log.wtf(str, str2);
        }
    }

    public static void wtf(String str, Throwable th) {
        if (th != null) {
            Log.wtf(str, th);
        }
    }

    public static void wtf(String str, String str2, Throwable th) {
        if (th != null) {
            Log.wtf(str, str2, th);
        }
    }

    public static void json(String str) {
        printLog(7, "", str);
    }

    public static void json(String str, String str2) {
        printLog(7, str, str2);
    }

    @Deprecated
    public static void snipet(String str, String str2) {
        int i = 0;
        while (i <= str2.length() / 1000) {
            int i2 = i * 1000;
            i++;
            int i3 = i * 1000;
            if (i3 > str2.length()) {
                i3 = str2.length();
            }
            printLog(3, str, str2.substring(i2, i3));
        }
    }

    private static synchronized void printLogHighFreq(int i, String str, String str2) {
        synchronized (AILog.class) {
            printLog(i, str, str2, true);
        }
    }

    private static synchronized void printLog(int i, String str, String str2) {
        synchronized (AILog.class) {
            printLog(i, str, str2, false);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0010, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a4, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0009, code lost:
        if (currentLogLevel <= 3) goto L_0x000b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized void printLog(int r7, java.lang.String r8, java.lang.String r9, boolean r10) {
        /*
            java.lang.Class<com.kantv.common.log.AILog> r10 = com.kantv.common.log.AILog.class
            monitor-enter(r10)
            r0 = 7
            if (r7 != r0) goto L_0x000b
            int r0 = currentLogLevel     // Catch:{ all -> 0x00a5 }
            r1 = 3
            if (r0 > r1) goto L_0x000f
        L_0x000b:
            int r0 = currentLogLevel     // Catch:{ all -> 0x00a5 }
            if (r0 <= r7) goto L_0x0011
        L_0x000f:
            monitor-exit(r10)
            return
        L_0x0011:
            if (r9 != 0) goto L_0x0015
            java.lang.String r9 = "(null)"
        L_0x0015:
            java.lang.String r0 = ""
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a5 }
            r1.<init>()     // Catch:{ all -> 0x00a5 }
            int r2 = currentLogLevel     // Catch:{ all -> 0x00a5 }
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            r4 = 1
            if (r2 != r4) goto L_0x002f
            long r5 = java.lang.System.nanoTime()     // Catch:{ all -> 0x00a5 }
            float r2 = (float) r5     // Catch:{ all -> 0x00a5 }
            float r2 = r2 / r3
            java.lang.Float r2 = java.lang.Float.valueOf(r2)     // Catch:{ all -> 0x00a5 }
            goto L_0x0031
        L_0x002f:
            java.lang.String r2 = ""
        L_0x0031:
            r1.append(r2)     // Catch:{ all -> 0x00a5 }
            java.lang.String r2 = "\t"
            r1.append(r2)     // Catch:{ all -> 0x00a5 }
            r1.append(r0)     // Catch:{ all -> 0x00a5 }
            r1.append(r9)     // Catch:{ all -> 0x00a5 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00a5 }
            switch(r7) {
                case 1: goto L_0x008f;
                case 2: goto L_0x008f;
                case 3: goto L_0x008f;
                case 4: goto L_0x008f;
                case 5: goto L_0x008f;
                case 6: goto L_0x008f;
                case 7: goto L_0x0047;
                default: goto L_0x0046;
            }     // Catch:{ all -> 0x00a5 }
        L_0x0046:
            goto L_0x00a3
        L_0x0047:
            int r7 = currentLogLevel     // Catch:{ all -> 0x00a5 }
            if (r7 != r4) goto L_0x007a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a5 }
            r7.<init>()     // Catch:{ all -> 0x00a5 }
            java.lang.String r1 = "KanTV-"
            r7.append(r1)     // Catch:{ all -> 0x00a5 }
            r7.append(r8)     // Catch:{ all -> 0x00a5 }
            java.lang.String r7 = r7.toString()     // Catch:{ all -> 0x00a5 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a5 }
            r8.<init>()     // Catch:{ all -> 0x00a5 }
            long r1 = java.lang.System.nanoTime()     // Catch:{ all -> 0x00a5 }
            float r1 = (float) r1     // Catch:{ all -> 0x00a5 }
            float r1 = r1 / r3
            r8.append(r1)     // Catch:{ all -> 0x00a5 }
            java.lang.String r1 = "\t"
            r8.append(r1)     // Catch:{ all -> 0x00a5 }
            r8.append(r9)     // Catch:{ all -> 0x00a5 }
            java.lang.String r8 = r8.toString()     // Catch:{ all -> 0x00a5 }
            com.kantv.common.log.JsonLog.printJson(r7, r8, r0)     // Catch:{ all -> 0x00a5 }
            goto L_0x00a3
        L_0x007a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a5 }
            r7.<init>()     // Catch:{ all -> 0x00a5 }
            java.lang.String r1 = "KanTV-"
            r7.append(r1)     // Catch:{ all -> 0x00a5 }
            r7.append(r8)     // Catch:{ all -> 0x00a5 }
            java.lang.String r7 = r7.toString()     // Catch:{ all -> 0x00a5 }
            com.kantv.common.log.JsonLog.printJson(r7, r9, r0)     // Catch:{ all -> 0x00a5 }
            goto L_0x00a3
        L_0x008f:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a5 }
            r9.<init>()     // Catch:{ all -> 0x00a5 }
            java.lang.String r0 = "KanTV-"
            r9.append(r0)     // Catch:{ all -> 0x00a5 }
            r9.append(r8)     // Catch:{ all -> 0x00a5 }
            java.lang.String r8 = r9.toString()     // Catch:{ all -> 0x00a5 }
            com.kantv.common.log.BaseLog.printDefault(r7, r8, r1)     // Catch:{ all -> 0x00a5 }
        L_0x00a3:
            monitor-exit(r10)
            return
        L_0x00a5:
            r7 = move-exception
            monitor-exit(r10)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.common.log.AILog.printLog(int, java.lang.String, java.lang.String, boolean):void");
    }

    public static int getLogLevel() {
        return currentLogLevel;
    }

    public static void setLogLevel(int i) {
        if (currentLogLevel != i) {
            String str = TAG;
            if (i > 5) {
                printLog(5, str, "Set log level failed . wrong log level");
            }
            StringBuilder sb = new StringBuilder();
            sb.append("log.level ");
            sb.append(currentLogLevel);
            sb.append("->");
            sb.append(i);
            w(str, sb.toString());
            currentLogLevel = i;
        }
    }
}
