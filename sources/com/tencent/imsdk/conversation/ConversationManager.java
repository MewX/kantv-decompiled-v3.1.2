package com.tencent.imsdk.conversation;

import androidx.annotation.NonNull;
import com.tencent.imsdk.IMBridge;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMFileElem;
import com.tencent.imsdk.TIMImageElem;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMMessageListener;
import com.tencent.imsdk.TIMMessageUpdateListener;
import com.tencent.imsdk.TIMOfflinePushListener;
import com.tencent.imsdk.TIMRefreshListener;
import com.tencent.imsdk.TIMSoundElem;
import com.tencent.imsdk.TIMUploadProgressListener;
import com.tencent.imsdk.TIMVideoElem;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.ext.message.TIMMessageReceipt;
import com.tencent.imsdk.ext.message.TIMMessageReceiptListener;
import com.tencent.imsdk.ext.message.TIMMessageRevokedListener;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ConversationManager {
    /* access modifiers changed from: private */
    public static final String TAG;
    /* access modifiers changed from: private */
    public CopyOnWriteArrayList<TIMMessageListener> msgListeners;
    /* access modifiers changed from: private */
    public CopyOnWriteArrayList<TIMMessageUpdateListener> msgUpdateListeners;
    private TIMOfflinePushListener offlinePushListener;
    /* access modifiers changed from: private */
    public TIMMessageReceiptListener receiptListener;
    /* access modifiers changed from: private */
    public TIMRefreshListener refreshListener;
    /* access modifiers changed from: private */
    public TIMMessageRevokedListener revokedListener;
    /* access modifiers changed from: private */
    public TIMUploadProgressListener uploadProgressListener;

    /* renamed from: com.tencent.imsdk.conversation.ConversationManager$5 reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$imsdk$TIMElemType = new int[TIMElemType.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.tencent.imsdk.TIMElemType[] r0 = com.tencent.imsdk.TIMElemType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$tencent$imsdk$TIMElemType = r0
                int[] r0 = $SwitchMap$com$tencent$imsdk$TIMElemType     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.tencent.imsdk.TIMElemType r1 = com.tencent.imsdk.TIMElemType.File     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$tencent$imsdk$TIMElemType     // Catch:{ NoSuchFieldError -> 0x001f }
                com.tencent.imsdk.TIMElemType r1 = com.tencent.imsdk.TIMElemType.Sound     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$tencent$imsdk$TIMElemType     // Catch:{ NoSuchFieldError -> 0x002a }
                com.tencent.imsdk.TIMElemType r1 = com.tencent.imsdk.TIMElemType.Image     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$tencent$imsdk$TIMElemType     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.tencent.imsdk.TIMElemType r1 = com.tencent.imsdk.TIMElemType.Video     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.imsdk.conversation.ConversationManager.AnonymousClass5.<clinit>():void");
        }
    }

    private static class Holder {
        public static ConversationManager instant = new ConversationManager();

        private Holder() {
        }
    }

    private native void nativeDeleteConversation(int i, String str, ICallback iCallback);

    private native void nativeDeleteConversationAndLocalMsgs(int i, String str, ICallback iCallback);

    private native void nativeGetConversations(List<TIMConversation> list);

    private native void nativeParseMsg(String str, byte[] bArr, ICallback<Msg> iCallback);

    private native void nativeSetConversationListener(ConversationListener conversationListener);

    private native void nativeSetMessageListener(MessageListener messageListener);

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("imsdk.");
        sb.append(ConversationManager.class.getSimpleName());
        TAG = sb.toString();
    }

    private ConversationManager() {
        this.msgListeners = new CopyOnWriteArrayList<>();
        this.msgUpdateListeners = new CopyOnWriteArrayList<>();
    }

    public static ConversationManager getInstance() {
        return Holder.instant;
    }

    public void init() {
        setConversationListener();
        setMessageListener();
    }

    public synchronized void addMessageListener(TIMMessageListener tIMMessageListener) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("addMessageListener: ");
        sb.append(tIMMessageListener);
        QLog.i(str, sb.toString());
        if (this.msgListeners.contains(tIMMessageListener)) {
            QLog.i(TAG, "addMessageListener: added this listener object before, ignore");
        } else {
            this.msgListeners.add(tIMMessageListener);
        }
    }

    public synchronized void removeMessageListener(TIMMessageListener tIMMessageListener) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("removeMessageListener: ");
        sb.append(tIMMessageListener);
        QLog.i(str, sb.toString());
        this.msgListeners.remove(tIMMessageListener);
    }

    public synchronized List<TIMMessageListener> getMessageListeners() {
        return this.msgListeners;
    }

    public synchronized void addMessageUpdateListener(TIMMessageUpdateListener tIMMessageUpdateListener) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("addMessageUpdateListener: ");
        sb.append(tIMMessageUpdateListener);
        QLog.i(str, sb.toString());
        if (this.msgUpdateListeners.contains(tIMMessageUpdateListener)) {
            QLog.i(TAG, "addMessageUpdateListener: added this listener object before, ignore");
        } else {
            this.msgUpdateListeners.add(tIMMessageUpdateListener);
        }
    }

    public synchronized void removeMessageUpdateListener(TIMMessageUpdateListener tIMMessageUpdateListener) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("removeMessageUpdateListener: ");
        sb.append(tIMMessageUpdateListener);
        QLog.i(str, sb.toString());
        this.msgUpdateListeners.remove(tIMMessageUpdateListener);
    }

    public synchronized CopyOnWriteArrayList<TIMMessageUpdateListener> getMsgUpdateListeners() {
        return this.msgUpdateListeners;
    }

    public TIMMessageRevokedListener getRevokedListener() {
        return this.revokedListener;
    }

    public TIMMessageReceiptListener getReceiptListener() {
        return this.receiptListener;
    }

    public TIMOfflinePushListener getOfflinePushListener() {
        return this.offlinePushListener;
    }

    public void setOfflinePushListener(TIMOfflinePushListener tIMOfflinePushListener) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setOfflinePushListener: ");
        sb.append(tIMOfflinePushListener);
        QLog.i(str, sb.toString());
        this.offlinePushListener = tIMOfflinePushListener;
    }

    /* access modifiers changed from: protected */
    public TIMRefreshListener getRefreshListener() {
        return this.refreshListener;
    }

    public void setRefreshListener(TIMRefreshListener tIMRefreshListener) {
        this.refreshListener = tIMRefreshListener;
    }

    public TIMUploadProgressListener getUploadProgressListener() {
        return this.uploadProgressListener;
    }

    public void setUploadProgressListener(TIMUploadProgressListener tIMUploadProgressListener) {
        this.uploadProgressListener = tIMUploadProgressListener;
    }

    /* access modifiers changed from: 0000 */
    public List<TIMMessageUpdateListener> getMessageUpdateListeners() {
        return this.msgUpdateListeners;
    }

    private void setConversationListener() {
        nativeSetConversationListener(new ConversationListener() {
            public void onAddConversation(List<TIMConversation> list) {
                if (ConversationManager.this.refreshListener == null) {
                    QLog.e(ConversationManager.TAG, "onAddConversation, no refresh listener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        ConversationManager.this.refreshListener.onRefreshConversation(copyOnWriteArrayList);
                    }
                });
            }

            public void onDelConversation(List<TIMConversation> list) {
                if (ConversationManager.this.refreshListener == null) {
                    QLog.e(ConversationManager.TAG, "onDelConversation, no refresh listener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        ConversationManager.this.refreshListener.onRefreshConversation(copyOnWriteArrayList);
                    }
                });
            }

            public void onUpdateConversation(List<TIMConversation> list) {
                if (ConversationManager.this.refreshListener == null) {
                    QLog.e(ConversationManager.TAG, "onUpdateConversation, no refresh listener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        ConversationManager.this.refreshListener.onRefresh();
                        ConversationManager.this.refreshListener.onRefreshConversation(copyOnWriteArrayList);
                    }
                });
            }
        });
    }

    private void setMessageListener() {
        nativeSetMessageListener(new MessageListener() {
            public void onRecvMessage(List<Msg> list) {
                String access$100 = ConversationManager.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("RecvMsg|msg size: ");
                sb.append(list.size());
                sb.append("|listeners: ");
                sb.append(ConversationManager.this.msgListeners == null ? 0 : ConversationManager.this.msgListeners.size());
                QLog.i(access$100, sb.toString());
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                for (Msg convertMsgToTIMMessage : list) {
                    copyOnWriteArrayList.add(IMBridge.convertMsgToTIMMessage(convertMsgToTIMMessage));
                }
                if (ConversationManager.this.msgListeners == null || ConversationManager.this.msgListeners.isEmpty()) {
                    QLog.e(ConversationManager.TAG, "msg listener not found");
                } else {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            synchronized (this) {
                                Iterator it = ConversationManager.this.msgListeners.iterator();
                                while (it.hasNext()) {
                                    if (((TIMMessageListener) it.next()).onNewMessages(copyOnWriteArrayList)) {
                                        break;
                                    }
                                }
                            }
                        }
                    });
                }
            }

            public void onUpdateMessage(List<Msg> list) {
                if (ConversationManager.this.msgUpdateListeners == null || ConversationManager.this.msgUpdateListeners.isEmpty()) {
                    QLog.e(ConversationManager.TAG, "msg update listener not found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                for (Msg convertMsgToTIMMessage : list) {
                    copyOnWriteArrayList.add(IMBridge.convertMsgToTIMMessage(convertMsgToTIMMessage));
                }
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        synchronized (this) {
                            Iterator it = ConversationManager.this.msgUpdateListeners.iterator();
                            while (it.hasNext()) {
                                ((TIMMessageUpdateListener) it.next()).onMessagesUpdate(copyOnWriteArrayList);
                            }
                        }
                    }
                });
            }

            public void onRecvMessageReceipts(final List<TIMMessageReceipt> list) {
                if (ConversationManager.this.receiptListener == null) {
                    QLog.e(ConversationManager.TAG, "msg receipt listener not found");
                } else {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            ConversationManager.this.receiptListener.onRecvReceipt(list);
                        }
                    });
                }
            }

            public void onRevokeMessage(final List<TIMMessageLocator> list) {
                if (ConversationManager.this.revokedListener == null) {
                    QLog.e(ConversationManager.TAG, "msg revoke listener not found");
                } else {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            for (TIMMessageLocator onMessageRevoked : list) {
                                ConversationManager.this.revokedListener.onMessageRevoked(onMessageRevoked);
                            }
                        }
                    });
                }
            }

            public void onUploadProgress(Msg msg, int i, long j, long j2) {
                final int i2;
                int i3;
                if (ConversationManager.this.uploadProgressListener != null) {
                    TIMElem element = msg.getElement(i);
                    int i4 = AnonymousClass5.$SwitchMap$com$tencent$imsdk$TIMElemType[element.getType().ordinal()];
                    if (i4 == 1) {
                        i3 = ((TIMFileElem) element).getTaskId();
                    } else if (i4 == 2) {
                        i3 = ((TIMSoundElem) element).getTaskId();
                    } else if (i4 != 3) {
                        if (i4 != 4) {
                            i2 = 0;
                        } else {
                            i2 = (int) ((TIMVideoElem) element).getTaskId();
                        }
                        final TIMMessage convertMsgToTIMMessage = IMBridge.convertMsgToTIMMessage(msg);
                        IMContext instance = IMContext.getInstance();
                        final int i5 = i;
                        final long j3 = j;
                        final long j4 = j2;
                        AnonymousClass5 r0 = new Runnable() {
                            public void run() {
                                ConversationManager.this.uploadProgressListener.onMessagesUpdate(convertMsgToTIMMessage, i5, i2, (int) ((j3 * 100) / j4));
                            }
                        };
                        instance.runOnMainThread(r0);
                    } else {
                        i3 = ((TIMImageElem) element).getTaskId();
                    }
                    i2 = i3;
                    final TIMMessage convertMsgToTIMMessage2 = IMBridge.convertMsgToTIMMessage(msg);
                    IMContext instance2 = IMContext.getInstance();
                    final int i52 = i;
                    final long j32 = j;
                    final long j42 = j2;
                    AnonymousClass5 r02 = new Runnable() {
                        public void run() {
                            ConversationManager.this.uploadProgressListener.onMessagesUpdate(convertMsgToTIMMessage2, i52, i2, (int) ((j32 * 100) / j42));
                        }
                    };
                    instance2.runOnMainThread(r02);
                }
            }
        });
    }

    public void setMessageReceiptListener(TIMMessageReceiptListener tIMMessageReceiptListener) {
        this.receiptListener = tIMMessageReceiptListener;
    }

    public void setMessageRevokedListener(@NonNull TIMMessageRevokedListener tIMMessageRevokedListener) {
        this.revokedListener = tIMMessageRevokedListener;
    }

    public TIMConversation getConversation(TIMConversationType tIMConversationType, String str) {
        return IMBridge.newTIMConversation(tIMConversationType, str);
    }

    public List<TIMConversation> getConversationList() {
        ArrayList arrayList = new ArrayList();
        nativeGetConversations(arrayList);
        return arrayList;
    }

    public void deleteConversation(TIMConversationType tIMConversationType, String str) {
        nativeDeleteConversation(tIMConversationType.value(), str, new ICallback(null) {
            public void done(Object obj) {
                if (this.cb != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            AnonymousClass3.this.cb.onSuccess();
                        }
                    });
                }
            }

            public void fail(final int i, final String str) {
                if (this.cb != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            AnonymousClass3.this.cb.onError(i, str);
                        }
                    });
                }
            }
        });
    }

    public void deleteConversationAndLocalMsgs(TIMConversationType tIMConversationType, String str) {
        nativeDeleteConversationAndLocalMsgs(tIMConversationType.value(), str, new ICallback(null) {
            public void done(Object obj) {
                if (this.cb != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            AnonymousClass4.this.cb.onSuccess();
                        }
                    });
                }
            }

            public void fail(final int i, final String str) {
                if (this.cb != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            AnonymousClass4.this.cb.onError(i, str);
                        }
                    });
                }
            }
        });
    }
}
