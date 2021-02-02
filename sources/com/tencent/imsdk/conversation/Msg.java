package com.tencent.imsdk.conversation;

import android.text.TextUtils;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMMessageOfflinePushSettings;
import com.tencent.imsdk.TIMUserProfile;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.friendship.FriendshipNativeManager;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class Msg {
    public static final int DOWNLOAD_TYPE_AUDIO = 3;
    public static final int DOWNLOAD_TYPE_FILE = 1;
    public static final int DOWNLOAD_TYPE_SNAPSHOT = 0;
    public static final int DOWNLOAD_TYPE_VIDEO = 2;
    /* access modifiers changed from: private */
    public static final String TAG = "Msg";
    private transient long cptr;

    private static native int nativeAddElem(long j, int i, TIMElem tIMElem);

    private static native boolean nativeConvertToImportedMsg(long j);

    private static native long nativeCopyFrom(long j);

    private static native void nativeDeleteMsg(long j);

    private static native void nativeDownloadElem(int i, String str, String str2, ICallback<ProgressInfo> iCallback, ICallback iCallback2);

    private static native int nativeElemSize(long j);

    private static native TIMConversation nativeGetConversation(long j);

    private static native int nativeGetCustomInt(long j);

    private static native String nativeGetCustomStr(long j);

    private static native TIMElem nativeGetElement(long j, int i);

    private static native void nativeGetLocator(long j, TIMMessageLocator tIMMessageLocator);

    private static native boolean nativeGetOfflinePushInfo(long j, TIMMessageOfflinePushSettings tIMMessageOfflinePushSettings);

    private static native String nativeGetSender(long j);

    private static native TIMGroupMemberInfo nativeGetSenderGroupMemberInfo(long j);

    private static native boolean nativeGetSenderProfile(long j, TIMUserProfile tIMUserProfile);

    private static native boolean nativeIsPeerRead(long j);

    private static native boolean nativeIsRead(long j);

    private static native boolean nativeIsSelf(long j);

    private static native long nativeMsgLifetime(long j);

    private static native int nativeMsgPriority(long j);

    private static native long nativeMsgRand(long j);

    private static native int nativeMsgRecvFlag(long j);

    private static native long nativeMsgSeq(long j);

    private static native int nativeMsgStatus(long j);

    private static native long nativeMsgTime(long j);

    private static native long nativeMsgUniqueId(long j);

    private static native long nativeNewMsg();

    private static native boolean nativeRemove(long j);

    private static native void nativeRequestDownloadUrl(int i, int i2, String str, ICallback<List<String>> iCallback);

    private static native boolean nativeSetCustomInt(long j, int i);

    private static native boolean nativeSetCustomStr(long j, String str);

    private static native void nativeSetLifetime(long j, int i);

    private static native void nativeSetOfflinePushInfo(long j, TIMMessageOfflinePushSettings tIMMessageOfflinePushSettings);

    private static native void nativeSetPriority(long j, int i);

    private static native boolean nativeSetSender(long j, String str);

    private static native boolean nativeSetTimestamp(long j, long j2);

    protected Msg(long j) {
        this.cptr = j;
    }

    public Msg() {
        this(nativeNewMsg());
    }

    public static void downloadToFile(int i, String str, String str2, TIMValueCallBack<ProgressInfo> tIMValueCallBack, TIMCallBack tIMCallBack) {
        if (tIMCallBack != null) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                QLog.e(TAG, "Invalid param");
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "invalid params");
                return;
            }
            nativeDownloadElem(i, str, str2, new ICallback<ProgressInfo>(tIMValueCallBack) {
                public void fail(int i, String str) {
                }

                public void done(final ProgressInfo progressInfo) {
                    if (this.valueCallback == null) {
                        if (progressInfo.getCurrentSize() == progressInfo.getTotalSize()) {
                            QLog.e(Msg.TAG, "download finished, no progress cb found");
                        }
                        return;
                    }
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            if (progressInfo.getCurrentSize() == progressInfo.getTotalSize()) {
                                QLog.i(Msg.TAG, "download finished, progress cb");
                            }
                            AnonymousClass1.this.valueCallback.onSuccess(progressInfo);
                        }
                    });
                }
            }, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            QLog.i(Msg.TAG, "download req succ");
                            AnonymousClass2.this.cb.onSuccess();
                        }
                    });
                }

                public void fail(final int i, final String str) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            String access$000 = Msg.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("download req failed, code ");
                            sb.append(i);
                            sb.append("|desc: ");
                            sb.append(str);
                            QLog.i(access$000, sb.toString());
                            AnonymousClass2.this.cb.onError(i, str);
                        }
                    });
                }
            });
        }
    }

    public static void requestDownloadUrl(int i, int i2, String str, TIMValueCallBack<List<String>> tIMValueCallBack) {
        nativeRequestDownloadUrl(i, i2, str, new ICallback<List<String>>(tIMValueCallBack) {
        });
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        delete();
    }

    public synchronized void delete() {
        if (this.cptr != 0) {
            nativeDeleteMsg(this.cptr);
            this.cptr = 0;
        }
    }

    public long getCptr() {
        return this.cptr;
    }

    public int status() {
        return nativeMsgStatus(this.cptr);
    }

    public boolean isSelf() {
        return nativeIsSelf(this.cptr);
    }

    public long seq() {
        return nativeMsgSeq(this.cptr);
    }

    public long rand() {
        return nativeMsgRand(this.cptr);
    }

    public long time() {
        return nativeMsgTime(this.cptr);
    }

    public long uniqueid() {
        return nativeMsgUniqueId(this.cptr);
    }

    public long lifetime() {
        return nativeMsgLifetime(this.cptr);
    }

    public int priority() {
        return nativeMsgPriority(this.cptr);
    }

    public int getRecvFlag() {
        return nativeMsgRecvFlag(this.cptr);
    }

    public String getSender() {
        return nativeGetSender(this.cptr);
    }

    public int elemSize() {
        return nativeElemSize(this.cptr);
    }

    public void setPriority(int i) {
        nativeSetPriority(this.cptr, i);
    }

    public int addElem(TIMElem tIMElem) {
        return nativeAddElem(this.cptr, tIMElem.getType().value(), tIMElem);
    }

    public void setLifetime(int i) {
        nativeSetLifetime(this.cptr, i);
    }

    public TIMElem getElement(int i) {
        return nativeGetElement(this.cptr, i);
    }

    public boolean copyFrom(Msg msg) {
        long nativeCopyFrom = nativeCopyFrom(msg.getCptr());
        if (nativeCopyFrom != 0) {
            this.cptr = nativeCopyFrom;
        }
        return nativeCopyFrom != 0;
    }

    public void getSenderProfile(final TIMValueCallBack<TIMUserProfile> tIMValueCallBack) {
        String sender = getSender();
        if (TextUtils.isEmpty(sender)) {
            QLog.e(TAG, "getSenderProfile, sender is empty!");
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "sender is empty");
            return;
        }
        TIMUserProfile nativeQueryUserProfile = FriendshipNativeManager.nativeQueryUserProfile(sender);
        if (nativeQueryUserProfile != null) {
            QLog.i(TAG, "getSenderProfile from query");
            tIMValueCallBack.onSuccess(nativeQueryUserProfile);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(sender);
        FriendshipNativeManager.nativeGetUsersProfile(arrayList, true, new ICallback(new TIMValueCallBack<List<TIMUserProfile>>() {
            public void onError(int i, String str) {
                String access$000 = Msg.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getSenderProfile err = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(access$000, sb.toString());
                TIMValueCallBack tIMValueCallBack = tIMValueCallBack;
                if (tIMValueCallBack != null) {
                    tIMValueCallBack.onError(i, str);
                }
            }

            public void onSuccess(List<TIMUserProfile> list) {
                String access$000 = Msg.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getSenderProfile success, timUserProfiles size = ");
                sb.append(list.size());
                QLog.i(access$000, sb.toString());
                if (tIMValueCallBack != null) {
                    TIMUserProfile tIMUserProfile = (TIMUserProfile) list.get(0);
                    String access$0002 = Msg.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("getSenderProfile success, timUserProfileFromServer = ");
                    sb2.append(tIMUserProfile.toString());
                    QLog.i(access$0002, sb2.toString());
                    tIMValueCallBack.onSuccess(tIMUserProfile);
                }
            }
        }) {
            public void done(Object obj) {
                super.done(obj);
            }

            public void fail(int i, String str) {
                super.fail(i, str);
            }
        });
    }

    public TIMMessageOfflinePushSettings getOfflinePushInfo() {
        TIMMessageOfflinePushSettings tIMMessageOfflinePushSettings = new TIMMessageOfflinePushSettings();
        if (nativeGetOfflinePushInfo(this.cptr, tIMMessageOfflinePushSettings)) {
            return tIMMessageOfflinePushSettings;
        }
        return null;
    }

    public void setOfflinePushInfo(TIMMessageOfflinePushSettings tIMMessageOfflinePushSettings) {
        nativeSetOfflinePushInfo(this.cptr, tIMMessageOfflinePushSettings);
    }

    public TIMGroupMemberInfo getSenderGroupMemberProfile() {
        return nativeGetSenderGroupMemberInfo(this.cptr);
    }

    public boolean isRead() {
        return nativeIsRead(this.cptr);
    }

    public boolean remove() {
        return nativeRemove(this.cptr);
    }

    public boolean setCustomInt(int i) {
        return nativeSetCustomInt(this.cptr, i);
    }

    public int getCustomInt() {
        return nativeGetCustomInt(this.cptr);
    }

    public boolean setCustomStr(String str) {
        return nativeSetCustomStr(this.cptr, str);
    }

    public String getCustomStr() {
        return nativeGetCustomStr(this.cptr);
    }

    public boolean convertToImportedMsg() {
        return nativeConvertToImportedMsg(this.cptr);
    }

    public boolean setSender(String str) {
        return nativeSetSender(this.cptr, str);
    }

    public boolean setTimestamp(long j) {
        return nativeSetTimestamp(this.cptr, j);
    }

    public boolean isPeerReaded() {
        return nativeIsPeerRead(this.cptr);
    }

    public TIMConversation getConversation() {
        return nativeGetConversation(this.cptr);
    }

    public TIMMessageLocator getMessageLocator() {
        TIMMessageLocator tIMMessageLocator = new TIMMessageLocator();
        nativeGetLocator(this.cptr, tIMMessageLocator);
        return tIMMessageLocator;
    }
}
