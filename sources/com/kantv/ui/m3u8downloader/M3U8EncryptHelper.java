package com.kantv.ui.m3u8downloader;

import android.text.TextUtils;
import com.kantv.ui.m3u8downloader.utils.AES128Utils;
import com.kantv.ui.m3u8downloader.utils.MUtils;

public class M3U8EncryptHelper {
    public static void decryptTsFilesName(String str, String str2) throws Exception {
    }

    public static void encryptTsFilesName(String str, String str2) throws Exception {
    }

    public static void encryptFile(String str, String str2) throws Exception {
        if (!TextUtils.isEmpty(str)) {
            MUtils.saveFile(AES128Utils.getAESEncode(str, MUtils.readFile(str2)), str2);
        }
    }

    public static void decryptFile(String str, String str2) throws Exception {
        if (!TextUtils.isEmpty(str)) {
            MUtils.saveFile(AES128Utils.getAESDecode(str, MUtils.readFile(str2)), str2);
        }
    }

    public static String encryptFileName(String str, String str2) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return AES128Utils.parseByte2HexStr(AES128Utils.getAESEncode(str, str2));
    }

    public static String decryptFileName(String str, String str2) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return new String(AES128Utils.getAESDecode(str, AES128Utils.parseHexStr2Byte(str2)));
    }
}
