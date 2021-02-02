package com.tencent.imsdk.conversation;

import androidx.annotation.NonNull;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.IMBridge;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.ext.message.TIMBatchOprDetailInfo;
import com.tencent.imsdk.ext.message.TIMMessageDraft;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.ext.message.TIMSendMsgToMultiUserCallback;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.utils.IMErrInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class Conversation {
    /* access modifiers changed from: private */
    public static final String TAG = "Conversation";
    private transient long cptr;

    private static abstract class GetMsgsListener extends ICallback<List<Msg>> {
        public GetMsgsListener(TIMValueCallBack<List<Msg>> tIMValueCallBack) {
            super(tIMValueCallBack);
        }

        public final void done(List<Msg> list) {
            this.valueCallback.onSuccess(list);
        }

        public final void fail(int i, String str) {
            this.valueCallback.onError(i, str);
        }
    }

    private class SendMsgCallback extends ICallback<TIMMessage> {
        /* access modifiers changed from: private */
        public TIMMessage msg;

        public SendMsgCallback(TIMMessage tIMMessage, TIMValueCallBack<TIMMessage> tIMValueCallBack) {
            super(tIMValueCallBack);
            this.msg = tIMMessage;
        }

        public void done(TIMMessage tIMMessage) {
            IMContext.getInstance().runOnMainThread(new Runnable() {
                public void run() {
                    QLog.i(Conversation.TAG, "SendMsg|5-Callback|Succ|");
                    SendMsgCallback.this.valueCallback.onSuccess(SendMsgCallback.this.msg);
                }
            });
        }

        public void fail(final int i, final String str) {
            IMContext.getInstance().runOnMainThread(new Runnable() {
                public void run() {
                    String access$600 = Conversation.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("SendMsg|5-Callback|Succ|code=");
                    sb.append(i);
                    sb.append(", msg=");
                    sb.append(str);
                    QLog.i(access$600, sb.toString());
                    SendMsgCallback.this.valueCallback.onError(i, str);
                }
            });
        }
    }

    private static native void nativeDeleteConversation(long j);

    private native void nativeDeleteLocalMessage(long j, ICallback iCallback);

    private native void nativeFindMessage(long j, List<TIMMessageLocator> list, ICallback<List<Msg>> iCallback);

    private static native long nativeGetConversation(int i, String str);

    private static native TIMMessageDraft nativeGetDraft(long j);

    private static native String nativeGetGroupName(long j);

    private static native Msg nativeGetLastMsg(long j);

    private native void nativeGetMessage(long j, long j2, int i, boolean z, boolean z2, ICallback<List<Msg>> iCallback);

    private static native int nativeGetUnreadNum(long j);

    private static native boolean nativeHasDraft(long j);

    private native int nativeImportMessage(long j, List<Long> list);

    private native void nativeReportReaded(long j, long j2, ICallback iCallback);

    private native void nativeRevokeMessage(long j, long j2, ICallback iCallback);

    private native int nativeSaveMessage(long j, long j2, String str, boolean z);

    private native void nativeSendMessage(long j, long j2, ICallback iCallback);

    private static native void nativeSendMessageToMultiUsers(long j, List<String> list, ICallback<TIMBatchOprDetailInfo> iCallback);

    private static native void nativeSetDraft(long j, TIMMessageDraft tIMMessageDraft);

    protected Conversation(long j) {
        this.cptr = j;
    }

    public Conversation(int i, String str) {
        this(nativeGetConversation(i, str));
    }

    public static void sendMessageToMultiUsers(@NonNull List<String> list, @NonNull TIMMessage tIMMessage, @NonNull final TIMSendMsgToMultiUserCallback tIMSendMsgToMultiUserCallback) {
        if (tIMSendMsgToMultiUserCallback != null) {
            if (list == null || list.isEmpty()) {
                tIMSendMsgToMultiUserCallback.onError(BaseConstants.ERR_INVALID_PARAMETERS, "users can't be null or empty", null);
            } else if (tIMMessage == null || IMBridge.getMsgFromTIMMessage(tIMMessage) == null) {
                tIMSendMsgToMultiUserCallback.onError(BaseConstants.ERR_INVALID_PARAMETERS, "invalid msg", null);
            } else {
                nativeSendMessageToMultiUsers(IMBridge.getMsgFromTIMMessage(tIMMessage).getCptr(), list, new ICallback<TIMBatchOprDetailInfo>(new TIMValueCallBack<TIMBatchOprDetailInfo>() {
                    public void onError(final int i, final String str) {
                        IMContext.getInstance().runOnMainThread(new Runnable() {
                            public void run() {
                                tIMSendMsgToMultiUserCallback.onError(i, str, null);
                            }
                        });
                    }

                    public void onSuccess(final TIMBatchOprDetailInfo tIMBatchOprDetailInfo) {
                        IMContext.getInstance().runOnMainThread(new Runnable() {
                            public void run() {
                                if (tIMBatchOprDetailInfo == null) {
                                    tIMSendMsgToMultiUserCallback.onSuccess();
                                    return;
                                }
                                tIMSendMsgToMultiUserCallback.onError(BaseConstants.ERR_NO_SUCC_RESULT, "please check detail info", tIMBatchOprDetailInfo);
                            }
                        });
                    }
                }) {
                    public void done(TIMBatchOprDetailInfo tIMBatchOprDetailInfo) {
                        this.valueCallback.onSuccess(tIMBatchOprDetailInfo);
                    }

                    public void fail(int i, String str) {
                        this.valueCallback.onError(i, str);
                    }
                });
            }
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        delete();
    }

    public synchronized void delete() {
        if (this.cptr != 0) {
            nativeDeleteConversation(this.cptr);
            this.cptr = 0;
        }
    }

    public int getUnreadMessageNum() {
        return nativeGetUnreadNum(this.cptr);
    }

    public TIMMessage getLastMsg() {
        return IMBridge.convertMsgToTIMMessage(nativeGetLastMsg(this.cptr));
    }

    public boolean hasDraft() {
        return nativeHasDraft(this.cptr);
    }

    public TIMMessageDraft getDraft() {
        return nativeGetDraft(this.cptr);
    }

    public void setDraft(TIMMessageDraft tIMMessageDraft) {
        nativeSetDraft(this.cptr, tIMMessageDraft);
    }

    public void reportReaded(TIMMessage tIMMessage, TIMCallBack tIMCallBack) {
        nativeReportReaded(this.cptr, (tIMMessage == null || IMBridge.getMsgFromTIMMessage(tIMMessage) == null) ? 0 : IMBridge.getMsgFromTIMMessage(tIMMessage).getCptr(), new ICallback(tIMCallBack) {
            public void done(Object obj) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass3.this.cb.onSuccess();
                    }
                });
            }

            public void fail(final int i, final String str) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass3.this.cb.onError(i, str);
                    }
                });
            }
        });
    }

    public void deleteLocalMessage(@NonNull TIMCallBack tIMCallBack) {
        nativeDeleteLocalMessage(this.cptr, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass4.this.cb.onSuccess();
                    }
                });
            }

            public void fail(final int i, final String str) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass4.this.cb.onError(i, str);
                    }
                });
            }
        });
    }

    public void revokeMessage(@NonNull TIMMessage tIMMessage, @NonNull TIMCallBack tIMCallBack) {
        if (tIMMessage == null || IMBridge.getMsgFromTIMMessage(tIMMessage) == null) {
            tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "invalid msg");
            return;
        }
        nativeRevokeMessage(this.cptr, IMBridge.getMsgFromTIMMessage(tIMMessage).getCptr(), new ICallback(tIMCallBack) {
            public void done(Object obj) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass5.this.cb.onSuccess();
                    }
                });
            }

            public void fail(final int i, final String str) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        AnonymousClass5.this.cb.onError(i, str);
                    }
                });
            }
        });
    }

    public int saveMessage(@NonNull TIMMessage tIMMessage, @NonNull String str, boolean z) {
        if (this.cptr == 0) {
            return BaseConstants.ERR_INVALID_CONVERSATION;
        }
        Msg msgFromTIMMessage = IMBridge.getMsgFromTIMMessage(tIMMessage);
        if (msgFromTIMMessage == null || msgFromTIMMessage.getCptr() == 0) {
            QLog.e(TAG, "saveMessage failed, invalid msg");
            return BaseConstants.ERR_INVALID_PARAMETERS;
        }
        return nativeSaveMessage(this.cptr, msgFromTIMMessage.getCptr(), str, z);
    }

    public int importMsg(@NonNull List<TIMMessage> list) {
        if (this.cptr == 0) {
            return BaseConstants.ERR_INVALID_CONVERSATION;
        }
        if (list == null || list.isEmpty()) {
            return BaseConstants.ERR_INVALID_PARAMETERS;
        }
        ArrayList arrayList = new ArrayList();
        for (TIMMessage msgFromTIMMessage : list) {
            Msg msgFromTIMMessage2 = IMBridge.getMsgFromTIMMessage(msgFromTIMMessage);
            if (msgFromTIMMessage2 == null || msgFromTIMMessage2.getCptr() == 0) {
                QLog.e(TAG, "importMsg, invalid msg");
            } else {
                arrayList.add(Long.valueOf(msgFromTIMMessage2.getCptr()));
            }
        }
        if (arrayList.isEmpty()) {
            return 0;
        }
        return nativeImportMessage(this.cptr, arrayList);
    }

    public void sendMessage(boolean z, TIMMessage tIMMessage, TIMValueCallBack<TIMMessage> tIMValueCallBack) {
        IMErrInfo readyCheck = IMContext.getInstance().readyCheck();
        if (readyCheck.getCode() != 0) {
            tIMValueCallBack.onError(readyCheck.getCode(), readyCheck.getMsg());
            return;
        }
        Msg msgFromTIMMessage = IMBridge.getMsgFromTIMMessage(tIMMessage);
        if (msgFromTIMMessage == null || msgFromTIMMessage.getCptr() == 0) {
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_SDK_OBJECT, "invalid msg");
            return;
        }
        if (z) {
            msgFromTIMMessage.setLifetime(0);
        }
        nativeSendMessage(this.cptr, msgFromTIMMessage.getCptr(), new SendMsgCallback(tIMMessage, tIMValueCallBack));
    }

    public void getMessages(int i, TIMMessage tIMMessage, boolean z, boolean z2, final TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        IMErrInfo readyCheck = IMContext.getInstance().readyCheck();
        if (z && readyCheck.getCode() != 0) {
            tIMValueCallBack.onError(readyCheck.getCode(), readyCheck.getMsg());
        } else if (!z2 || tIMMessage != null) {
            Msg msgFromTIMMessage = IMBridge.getMsgFromTIMMessage(tIMMessage);
            long cptr2 = msgFromTIMMessage != null ? msgFromTIMMessage.getCptr() : 0;
            nativeGetMessage(this.cptr, cptr2, i, z, z2, new GetMsgsListener(new TIMValueCallBack<List<Msg>>() {
                public void onError(final int i, final String str) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            String access$600 = Conversation.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("getMessage failed， code: ");
                            sb.append(i);
                            sb.append("|descr: ");
                            sb.append(str);
                            QLog.e(access$600, sb.toString());
                            tIMValueCallBack.onError(i, str);
                        }
                    });
                }

                public void onSuccess(List<Msg> list) {
                    final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    for (Msg msg : list) {
                        if (msg != null) {
                            copyOnWriteArrayList.add(IMBridge.convertMsgToTIMMessage(msg));
                        }
                    }
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onSuccess(copyOnWriteArrayList);
                        }
                    });
                }
            }) {
            });
        } else {
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "lastMsg can't be null");
        }
    }

    public void findMessages(@NonNull List<TIMMessageLocator> list, @NonNull final TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (this.cptr == 0) {
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_CONVERSATION, "invalid converstion");
        } else if (list == null || list.isEmpty()) {
            tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "locators can't be null");
        } else {
            nativeFindMessage(this.cptr, new ArrayList(list), new GetMsgsListener(new TIMValueCallBack<List<Msg>>() {
                public void onError(final int i, final String str) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            String access$600 = Conversation.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("getMessage failed， code: ");
                            sb.append(i);
                            sb.append("|descr: ");
                            sb.append(str);
                            QLog.e(access$600, sb.toString());
                            tIMValueCallBack.onError(i, str);
                        }
                    });
                }

                public void onSuccess(List<Msg> list) {
                    final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    for (Msg msg : list) {
                        if (msg != null) {
                            copyOnWriteArrayList.add(IMBridge.convertMsgToTIMMessage(msg));
                        }
                    }
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onSuccess(copyOnWriteArrayList);
                        }
                    });
                }
            }) {
            });
        }
    }

    public String getGroupName() {
        return nativeGetGroupName(this.cptr);
    }
}
