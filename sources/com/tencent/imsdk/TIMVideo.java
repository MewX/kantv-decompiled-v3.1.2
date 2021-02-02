package com.tencent.imsdk;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Msg;
import com.tencent.imsdk.conversation.ProgressInfo;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class TIMVideo {
    /* access modifiers changed from: private */
    public static final String TAG = "TIMVideo";
    private static Handler mainHandler = new Handler(Looper.getMainLooper());
    private long businessId = 0;
    private int downloadFlag = 0;
    private long duaration;
    private String identifier;
    private long size;
    private String type;
    private List<String> urls = new ArrayList();
    private String uuid;

    public TIMVideo() {
        String str = "";
        this.uuid = str;
        this.type = str;
        this.identifier = str;
    }

    /* access modifiers changed from: protected */
    public void setIdentifier(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.identifier = str;
        }
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
            Msg.requestDownloadUrl(2, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    String access$000 = TIMVideo.TAG;
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
                        QLog.e(TIMVideo.TAG, "requestDownloadUrl success, but urls size is zero!");
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

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        if (str != null) {
            this.type = str;
        }
    }

    public long getDuaration() {
        return this.duaration;
    }

    public void setDuaration(long j) {
        this.duaration = j;
    }

    public String getUuid() {
        return this.uuid;
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        if (str != null) {
            this.uuid = str;
        }
    }

    public long getSize() {
        return this.size;
    }

    /* access modifiers changed from: 0000 */
    public void setSize(long j) {
        this.size = j;
    }

    public void getVideo(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        getVideo(str, null, tIMCallBack);
    }

    public void getVideo(@NonNull final String str, final TIMValueCallBack<ProgressInfo> tIMValueCallBack, @NonNull final TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "getVideo cb is null, ignore");
            return;
        }
        if (this.downloadFlag == 2) {
            for (String downloadToFile : this.urls) {
                Msg.downloadToFile(15, downloadToFile, str, tIMValueCallBack, tIMCallBack);
            }
        } else if (TextUtils.isEmpty(this.uuid)) {
            tIMCallBack.onError(BaseConstants.ERR_INVALID_SDK_OBJECT, "uuid is empty");
        } else {
            Msg.requestDownloadUrl(2, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(TIMVideo.TAG, sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    for (String downloadToFile : list) {
                        Msg.downloadToFile(15, downloadToFile, str, tIMValueCallBack, tIMCallBack);
                    }
                }
            });
        }
    }
}
