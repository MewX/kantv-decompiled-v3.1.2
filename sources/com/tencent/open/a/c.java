package com.tencent.open.a;

import java.io.File;

/* compiled from: ProGuard */
public class c {
    public static int a = 60;
    public static int b = 60;
    public static String c = "OpenSDK.Client.File.Tracer";
    public static String d;
    public static String e = ".log";
    public static long f = 8388608;
    public static int g = 262144;
    public static int h = 1024;
    public static int i = 10000;
    public static String j = "debug.file.blockcount";
    public static String k = "debug.file.keepperiod";
    public static String l = "debug.file.tracelevel";
    public static int m = 24;
    public static long n = 604800000;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Tencent");
        sb.append(File.separator);
        sb.append("msflogs");
        sb.append(File.separator);
        sb.append("com");
        sb.append(File.separator);
        sb.append("tencent");
        sb.append(File.separator);
        sb.append("mobileqq");
        sb.append(File.separator);
        d = sb.toString();
    }
}
