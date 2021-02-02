package com.avos.avoscloud;

import android.annotation.SuppressLint;
import android.content.Context;
import com.avos.avoscloud.AVIMOperationQueue.Operation;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.PendingMessageCache.Message;
import com.avos.avoscloud.SignatureFactory.SignatureException;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMMessage;
import com.avos.avoscloud.im.v2.AVIMOptions;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avospush.push.AVWebSocketListener;
import com.avos.avospush.session.CommandPacket;
import com.avos.avospush.session.ConversationAckPacket;
import com.avos.avospush.session.ConversationControlPacket;
import com.avos.avospush.session.ConversationQueryPacket;
import com.avos.avospush.session.MessageReceiptCache;
import com.avos.avospush.session.SessionControlPacket;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

@SuppressLint({"NewApi"})
public class AVSession {
    public static final String ERROR_INVALID_SESSION_ID = "Null id in session id list.";
    static final int OPERATION_CLOSE_SESSION = 10005;
    static final int OPERATION_OPEN_SESSION = 10004;
    static final int OPERATION_UNKNOW = -1;
    private static boolean onlyPushCount = false;
    private final String AVUSER_SESSION_TOKEN = "avuserSessionToken";
    private final String LAST_NOTIFY_TIME = "lastNotifyTime";
    private final String LAST_PATCH_TIME = "lastPatchTime";
    private final Context context;
    private final ConcurrentHashMap<String, AVConversationHolder> conversationHolderCache = new ConcurrentHashMap<>();
    AVIMOperationQueue conversationOperationCache;
    private long lastNotifyTime = 0;
    private long lastPatchTime = 0;
    private final AtomicLong lastServerAckReceived = new AtomicLong(0);
    PendingMessageCache<Message> pendingMessages;
    /* access modifiers changed from: private */
    public String realtimeSessionToken = null;
    private long realtimeSessionTokenExpired = 0;
    /* access modifiers changed from: private */
    public final String selfId;
    final AVSessionListener sessionListener;
    final AtomicBoolean sessionOpened = new AtomicBoolean(false);
    final AtomicBoolean sessionPaused = new AtomicBoolean(false);
    final AtomicBoolean sessionResume = new AtomicBoolean(false);
    String tag;
    private String userSessionToken = null;
    private final AVWebSocketListener websocketListener;

    public AVWebSocketListener getWebSocketListener() {
        return this.websocketListener;
    }

    public AVSession(String str, AVSessionListener aVSessionListener) {
        this.selfId = str;
        this.context = AVOSCloud.applicationContext;
        this.sessionListener = aVSessionListener;
        this.websocketListener = new AVDefaultWebSocketListener(this);
        this.pendingMessages = new PendingMessageCache<>(str, Message.class);
        this.conversationOperationCache = new AVIMOperationQueue(str);
    }

    public void open(AVIMClientParcel aVIMClientParcel, int i) {
        this.tag = aVIMClientParcel.getClientTag();
        updateUserSessionToken(aVIMClientParcel.getSessionToken());
        try {
            if (PushService.isPushConnectionBroken()) {
                this.sessionListener.onError(AVOSCloud.applicationContext, this, new IllegalStateException("Connection Lost"), 10004, i);
            } else if (this.sessionOpened.get()) {
                this.sessionListener.onSessionOpen(this.context, this, i);
            } else {
                openWithSignature(i, aVIMClientParcel.isReconnection(), true);
            }
        } catch (Exception e) {
            this.sessionListener.onError(AVOSCloud.applicationContext, this, e, 10004, i);
        }
    }

    /* access modifiers changed from: 0000 */
    public void reopen() {
        String iMSessionToken = IMSessionTokenCache.getIMSessionToken(getSelfPeerId());
        if (!AVUtils.isBlankString(iMSessionToken)) {
            openWithSessionToken(iMSessionToken);
        } else {
            openWithSignature(AVUtils.getNextIMRequestId(), true, false);
        }
    }

    public void renewRealtimeSesionToken(final int i) {
        final AnonymousClass1 r0 = new SignatureCallback() {
            public void onSignatureReady(Signature signature, AVException aVException) {
                if (aVException != null) {
                    log.d("failed to generate signaure. cause:", (Exception) aVException);
                    return;
                }
                SessionControlPacket genSessionCommand = SessionControlPacket.genSessionCommand(AVSession.this.getSelfPeerId(), null, SessionControlOp.RENEW_RTMTOKEN, signature, AVSession.this.getLastNotifyTime(), AVSession.this.getLastPatchTime(), Integer.valueOf(i));
                genSessionCommand.setTag(AVSession.this.tag);
                genSessionCommand.setSessionToken(AVSession.this.realtimeSessionToken);
                PushService.sendData(genSessionCommand);
            }

            public Signature computeSignature() throws SignatureException {
                SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                if (signatureFactory == null && !AVUtils.isBlankString(AVSession.this.getUserSessionToken())) {
                    signatureFactory = new AVUserSignatureFactory(AVSession.this.getUserSessionToken());
                }
                if (signatureFactory != null) {
                    return signatureFactory.createSignature(AVSession.this.getSelfPeerId(), new ArrayList());
                }
                return null;
            }
        };
        if (!AVUtils.isMainThread()) {
            AVOSCloud.handler.post(new Runnable() {
                public void run() {
                    new SignatureTask(r0).commit(AVSession.this.getSelfPeerId());
                }
            });
            return;
        }
        new SignatureTask(r0).commit(getSelfPeerId());
    }

    /* access modifiers changed from: 0000 */
    public void updateRealtimeSessionToken(String str, int i) {
        this.realtimeSessionToken = str;
        this.realtimeSessionTokenExpired = System.currentTimeMillis() + ((long) (i * 1000));
        AVIMClient instance = AVIMClient.getInstance(this.selfId);
        if (instance != null) {
            instance.updateRealtimeSessionToken(str, this.realtimeSessionTokenExpired);
        }
        if (AVUtils.isBlankString(str)) {
            IMSessionTokenCache.removeIMSessionToken(getSelfPeerId());
        } else {
            IMSessionTokenCache.addIMSessionToken(getSelfPeerId(), str, this.realtimeSessionTokenExpired);
        }
    }

    private void openWithSessionToken(String str) {
        SessionControlPacket genSessionCommand = SessionControlPacket.genSessionCommand(getSelfPeerId(), null, SessionControlOp.OPEN, null, getLastNotifyTime(), getLastPatchTime(), null);
        genSessionCommand.setSessionToken(str);
        genSessionCommand.setReconnectionRequest(true);
        PushService.sendData(genSessionCommand);
    }

    private void openWithSignature(final int i, final boolean z, final boolean z2) {
        final AnonymousClass3 r0 = new SignatureCallback() {
            public void onSignatureReady(Signature signature, AVException aVException) {
                if (aVException != null) {
                    if (z2) {
                        AVSession.this.sessionListener.onError(AVOSCloud.applicationContext, AVSession.this, aVException, 10004, i);
                    }
                    log.d("failed to generate signaure. cause:", (Exception) aVException);
                    return;
                }
                AVSession.this.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CLIENT_OPEN.getCode(), AVSession.this.getSelfPeerId(), null, i));
                SessionControlPacket genSessionCommand = SessionControlPacket.genSessionCommand(AVSession.this.getSelfPeerId(), null, SessionControlOp.OPEN, signature, AVSession.this.getLastNotifyTime(), AVSession.this.getLastPatchTime(), Integer.valueOf(i));
                genSessionCommand.setTag(AVSession.this.tag);
                genSessionCommand.setReconnectionRequest(z);
                PushService.sendData(genSessionCommand);
            }

            public Signature computeSignature() throws SignatureException {
                SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                if (signatureFactory == null && !AVUtils.isBlankString(AVSession.this.getUserSessionToken())) {
                    signatureFactory = new AVUserSignatureFactory(AVSession.this.getUserSessionToken());
                }
                if (signatureFactory != null) {
                    return signatureFactory.createSignature(AVSession.this.getSelfPeerId(), new ArrayList());
                }
                return null;
            }
        };
        if (!AVUtils.isMainThread()) {
            AVOSCloud.handler.post(new Runnable() {
                public void run() {
                    new SignatureTask(r0).commit(AVSession.this.getSelfPeerId());
                }
            });
            return;
        }
        new SignatureTask(r0).commit(getSelfPeerId());
    }

    public void close() {
        close(CommandPacket.UNSUPPORTED_OPERATION);
    }

    public void cleanUp() {
        updateRealtimeSessionToken("", 0);
        PendingMessageCache<Message> pendingMessageCache = this.pendingMessages;
        if (pendingMessageCache != null) {
            pendingMessageCache.clear();
        }
        AVIMOperationQueue aVIMOperationQueue = this.conversationOperationCache;
        if (aVIMOperationQueue != null) {
            aVIMOperationQueue.clear();
        }
        this.conversationHolderCache.clear();
        MessageReceiptCache.clean(getSelfPeerId());
    }

    /* access modifiers changed from: protected */
    public void close(int i) {
        try {
            AVSessionCacheHelper.getTagCacheInstance().removeSession(getSelfPeerId());
            IMSessionTokenCache.removeIMSessionToken(getSelfPeerId());
            cleanUp();
            if (!this.sessionOpened.compareAndSet(true, false)) {
                this.sessionListener.onSessionClose(this.context, this, i);
                return;
            }
            if (!this.sessionPaused.getAndSet(false)) {
                this.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CLIENT_DISCONNECT.getCode(), this.selfId, null, i));
                PushService.sendData(SessionControlPacket.genSessionCommand(this.selfId, null, "close", null, Integer.valueOf(i)));
            } else {
                this.sessionListener.onSessionClose(this.context, this, i);
            }
        } catch (Exception e) {
            this.sessionListener.onError(AVOSCloud.applicationContext, this, e, 10005, i);
        }
    }

    /* access modifiers changed from: protected */
    public void storeMessage(Message message, int i) {
        this.pendingMessages.offer(message);
        this.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_SEND_MESSAGE.getCode(), getSelfPeerId(), message.cid, i));
    }

    public String getSelfPeerId() {
        return this.selfId;
    }

    /* access modifiers changed from: protected */
    public void setServerAckReceived(long j) {
        this.lastServerAckReceived.set(j);
    }

    /* access modifiers changed from: protected */
    public void queryOnlinePeers(List<String> list, int i) {
        PushService.sendData(SessionControlPacket.genSessionCommand(this.selfId, list, "query", null, Integer.valueOf(i)));
    }

    /* access modifiers changed from: protected */
    public void conversationQuery(Map<String, Object> map, int i) {
        if (this.sessionPaused.get()) {
            BroadcastUtil.sendIMLocalBroadcast(getSelfPeerId(), (String) null, i, (Throwable) new RuntimeException("Connection Lost"), AVIMOperation.CONVERSATION_QUERY);
            return;
        }
        this.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_QUERY.getCode(), this.selfId, null, i));
        PushService.sendData(ConversationQueryPacket.getConversationQueryPacket(getSelfPeerId(), map, i));
    }

    public AVException checkSessionStatus() {
        if (!this.sessionOpened.get()) {
            return new AVException(119, "Please call AVIMClient.open() first");
        }
        if (this.sessionPaused.get()) {
            return new AVException(new RuntimeException("Connection Lost"));
        }
        if (this.sessionResume.get()) {
            return new AVException(new RuntimeException("Connecting to server"));
        }
        return null;
    }

    public AVConversationHolder getConversationHolder(String str, int i) {
        AVConversationHolder aVConversationHolder = (AVConversationHolder) this.conversationHolderCache.get(str);
        if (aVConversationHolder != null) {
            return aVConversationHolder;
        }
        AVConversationHolder aVConversationHolder2 = new AVConversationHolder(str, this, i);
        AVConversationHolder aVConversationHolder3 = (AVConversationHolder) this.conversationHolderCache.putIfAbsent(str, aVConversationHolder2);
        if (aVConversationHolder3 == null) {
            aVConversationHolder3 = aVConversationHolder2;
        }
        return aVConversationHolder3;
    }

    /* access modifiers changed from: protected */
    public void removeConversation(String str) {
        this.conversationHolderCache.remove(str);
    }

    /* access modifiers changed from: protected */
    public void createConversation(List<String> list, Map<String, Object> map, boolean z, boolean z2, boolean z3, int i, boolean z4, int i2) {
        if (this.sessionPaused.get()) {
            RuntimeException runtimeException = new RuntimeException("Connection Lost");
            this.sessionListener.onError(this.context, this, runtimeException, AVIMOperation.CONVERSATION_CREATION.getCode(), i2);
            return;
        }
        final int i3 = i2;
        final List<String> list2 = list;
        final Map<String, Object> map2 = map;
        final boolean z5 = z;
        final boolean z6 = z2;
        final boolean z7 = z3;
        final int i4 = i;
        final boolean z8 = z4;
        AnonymousClass5 r0 = new SignatureCallback() {
            public void onSignatureReady(Signature signature, AVException aVException) {
                if (aVException == null) {
                    AVSession.this.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_CREATION.getCode(), AVSession.this.getSelfPeerId(), null, i3));
                    PushService.sendData(ConversationControlPacket.genConversationCommand(AVSession.this.selfId, null, list2, "start", map2, signature, z5, z6, z7, i4, z8, i3));
                    return;
                }
                BroadcastUtil.sendIMLocalBroadcast(AVSession.this.getSelfPeerId(), (String) null, i3, (Throwable) aVException, AVIMOperation.CONVERSATION_CREATION);
            }

            public Signature computeSignature() throws SignatureException {
                SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                if (signatureFactory != null) {
                    return signatureFactory.createSignature(AVSession.this.selfId, list2);
                }
                return null;
            }
        };
        new SignatureTask(r0).commit(this.selfId);
    }

    public static void setUnreadNotificationEnabled(boolean z) {
        onlyPushCount = z;
    }

    public static boolean isOnlyPushCount() {
        return onlyPushCount;
    }

    /* access modifiers changed from: 0000 */
    public long getLastNotifyTime() {
        if (this.lastNotifyTime <= 0) {
            this.lastNotifyTime = AVPersistenceUtils.sharedInstance().getPersistentSettingLong(this.selfId, "lastNotifyTime", Long.valueOf(0)).longValue();
        }
        return this.lastNotifyTime;
    }

    /* access modifiers changed from: 0000 */
    public void updateLastNotifyTime(long j) {
        if (j > getLastNotifyTime()) {
            this.lastNotifyTime = j;
            AVPersistenceUtils.sharedInstance().savePersistentSettingLong(this.selfId, "lastNotifyTime", Long.valueOf(j));
        }
    }

    /* access modifiers changed from: 0000 */
    public long getLastPatchTime() {
        String str = "lastPatchTime";
        if (this.lastPatchTime <= 0) {
            this.lastPatchTime = AVPersistenceUtils.sharedInstance().getPersistentSettingLong(this.selfId, str, Long.valueOf(0)).longValue();
        }
        if (this.lastPatchTime <= 0) {
            this.lastPatchTime = System.currentTimeMillis();
            AVPersistenceUtils.sharedInstance().savePersistentSettingLong(this.selfId, str, Long.valueOf(this.lastPatchTime));
        }
        return this.lastPatchTime;
    }

    /* access modifiers changed from: 0000 */
    public void updateLastPatchTime(long j) {
        if (j > getLastPatchTime()) {
            this.lastPatchTime = j;
            AVPersistenceUtils.sharedInstance().savePersistentSettingLong(this.selfId, "lastPatchTime", Long.valueOf(j));
        }
    }

    /* access modifiers changed from: 0000 */
    public String getUserSessionToken() {
        if (AVUtils.isBlankString(this.userSessionToken)) {
            this.userSessionToken = AVPersistenceUtils.sharedInstance().getPersistentSettingString(this.selfId, "avuserSessionToken", "");
        }
        return this.userSessionToken;
    }

    /* access modifiers changed from: 0000 */
    public void updateUserSessionToken(String str) {
        this.userSessionToken = str;
        if (!AVUtils.isBlankString(this.userSessionToken)) {
            AVPersistenceUtils.sharedInstance().savePersistentSettingString(this.selfId, "avuserSessionToken", this.userSessionToken);
        }
    }

    public void sendUnreadMessagesAck(ArrayList<AVIMMessage> arrayList, String str) {
        if (onlyPushCount && arrayList != null && arrayList.size() > 0) {
            Long valueOf = Long.valueOf(0);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AVIMMessage aVIMMessage = (AVIMMessage) it.next();
                if (valueOf.longValue() < aVIMMessage.getTimestamp()) {
                    valueOf = Long.valueOf(aVIMMessage.getTimestamp());
                }
            }
            PushService.sendData(ConversationAckPacket.getConversationAckPacket(getSelfPeerId(), str, valueOf));
        }
    }
}
