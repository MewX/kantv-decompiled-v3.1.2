package com.kantv.flt_tencent_im.utils;

import com.avos.avoscloud.im.v2.Conversation;
import com.tencent.connect.common.Constants;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
    private static final String[] hexDigits = {"0", "1", "2", "3", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "a", "b", Conversation.CREATOR, "d", "e", "f"};
    private static MessageDigest messageDigest;

    static {
        messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r1v0, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r0v3, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r8v1 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x004a A[SYNTHETIC, Splitter:B:24:0x004a] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054 A[SYNTHETIC, Splitter:B:29:0x0054] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0065 A[SYNTHETIC, Splitter:B:37:0x0065] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x006f A[SYNTHETIC, Splitter:B:42:0x006f] */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getFileMD5String(java.io.File r9) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0043, all -> 0x0040 }
            r1.<init>(r9)     // Catch:{ IOException -> 0x0043, all -> 0x0040 }
            java.nio.channels.FileChannel r0 = r1.getChannel()     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            java.nio.channels.FileChannel$MapMode r3 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            r4 = 0
            long r6 = r9.length()     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            r2 = r0
            java.nio.MappedByteBuffer r9 = r2.map(r3, r4, r6)     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            java.security.MessageDigest r2 = messageDigest     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            r2.update(r9)     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            java.security.MessageDigest r9 = messageDigest     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            byte[] r9 = r9.digest()     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            java.lang.String r9 = bytesToHex(r9)     // Catch:{ IOException -> 0x003b, all -> 0x0039 }
            r1.close()     // Catch:{ IOException -> 0x002a }
            goto L_0x002e
        L_0x002a:
            r1 = move-exception
            r1.printStackTrace()
        L_0x002e:
            if (r0 == 0) goto L_0x005e
            r0.close()     // Catch:{ IOException -> 0x0034 }
            goto L_0x005e
        L_0x0034:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x005e
        L_0x0039:
            r9 = move-exception
            goto L_0x0063
        L_0x003b:
            r9 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L_0x0045
        L_0x0040:
            r9 = move-exception
            r1 = r0
            goto L_0x0063
        L_0x0043:
            r9 = move-exception
            r1 = r0
        L_0x0045:
            r9.printStackTrace()     // Catch:{ all -> 0x005f }
            if (r0 == 0) goto L_0x0052
            r0.close()     // Catch:{ IOException -> 0x004e }
            goto L_0x0052
        L_0x004e:
            r9 = move-exception
            r9.printStackTrace()
        L_0x0052:
            if (r1 == 0) goto L_0x005c
            r1.close()     // Catch:{ IOException -> 0x0058 }
            goto L_0x005c
        L_0x0058:
            r9 = move-exception
            r9.printStackTrace()
        L_0x005c:
            java.lang.String r9 = ""
        L_0x005e:
            return r9
        L_0x005f:
            r9 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
        L_0x0063:
            if (r1 == 0) goto L_0x006d
            r1.close()     // Catch:{ IOException -> 0x0069 }
            goto L_0x006d
        L_0x0069:
            r1 = move-exception
            r1.printStackTrace()
        L_0x006d:
            if (r0 == 0) goto L_0x0077
            r0.close()     // Catch:{ IOException -> 0x0073 }
            goto L_0x0077
        L_0x0073:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0077:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.MD5Utils.getFileMD5String(java.io.File):java.lang.String");
    }

    public static String getFileMD5String(String str) {
        return getFileMD5String(new File(str));
    }

    public static String getMD5String(String str) {
        return getMD5String(str.getBytes());
    }

    public static String getMD5String(byte[] bArr) {
        messageDigest.update(bArr);
        return bytesToHex(messageDigest.digest());
    }

    public static boolean checkPassword(String str, String str2) {
        return getMD5String(str).equalsIgnoreCase(str2);
    }

    public static boolean checkPassword(char[] cArr, String str) {
        return checkPassword(new String(cArr), str);
    }

    public static boolean checkFileMD5(File file, String str) {
        return getFileMD5String(file).equalsIgnoreCase(str);
    }

    public static boolean checkFileMD5(String str, String str2) {
        return checkFileMD5(new File(str), str2);
    }

    public static String bytesToHex(byte[] bArr) {
        return bytesToHex(bArr, 0, bArr.length);
    }

    public static String bytesToHex(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i + i2; i3++) {
            sb.append(byteToHex(bArr[i3]));
        }
        return sb.toString();
    }

    public static String byteToHex(byte b) {
        StringBuilder sb = new StringBuilder();
        sb.append(hexDigits[(b & 240) >> 4]);
        sb.append("");
        sb.append(hexDigits[b & 15]);
        return sb.toString();
    }

    public static String parseUrlToFileName(String str) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8)));
    }

    private static String byteArrayToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte byteToHexString : bArr) {
            stringBuffer.append(byteToHexString(byteToHexString));
        }
        return stringBuffer.toString();
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=byte, code=int, for r3v0, types: [byte, int] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String byteToHexString(int r3) {
        /*
            if (r3 >= 0) goto L_0x0004
            int r3 = r3 + 256
        L_0x0004:
            int r0 = r3 / 16
            int r3 = r3 % 16
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String[] r2 = hexDigits
            r0 = r2[r0]
            r1.append(r0)
            java.lang.String[] r0 = hexDigits
            r3 = r0[r3]
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.MD5Utils.byteToHexString(byte):java.lang.String");
    }
}
