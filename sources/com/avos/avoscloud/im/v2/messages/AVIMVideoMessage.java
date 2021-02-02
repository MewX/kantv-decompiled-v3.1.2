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
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request.Builder;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@AVIMMessageType(type = -4)
public class AVIMVideoMessage extends AVIMFileMessage {
    public static final Creator<AVIMVideoMessage> CREATOR = new AVIMMessageCreator(AVIMVideoMessage.class);

    public AVIMVideoMessage() {
    }

    public AVIMVideoMessage(String str) throws IOException {
        super(str);
    }

    public AVIMVideoMessage(File file) throws IOException {
        super(file);
    }

    public AVIMVideoMessage(AVFile aVFile) {
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
            Map<String, Object> mediaInfo = AVIMFileMessageAccessor.mediaInfo(this.localFile);
            mediaInfo.put("size", Integer.valueOf(this.actualFile.getSize()));
            this.file.put(str, mediaInfo);
            return mediaInfo;
        } else if (this.actualFile == null) {
            return null;
        } else {
            HashMap metaData = this.actualFile.getMetaData();
            this.file.put(str, metaData);
            return metaData;
        }
    }

    public double getDuration() {
        Map fileMetaData = getFileMetaData();
        if (fileMetaData != null) {
            String str = "duration";
            if (fileMetaData.containsKey(str)) {
                return ((Number) fileMetaData.get(str)).doubleValue();
            }
        }
        return 0.0d;
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
        sb.append("?avinfo");
        builder.url(sb.toString()).get();
        clientInstance.execute(builder.build(), false, new GetHttpResponseHandler(new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                String str2 = "size";
                String str3 = "duration";
                String str4 = IjkMediaMeta.IJKM_KEY_FORMAT;
                try {
                    JSONObject jSONObject = JSON.parseObject(str).getJSONObject(str4);
                    String string = jSONObject.getString("format_name");
                    Double d = jSONObject.getDouble(str3);
                    map.put(str2, Long.valueOf(jSONObject.getLong(str2).longValue()));
                    map.put(str3, d);
                    map.put(str4, string);
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
