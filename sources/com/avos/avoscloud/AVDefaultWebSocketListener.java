package com.avos.avoscloud;

import android.os.Bundle;
import com.avos.avoscloud.AVIMOperationQueue.Operation;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.BlacklistCommand;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.DirectCommand;
import com.avos.avoscloud.Messages.ErrorCommand;
import com.avos.avoscloud.Messages.LogItem;
import com.avos.avoscloud.Messages.LogsCommand;
import com.avos.avoscloud.Messages.PatchCommand;
import com.avos.avoscloud.Messages.PatchItem;
import com.avos.avoscloud.Messages.RcpCommand;
import com.avos.avoscloud.Messages.SessionCommand;
import com.avos.avoscloud.PendingMessageCache.Message;
import com.avos.avoscloud.im.v2.AVIMBinaryMessage;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.AVIMMessage;
import com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus;
import com.avos.avoscloud.im.v2.AVIMTypedMessage;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avospush.push.AVWebSocketListener;
import com.avos.avospush.session.CommandPacket;
import com.avos.avospush.session.ConversationAckPacket;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.avos.avospush.session.MessageReceiptCache;
import com.avos.avospush.session.SessionAckPacket;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import com.avos.avospush.session.StaleMessageDepot;
import com.google.protobuf.ByteString;
import com.google.protobuf.ProtocolStringList;

class AVDefaultWebSocketListener implements AVWebSocketListener {
    private static final int CODE_SESSION_SIGNATURE_FAILURE = 4102;
    private static final int CODE_SESSION_TOKEN_FAILURE = 4112;
    private static final String SESSION_MESSASGE_DEPOT = "com.avos.push.session.message.";
    private final StaleMessageDepot depot;
    AVSession session;

    public void onListenerRemoved() {
    }

    public AVDefaultWebSocketListener(AVSession aVSession) {
        this.session = aVSession;
        StringBuilder sb = new StringBuilder();
        sb.append(SESSION_MESSASGE_DEPOT);
        sb.append(aVSession.getSelfPeerId());
        this.depot = new StaleMessageDepot(sb.toString());
    }

    public void onWebSocketOpen() {
        if (this.session.sessionOpened.get() || this.session.sessionResume.get()) {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d("web socket opened, send session open.");
            }
            this.session.reopen();
        }
    }

    public void onWebSocketClose() {
        if (!this.session.sessionPaused.getAndSet(true)) {
            try {
                this.session.sessionListener.onSessionPaused(AVOSCloud.applicationContext, this.session);
                String str = "Connection Lost";
                if (this.session.pendingMessages != null) {
                    if (!this.session.pendingMessages.isEmpty()) {
                        while (!this.session.pendingMessages.isEmpty()) {
                            Message message = (Message) this.session.pendingMessages.poll();
                            if (!AVUtils.isBlankString(message.cid)) {
                                BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.session.getConversationHolder(message.cid, 1).conversationId, Integer.parseInt(message.id), (Throwable) new RuntimeException(str), AVIMOperation.CONVERSATION_SEND_MESSAGE);
                            }
                        }
                    }
                }
                if (this.session.conversationOperationCache != null && !this.session.conversationOperationCache.isEmpty()) {
                    for (int i = 0; i < this.session.conversationOperationCache.cache.size(); i++) {
                        int keyAt = this.session.conversationOperationCache.cache.keyAt(i);
                        Operation poll = this.session.conversationOperationCache.poll(keyAt);
                        BroadcastUtil.sendIMLocalBroadcast(poll.sessionId, poll.conversationId, keyAt, (Throwable) new IllegalStateException(str), AVIMOperation.getAVIMOperation(poll.operation));
                    }
                }
            } catch (Exception e) {
                this.session.sessionListener.onError(AVOSCloud.applicationContext, this.session, e);
            }
        }
    }

    public void onDirectCommand(DirectCommand directCommand) {
        boolean z;
        AVConversationHolder aVConversationHolder;
        ProtocolStringList protocolStringList;
        AVIMBinaryMessage aVIMBinaryMessage;
        AVDefaultWebSocketListener aVDefaultWebSocketListener = this;
        String msg = directCommand.getMsg();
        ByteString binaryMsg = directCommand.getBinaryMsg();
        String fromPeerId = directCommand.getFromPeerId();
        String cid = directCommand.getCid();
        Long valueOf = Long.valueOf(directCommand.getTimestamp());
        String id = directCommand.getId();
        int convType = directCommand.hasConvType() ? directCommand.getConvType() : 1;
        boolean z2 = directCommand.hasTransient() && directCommand.getTransient();
        boolean z3 = directCommand.hasHasMore() && directCommand.getHasMore();
        long patchTimestamp = directCommand.getPatchTimestamp();
        boolean mentionAll = directCommand.hasMentionAll() ? directCommand.getMentionAll() : false;
        ProtocolStringList mentionPidsList = directCommand.getMentionPidsList();
        if (!z2) {
            try {
                if (!AVUtils.isBlankString(cid)) {
                    PushService.sendData(ConversationAckPacket.getConversationAckPacket(aVDefaultWebSocketListener.session.getSelfPeerId(), cid, id));
                } else {
                    PushService.sendData(aVDefaultWebSocketListener.genSessionAckPacket(id));
                }
            } catch (Exception e) {
                e = e;
                aVDefaultWebSocketListener.session.sessionListener.onError(AVOSCloud.applicationContext, aVDefaultWebSocketListener.session, e);
            }
        }
        try {
            if (aVDefaultWebSocketListener.depot.putStableMessage(id) && !AVUtils.isBlankString(cid)) {
                AVConversationHolder conversationHolder = aVDefaultWebSocketListener.session.getConversationHolder(cid, convType);
                if (!AVUtils.isBlankString(msg) || binaryMsg == null) {
                    protocolStringList = mentionPidsList;
                    z = z2;
                    aVConversationHolder = conversationHolder;
                    AVIMMessage aVIMMessage = new AVIMMessage(cid, fromPeerId, valueOf.longValue(), -1);
                    aVIMMessage.setContent(msg);
                    aVIMBinaryMessage = aVIMMessage;
                } else {
                    protocolStringList = mentionPidsList;
                    z = z2;
                    aVConversationHolder = conversationHolder;
                    aVIMBinaryMessage = new AVIMBinaryMessage(cid, fromPeerId, valueOf.longValue(), -1);
                    aVIMBinaryMessage.setBytes(binaryMsg.toByteArray());
                }
                aVIMBinaryMessage.setMessageId(id);
                aVIMBinaryMessage.setUpdateAt(patchTimestamp);
                aVIMBinaryMessage.setMentionAll(mentionAll);
                aVIMBinaryMessage.setMentionList(protocolStringList);
                aVConversationHolder.onMessage(aVIMBinaryMessage, z3, z);
            }
        } catch (Exception e2) {
            e = e2;
            aVDefaultWebSocketListener = this;
            aVDefaultWebSocketListener.session.sessionListener.onError(AVOSCloud.applicationContext, aVDefaultWebSocketListener.session, e);
        }
    }

    public void onSessionCommand(String str, Integer num, SessionCommand sessionCommand) {
        int intValue = num != null ? num.intValue() : CommandPacket.UNSUPPORTED_OPERATION;
        if (str.equals(SessionControlOp.OPENED)) {
            try {
                this.session.sessionOpened.set(true);
                this.session.sessionResume.set(false);
                if (!this.session.sessionPaused.getAndSet(false)) {
                    if (intValue != -65537) {
                        this.session.conversationOperationCache.poll(intValue);
                    }
                    this.session.sessionListener.onSessionOpen(AVOSCloud.applicationContext, this.session, intValue);
                } else {
                    if (AVOSCloud.showInternalDebugLog()) {
                        avlog.d("session resumed");
                    }
                    this.session.sessionListener.onSessionResumed(AVOSCloud.applicationContext, this.session);
                }
                if (sessionCommand.hasSt() && sessionCommand.hasStTtl()) {
                    this.session.updateRealtimeSessionToken(sessionCommand.getSt(), Integer.valueOf(sessionCommand.getStTtl()).intValue());
                }
            } catch (Exception e) {
                this.session.sessionListener.onError(AVOSCloud.applicationContext, this.session, e);
            }
        } else if (str.equals(SessionControlOp.RENEWED_RTMTOKEN)) {
            if (sessionCommand.hasSt() && sessionCommand.hasStTtl()) {
                this.session.updateRealtimeSessionToken(sessionCommand.getSt(), Integer.valueOf(sessionCommand.getStTtl()).intValue());
            }
            this.session.sessionListener.onSessionTokenRenewed(AVOSCloud.applicationContext, this.session, intValue);
        } else if (str.equals("query_result")) {
            this.session.sessionListener.onOnlineQuery(AVOSCloud.applicationContext, this.session, sessionCommand.getOnlineSessionPeerIdsList(), intValue);
        } else if (!str.equals(SessionControlOp.CLOSED)) {
        } else {
            if (sessionCommand.hasCode()) {
                this.session.sessionListener.onSessionClosedFromServer(AVOSCloud.applicationContext, this.session, sessionCommand.getCode());
                return;
            }
            if (intValue != -65537) {
                this.session.conversationOperationCache.poll(intValue);
            }
            this.session.sessionListener.onSessionClose(AVOSCloud.applicationContext, this.session, intValue);
        }
    }

    private void onAckError(Integer num, AckCommand ackCommand, Message message) {
        Operation poll = this.session.conversationOperationCache.poll(num.intValue());
        int i = 0;
        if (poll.operation == AVIMOperation.CLIENT_OPEN.getCode()) {
            this.session.sessionOpened.set(false);
            this.session.sessionResume.set(false);
        }
        AVIMOperation aVIMOperation = AVIMOperation.getAVIMOperation(poll.operation);
        int code = ackCommand.getCode();
        if (ackCommand.hasAppCode()) {
            i = ackCommand.getAppCode();
        }
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), poll.conversationId, num.intValue(), (Throwable) new AVIMException(code, i, ackCommand.getReason()), aVIMOperation);
    }

    public void onAckCommand(Integer num, AckCommand ackCommand) {
        this.session.setServerAckReceived(System.currentTimeMillis() / 1000);
        long t = ackCommand.getT();
        Message message = (Message) this.session.pendingMessages.poll(String.valueOf(num));
        if (ackCommand.hasCode()) {
            onAckError(num, ackCommand, message);
        } else if (message != null && !AVUtils.isBlankString(message.cid)) {
            AVConversationHolder conversationHolder = this.session.getConversationHolder(message.cid, 1);
            this.session.conversationOperationCache.poll(num.intValue());
            String uid = ackCommand.getUid();
            conversationHolder.onMessageSent(num.intValue(), uid, t);
            if (message.requestReceipt) {
                message.timestamp = t;
                message.id = uid;
                MessageReceiptCache.add(this.session.getSelfPeerId(), uid, message);
            }
        }
    }

    public void onListenerAdded(boolean z) {
        if (z) {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d("web socket opened, send session open.");
            }
            onWebSocketOpen();
        }
    }

    public void onMessageReceipt(RcpCommand rcpCommand) {
        try {
            if (rcpCommand.hasT()) {
                Long valueOf = Long.valueOf(rcpCommand.getT());
                String cid = rcpCommand.getCid();
                if (!AVUtils.isBlankString(cid)) {
                    processConversationDeliveredAt(cid, 1, valueOf.longValue());
                    processMessageReceipt(rcpCommand.getId(), cid, 1, valueOf.longValue());
                }
            }
        } catch (Exception e) {
            this.session.sessionListener.onError(AVOSCloud.applicationContext, this.session, e);
        }
    }

    private void processConversationDeliveredAt(String str, int i, long j) {
        this.session.getConversationHolder(str, i).onConversationDeliveredAtEvent(j);
    }

    private void processMessageReceipt(String str, String str2, int i, long j) {
        Object obj = MessageReceiptCache.get(this.session.getSelfPeerId(), str);
        if (obj != null) {
            Message message = (Message) obj;
            AVIMMessage aVIMMessage = new AVIMMessage(str2, this.session.getSelfPeerId(), message.timestamp, j);
            aVIMMessage.setMessageId(message.id);
            aVIMMessage.setContent(message.msg);
            aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusReceipt);
            this.session.getConversationHolder(str2, i).onMessageReceipt(aVIMMessage);
        }
    }

    public void onReadCmdReceipt(RcpCommand rcpCommand) {
        if (rcpCommand.hasRead() && rcpCommand.hasCid()) {
            Long valueOf = Long.valueOf(rcpCommand.getT());
            this.session.getConversationHolder(rcpCommand.getCid(), 1).onConversationReadAtEvent(valueOf.longValue());
        }
    }

    public void onBlacklistCommand(String str, Integer num, BlacklistCommand blacklistCommand) {
        int i;
        if ("query_result".equals(str)) {
            Operation poll = this.session.conversationOperationCache.poll(num.intValue());
            if (poll == null || poll.operation != AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY.getCode()) {
                StringBuilder sb = new StringBuilder();
                sb.append("not found requestKey: ");
                sb.append(num);
                log.w(sb.toString());
                return;
            }
            ProtocolStringList blockedPidsList = blacklistCommand.getBlockedPidsList();
            if (blockedPidsList == null) {
                i = 0;
            } else {
                i = blockedPidsList.size();
            }
            String[] strArr = new String[i];
            if (blockedPidsList != null) {
                blockedPidsList.toArray(strArr);
            }
            String srcCid = blacklistCommand.getSrcCid();
            Bundle bundle = new Bundle();
            bundle.putStringArray(Conversation.callbackData, strArr);
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), srcCid, num.intValue(), bundle, AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY);
        } else if ("blocked".equals(str) || "unblocked".equals(str)) {
            AVConversationHolder conversationHolder = this.session.getConversationHolder(blacklistCommand.getSrcCid(), 1);
            Operation poll2 = this.session.conversationOperationCache.poll(num.intValue());
            if (poll2 != null && conversationHolder != null) {
                conversationHolder.onResponse4MemberBlock(AVIMOperation.getAVIMOperation(poll2.operation), str, num.intValue(), blacklistCommand);
            }
        }
    }

    public void onConversationCommand(String str, Integer num, ConvCommand convCommand) {
        String str2;
        int i;
        boolean equals = ConversationControlOp.QUERY_RESULT.equals(str);
        String str3 = Conversation.callbackData;
        String str4 = "not found requestKey: ";
        AVIMOperation aVIMOperation = null;
        if (equals) {
            Operation poll = this.session.conversationOperationCache.poll(num.intValue());
            if (poll == null || poll.operation != AVIMOperation.CONVERSATION_QUERY.getCode()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str4);
                sb.append(num);
                log.w(sb.toString());
                return;
            }
            String data = convCommand.getResults().getData();
            Bundle bundle = new Bundle();
            bundle.putString(str3, data);
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), (String) null, num.intValue(), bundle, AVIMOperation.CONVERSATION_QUERY);
        } else if (ConversationControlOp.QUERY_SHUTUP_RESULT.equals(str)) {
            Operation poll2 = this.session.conversationOperationCache.poll(num.intValue());
            if (poll2 == null || poll2.operation != AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY.getCode()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str4);
                sb2.append(num);
                log.w(sb2.toString());
                return;
            }
            ProtocolStringList mList = convCommand.getMList();
            if (mList == null) {
                i = 0;
            } else {
                i = mList.size();
            }
            String[] strArr = new String[i];
            if (mList != null) {
                mList.toArray(strArr);
            }
            Bundle bundle2 = new Bundle();
            bundle2.putStringArray(str3, strArr);
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), (String) null, num.intValue(), bundle2, AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY);
        } else {
            int intValue = num != null ? num.intValue() : CommandPacket.UNSUPPORTED_OPERATION;
            if ((str.equals("added") || str.equals("removed") || str.equals(ConversationControlOp.UPDATED) || str.equals(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT) || str.equals(ConversationControlOp.SHUTUP_ADDED) || str.equals(ConversationControlOp.SHUTUP_REMOVED) || str.equals(ConversationControlOp.MEMBER_UPDATED)) && intValue != -65537) {
                Operation poll3 = this.session.conversationOperationCache.poll(intValue);
                if (poll3 != null) {
                    aVIMOperation = AVIMOperation.getAVIMOperation(poll3.operation);
                    str2 = poll3.conversationId;
                } else {
                    str2 = convCommand.getCid();
                }
            } else {
                if (str.equals(ConversationControlOp.STARTED)) {
                    this.session.conversationOperationCache.poll(intValue);
                }
                str2 = convCommand.getCid();
            }
            int i2 = 1;
            if (convCommand.hasTempConv() && convCommand.getTempConv()) {
                i2 = 4;
            } else if (convCommand.hasTransient() && convCommand.getTransient()) {
                i2 = 2;
            }
            if (!AVUtils.isBlankString(str2)) {
                this.session.getConversationHolder(str2, i2).processConversationCommandFromServer(aVIMOperation, str, intValue, convCommand);
            }
        }
    }

    private SessionAckPacket genSessionAckPacket(String str) {
        SessionAckPacket sessionAckPacket = new SessionAckPacket();
        sessionAckPacket.setPeerId(this.session.getSelfPeerId());
        if (!AVUtils.isBlankString(str)) {
            sessionAckPacket.setMessageId(str);
        }
        return sessionAckPacket;
    }

    public void onError(Integer num, ErrorCommand errorCommand) {
        if (!(num == null || num.intValue() == -65537)) {
            Operation poll = this.session.conversationOperationCache.poll(num.intValue());
            if (poll != null && poll.operation == AVIMOperation.CLIENT_OPEN.getCode()) {
                this.session.sessionOpened.set(false);
                this.session.sessionResume.set(false);
            }
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), (String) null, num.intValue(), (Throwable) new AVIMException(errorCommand.getCode(), errorCommand.hasAppCode() ? errorCommand.getAppCode() : 0, errorCommand.getReason()), poll != null ? AVIMOperation.getAVIMOperation(poll.operation) : null);
        }
        if (num == null) {
            int code = errorCommand.getCode();
            if (4102 == code) {
                AVSessionCacheHelper.getTagCacheInstance().removeSession(this.session.getSelfPeerId());
            } else if (CODE_SESSION_TOKEN_FAILURE == code) {
                this.session.updateRealtimeSessionToken("", 0);
                onWebSocketOpen();
            }
        }
    }

    public void onHistoryMessageQuery(Integer num, LogsCommand logsCommand) {
        if (num != null && num.intValue() != -65537) {
            Operation poll = this.session.conversationOperationCache.poll(num.intValue());
            int i = 1;
            if (logsCommand.getLogsCount() > 0) {
                LogItem logs = logsCommand.getLogs(0);
                if (logs != null && logs.hasConvType()) {
                    i = logs.getConvType();
                }
            }
            this.session.getConversationHolder(poll.conversationId, i).processMessages(num, logsCommand.getLogsList());
        }
    }

    /* JADX WARNING: type inference failed for: r15v1, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r15v2, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r15v4 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onUnreadMessagesCommand(com.avos.avoscloud.Messages.UnreadCommand r20) {
        /*
            r19 = this;
            r0 = r19
            com.avos.avoscloud.AVSession r1 = r0.session
            long r2 = r20.getNotifTime()
            r1.updateLastNotifyTime(r2)
            int r1 = r20.getConvsCount()
            if (r1 <= 0) goto L_0x00a6
            java.util.List r1 = r20.getConvsList()
            if (r1 == 0) goto L_0x00a6
            java.util.Iterator r1 = r1.iterator()
        L_0x001b:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x00a6
            java.lang.Object r2 = r1.next()
            com.avos.avoscloud.Messages$UnreadTuple r2 = (com.avos.avoscloud.Messages.UnreadTuple) r2
            java.lang.String r3 = r2.getMid()
            java.lang.String r4 = r2.getData()
            long r8 = r2.getPatchTimestamp()
            long r12 = r2.getPatchTimestamp()
            java.lang.String r14 = r2.getCid()
            boolean r15 = r2.getMentioned()
            com.google.protobuf.ByteString r16 = r2.getBinaryMsg()
            java.lang.String r7 = r2.getFrom()
            boolean r5 = r2.hasConvType()
            if (r5 == 0) goto L_0x0053
            int r5 = r2.getConvType()
            r10 = r5
            goto L_0x0055
        L_0x0053:
            r5 = 1
            r10 = 1
        L_0x0055:
            boolean r5 = com.avos.avoscloud.AVUtils.isBlankString(r4)
            if (r5 == 0) goto L_0x0079
            if (r16 == 0) goto L_0x0079
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r4 = new com.avos.avoscloud.im.v2.AVIMBinaryMessage
            r17 = -1
            r5 = r4
            r6 = r14
            r20 = r1
            r1 = r10
            r10 = r17
            r5.<init>(r6, r7, r8, r10)
            r5 = r4
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r5 = (com.avos.avoscloud.im.v2.AVIMBinaryMessage) r5
            byte[] r6 = r16.toByteArray()
            r5.setBytes(r6)
            r18 = r15
            r15 = r4
            goto L_0x008d
        L_0x0079:
            r20 = r1
            r1 = r10
            com.avos.avoscloud.im.v2.AVIMMessage r10 = new com.avos.avoscloud.im.v2.AVIMMessage
            r16 = -1
            r5 = r10
            r6 = r14
            r18 = r15
            r15 = r10
            r10 = r16
            r5.<init>(r6, r7, r8, r10)
            r15.setContent(r4)
        L_0x008d:
            r15.setMessageId(r3)
            r15.setUpdateAt(r12)
            com.avos.avoscloud.AVSession r3 = r0.session
            com.avos.avoscloud.AVConversationHolder r1 = r3.getConversationHolder(r14, r1)
            int r2 = r2.getUnread()
            r3 = r18
            r1.onUnreadMessagesEvent(r15, r2, r3)
            r1 = r20
            goto L_0x001b
        L_0x00a6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVDefaultWebSocketListener.onUnreadMessagesCommand(com.avos.avoscloud.Messages$UnreadCommand):void");
    }

    public void onMessagePatchCommand(boolean z, Integer num, PatchCommand patchCommand) {
        updateLocalPatchTime(z, patchCommand);
        if (!z) {
            AVIMOperation aVIMOperation = AVIMOperation.getAVIMOperation(this.session.conversationOperationCache.poll(num.intValue()).operation);
            Bundle bundle = new Bundle();
            bundle.putLong(Conversation.PARAM_MESSAGE_PATCH_TIME, patchCommand.getLastPatchTime());
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), (String) null, num.intValue(), bundle, aVIMOperation);
        } else if (patchCommand.getPatchesCount() > 0) {
            for (PatchItem patchItem : patchCommand.getPatchesList()) {
                AVIMMessage message = AVIMTypedMessage.getMessage(patchItem.getCid(), patchItem.getMid(), patchItem.getData(), patchItem.getFrom(), patchItem.getTimestamp(), 0, 0);
                message.setUpdateAt(patchItem.getPatchTimestamp());
                this.session.getConversationHolder(patchItem.getCid(), 1).onMessageUpdateEvent(message, patchItem.getRecall());
            }
        }
    }

    private void updateLocalPatchTime(boolean z, PatchCommand patchCommand) {
        if (z) {
            long j = 0;
            for (PatchItem patchItem : patchCommand.getPatchesList()) {
                if (patchItem.getPatchTimestamp() > j) {
                    j = patchItem.getPatchTimestamp();
                }
            }
            this.session.updateLastPatchTime(j);
            return;
        }
        this.session.updateLastPatchTime(patchCommand.getLastPatchTime());
    }
}
