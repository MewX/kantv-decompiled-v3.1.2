package com.kantv.ui.m3u8downloader.utils;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public class AES128Utils {
    public static final String ENCODING = "UTF-8";

    public static String parseByte2HexStr(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & Draft_75.END_OF_FRAME);
            if (hexString.length() == 1) {
                StringBuilder sb = new StringBuilder();
                sb.append('0');
                sb.append(hexString);
                hexString = sb.toString();
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public static byte[] parseHexStr2Byte(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) ((Integer.parseInt(str.substring(i2, i3), 16) * 16) + Integer.parseInt(str.substring(i3, i2 + 2), 16));
        }
        return bArr;
    }

    public static String getAESKey() throws Exception {
        KeyGenerator instance = KeyGenerator.getInstance("AES");
        instance.init(128);
        return parseByte2HexStr(instance.generateKey().getEncoded());
    }

    public static byte[] getAESEncode(String str, String str2) throws Exception {
        return getAESEncode(str, str2.getBytes());
    }

    public static byte[] getAESEncode(String str, byte[] bArr) throws Exception {
        if (str == null) {
            return bArr;
        }
        String str2 = "AES";
        SecretKeySpec secretKeySpec = new SecretKeySpec(parseHexStr2Byte(str), str2);
        Cipher instance = Cipher.getInstance(str2);
        instance.init(1, secretKeySpec);
        return instance.doFinal(bArr);
    }

    public static byte[] getAESDecode(String str, String str2) throws Exception {
        return getAESDecode(str, str2.getBytes());
    }

    public static byte[] getAESDecode(String str, byte[] bArr) throws Exception {
        if (str == null) {
            return bArr;
        }
        String str2 = "AES";
        SecretKeySpec secretKeySpec = new SecretKeySpec(parseHexStr2Byte(str), str2);
        Cipher instance = Cipher.getInstance(str2);
        instance.init(2, secretKeySpec);
        return instance.doFinal(bArr);
    }
}
