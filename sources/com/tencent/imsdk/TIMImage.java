package com.tencent.imsdk;

import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Msg;
import com.tencent.imsdk.conversation.ProgressInfo;
import com.tencent.imsdk.log.QLog;
import io.fabric.sdk.android.services.events.EventsFilesManager;

public class TIMImage {
    private static final String TAG;
    private long height;
    private long size;
    private TIMImageType type;
    private String url;
    private String uuid;
    private long width;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("imsdk.");
        sb.append(TIMImage.class.getSimpleName());
        TAG = sb.toString();
    }

    public void getImage(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack != null) {
            getImage(str, null, tIMCallBack);
        }
    }

    public void getImage(@NonNull String str, TIMValueCallBack<ProgressInfo> tIMValueCallBack, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack != null) {
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("getImage from url: ");
            sb.append(this.url);
            QLog.d(str2, sb.toString());
            Msg.downloadToFile(4, this.url, str, tIMValueCallBack, tIMCallBack);
        }
    }

    public TIMImageType getType() {
        return this.type;
    }

    /* access modifiers changed from: 0000 */
    public void setType(int i) {
        TIMImageType[] values;
        for (TIMImageType tIMImageType : TIMImageType.values()) {
            if (i == tIMImageType.value()) {
                this.type = tIMImageType;
                return;
            }
        }
        this.type = TIMImageType.Original;
    }

    /* access modifiers changed from: 0000 */
    public void setType(TIMImageType tIMImageType) {
        this.type = tIMImageType;
    }

    /* access modifiers changed from: 0000 */
    public int getTypeValue() {
        return this.type.value();
    }

    public String getUuid() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type.value());
        sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb.append(this.uuid);
        return sb.toString();
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        this.uuid = str;
    }

    public long getSize() {
        return this.size;
    }

    /* access modifiers changed from: 0000 */
    public void setSize(long j) {
        this.size = j;
    }

    public long getHeight() {
        return this.height;
    }

    /* access modifiers changed from: 0000 */
    public void setHeight(long j) {
        this.height = j;
    }

    public long getWidth() {
        return this.width;
    }

    /* access modifiers changed from: 0000 */
    public void setWidth(long j) {
        this.width = j;
    }

    public String getUrl() {
        return this.url;
    }

    /* access modifiers changed from: 0000 */
    public void setUrl(String str) {
        this.url = str;
    }
}
