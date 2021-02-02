package com.avos.avospush.session;

import com.avos.avoscloud.AVInstallation;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Messages.SessionCommand;
import com.avos.avoscloud.Signature;
import com.avos.avoscloud.im.v2.AVIMClient;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Collection;
import java.util.List;

public class SessionControlPacket extends PeerBasedCommandPacket {
    private static final long PATCH_FLAG = 1;
    private static final long PATCH_FLAG_ACK_4_TRANSIENT_MSG = 8;
    private static final long PATCH_FLAG_BIND_INSTALLATION_TO_SESSION = 4;
    private static final long PATCH_FLAG_SUPPORT_CONVMEMBER_INFO = 32;
    public static final String USERAGENT = "android/v4.6.4";
    private long lastPatchTime = 0;
    private long lastUnreadNotifyTime = 0;
    private String nonce;
    private String op;
    private boolean reconnectionRequest = false;
    private long sessionConfig = 0;
    private Collection<String> sessionPeerIds;
    String sessionToken;
    private String signature;
    String tag;
    private long timestamp;

    public static class SessionControlOp {
        public static final String ADD = "add";
        public static final String ADDED = "added";
        public static final String CLOSE = "close";
        public static final String CLOSED = "closed";
        public static final String OPEN = "open";
        public static final String OPENED = "opened";
        public static final String QUERY = "query";
        public static final String QUERY_RESULT = "query_result";
        public static final String REMOVE = "remove";
        public static final String REMOVED = "removed";
        public static final String RENEWED_RTMTOKEN = "refreshed";
        public static final String RENEW_RTMTOKEN = "refresh";
        public static final String SESSION_TOKEN = "st";
        public static final String SESSION_TOKEN_TTL = "stTtl";
    }

    public SessionControlPacket() {
        setCmd(SettingsJsonConstants.SESSION_KEY);
    }

    public void setSessionToken(String str) {
        this.sessionToken = str;
    }

    public boolean isReconnectionRequest() {
        return this.reconnectionRequest;
    }

    public void setReconnectionRequest(boolean z) {
        this.reconnectionRequest = z;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setOp(OpType.valueOf(this.op));
        genericCommandBuilder.setSessionMessage(getSessionCommand());
        return genericCommandBuilder;
    }

    private SessionCommand getSessionCommand() {
        SessionCommand.Builder newBuilder = SessionCommand.newBuilder();
        Collection<String> collection = this.sessionPeerIds;
        if (collection != null && !collection.isEmpty()) {
            newBuilder.addAllSessionPeerIds(this.sessionPeerIds);
        }
        String str = this.op;
        String str2 = SessionControlOp.OPEN;
        if (str.equals(str2)) {
            newBuilder.setUa(USERAGENT);
            if (!AVUtils.isBlankString(this.tag)) {
                newBuilder.setTag(this.tag);
            }
        }
        if (this.op.equals(str2) || this.op.equals("close")) {
            newBuilder.setDeviceId(AVInstallation.getCurrentInstallation().getInstallationId());
        }
        if (!AVUtils.isBlankString(this.signature)) {
            newBuilder.setS(this.signature);
            newBuilder.setT(this.timestamp);
            newBuilder.setN(this.nonce);
        }
        if (this.reconnectionRequest) {
            newBuilder.setR(true);
        }
        long j = this.lastUnreadNotifyTime;
        if (j > 0) {
            newBuilder.setLastUnreadNotifTime(j);
        }
        long j2 = this.lastPatchTime;
        if (j2 > 0) {
            newBuilder.setLastPatchTime(j2);
        }
        if (!AVUtils.isBlankString(this.sessionToken)) {
            newBuilder.setSt(this.sessionToken);
        }
        long j3 = this.sessionConfig;
        if (0 != j3) {
            newBuilder.setConfigBitmap(j3);
        }
        return newBuilder.build();
    }

    public static SessionControlPacket genSessionCommand(String str, List<String> list, String str2, Signature signature2, Integer num) {
        return genSessionCommand(str, list, str2, signature2, 0, 0, num);
    }

    public static SessionControlPacket genSessionCommand(String str, List<String> list, String str2, Signature signature2, long j, long j2, Integer num) {
        SessionControlPacket sessionControlPacket = new SessionControlPacket();
        String str3 = SessionControlOp.OPEN;
        if (signature2 != null && (str2.equals(str3) || str2.equals("add"))) {
            sessionControlPacket.signature = signature2.getSignature();
            sessionControlPacket.nonce = signature2.getNonce();
            sessionControlPacket.timestamp = signature2.getTimestamp();
        }
        sessionControlPacket.op = str2;
        sessionControlPacket.sessionPeerIds = list;
        sessionControlPacket.lastUnreadNotifyTime = j;
        sessionControlPacket.lastPatchTime = j2;
        sessionControlPacket.sessionConfig |= 9;
        sessionControlPacket.sessionConfig |= 32;
        if (str2.equals(SessionControlOp.RENEW_RTMTOKEN)) {
            sessionControlPacket.setPeerId(str);
        } else if (str2.equals(str3)) {
            sessionControlPacket.sessionConfig |= 4;
            sessionControlPacket.setPeerId(str);
        } else if (AVIMClient.getClientsCount() > 1) {
            sessionControlPacket.setPeerId(str);
        }
        if (num == null) {
            sessionControlPacket.setRequestId(CommandPacket.UNSUPPORTED_OPERATION);
        } else {
            sessionControlPacket.setRequestId(num.intValue());
        }
        return sessionControlPacket;
    }
}
