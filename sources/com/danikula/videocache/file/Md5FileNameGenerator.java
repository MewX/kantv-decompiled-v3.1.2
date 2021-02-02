package com.danikula.videocache.file;

import android.text.TextUtils;
import com.danikula.videocache.ProxyCacheUtils;

public class Md5FileNameGenerator implements FileNameGenerator {
    private static final int MAX_EXTENSION_LENGTH = 4;

    public String generate(String str) {
        String extension = getExtension(str);
        String computeMD5 = ProxyCacheUtils.computeMD5(str);
        if (TextUtils.isEmpty(extension)) {
            return computeMD5;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(computeMD5);
        sb.append(".");
        sb.append(extension);
        return sb.toString();
    }

    private String getExtension(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return (lastIndexOf == -1 || lastIndexOf <= str.lastIndexOf(47) || (lastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(lastIndexOf + 1, str.length());
    }
}