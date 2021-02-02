package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Msg;
import com.tencent.imsdk.conversation.ProgressInfo;
import com.tencent.imsdk.log.QLog;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TIMSoundElem extends TIMElem {
    private static final String TAG = "TIMSoundElem";
    private long businessId;
    private long dataSize;
    private int downloadFlag;
    private long duration;
    private String path;
    private int taskId;
    private List<String> urls;
    private String uuid;

    public TIMSoundElem() {
        this.duration = 0;
        this.dataSize = 0;
        this.uuid = null;
        this.path = "";
        this.urls = new ArrayList();
        this.businessId = 0;
        this.downloadFlag = 0;
        this.type = TIMElemType.Sound;
    }

    /* access modifiers changed from: 0000 */
    public void addUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.urls.add(str);
        }
    }

    public void getUrl(@NonNull final TIMValueCallBack<String> tIMValueCallBack) {
        String str = TAG;
        if (tIMValueCallBack == null) {
            QLog.e(str, "getUrl, callback is null");
        } else if (this.urls.size() > 0) {
            tIMValueCallBack.onSuccess(this.urls.get(0));
        } else if (this.downloadFlag == 2) {
            QLog.e(str, "cos urls size is zero!");
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "cos url is null");
        } else {
            Msg.requestDownloadUrl(3, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(TIMSoundElem.TAG, sb.toString());
                    tIMValueCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    if (list.size() == 0) {
                        QLog.e(TIMSoundElem.TAG, "requestDownloadUrl success, but urls size is zero!");
                        tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "requestDownloadUrl rsp urls is empty");
                        return;
                    }
                    tIMValueCallBack.onSuccess(list.get(0));
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public long getBusinessId() {
        return this.businessId;
    }

    /* access modifiers changed from: 0000 */
    public void setBusinessId(long j) {
        this.businessId = j;
    }

    /* access modifiers changed from: 0000 */
    public int getDownloadFlag() {
        return this.downloadFlag;
    }

    /* access modifiers changed from: 0000 */
    public void setDownloadFlag(int i) {
        this.downloadFlag = i;
    }

    public void getSoundToFile(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        getSoundToFile(str, null, tIMCallBack);
    }

    public void getSoundToFile(@NonNull final String str, final TIMValueCallBack<ProgressInfo> tIMValueCallBack, @NonNull final TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "getSoundToFile cb is null, ignore");
            return;
        }
        if (this.downloadFlag == 2) {
            for (String downloadToFile : this.urls) {
                Msg.downloadToFile(5, downloadToFile, str, tIMValueCallBack, tIMCallBack);
            }
        } else if (TextUtils.isEmpty(this.uuid)) {
            tIMCallBack.onError(BaseConstants.ERR_INVALID_SDK_OBJECT, "uuid is empty");
        } else {
            Msg.requestDownloadUrl(3, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(TIMSoundElem.TAG, sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    for (String downloadToFile : list) {
                        Msg.downloadToFile(5, downloadToFile, str, tIMValueCallBack, tIMCallBack);
                    }
                }
            });
        }
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.path = str;
            this.dataSize = new File(str).length();
        }
    }

    public String getUuid() {
        return this.uuid;
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        this.uuid = str;
    }

    public long getDataSize() {
        return this.dataSize;
    }

    /* access modifiers changed from: 0000 */
    public void setDataSize(long j) {
        this.dataSize = j;
    }

    public long getDuration() {
        return this.duration;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public int getTaskId() {
        return this.taskId;
    }

    /* access modifiers changed from: 0000 */
    public void setTaskId(int i) {
        this.taskId = i;
    }
}
