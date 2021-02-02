package com.avos.avoscloud.im.v2.messages;

import android.os.Parcelable.Creator;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVHttpClient;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.GetHttpResponseHandler;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.im.v2.AVIMMessageCreator;
import com.avos.avoscloud.im.v2.AVIMMessageType;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request.Builder;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@AVIMMessageType(type = -2)
public class AVIMImageMessage extends AVIMFileMessage {
    public static final Creator<AVIMImageMessage> CREATOR = new AVIMMessageCreator(AVIMImageMessage.class);
    static final String IMAGE_HEIGHT = "height";
    static final String IMAGE_WIDTH = "width";

    public AVIMImageMessage() {
    }

    public AVIMImageMessage(String str) throws IOException {
        super(str);
    }

    public AVIMImageMessage(File file) throws IOException {
        super(file);
    }

    public AVIMImageMessage(AVFile aVFile) {
        super(aVFile);
    }

    public Map<String, Object> getFileMetaData() {
        if (this.file == null) {
            this.file = new HashMap();
        }
        String str = "metaData";
        if (this.file.containsKey(str)) {
            return (Map) this.file.get(str);
        }
        if (this.localFile != null) {
            Map<String, Object> imageMeta = AVIMFileMessageAccessor.getImageMeta(this.localFile);
            imageMeta.put("size", Integer.valueOf(this.actualFile.getSize()));
            this.file.put(str, imageMeta);
            return imageMeta;
        } else if (this.actualFile == null) {
            return null;
        } else {
            HashMap metaData = this.actualFile.getMetaData();
            this.file.put(str, metaData);
            return metaData;
        }
    }

    public int getHeight() {
        Map fileMetaData = getFileMetaData();
        if (fileMetaData != null) {
            String str = "height";
            if (fileMetaData.containsKey(str)) {
                return parseIntValue(fileMetaData.get(str));
            }
        }
        return 0;
    }

    public int getWidth() {
        Map fileMetaData = getFileMetaData();
        if (fileMetaData != null) {
            String str = "width";
            if (fileMetaData.containsKey(str)) {
                return parseIntValue(fileMetaData.get(str));
            }
        }
        return 0;
    }

    private static int parseIntValue(Object obj) {
        if (obj != null) {
            if ((obj instanceof Integer) || (obj instanceof Long)) {
                return ((Integer) obj).intValue();
            }
            if (obj instanceof Double) {
                return (int) ((Double) obj).doubleValue();
            }
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).intValue();
            }
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void getAdditionalMetaData(final Map<String, Object> map, final SaveCallback saveCallback) {
        if (AVUtils.isBlankString(this.actualFile.getUrl()) || this.localFile != null || isExternalAVFile(this.actualFile)) {
            saveCallback.internalDone(null);
            return;
        }
        AVHttpClient clientInstance = AVHttpClient.clientInstance();
        Builder builder = new Builder();
        StringBuilder sb = new StringBuilder();
        sb.append(this.actualFile.getUrl());
        sb.append("?imageInfo");
        builder.url(sb.toString()).get();
        clientInstance.execute(builder.build(), false, new GetHttpResponseHandler(new GenericObjectCallback() {
            public boolean isRequestStatisticNeed() {
                return false;
            }

            public void onSuccess(String str, AVException aVException) {
                String str2 = "width";
                String str3 = "height";
                String str4 = IjkMediaMeta.IJKM_KEY_FORMAT;
                try {
                    JSONObject parseObject = JSON.parseObject(str);
                    map.put(str4, parseObject.getString(str4));
                    map.put(str3, parseObject.getInteger(str3));
                    map.put(str2, parseObject.getInteger(str2));
                } catch (Exception e) {
                    saveCallback.internalDone(new AVException(e));
                }
                saveCallback.internalDone(null);
            }

            public void onFailure(Throwable th, String str) {
                saveCallback.internalDone(new AVException(th));
            }
        }));
    }
}
