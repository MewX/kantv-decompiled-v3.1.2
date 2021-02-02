package com.avos.avoscloud.im.v2.messages;

import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaMetadataRetriever;
import android.webkit.MimeTypeMap;
import com.avos.avoscloud.SaveCallback;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class AVIMFileMessageAccessor {
    public static void upload(AVIMFileMessage aVIMFileMessage, SaveCallback saveCallback) {
        aVIMFileMessage.upload(saveCallback);
    }

    public static Map<String, Object> mediaInfo(File file) {
        String str = IjkMediaMeta.IJKM_KEY_FORMAT;
        String str2 = "duration";
        HashMap hashMap = new HashMap();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
            String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
            String mimeType = getMimeType(file.getAbsolutePath());
            double parseLong = (double) Long.parseLong(extractMetadata);
            Double.isNaN(parseLong);
            double d = parseLong / 1000.0d;
            hashMap.put(str, mimeType);
            hashMap.put(str2, Double.valueOf(d));
        } catch (Exception unused) {
            hashMap.put(str2, Long.valueOf(0));
            hashMap.put(str, "");
        }
        return hashMap;
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    public static Map<String, Object> getImageMeta(File file) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        HashMap hashMap = new HashMap();
        hashMap.put(IjkMediaMeta.IJKM_KEY_FORMAT, str);
        hashMap.put("width", Integer.valueOf(i));
        hashMap.put("height", Integer.valueOf(i2));
        return hashMap;
    }
}
