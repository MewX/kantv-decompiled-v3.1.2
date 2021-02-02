package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Messages.PatchCommand;
import com.avos.avoscloud.Messages.PatchItem;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.google.protobuf.ByteString;
import java.util.List;

public class MessagePatchModifyPacket extends PeerBasedCommandPacket {
    private ByteString binaryData = null;
    private String conversationId;
    private boolean isRecall;
    private boolean mentionAll;
    private List<String> mentionList;
    private String messageData;
    private String messageId;
    private long timestamp;

    public MessagePatchModifyPacket() {
        setCmd("patch");
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setOp(OpType.modify);
        genericCommandBuilder.setPatchMessage(getPatchCommand());
        return genericCommandBuilder;
    }

    private PatchCommand getPatchCommand() {
        PatchCommand.Builder newBuilder = PatchCommand.newBuilder();
        PatchItem.Builder newBuilder2 = PatchItem.newBuilder();
        long j = this.timestamp;
        if (j > 0) {
            newBuilder2.setTimestamp(j);
        }
        if (!AVUtils.isBlankString(this.messageId)) {
            newBuilder2.setMid(this.messageId);
        }
        if (!AVUtils.isBlankString(this.conversationId)) {
            newBuilder2.setCid(this.conversationId);
        }
        if (!AVUtils.isBlankString(this.messageData)) {
            newBuilder2.setData(this.messageData);
        }
        newBuilder2.setMentionAll(this.mentionAll);
        List<String> list = this.mentionList;
        if (list != null) {
            newBuilder2.addAllMentionPids(list);
        }
        newBuilder2.setRecall(this.isRecall);
        ByteString byteString = this.binaryData;
        if (byteString != null) {
            newBuilder2.setDataBytes(byteString);
        }
        newBuilder.addPatches(newBuilder2.build());
        return newBuilder.build();
    }

    public static MessagePatchModifyPacket getMessagePatchPacketForUpdate(String str, String str2, String str3, String str4, byte[] bArr, boolean z, List<String> list, long j, int i) {
        MessagePatchModifyPacket messagePatchModifyPacket = new MessagePatchModifyPacket();
        messagePatchModifyPacket.conversationId = str2;
        messagePatchModifyPacket.messageId = str3;
        messagePatchModifyPacket.timestamp = j;
        messagePatchModifyPacket.messageData = str4;
        if (bArr != null) {
            messagePatchModifyPacket.binaryData = ByteString.copyFrom(bArr);
        }
        messagePatchModifyPacket.isRecall = false;
        messagePatchModifyPacket.mentionAll = z;
        messagePatchModifyPacket.mentionList = list;
        messagePatchModifyPacket.setRequestId(i);
        if (AVIMClient.getClientsCount() > 1) {
            messagePatchModifyPacket.setPeerId(str);
        }
        return messagePatchModifyPacket;
    }

    public static MessagePatchModifyPacket getMessagePatchPacketForRecall(String str, String str2, String str3, long j, int i) {
        MessagePatchModifyPacket messagePatchModifyPacket = new MessagePatchModifyPacket();
        messagePatchModifyPacket.conversationId = str2;
        messagePatchModifyPacket.messageId = str3;
        messagePatchModifyPacket.timestamp = j;
        messagePatchModifyPacket.isRecall = true;
        messagePatchModifyPacket.setRequestId(i);
        if (AVIMClient.getClientsCount() > 1) {
            messagePatchModifyPacket.setPeerId(str);
        }
        return messagePatchModifyPacket;
    }
}
