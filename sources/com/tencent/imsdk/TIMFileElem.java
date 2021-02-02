package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Msg;
import com.tencent.imsdk.conversation.ProgressInfo;
import com.tencent.imsdk.log.QLog;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TIMFileElem extends TIMElem {
    private static final String TAG = "TIMFileElem";
    private long businessId;
    private int downloadFlag;
    private String fileName;
    private long fileSize;
    private String path;
    private int taskId;
    private List<String> urls;
    private String uuid;

    public TIMFileElem() {
        this.uuid = null;
        this.urls = new ArrayList();
        this.businessId = 0;
        this.downloadFlag = 0;
        this.type = TIMElemType.File;
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
            Msg.requestDownloadUrl(1, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(TIMFileElem.TAG, sb.toString());
                    tIMValueCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    if (list.size() == 0) {
                        QLog.e(TIMFileElem.TAG, "requestDownloadUrl success, but urls size is zero!");
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

    public void getToFile(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        getToFile(str, null, tIMCallBack);
    }

    public void getToFile(@NonNull final String str, final TIMValueCallBack<ProgressInfo> tIMValueCallBack, @NonNull final TIMCallBack tIMCallBack) {
        String str2 = TAG;
        if (tIMCallBack == null) {
            QLog.e(str2, "getToFile callback is null, ignore");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("download file, downloadFlag: ");
        sb.append(this.downloadFlag);
        QLog.i(str2, sb.toString());
        if (this.downloadFlag == 2) {
            for (String downloadToFile : this.urls) {
                Msg.downloadToFile(7, downloadToFile, str, tIMValueCallBack, tIMCallBack);
            }
        } else if (TextUtils.isEmpty(this.uuid)) {
            tIMCallBack.onError(BaseConstants.ERR_INVALID_SDK_OBJECT, "uuid is empty");
        } else {
            Msg.requestDownloadUrl(1, (int) this.businessId, this.uuid, new TIMValueCallBack<List<String>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestDownloadUrl failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    QLog.e(TIMFileElem.TAG, sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<String> list) {
                    for (String downloadToFile : list) {
                        Msg.downloadToFile(7, downloadToFile, str, tIMValueCallBack, tIMCallBack);
                    }
                }
            });
        }
    }

    public String getUuid() {
        return this.uuid;
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        this.uuid = str;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    /* access modifiers changed from: 0000 */
    public void setFileSize(long j) {
        this.fileSize = j;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.path = str;
            this.fileSize = new File(str).length();
        }
    }

    public int getTaskId() {
        return this.taskId;
    }

    /* access modifiers changed from: 0000 */
    public void setTaskId(int i) {
        this.taskId = i;
    }
}
