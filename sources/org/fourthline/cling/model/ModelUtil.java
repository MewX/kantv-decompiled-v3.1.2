package org.fourthline.cling.model;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

public class ModelUtil {
    public static final boolean ANDROID_EMULATOR;
    public static final boolean ANDROID_RUNTIME;

    static {
        boolean z;
        String str = "android.os.Build";
        boolean z2 = false;
        try {
            if (Thread.currentThread().getContextClassLoader().loadClass(str).getField("ID").get(null) != null) {
                z = true;
                ANDROID_RUNTIME = z;
                String str2 = (String) Thread.currentThread().getContextClassLoader().loadClass(str).getField("PRODUCT").get(null);
                if (CommonUtils.GOOGLE_SDK.equals(str2) || CommonUtils.SDK.equals(str2)) {
                    z2 = true;
                }
                ANDROID_EMULATOR = z2;
            }
        } catch (Exception unused) {
        }
        z = false;
        ANDROID_RUNTIME = z;
        try {
            String str22 = (String) Thread.currentThread().getContextClassLoader().loadClass(str).getField("PRODUCT").get(null);
            z2 = true;
        } catch (Exception unused2) {
        }
        ANDROID_EMULATOR = z2;
    }

    public static boolean isStringConvertibleType(Set<Class> set, Class cls) {
        if (cls.isEnum()) {
            return true;
        }
        for (Class isAssignableFrom : set) {
            if (isAssignableFrom.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidUDAName(String str) {
        boolean z = true;
        if (ANDROID_RUNTIME) {
            if (str == null || str.length() == 0) {
                z = false;
            }
            return z;
        }
        if (str == null || str.length() == 0 || str.toLowerCase(Locale.ROOT).startsWith("xml") || !str.matches(Constants.REGEX_UDA_NAME)) {
            z = false;
        }
        return z;
    }

    public static InetAddress getInetAddressByName(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String toCommaSeparatedList(Object[] objArr) {
        return toCommaSeparatedList(objArr, true, false);
    }

    public static String toCommaSeparatedList(Object[] objArr, boolean z, boolean z2) {
        if (objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            String replaceAll = obj.toString().replaceAll("\\\\", "\\\\\\\\");
            String str = ",";
            if (z) {
                replaceAll = replaceAll.replaceAll(str, "\\\\,");
            }
            if (z2) {
                replaceAll = replaceAll.replaceAll("\"", "\\\"");
            }
            sb.append(replaceAll);
            sb.append(str);
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public static String[] fromCommaSeparatedList(String str) {
        return fromCommaSeparatedList(str, true);
    }

    public static String[] fromCommaSeparatedList(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return null;
        }
        String str2 = "XXX1122334455XXX";
        if (z) {
            str = str.replaceAll("\\\\,", str2);
        }
        String str3 = ",";
        String[] split = str.split(str3);
        for (int i = 0; i < split.length; i++) {
            split[i] = split[i].replaceAll(str2, str3);
            split[i] = split[i].replaceAll("\\\\\\\\", "\\\\");
        }
        return split;
    }

    public static String toTimeString(long j) {
        long j2 = j / 3600;
        long j3 = j % 3600;
        long j4 = j3 / 60;
        long j5 = j3 % 60;
        StringBuilder sb = new StringBuilder();
        String str = "0";
        String str2 = "";
        sb.append(j2 < 10 ? str : str2);
        sb.append(j2);
        String str3 = ":";
        sb.append(str3);
        sb.append(j4 < 10 ? str : str2);
        sb.append(j4);
        sb.append(str3);
        if (j5 >= 10) {
            str = str2;
        }
        sb.append(str);
        sb.append(j5);
        return sb.toString();
    }

    public static long fromTimeString(String str) {
        String str2 = ".";
        if (str.lastIndexOf(str2) != -1) {
            str = str.substring(0, str.lastIndexOf(str2));
        }
        String[] split = str.split(":");
        if (split.length == 3) {
            return (Long.parseLong(split[0]) * 3600) + (Long.parseLong(split[1]) * 60) + Long.parseLong(split[2]);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse time string: ");
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    public static String commaToNewline(String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = ",";
        for (String append : str.split(str2)) {
            sb.append(append);
            sb.append(str2);
            sb.append("\n");
        }
        if (sb.length() > 2) {
            sb.deleteCharAt(sb.length() - 2);
        }
        return sb.toString();
    }

    public static String getLocalHostName(boolean z) {
        String str = ".";
        try {
            String hostName = InetAddress.getLocalHost().getHostName();
            if (!z) {
                if (hostName.indexOf(str) != -1) {
                    hostName = hostName.substring(0, hostName.indexOf(str));
                }
            }
            return hostName;
        } catch (Exception unused) {
            return "UNKNOWN HOST";
        }
    }

    public static byte[] getFirstNetworkInterfaceHardwareAddress() {
        String str = "Could not discover first network interface hardware address";
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                NetworkInterface networkInterface = (NetworkInterface) it.next();
                if (!networkInterface.isLoopback() && networkInterface.isUp() && networkInterface.getHardwareAddress() != null) {
                    return networkInterface.getHardwareAddress();
                }
            }
            throw new RuntimeException(str);
        } catch (Exception unused) {
            throw new RuntimeException(str);
        }
    }
}
