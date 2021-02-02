package com.avos.avoscloud.utils;

import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVUtils;

public class AVFileUtil {
    public static String getFileMimeType(AVFile aVFile) {
        String name = aVFile.getName();
        String url = aVFile.getUrl();
        String str = AVFile.DEFAULTMIMETYPE;
        if (!AVUtils.isBlankString(name)) {
            return AVUtils.getMimeTypeFromLocalFile(name);
        }
        return !AVUtils.isBlankString(url) ? AVUtils.getMimeTypeFromUrl(url) : str;
    }
}
