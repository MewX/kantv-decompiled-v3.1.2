package com.tencent.wxop.stat.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

class m {
    static int a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new n()).length;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    static int b() {
        int i = 0;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"}).start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(new String(bArr));
                str = sb.toString();
            }
            inputStream.close();
            String trim = str.trim();
            if (trim.length() > 0) {
                i = Integer.valueOf(trim).intValue();
            }
        } catch (Exception e) {
            l.k.e((Throwable) e);
        }
        return i * 1000;
    }

    static int c() {
        int i = 0;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"}).start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(new String(bArr));
                str = sb.toString();
            }
            inputStream.close();
            String trim = str.trim();
            if (trim.length() > 0) {
                i = Integer.valueOf(trim).intValue();
            }
        } catch (Throwable th) {
            l.k.e(th);
        }
        return i * 1000;
    }

    static String d() {
        String str = "";
        String[] strArr = {str, str};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            String[] split = bufferedReader.readLine().split("\\s+");
            for (int i = 2; i < split.length; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append(strArr[0]);
                sb.append(split[i]);
                sb.append(" ");
                strArr[0] = sb.toString();
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return strArr[0];
    }
}
