package com.tencent.imsdk.utils;

import android.os.Build;
import android.util.Base64;
import com.google.android.gms.cast.CastStatusCodes;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class IMFunc {
    private static final char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public interface RequestListener {
        void onFail(String str);

        void onSuccess(byte[] bArr);
    }

    public static byte[] getHmacSHA1(byte[] bArr, String str) throws Exception {
        String str2 = "HmacSHA1";
        Mac instance = Mac.getInstance(str2);
        instance.init(new SecretKeySpec(str.getBytes(), str2));
        try {
            return instance.doFinal(bArr);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public static String base64Encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    public static byte[] gzCompress(String str) throws IOException {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static String byte2hex(byte[] bArr) {
        return byte2hexInternal(bArr);
    }

    public static String byte2hexInternal(byte[] bArr) {
        try {
            StringBuilder sb = new StringBuilder();
            if (!(bArr == null || bArr.length == 0)) {
                for (byte b : bArr) {
                    char c = digits[b & 15];
                    sb.append(digits[((byte) (b >>> 4)) & 15]);
                    sb.append(c);
                }
                return sb.toString();
            }
        } catch (OutOfMemoryError unused) {
            System.gc();
        }
        return "b2h failed";
    }

    public static String calcSHA(byte[] bArr) throws Exception {
        MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
        instance.update(bArr);
        return byte2hexInternal(instance.digest()).replace(" ", "");
    }

    public static String getExceptionInfo(Throwable th) {
        if (th == null) {
            return "";
        }
        String th2 = th.toString();
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                StringBuilder sb = new StringBuilder();
                sb.append(th2);
                sb.append("\n\tat ");
                sb.append(stackTraceElement.toString());
                th2 = sb.toString();
            }
        }
        return th2;
    }

    public static boolean httpPostReq(String str, final byte[] bArr, final Map<String, String> map, final RequestListener requestListener) {
        try {
            final HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            new Thread(new Runnable() {
                public void run() {
                    try {
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
                        httpURLConnection.setRequestProperty("connection", "close");
                        for (Entry entry : map.entrySet()) {
                            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        httpURLConnection.getOutputStream().write(bArr);
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(10240);
                        byte[] bArr = new byte[10240];
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read < 0) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (requestListener != null) {
                            requestListener.onSuccess(byteArray);
                        }
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        throw th;
                    }
                    httpURLConnection.disconnect();
                }
            }).start();
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            if (requestListener != null) {
                requestListener.onFail(getExceptionInfo(th));
            }
            return false;
        }
    }

    public static byte[] getParamBytes(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append("--");
        sb.append(str);
        sb.append("\r\nContent-Disposition: form-data; name=\"");
        sb.append(str2);
        sb.append("\"; filename=\"");
        sb.append(str3);
        sb.append("\"\r\n\r\n");
        sb.append(str4);
        sb.append("\r\n");
        return sb.toString().getBytes();
    }

    public static byte[] getParamBytes(String str, String str2, String str3, byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("--");
        sb.append(str);
        sb.append("\r\nContent-Disposition: form-data; name=\"");
        sb.append(str2);
        sb.append("\"; filename=\"");
        sb.append(str3);
        sb.append("\"\r\n\r\n");
        byte[] bytes = sb.toString().getBytes();
        byte[] bArr2 = new byte[(bytes.length + bArr.length + 2)];
        System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
        System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
        System.arraycopy("\r\n".getBytes(), 0, bArr2, bytes.length + bArr.length, 2);
        return bArr2;
    }

    public static String appSignature(int i, String str, String str2, long j, String str3, String str4) throws Exception {
        if (str == null || str2 == null || str3 == null || str4 == null) {
            return "-1";
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        int abs = Math.abs(new Random().nextInt());
        StringBuilder sb = new StringBuilder();
        sb.append("a=");
        sb.append(i);
        sb.append("&k=");
        sb.append(str);
        sb.append("&e=");
        sb.append(j + currentTimeMillis);
        sb.append("&t=");
        sb.append(currentTimeMillis);
        sb.append("&r=");
        sb.append(abs);
        sb.append("&f=");
        sb.append(str3);
        sb.append("&b=");
        sb.append(str4);
        String sb2 = sb.toString();
        byte[] hmacSHA1 = getHmacSHA1(sb2.getBytes(), str2);
        byte[] bArr = new byte[(hmacSHA1.length + sb2.getBytes().length)];
        System.arraycopy(hmacSHA1, 0, bArr, 0, hmacSHA1.length);
        System.arraycopy(sb2.getBytes(), 0, bArr, hmacSHA1.length, sb2.getBytes().length);
        return base64Encode(bArr);
    }

    public static int getClientInstType() {
        String str = Build.MANUFACTURER;
        if (isBrandXiaoMi()) {
            return 2000;
        }
        if (isBrandHuawei()) {
            return CastStatusCodes.INVALID_REQUEST;
        }
        if (isBrandMeizu()) {
            return CastStatusCodes.NOT_ALLOWED;
        }
        if (isBrandOppo()) {
            return CastStatusCodes.APPLICATION_NOT_FOUND;
        }
        return isBrandVivo() ? CastStatusCodes.APPLICATION_NOT_RUNNING : CastStatusCodes.CANCELED;
    }

    public static boolean isBrandXiaoMi() {
        String str = "xiaomi";
        return str.equalsIgnoreCase(Build.BRAND) || str.equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean isBrandHuawei() {
        String str = "huawei";
        return str.equalsIgnoreCase(Build.BRAND) || str.equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean isBrandMeizu() {
        String str = "meizu";
        if (!str.equalsIgnoreCase(Build.BRAND) && !str.equalsIgnoreCase(Build.MANUFACTURER)) {
            if (!"22c4185e".equalsIgnoreCase(Build.BRAND)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBrandOppo() {
        String str = "oppo";
        return str.equalsIgnoreCase(Build.BRAND) || str.equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean isBrandVivo() {
        String str = "vivo";
        return str.equalsIgnoreCase(Build.BRAND) || str.equalsIgnoreCase(Build.MANUFACTURER);
    }
}
