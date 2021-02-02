package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Msg;
import com.tencent.imsdk.conversation.ProgressInfo;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class TIMSnapshot {
    /* access modifiers changed from: private */
    public static final String TAG = "TIMSnapshot";
    private long businessId = 0;
    private int downloadFlag = 0;
    private long height;
    private long size;
    private String type;
    private List<String> urls = new ArrayList();
    private String uuid;
    private long width;

    public TIMSnapshot() {
        String str = "";
        this.uuid = str;
        this.type = str;
    }

    /* access modifiers changed from: 0000 */
    public void addUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.urls.add(str);
        }
    }

    public void getUrl(@NonNull final TIMValueCallBack<String> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getUrl, callback is null");
        } else if (this.urls.size() > 0) {
            tIMValueCallBack.onSuccess(this.urls.get(0));
        } else if (this.downloadFlag == 2) {
            QLog.e(TAG, "cos urls size is zero!");
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "cos url is null");
        } else {
            Msg.requestDownloadUrl(1, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    String access$000 = TIMSnapshot.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(access$000, sb.toString());
                    tIMValueCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    if (list.size() == 0) {
                        QLog.e(TIMSnapshot.TAG, "requestDownloadUrl success, but urls size is zero!");
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

    public String getUuid() {
        return this.uuid;
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        this.uuid = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
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

    public void setHeight(long j) {
        this.height = j;
    }

    public long getWidth() {
        return this.width;
    }

    public void setWidth(long j) {
        this.width = j;
    }

    public void getImage(String str, TIMCallBack tIMCallBack) {
        getImage(str, null, tIMCallBack);
    }

    public void getImage(final String str, final TIMValueCallBack<ProgressInfo> tIMValueCallBack, final TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "getImage cb is null, ignore");
            return;
        }
        if (this.downloadFlag == 2) {
            for (String downloadToFile : this.urls) {
                Msg.downloadToFile(4, downloadToFile, str, tIMValueCallBack, tIMCallBack);
            }
        } else if (TextUtils.isEmpty(this.uuid)) {
            tIMCallBack.onError(BaseConstants.ERR_INVALID_SDK_OBJECT, "uuid is empty");
        } else {
            Msg.requestDownloadUrl(0, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e("TIMSnapthot", sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    for (String downloadToFile : list) {
                        Msg.downloadToFile(4, downloadToFile, str, tIMValueCallBack, tIMCallBack);
                    }
                }
            });
        }
    }
}
