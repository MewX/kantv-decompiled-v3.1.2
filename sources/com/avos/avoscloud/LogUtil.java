package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import java.io.PrintStream;
import java.util.Map;

public class LogUtil {
    /* access modifiers changed from: private */
    public static AVLogger logger = new AVInternalLogger();

    public static class avlog {
        public static boolean showAVLog = true;

        public static void i(String str) {
            if (showAVLog) {
                log.i(str);
            }
        }

        public static void i(Object obj) {
            if (showAVLog) {
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(obj);
                log.i(sb.toString());
            }
        }

        public static void d(String str) {
            if (showAVLog) {
                log.d(str);
            }
        }

        public static void e(String str) {
            if (showAVLog) {
                log.e(str);
            }
        }

        public static void e(String str, Exception exc) {
            if (showAVLog) {
                log.e(str, exc);
            }
        }
    }

    public static class log {
        public static String Cname = "";
        public static String Mname = "";
        public static final String Tag = "===AVOS Cloud===";
        public static final boolean show = true;

        private static boolean shouldShow(int i) {
            return (i & LogUtil.logger.getLogLevel()) > 0;
        }

        protected static void getTrace() {
            StackTraceElement stackTraceElement = new Throwable().fillInStackTrace().getStackTrace()[2];
            StringBuilder sb = new StringBuilder();
            sb.append(stackTraceElement.getClassName());
            String sb2 = sb.toString();
            Cname = sb2.substring(sb2.lastIndexOf(".") + 1);
            StringBuilder sb3 = new StringBuilder();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(stackTraceElement.getMethodName());
            sb4.append("->");
            sb4.append(stackTraceElement.getLineNumber());
            sb4.append(": ");
            sb3.append(sb4.toString());
            Mname = sb3.toString();
        }

        public static void v(String str) {
            if (shouldShow(2)) {
                getTrace();
                if (str == null) {
                    str = "null";
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Mname);
                sb.append(str);
                access$000.v(Tag, sb.toString());
            }
        }

        public static void d(String str) {
            if (shouldShow(4)) {
                getTrace();
                if (str == null) {
                    str = "null";
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str);
                access$000.d(Tag, sb.toString());
            }
        }

        public static void d(Map<String, Object> map) {
            String str;
            if (shouldShow(4)) {
                getTrace();
                if (map == null) {
                    str = "null";
                } else {
                    try {
                        str = JSON.toJSONString(map);
                    } catch (Exception unused) {
                        str = "";
                    }
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str);
                access$000.d(Tag, sb.toString());
            }
        }

        public static void d(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(i);
            d(sb.toString());
        }

        public static void d(float f) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(f);
            d(sb.toString());
        }

        public static void d(double d) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(d);
            d(sb.toString());
        }

        public static void d() {
            if (shouldShow(4)) {
                getTrace();
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append("===AVOS Cloud===->");
                sb.append(Mname);
                sb.append("");
                access$000.d(Tag, sb.toString());
            }
        }

        public static void d(String str, String str2) {
            if (shouldShow(4)) {
                getTrace();
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str2);
                access$000.d(str, sb.toString());
            }
        }

        public static void d(String str, Exception exc) {
            if (shouldShow(32)) {
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str);
                sb.append(":");
                sb.append(exc.toString());
                LogUtil.logger.d(Tag, sb.toString());
                exc.printStackTrace();
            }
        }

        public static void i(String str) {
            if (shouldShow(8)) {
                getTrace();
                if (str == null) {
                    str = "null";
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Mname);
                sb.append(str);
                access$000.i(Tag, sb.toString());
            }
        }

        public static void w(String str) {
            if (shouldShow(16)) {
                getTrace();
                if (str == null) {
                    str = "null";
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Mname);
                sb.append(str);
                access$000.w(Tag, sb.toString());
            }
        }

        public static void e(String str) {
            if (shouldShow(32)) {
                getTrace();
                if (str == null) {
                    str = "null";
                }
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str);
                access$000.e(Tag, sb.toString());
            }
        }

        public static void e() {
            if (shouldShow(32)) {
                getTrace();
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append("");
                access$000.e(Tag, sb.toString());
            }
        }

        public static void e(String str, Exception exc) {
            if (shouldShow(32)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(Mname);
                sb.append("err:");
                sb.append(exc.toString());
                LogUtil.logger.e(Tag, sb.toString());
                exc.printStackTrace();
            }
        }

        public static void e(String str, String str2) {
            if (shouldShow(32)) {
                getTrace();
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str2);
                access$000.e(str, sb.toString());
            }
        }

        public static void e(String str, String str2, Exception exc) {
            if (shouldShow(32)) {
                getTrace();
                AVLogger access$000 = LogUtil.logger;
                StringBuilder sb = new StringBuilder();
                sb.append(Cname);
                sb.append("->");
                sb.append(Mname);
                sb.append(str2);
                sb.append(" err:");
                sb.append(exc.toString());
                access$000.e(str, sb.toString());
            }
        }
    }

    public static void setLogInstance(AVLogger aVLogger) {
        logger = aVLogger;
    }

    public static void printStackTrace() {
        System.out.println("Printing stack trace:");
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i = 1; i < stackTrace.length; i++) {
            StackTraceElement stackTraceElement = stackTrace[i];
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("\tat ");
            sb.append(stackTraceElement.getClassName());
            sb.append(".");
            sb.append(stackTraceElement.getMethodName());
            sb.append("(");
            sb.append(stackTraceElement.getFileName());
            sb.append(":");
            sb.append(stackTraceElement.getLineNumber());
            sb.append(")");
            printStream.println(sb.toString());
        }
    }
}
