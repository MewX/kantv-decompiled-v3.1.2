package com.avos.avoscloud;

import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.avos.avoscloud.AVPushWebSocketClient.AVPacketParser;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.BlacklistCommand;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.DataCommand;
import com.avos.avoscloud.Messages.DirectCommand;
import com.avos.avoscloud.Messages.ErrorCommand;
import com.avos.avoscloud.Messages.GenericCommand;
import com.avos.avoscloud.Messages.JsonObjectMessage;
import com.avos.avoscloud.Messages.LogsCommand;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Messages.PatchCommand;
import com.avos.avoscloud.Messages.PatchItem;
import com.avos.avoscloud.Messages.RcpCommand;
import com.avos.avoscloud.Messages.SessionCommand;
import com.avos.avoscloud.Messages.UnreadCommand;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avospush.push.AVPushRouter;
import com.avos.avospush.push.AVWebSocketListener;
import com.avos.avospush.session.CommandPacket;
import com.avos.avospush.session.LiveQueryLoginPacket;
import com.avos.avospush.session.LoginPacket;
import com.avos.avospush.session.MessagePatchModifiedPacket;
import com.avos.avospush.session.PushAckPacket;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.ProtocolStringList;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

class AVPushConnectionManager implements AVPacketParser {
    private static final String SUB_PROTOCOL_2_1 = "lc.protobuf2.1";
    private static final String SUB_PROTOCOL_2_3 = "lc.protobuf2.3";
    private static AVPushConnectionManager instance;
    private static String liveQuerySubscribeId = "";
    private static final Map<String, AVSession> peerIdEnabledSessions = Collections.synchronizedMap(new HashMap());
    /* access modifiers changed from: private */
    public List<AVCallback> connectionCallbacks = new LinkedList();
    private AVPushRouter router;
    private volatile AVPushWebSocketClient socketClient;

    /* JADX WARNING: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0053  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private AVPushConnectionManager(android.content.Context r7) {
        /*
            r6 = this;
            r6.<init>()
            java.util.LinkedList r0 = new java.util.LinkedList
            r0.<init>()
            r6.connectionCallbacks = r0
            java.lang.String r0 = "begin to invoke AVPushConnectionManager(Context)"
            com.avos.avoscloud.LogUtil.log.d(r0)
            com.avos.avospush.push.AVPushRouter r0 = new com.avos.avospush.push.AVPushRouter
            com.avos.avoscloud.AVPushConnectionManager$1 r1 = new com.avos.avoscloud.AVPushConnectionManager$1
            r1.<init>()
            r0.<init>(r7, r1)
            r6.router = r0
            r6.initSessionsIfExists()
            boolean r0 = com.avos.avoscloud.AVOSCloud.isGcmOpen()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x004c
            java.lang.String r0 = "com.avos.avoscloud.AVGcmManager"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x0040 }
            java.lang.String r3 = "getGcmTokenInBackground"
            java.lang.Class[] r4 = new java.lang.Class[r2]     // Catch:{ Exception -> 0x0040 }
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r4[r1] = r5     // Catch:{ Exception -> 0x0040 }
            java.lang.reflect.Method r3 = r0.getMethod(r3, r4)     // Catch:{ Exception -> 0x0040 }
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch:{ Exception -> 0x0040 }
            r4[r1] = r7     // Catch:{ Exception -> 0x0040 }
            r3.invoke(r0, r4)     // Catch:{ Exception -> 0x0040 }
            goto L_0x004d
        L_0x0040:
            boolean r7 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()
            if (r7 == 0) goto L_0x004c
            java.lang.String r7 = "gcm library not started since not included"
            com.avos.avoscloud.LogUtil.avlog.i(r7)
        L_0x004c:
            r1 = 1
        L_0x004d:
            if (r1 == 0) goto L_0x0053
            r6.initConnection()
            goto L_0x0058
        L_0x0053:
            java.lang.String r7 = "skip initialize connection bcz of GCM Push using"
            com.avos.avoscloud.LogUtil.log.d(r7)
        L_0x0058:
            java.lang.String r7 = "end of AVPushConnectionManager(Context)"
            com.avos.avoscloud.LogUtil.log.d(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVPushConnectionManager.<init>(android.content.Context):void");
    }

    private void initSessionsIfExists() {
        Map allSession = AVSessionCacheHelper.getTagCacheInstance().getAllSession();
        for (Entry entry : allSession.entrySet()) {
            AVSession orCreateSession = getOrCreateSession((String) entry.getKey());
            orCreateSession.sessionResume.set(true);
            orCreateSession.tag = (String) entry.getValue();
        }
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(allSession.size());
            sb.append(" sessions recovered");
            avlog.d(sb.toString());
        }
    }

    public static synchronized AVPushConnectionManager getInstance(Context context) {
        AVPushConnectionManager aVPushConnectionManager;
        synchronized (AVPushConnectionManager.class) {
            if (instance == null) {
                instance = new AVPushConnectionManager(context);
            }
            aVPushConnectionManager = instance;
        }
        return aVPushConnectionManager;
    }

    public void initConnection() {
        initConnection(null);
    }

    public void initConnection(AVCallback aVCallback) {
        if (this.socketClient == null || !this.socketClient.isOpen()) {
            if (this.socketClient != null) {
                this.socketClient.cancelReconnect();
            }
            log.d("try to query connection server via push router.");
            this.router.fetchPushServer();
            if (aVCallback != null) {
                this.connectionCallbacks.add(aVCallback);
            }
            return;
        }
        log.d("push connection is open");
    }

    public boolean isConnectedToPushServer() {
        return this.socketClient != null && this.socketClient.isOpen();
    }

    public void stop() {
        cleanupSocketConnection();
    }

    public AVSession getOrCreateSession(String str) {
        AVSession aVSession;
        try {
            boolean z = true;
            if (!peerIdEnabledSessions.containsKey(str)) {
                aVSession = new AVSession(str, new AVDefaultSessionListener(this));
                peerIdEnabledSessions.put(str, aVSession);
                AVWebSocketListener webSocketListener = aVSession.getWebSocketListener();
                if (this.socketClient == null || !this.socketClient.isOpen()) {
                    z = false;
                }
                webSocketListener.onListenerAdded(z);
            } else {
                aVSession = (AVSession) peerIdEnabledSessions.get(str);
            }
            return aVSession;
        } catch (Exception unused) {
            return null;
        }
    }

    public void removeSession(String str) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.remove(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onListenerRemoved();
        }
    }

    public void sendData(CommandPacket commandPacket) {
        if (this.socketClient != null && this.socketClient.isOpen()) {
            this.socketClient.send(commandPacket);
        }
    }

    public void cleanupSocketConnection() {
        cleanupSocketConnection(1000, "");
    }

    public void cleanupSocketConnection(int i, String str) {
        if (this.socketClient != null && (this.socketClient.isConnecting() || this.socketClient.isOpen())) {
            try {
                this.socketClient.close(i, str);
                this.socketClient.destroy();
            } catch (Exception e) {
                if (AVOSCloud.isDebugLogEnabled()) {
                    avlog.e("Close socket client failed.", e);
                }
            }
        } else if (this.socketClient != null && this.socketClient.isClosing()) {
            this.socketClient.destroy();
            this.socketClient = null;
        }
    }

    /* access modifiers changed from: private */
    public synchronized void createNewWebSocket(String str) {
        if (this.socketClient != null) {
            if (!this.socketClient.isClosed()) {
                log.d("skip create socketClient.");
            }
        }
        if (this.socketClient != null) {
            log.d("destroy socketClient first which is closed.");
            this.socketClient.destroy();
        }
        if (AVSession.isOnlyPushCount()) {
            this.socketClient = new AVPushWebSocketClient(URI.create(str), this, SUB_PROTOCOL_2_3, true);
        } else {
            this.socketClient = new AVPushWebSocketClient(URI.create(str), this, SUB_PROTOCOL_2_1, true);
        }
        this.socketClient.connect();
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("connect to server: ");
            sb.append(str);
            avlog.d(sb.toString());
        }
    }

    private void processLiveQueryData(DataCommand dataCommand) {
        ProtocolStringList idsList = dataCommand.getIdsList();
        List msgList = dataCommand.getMsgList();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < msgList.size() && i < idsList.size()) {
            JsonObjectMessage jsonObjectMessage = (JsonObjectMessage) msgList.get(i);
            if (jsonObjectMessage != null) {
                arrayList.add(jsonObjectMessage.getData());
            }
            i++;
        }
        AVLiveQuery.processData(arrayList);
    }

    private void processDataCommand(DataCommand dataCommand) {
        ProtocolStringList idsList = dataCommand.getIdsList();
        List msgList = dataCommand.getMsgList();
        int i = 0;
        while (i < msgList.size() && i < idsList.size()) {
            if (msgList.get(i) != null) {
                AVNotificationManager.getInstance().processPushMessage(((JsonObjectMessage) msgList.get(i)).getData(), (String) idsList.get(i));
            }
            i++;
        }
        PushAckPacket pushAckPacket = new PushAckPacket();
        pushAckPacket.setInstallationId(AVInstallation.getCurrentInstallation().getInstallationId());
        pushAckPacket.setMessageIds(idsList);
        sendData(pushAckPacket);
    }

    public void processCommand(ByteBuffer byteBuffer) {
        try {
            GenericCommand parseFrom = GenericCommand.parseFrom(byteBuffer.array());
            if (AVOSCloud.isDebugLogEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append("downlink : ");
                sb.append(parseFrom.toString());
                avlog.d(sb.toString());
            }
            String peerId = parseFrom.getPeerId();
            Integer valueOf = parseFrom.hasI() ? Integer.valueOf(parseFrom.getI()) : null;
            if (AVUtils.isBlankString(peerId)) {
                peerId = AVIMClient.getDefaultClient();
            }
            if (parseFrom.getCmd().getNumber() == 15) {
                if (1 == parseFrom.getService()) {
                    processLoggedinCommand(valueOf);
                }
            } else if (!peerIdEnabledSessions.isEmpty() || parseFrom.getCmd().getNumber() == 9) {
                int number = parseFrom.getCmd().getNumber();
                if (number != 9) {
                    if (number != 18) {
                        if (number != 20) {
                            switch (number) {
                                case 0:
                                    processSessionCommand(peerId, parseFrom.getOp().name(), valueOf, parseFrom.getSessionMessage());
                                    return;
                                case 1:
                                    processConvCommand(peerId, parseFrom.getOp().name(), valueOf, parseFrom.getConvMessage());
                                    return;
                                case 2:
                                    processDirectCommand(peerId, parseFrom.getDirectMessage());
                                    return;
                                case 3:
                                    processAckCommand(peerId, valueOf, parseFrom.getAckMessage());
                                    return;
                                case 4:
                                    processRpcCommand(peerId, parseFrom.getRcpMessage());
                                    return;
                                case 5:
                                    processUnreadCommand(peerId, parseFrom.getUnreadMessage());
                                    return;
                                case 6:
                                    processLogsCommand(peerId, valueOf, parseFrom.getLogsMessage());
                                    return;
                                case 7:
                                    processErrorCommand(peerId, valueOf, parseFrom.getErrorMessage());
                                    return;
                                default:
                                    return;
                            }
                        } else {
                            processBlacklistCommand(peerId, parseFrom.getOp().name(), valueOf, parseFrom.getBlacklistMessage());
                        }
                    } else if (parseFrom.getOp().equals(OpType.modify)) {
                        processPatchCommand(peerId, true, valueOf, parseFrom.getPatchMessage());
                    } else if (parseFrom.getOp().equals(OpType.modified)) {
                        processPatchCommand(peerId, false, valueOf, parseFrom.getPatchMessage());
                    }
                } else if (parseFrom.hasService()) {
                    int service = parseFrom.getService();
                    if (service == 0) {
                        processDataCommand(parseFrom.getDataMessage());
                    } else if (1 == service) {
                        processLiveQueryData(parseFrom.getDataMessage());
                    }
                } else {
                    processDataCommand(parseFrom.getDataMessage());
                }
            }
        } catch (InvalidProtocolBufferException e) {
            e.printStackTrace();
        }
    }

    public synchronized void processConnectionStatus(final AVException aVException) {
        this.router.processSocketConnectionResult(aVException);
        AVOSCloud.handler.post(new Runnable() {
            public void run() {
                if (AVPushConnectionManager.this.connectionCallbacks != null && AVPushConnectionManager.this.connectionCallbacks.size() > 0) {
                    Iterator it = AVPushConnectionManager.this.connectionCallbacks.iterator();
                    while (it.hasNext()) {
                        AVCallback aVCallback = (AVCallback) it.next();
                        if (aVCallback != null) {
                            aVCallback.internalDone(null, aVException);
                        }
                        it.remove();
                    }
                }
            }
        });
    }

    private void processSessionCommand(String str, String str2, Integer num, SessionCommand sessionCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onSessionCommand(str2, num, sessionCommand);
        }
    }

    private void processDirectCommand(String str, DirectCommand directCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onDirectCommand(directCommand);
        }
    }

    private void processRpcCommand(String str, RcpCommand rcpCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            if (rcpCommand.hasRead()) {
                aVSession.getWebSocketListener().onReadCmdReceipt(rcpCommand);
            } else {
                aVSession.getWebSocketListener().onMessageReceipt(rcpCommand);
            }
        }
    }

    private void processAckCommand(String str, Integer num, AckCommand ackCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onAckCommand(num, ackCommand);
        }
    }

    private void processBlacklistCommand(String str, String str2, Integer num, BlacklistCommand blacklistCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onBlacklistCommand(str2, num, blacklistCommand);
        }
    }

    private void processConvCommand(String str, String str2, Integer num, ConvCommand convCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onConversationCommand(str2, num, convCommand);
        }
    }

    private void processErrorCommand(String str, Integer num, ErrorCommand errorCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onError(num, errorCommand);
        }
    }

    private void processLogsCommand(String str, Integer num, LogsCommand logsCommand) {
        ((AVSession) peerIdEnabledSessions.get(str)).getWebSocketListener().onHistoryMessageQuery(num, logsCommand);
    }

    private void processUnreadCommand(String str, UnreadCommand unreadCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (aVSession != null && aVSession.getWebSocketListener() != null) {
            aVSession.getWebSocketListener().onUnreadMessagesCommand(unreadCommand);
        }
    }

    private void processPatchCommand(String str, boolean z, Integer num, PatchCommand patchCommand) {
        AVSession aVSession = (AVSession) peerIdEnabledSessions.get(str);
        if (!(aVSession == null || aVSession.getWebSocketListener() == null)) {
            aVSession.getWebSocketListener().onMessagePatchCommand(z, num, patchCommand);
        }
        if (z) {
            long j = 0;
            for (PatchItem patchItem : patchCommand.getPatchesList()) {
                if (patchItem.getPatchTimestamp() > j) {
                    j = patchItem.getPatchTimestamp();
                }
            }
            sendData(MessagePatchModifiedPacket.getPatchMessagePacket(str, j));
        }
    }

    private void processLoggedinCommand(Integer num) {
        if (num != null) {
            Intent intent = new Intent();
            StringBuilder sb = new StringBuilder();
            sb.append("live_query_");
            sb.append(num);
            intent.setAction(sb.toString());
            LocalBroadcastManager.getInstance(AVOSCloud.applicationContext).sendBroadcast(intent);
        }
    }

    public void sendLiveQueryLoginCmd(String str, int i) {
        if (!AVUtils.isBlankString(str)) {
            liveQuerySubscribeId = str;
            LiveQueryLoginPacket liveQueryLoginPacket = new LiveQueryLoginPacket();
            liveQueryLoginPacket.setSubscribeId(str);
            if (i != 0) {
                liveQueryLoginPacket.setRequestId(i);
            }
            this.socketClient.send(liveQueryLoginPacket);
        }
    }

    public void loginCmd() {
        LoginPacket loginPacket = new LoginPacket();
        loginPacket.setAppId(AVOSCloud.applicationId);
        loginPacket.setInstallationId(AVInstallation.getCurrentInstallation().getInstallationId());
        this.socketClient.send(loginPacket);
        if (!AVUtils.isBlankString(liveQuerySubscribeId)) {
            sendLiveQueryLoginCmd(liveQuerySubscribeId, 0);
        }
    }

    public void processSessionsStatus(boolean z) {
        for (AVSession aVSession : peerIdEnabledSessions.values()) {
            if (aVSession.getWebSocketListener() != null) {
                if (z) {
                    aVSession.getWebSocketListener().onWebSocketClose();
                } else {
                    aVSession.getWebSocketListener().onWebSocketOpen();
                }
            }
        }
    }

    public void processRemoteServerNotAvailable() {
        this.router.fetchPushServer();
    }
}
