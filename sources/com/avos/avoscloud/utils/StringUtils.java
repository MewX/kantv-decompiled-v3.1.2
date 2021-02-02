package com.avos.avoscloud.utils;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class StringUtils {
    static Random random = new Random(System.currentTimeMillis());

    public static String join(CharSequence charSequence, Iterable<? extends CharSequence> iterable) {
        if (charSequence == null || iterable == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (CharSequence charSequence2 : iterable) {
            if (!z) {
                sb.append(charSequence);
            } else {
                z = false;
            }
            sb.append(charSequence2);
        }
        return sb.toString();
    }

    public static boolean isDigitString(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBlankString(String str) {
        return str == null || str.trim().equals("");
    }

    public static boolean isBlankJsonContent(String str) {
        return isBlankString(str) || str.trim().equals("{}");
    }

    public static String stringFromBytes(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String md5(String str) {
        try {
            return computeMD5(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Huh,UTF-8 should be supported?", e);
        }
    }

    public static String computeMD5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr, 0, bArr.length);
            return hexEncodeBytes(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static String hexEncodeBytes(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & Draft_75.END_OF_FRAME);
            if (hexString.length() == 1) {
                stringBuffer.append('0');
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static String getRandomString(int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        return sb.toString();
    }
}
