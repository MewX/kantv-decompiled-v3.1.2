package com.avos.avospush.session;

import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Messages.PatchCommand;
import com.avos.avoscloud.im.v2.AVIMClient;

public class MessagePatchModifiedPacket extends PeerBasedCommandPacket {
    private long lastPatchTime;

    public MessagePatchModifiedPacket() {
        setCmd("patch");
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setOp(OpType.modified);
        genericCommandBuilder.setPatchMessage(getPatchCommand());
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public PatchCommand getPatchCommand() {
        PatchCommand.Builder newBuilder = PatchCommand.newBuilder();
        newBuilder.setLastPatchTime(this.lastPatchTime);
        return newBuilder.build();
    }

    public static MessagePatchModifiedPacket getPatchMessagePacket(String str, long j) {
        MessagePatchModifiedPacket messagePatchModifiedPacket = new MessagePatchModifiedPacket();
        if (AVIMClient.getClientsCount() > 1) {
            messagePatchModifiedPacket.setPeerId(str);
        }
        messagePatchModifiedPacket.lastPatchTime = j;
        return messagePatchModifiedPacket;
    }
}
