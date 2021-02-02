package com.avos.avoscloud;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Pair;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVIMOperationQueue.Operation;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.Messages.BlacklistCommand;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.ConvMemberInfo;
import com.avos.avoscloud.Messages.ErrorCommand;
import com.avos.avoscloud.Messages.JsonObjectMessage;
import com.avos.avoscloud.PendingMessageCache.Message;
import com.avos.avoscloud.SignatureFactory.SignatureException;
import com.avos.avoscloud.im.v2.AVIMBaseBroadcastReceiver;
import com.avos.avoscloud.im.v2.AVIMBinaryMessage;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMConversation;
import com.avos.avoscloud.im.v2.AVIMConversationEventHandler;
import com.avos.avoscloud.im.v2.AVIMMessage;
import com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageIOType;
import com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus;
import com.avos.avoscloud.im.v2.AVIMMessageManagerHelper;
import com.avos.avoscloud.im.v2.AVIMMessageOption;
import com.avos.avoscloud.im.v2.AVIMMessageQueryDirection;
import com.avos.avoscloud.im.v2.AVIMOptions;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avoscloud.im.v2.callback.AVIMOperationFailure;
import com.avos.avoscloud.im.v2.conversation.AVIMConversationMemberInfo;
import com.avos.avoscloud.im.v2.conversation.ConversationMemberRole;
import com.avos.avospush.session.BlacklistCommandPacket;
import com.avos.avospush.session.BlacklistCommandPacket.BlacklistCommandOp;
import com.avos.avospush.session.ConversationControlPacket;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.avos.avospush.session.ConversationDirectMessagePacket;
import com.avos.avospush.session.ConversationMessageQueryPacket;
import com.avos.avospush.session.MessagePatchModifyPacket;
import com.avos.avospush.session.UnreadMessagesClearPacket;
import com.google.protobuf.ProtocolStringList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@TargetApi(11)
class AVConversationHolder {
    private static final String BLOCK_MEMBER = "conversation-block-clients";
    private static final String GROUP_INVITE = "invite";
    private static final String GROUP_KICK = "kick";
    private static final String UNBLOCK_MEMBER = "conversation-unblock-clients";
    int convType;
    private String conversationGene = null;
    String conversationId;
    AVSession session;

    /* renamed from: com.avos.avoscloud.AVConversationHolder$22 reason: invalid class name */
    static /* synthetic */ class AnonymousClass22 {
        static final /* synthetic */ int[] $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation = new int[AVIMOperation.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(36:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|(3:35|36|38)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(38:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|38) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x004b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0056 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0062 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x006e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x007a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0086 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0092 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x009e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x00aa */
        /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x00b6 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x00c2 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x00ce */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation[] r0 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation = r0
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_JOIN     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x001f }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_ADD_MEMBER     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x002a }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_RM_MEMBER     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_QUIT     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UPDATE     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x004b }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MUTE     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0056 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UNMUTE     // Catch:{ NoSuchFieldError -> 0x0056 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0056 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0056 }
            L_0x0056:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0062 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY     // Catch:{ NoSuchFieldError -> 0x0062 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0062 }
                r2 = 8
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0062 }
            L_0x0062:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x006e }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME     // Catch:{ NoSuchFieldError -> 0x006e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x006e }
                r2 = 9
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x006e }
            L_0x006e:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x007a }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_READ     // Catch:{ NoSuchFieldError -> 0x007a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x007a }
                r2 = 10
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x007a }
            L_0x007a:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0086 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_PROMOTE_MEMBER     // Catch:{ NoSuchFieldError -> 0x0086 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0086 }
                r2 = 11
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0086 }
            L_0x0086:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x0092 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MUTE_MEMBER     // Catch:{ NoSuchFieldError -> 0x0092 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0092 }
                r2 = 12
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0092 }
            L_0x0092:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x009e }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UNMUTE_MEMBER     // Catch:{ NoSuchFieldError -> 0x009e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x009e }
                r2 = 13
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x009e }
            L_0x009e:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x00aa }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_BLOCK_MEMBER     // Catch:{ NoSuchFieldError -> 0x00aa }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00aa }
                r2 = 14
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00aa }
            L_0x00aa:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x00b6 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UNBLOCK_MEMBER     // Catch:{ NoSuchFieldError -> 0x00b6 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00b6 }
                r2 = 15
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00b6 }
            L_0x00b6:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x00c2 }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY     // Catch:{ NoSuchFieldError -> 0x00c2 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00c2 }
                r2 = 16
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00c2 }
            L_0x00c2:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x00ce }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY     // Catch:{ NoSuchFieldError -> 0x00ce }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00ce }
                r2 = 17
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00ce }
            L_0x00ce:
                int[] r0 = $SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation     // Catch:{ NoSuchFieldError -> 0x00da }
                com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MESSAGE_QUERY     // Catch:{ NoSuchFieldError -> 0x00da }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00da }
                r2 = 18
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00da }
            L_0x00da:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVConversationHolder.AnonymousClass22.<clinit>():void");
        }
    }

    private static abstract class SimpleCallback {
        public abstract void done();

        private SimpleCallback() {
        }
    }

    public AVConversationHolder(String str, AVSession aVSession, int i) {
        this.session = aVSession;
        this.conversationId = str;
        this.conversationGene = getConversationGeneString();
        this.convType = i;
    }

    public void addMembers(final List<String> list, final int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_ADD_MEMBER, i)) {
            new SignatureTask(new SignatureCallback() {
                public void onSignatureReady(Signature signature, AVException aVException) {
                    if (aVException == null) {
                        AVConversationHolder.this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_ADD_MEMBER.getCode(), AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i));
                        PushService.sendData(ConversationControlPacket.genConversationCommand(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, list, "add", null, signature, i));
                        return;
                    }
                    BroadcastUtil.sendIMLocalBroadcast(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i, (Throwable) aVException, AVIMOperation.CONVERSATION_ADD_MEMBER);
                }

                public Signature computeSignature() throws SignatureException {
                    SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                    if (signatureFactory != null) {
                        return signatureFactory.createConversationSignature(AVConversationHolder.this.conversationId, AVConversationHolder.this.session.getSelfPeerId(), list, AVConversationHolder.GROUP_INVITE);
                    }
                    return null;
                }
            }).commit(this.session.getSelfPeerId());
        }
    }

    public void kickMembers(final List<String> list, final int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_RM_MEMBER, i)) {
            new SignatureTask(new SignatureCallback() {
                public void onSignatureReady(Signature signature, AVException aVException) {
                    if (aVException == null) {
                        AVConversationHolder.this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_RM_MEMBER.getCode(), AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i));
                        PushService.sendData(ConversationControlPacket.genConversationCommand(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, list, "remove", null, signature, i));
                        return;
                    }
                    BroadcastUtil.sendIMLocalBroadcast(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i, (Throwable) aVException, AVIMOperation.CONVERSATION_RM_MEMBER);
                }

                public Signature computeSignature() throws SignatureException {
                    SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                    if (signatureFactory != null) {
                        return signatureFactory.createConversationSignature(AVConversationHolder.this.conversationId, AVConversationHolder.this.session.getSelfPeerId(), list, AVConversationHolder.GROUP_KICK);
                    }
                    return null;
                }
            }).commit(this.session.getSelfPeerId());
        }
    }

    public void muteMembers(List<String> list, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_MUTE_MEMBER, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_MUTE_MEMBER.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, list, ConversationControlOp.ADD_SHUTUP, null, null, i));
        }
    }

    public void unmuteMembers(List<String> list, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_UNMUTE_MEMBER, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_UNMUTE_MEMBER.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, list, ConversationControlOp.REMOVE_SHUTUP, null, null, i));
        }
    }

    public void blockMembers(final List<String> list, final int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_BLOCK_MEMBER, i)) {
            new SignatureTask(new SignatureCallback() {
                public void onSignatureReady(Signature signature, AVException aVException) {
                    if (aVException == null) {
                        AVConversationHolder.this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_BLOCK_MEMBER.getCode(), AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i));
                        PushService.sendData(BlacklistCommandPacket.genBlacklistCommandPacket(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, BlacklistCommandOp.BLOCK, list, signature, i));
                        return;
                    }
                    BroadcastUtil.sendIMLocalBroadcast(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i, (Throwable) aVException, AVIMOperation.CONVERSATION_BLOCK_MEMBER);
                }

                public Signature computeSignature() throws SignatureException {
                    SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                    if (signatureFactory != null) {
                        return signatureFactory.createBlacklistSignature(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, list, AVConversationHolder.BLOCK_MEMBER);
                    }
                    return null;
                }
            }).commit(this.session.getSelfPeerId());
        }
    }

    public void unblockMembers(final List<String> list, final int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_UNBLOCK_MEMBER, i)) {
            new SignatureTask(new SignatureCallback() {
                public void onSignatureReady(Signature signature, AVException aVException) {
                    if (aVException == null) {
                        AVConversationHolder.this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_UNBLOCK_MEMBER.getCode(), AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i));
                        PushService.sendData(BlacklistCommandPacket.genBlacklistCommandPacket(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, BlacklistCommandOp.UNBLOCK, list, signature, i));
                        return;
                    }
                    BroadcastUtil.sendIMLocalBroadcast(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i, (Throwable) aVException, AVIMOperation.CONVERSATION_UNBLOCK_MEMBER);
                }

                public Signature computeSignature() throws SignatureException {
                    SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                    if (signatureFactory != null) {
                        return signatureFactory.createBlacklistSignature(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, list, AVConversationHolder.UNBLOCK_MEMBER);
                    }
                    return null;
                }
            }).commit(this.session.getSelfPeerId());
        }
    }

    public void join(final int i) {
        new SignatureTask(new SignatureCallback() {
            public void onSignatureReady(Signature signature, AVException aVException) {
                if (aVException == null) {
                    AVConversationHolder.this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_JOIN.getCode(), AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i));
                    String str = "add";
                    Signature signature2 = signature;
                    PushService.sendData(ConversationControlPacket.genConversationCommand(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, Arrays.asList(new String[]{AVConversationHolder.this.session.getSelfPeerId()}), str, null, signature2, i));
                    return;
                }
                BroadcastUtil.sendIMLocalBroadcast(AVConversationHolder.this.session.getSelfPeerId(), AVConversationHolder.this.conversationId, i, (Throwable) aVException, AVIMOperation.CONVERSATION_JOIN);
            }

            public Signature computeSignature() throws SignatureException {
                SignatureFactory signatureFactory = AVIMOptions.getGlobalOptions().getSignatureFactory();
                if (signatureFactory == null) {
                    return null;
                }
                return signatureFactory.createConversationSignature(AVConversationHolder.this.conversationId, AVConversationHolder.this.session.getSelfPeerId(), Arrays.asList(new String[]{AVConversationHolder.this.session.getSelfPeerId()}), AVConversationHolder.GROUP_INVITE);
            }
        }).commit(this.session.getSelfPeerId());
    }

    public void queryMutedMembers(int i, int i2, int i3) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY, i3)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY.getCode(), this.session.getSelfPeerId(), this.conversationId, i3));
            ConversationControlPacket genConversationCommand = ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.QUERY_SHUTUP, null, null, i3);
            genConversationCommand.setQueryOffset(i);
            genConversationCommand.setQueryLimit(i2);
            PushService.sendData(genConversationCommand);
        }
    }

    public void queryBlockedMembers(int i, int i2, int i3) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY, i3)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY.getCode(), this.session.getSelfPeerId(), this.conversationId, i3));
            PushService.sendData(BlacklistCommandPacket.genBlacklistCommandPacket(this.session.getSelfPeerId(), this.conversationId, "query", i, i2, i3));
        }
    }

    public void updateInfo(Map<String, Object> map, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_UPDATE, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_UPDATE.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.UPDATE, map, null, i));
        }
    }

    public void promoteMember(Map<String, Object> map, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_PROMOTE_MEMBER, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_PROMOTE_MEMBER.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationMemberCommand(this.session.getSelfPeerId(), this.conversationId, ConversationControlOp.MEMBER_UPDATE, map, null, i));
        }
    }

    public void sendMessage(AVIMMessage aVIMMessage, int i, AVIMMessageOption aVIMMessageOption) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_SEND_MESSAGE, i)) {
            byte[] bArr = null;
            if (aVIMMessage instanceof AVIMBinaryMessage) {
                bArr = ((AVIMBinaryMessage) aVIMMessage).getBytes();
            }
            byte[] bArr2 = bArr;
            this.session.storeMessage(Message.getMessage(aVIMMessage.getContent(), String.valueOf(i), aVIMMessageOption.isReceipt(), this.conversationId), i);
            PushService.sendData(ConversationDirectMessagePacket.getConversationMessagePacket(this.session.getSelfPeerId(), this.conversationId, aVIMMessage.getContent(), bArr2, aVIMMessage.isMentionAll(), aVIMMessage.getMentionList(), AVIMMessageManagerHelper.getMessageToken(aVIMMessage), aVIMMessageOption, i));
        }
    }

    public void patchMessage(PushServiceParcel pushServiceParcel, AVIMOperation aVIMOperation, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_RECALL_MESSAGE, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(aVIMOperation.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            if (aVIMOperation.equals(AVIMOperation.CONVERSATION_RECALL_MESSAGE)) {
                PushService.sendData(MessagePatchModifyPacket.getMessagePatchPacketForRecall(this.session.getSelfPeerId(), this.conversationId, pushServiceParcel.getRecallMessage().getMessageId(), pushServiceParcel.getRecallMessage().getTimestamp(), i));
            } else if (aVIMOperation.equals(AVIMOperation.CONVERSATION_UPDATE_MESSAGE)) {
                String messageId = pushServiceParcel.getOldMessage().getMessageId();
                long timestamp = pushServiceParcel.getOldMessage().getTimestamp();
                AVIMMessage newMessage = pushServiceParcel.getNewMessage();
                PushService.sendData(MessagePatchModifyPacket.getMessagePatchPacketForUpdate(this.session.getSelfPeerId(), this.conversationId, messageId, newMessage.getContent(), newMessage instanceof AVIMBinaryMessage ? ((AVIMBinaryMessage) newMessage).getBytes() : null, newMessage.isMentionAll(), newMessage.getMentionList(), timestamp, i));
            }
        }
    }

    public void quit(int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_QUIT, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_QUIT.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, Arrays.asList(new String[]{this.session.getSelfPeerId()}), "remove", null, null, i));
        }
    }

    public void queryHistoryMessages(String str, long j, int i, String str2, long j2, int i2) {
        queryHistoryMessages(str, j, false, str2, j2, false, AVIMMessageQueryDirection.AVIMMessageQueryDirectionFromNewToOld.getCode(), i, 0, i2);
    }

    public void queryHistoryMessages(String str, long j, boolean z, String str2, long j2, boolean z2, int i, int i2, int i3, int i4) {
        int i5 = i4;
        if (checkSessionStatus(AVIMOperation.CONVERSATION_MESSAGE_QUERY, i5)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_MESSAGE_QUERY.getCode(), this.session.getSelfPeerId(), this.conversationId, i5));
            PushService.sendData(ConversationMessageQueryPacket.getConversationMessageQueryPacket(this.session.getSelfPeerId(), this.conversationId, str, j, z, str2, j2, z2, i, i2, i3, i4));
        }
    }

    public void mute(int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_MUTE, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_MUTE.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.MUTE, null, null, i));
        }
    }

    public void unmute(int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_UNMUTE, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_UNMUTE.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.UNMUTE, null, null, i));
        }
    }

    public void getMemberCount(int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.COUNT, null, null, i));
        }
    }

    private void getReceiptTime(int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(ConversationControlPacket.genConversationCommand(this.session.getSelfPeerId(), this.conversationId, null, ConversationControlOp.MAX_READ, null, null, i));
        }
    }

    private void read(String str, long j, int i) {
        if (checkSessionStatus(AVIMOperation.CONVERSATION_READ, i)) {
            this.session.conversationOperationCache.offer(Operation.getOperation(AVIMOperation.CONVERSATION_READ.getCode(), this.session.getSelfPeerId(), this.conversationId, i));
            PushService.sendData(UnreadMessagesClearPacket.getUnreadClearPacket(this.session.getSelfPeerId(), this.conversationId, str, j, i));
            onUnreadMessagesEvent(null, 0, false);
        }
    }

    private boolean checkSessionStatus(AVIMOperation aVIMOperation, int i) {
        if (!this.session.sessionPaused.get()) {
            return true;
        }
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, (Throwable) new RuntimeException("Connection Lost"), aVIMOperation);
        return false;
    }

    public void processConversationCommandFromClient(AVIMOperation aVIMOperation, Map<String, Object> map, int i) {
        Map<String, Object> map2 = map;
        int i2 = i;
        Map map3 = null;
        List list = map2 != null ? (List) map2.get(Conversation.PARAM_CONVERSATION_MEMBER) : null;
        int i3 = AnonymousClass22.$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation[aVIMOperation.ordinal()];
        String str = Conversation.QUERY_PARAM_OFFSET;
        String str2 = "ts";
        String str3 = Conversation.PARAM_MESSAGE_QUERY_MSGID;
        String str4 = "limit";
        switch (i3) {
            case 1:
                join(i2);
                return;
            case 2:
                addMembers(list, i2);
                return;
            case 3:
                kickMembers(list, i2);
                return;
            case 4:
                quit(i2);
                return;
            case 5:
                updateInfo((Map) map2.get(Conversation.PARAM_CONVERSATION_ATTRIBUTE), i2);
                return;
            case 6:
                mute(i2);
                return;
            case 7:
                unmute(i2);
                return;
            case 8:
                getMemberCount(i2);
                return;
            case 9:
                getReceiptTime(i2);
                return;
            case 10:
                String str5 = (map2 == null || !map2.containsKey(str3)) ? "" : (String) map2.get(str3);
                long j = 0;
                if (map2 != null && map2.containsKey(str2)) {
                    j = ((Number) map2.get(str2)).longValue();
                }
                read(str5, j, i2);
                return;
            case 11:
                if (map2 != null) {
                    map3 = (Map) map2.get(Conversation.PARAM_CONVERSATION_MEMBER_DETAILS);
                }
                if (map3 != null) {
                    promoteMember(map3, i2);
                    return;
                }
                return;
            case 12:
                muteMembers(list, i2);
                return;
            case 13:
                unmuteMembers(list, i2);
                return;
            case 14:
                blockMembers(list, i2);
                return;
            case 15:
                unblockMembers(list, i2);
                return;
            case 16:
                queryMutedMembers(((Integer) map2.get(str)).intValue(), ((Integer) map2.get(str4)).intValue(), i2);
                return;
            case 17:
                queryBlockedMembers(((Integer) map2.get(str)).intValue(), ((Integer) map2.get(str4)).intValue(), i2);
                return;
            case 18:
                queryHistoryMessages((String) map2.get(str3), ((Number) map2.get(str2)).longValue(), ((Boolean) map2.get(Conversation.PARAM_MESSAGE_QUERY_STARTCLOSED)).booleanValue(), (String) map2.get(Conversation.PARAM_MESSAGE_QUERY_TO_MSGID), ((Number) map2.get("tt")).longValue(), ((Boolean) map2.get(Conversation.PARAM_MESSAGE_QUERY_TOCLOSED)).booleanValue(), ((Integer) map2.get(Conversation.PARAM_MESSAGE_QUERY_DIRECT)).intValue(), ((Integer) map2.get(str4)).intValue(), ((Integer) map2.get("type")).intValue(), i);
                return;
            default:
                return;
        }
    }

    public void processConversationCommandFromServer(AVIMOperation aVIMOperation, String str, int i, ConvCommand convCommand) {
        if (ConversationControlOp.STARTED.equals(str)) {
            onConversationCreated(i, convCommand);
        } else if (ConversationControlOp.JOINED.equals(str)) {
            String initBy = convCommand.getInitBy();
            if (!initBy.equals(this.session.getSelfPeerId()) && !initBy.equals(this.session.getSelfPeerId())) {
                onInvitedToConversation(initBy, convCommand);
            }
        } else if ("removed".equals(str)) {
            if (i != -65537) {
                if (aVIMOperation == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("IllegalState. operation is null, excepted is QUIT / KICK, originalOp=");
                    sb.append(str);
                    log.e(sb.toString());
                } else if (aVIMOperation.getCode() == AVIMOperation.CONVERSATION_QUIT.getCode()) {
                    onQuit(i);
                } else if (aVIMOperation.getCode() == AVIMOperation.CONVERSATION_RM_MEMBER.getCode()) {
                    onKicked(i);
                }
            }
        } else if ("added".equals(str)) {
            if (i != -65537) {
                if (aVIMOperation == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("IllegalState. operation is null, excepted is JOIN / INVITE, originalOp=");
                    sb2.append(str);
                    log.e(sb2.toString());
                } else if (aVIMOperation.getCode() == AVIMOperation.CONVERSATION_JOIN.getCode()) {
                    onJoined(i);
                } else if (aVIMOperation.getCode() == AVIMOperation.CONVERSATION_ADD_MEMBER.getCode()) {
                    onInvited(i);
                }
            }
        } else if ("left".equals(str)) {
            String initBy2 = convCommand.getInitBy();
            if (initBy2 != null && !initBy2.equals(this.session.getSelfPeerId())) {
                onKickedFromConversation(initBy2);
            }
        } else if (ConversationControlOp.UPDATED.equals(str)) {
            if (aVIMOperation == null) {
                onInfoChangedNotify(convCommand);
            } else if (AVIMOperation.CONVERSATION_MUTE.getCode() == aVIMOperation.getCode()) {
                onMuted(i);
            } else if (AVIMOperation.CONVERSATION_UNMUTE.getCode() == aVIMOperation.getCode()) {
                onUnmuted(i);
            } else if (AVIMOperation.CONVERSATION_UPDATE.getCode() == aVIMOperation.getCode()) {
                onInfoUpdated(i, convCommand.getUdate());
            }
        } else if (ConversationControlOp.MEMBER_COUNT_QUERY_RESULT.equals(str)) {
            onMemberCount(convCommand.getCount(), i);
        } else if (ConversationControlOp.MAX_READ.equals(str)) {
            onTimesReceipt(i, convCommand.getMaxAckTimestamp(), convCommand.getMaxReadTimestamp());
        } else if (ConversationControlOp.MEMBER_UPDATED.equals(str)) {
            onMemberUpdated(i);
        } else if (ConversationControlOp.SHUTUP_ADDED.equals(str) || ConversationControlOp.SHUTUP_REMOVED.equals(str)) {
            if (aVIMOperation == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("IllegalState. operation is null, excepted is member_shutupped / member_unshutuped, originalOp=");
                sb3.append(str);
                log.e(sb3.toString());
            } else {
                onResponse4MemberMute(aVIMOperation, str, i, convCommand);
            }
        } else if (ConversationControlOp.MEMBER_JOINED.equals(str)) {
            onMembersJoined(convCommand.getMList(), convCommand.getInitBy());
        } else if (ConversationControlOp.MEMBER_LEFTED.equals(str)) {
            onMembersLeft(convCommand.getMList(), convCommand.getInitBy());
        } else if (ConversationControlOp.MEMBER_INFO_CHANGED.equals(str)) {
            onMemberChanged(convCommand.getInitBy(), convCommand.getInfo());
        } else {
            String str2 = ConversationControlOp.SHUTUPED;
            if (str2.equals(str) || ConversationControlOp.UNSHUTUPED.equals(str)) {
                String initBy3 = convCommand.getInitBy();
                if (initBy3 == null || !initBy3.equals(this.session.getSelfPeerId())) {
                    onSelfShutupedNotify(str2.equals(str), initBy3, convCommand);
                }
            } else {
                String str3 = ConversationControlOp.MEMBER_SHUTPED;
                if (str3.equals(str) || ConversationControlOp.MEMBER_UNSHUTUPED.equals(str)) {
                    String initBy4 = convCommand.getInitBy();
                    if (initBy4 == null || !initBy4.equals(this.session.getSelfPeerId())) {
                        onMemberShutupedNotify(str3.equals(str), initBy4, convCommand);
                    }
                } else {
                    String str4 = "blocked";
                    if (str4.equals(str) || "unblocked".equals(str)) {
                        String initBy5 = convCommand.getInitBy();
                        if (initBy5 == null || !initBy5.equals(this.session.getSelfPeerId())) {
                            onSelfBlockedNotify(str4.equals(str), initBy5, convCommand);
                        }
                    } else {
                        String str5 = "members_blocked";
                        if (str5.equals(str) || "members_unblocked".equals(str)) {
                            String initBy6 = convCommand.getInitBy();
                            if (initBy6 == null || !initBy6.equals(this.session.getSelfPeerId())) {
                                onMemberBlockedNotify(str5.equals(str), initBy6, convCommand);
                            }
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void onResponse4MemberBlock(AVIMOperation aVIMOperation, String str, int i, BlacklistCommand blacklistCommand) {
        if (blacklistCommand != null) {
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), blacklistCommand.getSrcCid(), i, genBundleFromPartiallyResult(blacklistCommand.getAllowedPidsList(), blacklistCommand.getFailedPidsList()), aVIMOperation);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onResponse4MemberMute(AVIMOperation aVIMOperation, String str, int i, ConvCommand convCommand) {
        if (convCommand != null) {
            BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, genBundleFromPartiallyResult(convCommand.getAllowedPidsList(), convCommand.getFailedPidsList()), aVIMOperation);
        }
    }

    private Bundle genBundleFromPartiallyResult(List<String> list, List<ErrorCommand> list2) {
        int i = 0;
        String[] strArr = new String[(list == null ? 0 : list.size())];
        if (list != null) {
            list.toArray(strArr);
        }
        if (list2 != null) {
            i = list2.size();
        }
        ArrayList arrayList = new ArrayList(i);
        if (list2 != null) {
            for (ErrorCommand errorCommand : list2) {
                AVIMOperationFailure aVIMOperationFailure = new AVIMOperationFailure();
                aVIMOperationFailure.setCode(errorCommand.getCode());
                aVIMOperationFailure.setMemberIds(errorCommand.getPidsList());
                aVIMOperationFailure.setReason(errorCommand.getReason());
                arrayList.add(aVIMOperationFailure);
            }
        }
        Bundle bundle = new Bundle();
        bundle.putStringArray(Conversation.callbackConvMemberMuted_SUCC, strArr);
        bundle.putParcelableArrayList(Conversation.callbackConvMemberMuted_FAIL, arrayList);
        return bundle;
    }

    /* JADX WARNING: type inference failed for: r3v2, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r12v2, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r12v3, types: [com.avos.avoscloud.im.v2.AVIMBinaryMessage] */
    /* JADX WARNING: type inference failed for: r12v4 */
    /* JADX WARNING: type inference failed for: r12v8, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r12v9, types: [com.avos.avoscloud.im.v2.AVIMBinaryMessage] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r12v8, types: [com.avos.avoscloud.im.v2.AVIMMessage]
      assigns: [com.avos.avoscloud.im.v2.AVIMMessage, com.avos.avoscloud.im.v2.AVIMBinaryMessage]
      uses: [com.avos.avoscloud.im.v2.AVIMMessage, com.avos.avoscloud.im.v2.AVIMBinaryMessage]
      mth insns count: 72
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void processMessages(java.lang.Integer r22, java.util.List<com.avos.avoscloud.Messages.LogItem> r23) {
        /*
            r21 = this;
            r7 = r21
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r23.iterator()
            r4 = -1
            r8 = -1
        L_0x000f:
            boolean r6 = r0.hasNext()
            if (r6 == 0) goto L_0x00b9
            java.lang.Object r6 = r0.next()
            com.avos.avoscloud.Messages$LogItem r6 = (com.avos.avoscloud.Messages.LogItem) r6
            boolean r10 = r6.hasAckAt()
            if (r10 == 0) goto L_0x0024
            r17 = -1
            goto L_0x002a
        L_0x0024:
            long r10 = r6.getAckAt()
            r17 = r10
        L_0x002a:
            boolean r10 = r6.hasReadAt()
            if (r10 == 0) goto L_0x0033
            r19 = -1
            goto L_0x0039
        L_0x0033:
            long r10 = r6.getReadAt()
            r19 = r10
        L_0x0039:
            int r10 = (r4 > r17 ? 1 : (r4 == r17 ? 0 : -1))
            if (r10 >= 0) goto L_0x003f
            r4 = r17
        L_0x003f:
            int r10 = (r8 > r19 ? 1 : (r8 == r19 ? 0 : -1))
            if (r10 >= 0) goto L_0x0045
            r8 = r19
        L_0x0045:
            java.lang.String r14 = r6.getFrom()
            java.lang.String r10 = r6.getData()
            long r15 = r6.getTimestamp()
            java.lang.String r11 = r6.getMsgId()
            boolean r12 = r6.hasMentionAll()
            r13 = 0
            if (r12 == 0) goto L_0x0061
            boolean r12 = r6.getMentionAll()
            goto L_0x0062
        L_0x0061:
            r12 = 0
        L_0x0062:
            com.google.protobuf.ProtocolStringList r2 = r6.getMentionPidsList()
            boolean r3 = r6.hasBin()
            if (r3 == 0) goto L_0x0073
            boolean r3 = r6.getBin()
            if (r3 == 0) goto L_0x0073
            r13 = 1
        L_0x0073:
            if (r13 == 0) goto L_0x008f
            if (r10 == 0) goto L_0x008f
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r3 = new com.avos.avoscloud.im.v2.AVIMBinaryMessage
            java.lang.String r13 = r7.conversationId
            r6 = r12
            r12 = r3
            r12.<init>(r13, r14, r15, r17, r19)
            r12 = r3
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r12 = (com.avos.avoscloud.im.v2.AVIMBinaryMessage) r12
            java.lang.String r10 = r10.toString()
            byte[] r10 = com.avos.avoscloud.AVUtils.base64Decode(r10)
            r12.setBytes(r10)
            goto L_0x00a7
        L_0x008f:
            r6 = r12
            boolean r3 = r10 instanceof java.lang.String
            if (r3 != 0) goto L_0x0098
            boolean r3 = r10 instanceof com.alibaba.fastjson.JSON
            if (r3 == 0) goto L_0x000f
        L_0x0098:
            com.avos.avoscloud.im.v2.AVIMMessage r3 = new com.avos.avoscloud.im.v2.AVIMMessage
            java.lang.String r13 = r7.conversationId
            r12 = r3
            r12.<init>(r13, r14, r15, r17, r19)
            java.lang.String r10 = r10.toString()
            r3.setContent(r10)
        L_0x00a7:
            r3.setMessageId(r11)
            r3.setMentionAll(r6)
            r3.setMentionList(r2)
            com.avos.avoscloud.im.v2.AVIMMessage r2 = com.avos.avoscloud.im.v2.AVIMMessageManagerHelper.parseTypedMessage(r3)
            r1.add(r2)
            goto L_0x000f
        L_0x00b9:
            int r2 = r22.intValue()
            r0 = r21
            r3 = r4
            r5 = r8
            r0.onHistoryMessageQuery(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVConversationHolder.processMessages(java.lang.Integer, java.util.List):void");
    }

    /* access modifiers changed from: 0000 */
    public void onConversationCreated(int i, ConvCommand convCommand) {
        String cdate = convCommand.getCdate();
        String cid = convCommand.getCid();
        int tempConvTTL = convCommand.hasTempConvTTL() ? convCommand.getTempConvTTL() : 0;
        Bundle bundle = new Bundle();
        bundle.putString(Conversation.callbackCreatedAt, cdate);
        bundle.putString(Conversation.callbackConversationKey, cid);
        bundle.putInt(Conversation.callbackTemporaryTTL, tempConvTTL);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, bundle, AVIMOperation.CONVERSATION_CREATION);
    }

    /* access modifiers changed from: 0000 */
    public void onJoined(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_JOIN);
    }

    /* access modifiers changed from: 0000 */
    public void onInvited(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_ADD_MEMBER);
    }

    /* access modifiers changed from: 0000 */
    public void onKicked(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_RM_MEMBER);
    }

    /* access modifiers changed from: 0000 */
    public void onQuit(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_QUIT);
    }

    private void onInfoUpdated(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(Conversation.callbackUpdatedAt, str);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, bundle, AVIMOperation.CONVERSATION_UPDATE);
    }

    private void onMemberUpdated(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_PROMOTE_MEMBER);
    }

    private void onMemberChanged(String str, ConvMemberInfo convMemberInfo) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            String infoId = convMemberInfo.getInfoId();
            String role = convMemberInfo.getRole();
            final AVIMConversationMemberInfo aVIMConversationMemberInfo = new AVIMConversationMemberInfo(infoId, this.conversationId, convMemberInfo.getPid(), ConversationMemberRole.fromString(role));
            final String str2 = str;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass6 r0 = new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(Conversation.STATUS_ON_MEMBER_INFO_CHANGED, str2, aVIMConversationMemberInfo, aVIMConversation);
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMuted(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_MUTE);
    }

    /* access modifiers changed from: 0000 */
    public void onUnmuted(int i) {
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, AVIMOperation.CONVERSATION_UNMUTE);
    }

    /* access modifiers changed from: 0000 */
    public void onMemberCount(int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(Conversation.callbackMemberCount, i);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i2, bundle, AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY);
    }

    /* access modifiers changed from: 0000 */
    public void onMessageSent(int i, String str, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong(Conversation.callbackMessageTimeStamp, j);
        bundle.putString(Conversation.callbackMessageId, str);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, bundle, AVIMOperation.CONVERSATION_SEND_MESSAGE);
    }

    /* access modifiers changed from: 0000 */
    public void onHistoryMessageQuery(ArrayList<AVIMMessage> arrayList, int i, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(Conversation.callbackHistoryMessages, arrayList);
        bundle.putLong(Conversation.callbackDeliveredAt, j);
        bundle.putLong(Conversation.callbackReadAt, j2);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, bundle, AVIMOperation.CONVERSATION_MESSAGE_QUERY);
        this.session.sendUnreadMessagesAck(arrayList, this.conversationId);
    }

    /* access modifiers changed from: 0000 */
    public void onTimesReceipt(int i, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong(Conversation.callbackReadAt, j2);
        bundle.putLong(Conversation.callbackDeliveredAt, j);
        BroadcastUtil.sendIMLocalBroadcast(this.session.getSelfPeerId(), this.conversationId, i, bundle, AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME);
    }

    /* access modifiers changed from: 0000 */
    public void onInvitedToConversation(final String str, ConvCommand convCommand) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            final AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            refreshConversationThenNotify(parseConversation, (SimpleCallback) new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(Conversation.STATUS_ON_JOINED, str, null, parseConversation);
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void onInfoChangedNotify(ConvCommand convCommand) {
        AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            String initBy = convCommand.getInitBy();
            JsonObjectMessage attr = convCommand.getAttr();
            JSONObject jSONObject = null;
            if (attr == null || attr.getData() == null || attr.getData().trim().length() < 1) {
                parseConversation.setMustFetch();
            } else {
                jSONObject = JSON.parseObject(attr.getData());
                AVIMConversation.mergeConversationFromJsonObject(parseConversation, jSONObject);
            }
            conversationEventHandler.processEvent(Conversation.STATUS_ON_INFO_CHANGED, initBy, jSONObject, parseConversation);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onKickedFromConversation(final String str) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        final AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
        if (conversationEventHandler != null) {
            refreshConversationThenNotify(conversation, (SimpleCallback) new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(Conversation.STATUS_ON_KICKED_FROM_CONVERSATION, str, null, conversation);
                }
            });
        }
        this.session.removeConversation(this.conversationId);
        AVIMMessageManagerHelper.removeConversationCache(conversation);
    }

    /* access modifiers changed from: 0000 */
    public void onSelfShutupedNotify(boolean z, String str, ConvCommand convCommand) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            final boolean z2 = z;
            final String str2 = str;
            final AVIMConversation aVIMConversation = parseConversation;
            AnonymousClass9 r0 = new SimpleCallback() {
                public void done() {
                    if (z2) {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MUTED, str2, null, aVIMConversation);
                    } else {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_UNMUTED, str2, null, aVIMConversation);
                    }
                }
            };
            refreshConversationThenNotify(parseConversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMemberShutupedNotify(boolean z, String str, ConvCommand convCommand) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        ProtocolStringList mList = convCommand.getMList();
        if (conversationEventHandler != null && mList != null) {
            final ArrayList arrayList = new ArrayList(mList);
            arrayList.remove(this.session.getSelfPeerId());
            if (arrayList.size() < 1) {
                log.d("Notification --- ignore shutuped/unshutuped notify bcz duplicated.");
                return;
            }
            AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            final boolean z2 = z;
            final String str2 = str;
            final AVIMConversation aVIMConversation = parseConversation;
            AnonymousClass10 r0 = new SimpleCallback() {
                public void done() {
                    if (z2) {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MEMBER_MUTED, str2, arrayList, aVIMConversation);
                    } else {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MEMBER_UNMUTED, str2, arrayList, aVIMConversation);
                    }
                }
            };
            refreshConversationThenNotify(parseConversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onSelfBlockedNotify(boolean z, String str, ConvCommand convCommand) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            final boolean z2 = z;
            final String str2 = str;
            final AVIMConversation aVIMConversation = parseConversation;
            AnonymousClass11 r0 = new SimpleCallback() {
                public void done() {
                    if (z2) {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_BLOCKED, str2, null, aVIMConversation);
                    } else {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_UNBLOCKED, str2, null, aVIMConversation);
                    }
                }
            };
            refreshConversationThenNotify(parseConversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMemberBlockedNotify(boolean z, String str, ConvCommand convCommand) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        final ProtocolStringList mList = convCommand.getMList();
        if (conversationEventHandler != null && mList != null) {
            AVIMConversation parseConversation = parseConversation(AVIMClient.getInstance(this.session.getSelfPeerId()), convCommand);
            final boolean z2 = z;
            final String str2 = str;
            final AVIMConversation aVIMConversation = parseConversation;
            AnonymousClass12 r0 = new SimpleCallback() {
                public void done() {
                    if (z2) {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MEMBER_BLOCKED, str2, mList, aVIMConversation);
                    } else {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MEMBER_UNBLOCKED, str2, mList, aVIMConversation);
                    }
                }
            };
            refreshConversationThenNotify(parseConversation, (SimpleCallback) r0);
        }
    }

    private AVIMConversation parseConversation(AVIMClient aVIMClient, ConvCommand convCommand) {
        if (aVIMClient == null || convCommand == null) {
            return null;
        }
        int i = 0;
        boolean tempConv = convCommand.hasTempConv() ? convCommand.getTempConv() : false;
        boolean z = convCommand.hasTransient() ? convCommand.getTransient() : false;
        if (convCommand.hasTempConvTTL()) {
            i = convCommand.getTempConvTTL();
        }
        AVIMConversation conversation = aVIMClient.getConversation(this.conversationId, z, tempConv);
        conversation.setTemporaryExpiredat((System.currentTimeMillis() / 1000) + ((long) i));
        return conversation;
    }

    /* access modifiers changed from: 0000 */
    public void onMembersJoined(List<String> list, String str) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            final String str2 = str;
            final List<String> list2 = list;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass13 r0 = new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(50005, str2, list2, aVIMConversation);
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMembersLeft(List<String> list, String str) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            final String str2 = str;
            final List<String> list2 = list;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass14 r0 = new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(50004, str2, list2, aVIMConversation);
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMessageUpdateEvent(AVIMMessage aVIMMessage, boolean z) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            final boolean z2 = z;
            final AVIMMessage aVIMMessage2 = aVIMMessage;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass15 r0 = new SimpleCallback() {
                public void done() {
                    if (z2) {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MESSAGE_RECALLED, aVIMMessage2, null, aVIMConversation);
                    } else {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_MESSAGE_UPDATED, aVIMMessage2, null, aVIMConversation);
                    }
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onMessage(AVIMMessage aVIMMessage, boolean z, boolean z2) {
        aVIMMessage.setMessageIOType(AVIMMessageIOType.AVIMMessageIOTypeIn);
        aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusSent);
        final AVIMClient instance = AVIMClient.getInstance(this.session.getSelfPeerId());
        final AVIMMessage aVIMMessage2 = aVIMMessage;
        final boolean z3 = z;
        final boolean z4 = z2;
        AnonymousClass16 r1 = new SimpleCallback() {
            public void done() {
                AVIMMessageManagerHelper.processMessage(aVIMMessage2, AVConversationHolder.this.convType, instance, z3, z4);
            }
        };
        refreshConversationThenNotify(aVIMMessage, (SimpleCallback) r1);
    }

    /* access modifiers changed from: 0000 */
    public void onMessageReceipt(final AVIMMessage aVIMMessage) {
        refreshConversationThenNotify(aVIMMessage, (SimpleCallback) new SimpleCallback() {
            public void done() {
                AVIMMessageManagerHelper.processMessageReceipt(aVIMMessage, AVIMClient.getInstance(AVConversationHolder.this.session.getSelfPeerId()));
            }
        });
    }

    private void refreshConversationThenNotify(AVIMMessage aVIMMessage, SimpleCallback simpleCallback) {
        if (aVIMMessage != null && simpleCallback != null) {
            refreshConversationThenNotify(AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(aVIMMessage.getConversationId(), this.convType), simpleCallback);
        }
    }

    private void refreshConversationThenNotify(final AVIMConversation aVIMConversation, final SimpleCallback simpleCallback) {
        if (aVIMConversation != null) {
            if (!aVIMConversation.isShouldFetch()) {
                simpleCallback.done();
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("try to query conversation info for id=");
                sb.append(aVIMConversation.getConversationId());
                log.d(sb.toString());
                Map map = (Map) JSON.parseObject(JSON.toJSONString(aVIMConversation.getFetchRequestParams()), Map.class);
                int nextIMRequestId = AVUtils.getNextIMRequestId();
                AVIMOperation aVIMOperation = AVIMOperation.CONVERSATION_QUERY;
                LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
                AnonymousClass18 r4 = new AVIMBaseBroadcastReceiver(null) {
                    public void execute(Intent intent, Throwable th) {
                        if (th == null) {
                            aVIMConversation.processQueryResult(intent.getExtras().getSerializable(Conversation.callbackData));
                            StringBuilder sb = new StringBuilder();
                            sb.append("updated conversation info. id=");
                            sb.append(aVIMConversation.getConversationId());
                            log.d(sb.toString());
                        }
                        simpleCallback.done();
                    }
                };
                StringBuilder sb2 = new StringBuilder();
                sb2.append(aVIMOperation.getOperation());
                sb2.append(nextIMRequestId);
                instance.registerReceiver(r4, new IntentFilter(sb2.toString()));
                this.session.conversationQuery(map, nextIMRequestId);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void onUnreadMessagesEvent(AVIMMessage aVIMMessage, int i, boolean z) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            if (conversation.getUnreadMessagesCount() != i) {
                final Pair pair = new Pair(Integer.valueOf(i), Boolean.valueOf(z));
                if (aVIMMessage != null) {
                    aVIMMessage.setMessageIOType(AVIMMessageIOType.AVIMMessageIOTypeIn);
                    aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusSent);
                    aVIMMessage = AVIMMessageManagerHelper.parseTypedMessage(aVIMMessage);
                }
                final AVIMMessage aVIMMessage2 = aVIMMessage;
                final AVIMConversation aVIMConversation = conversation;
                AnonymousClass19 r0 = new SimpleCallback() {
                    public void done() {
                        conversationEventHandler.processEvent(Conversation.STATUS_ON_UNREAD_EVENT, aVIMMessage2, pair, aVIMConversation);
                    }
                };
                refreshConversationThenNotify(conversation, (SimpleCallback) r0);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void onConversationReadAtEvent(long j) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            final long j2 = j;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass20 r0 = new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(Conversation.STATUS_ON_MESSAGE_READ, Long.valueOf(j2), null, aVIMConversation);
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onConversationDeliveredAtEvent(long j) {
        final AVIMConversationEventHandler conversationEventHandler = AVIMMessageManagerHelper.getConversationEventHandler();
        if (conversationEventHandler != null) {
            AVIMConversation conversation = AVIMClient.getInstance(this.session.getSelfPeerId()).getConversation(this.conversationId);
            final long j2 = j;
            final AVIMConversation aVIMConversation = conversation;
            AnonymousClass21 r0 = new SimpleCallback() {
                public void done() {
                    conversationEventHandler.processEvent(Conversation.STATUS_ON_MESSAGE_DELIVERED, Long.valueOf(j2), null, aVIMConversation);
                }
            };
            refreshConversationThenNotify(conversation, (SimpleCallback) r0);
        }
    }

    private String getConversationGeneString() {
        if (AVUtils.isBlankString(this.conversationGene)) {
            HashMap hashMap = new HashMap();
            hashMap.put(Conversation.INTENT_KEY_CLIENT, this.session.getSelfPeerId());
            hashMap.put(Conversation.INTENT_KEY_CONVERSATION, this.conversationId);
            this.conversationGene = JSON.toJSONString(hashMap);
        }
        return this.conversationGene;
    }
}
