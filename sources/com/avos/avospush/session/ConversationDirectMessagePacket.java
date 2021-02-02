package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.DirectCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMMessageOption;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.protobuf.ByteString;
import java.util.List;

public class ConversationDirectMessagePacket extends PeerBasedCommandPacket {
    ByteString binaryMessage = null;
    String conversationId;
    boolean mentionAll = false;
    List<String> mentionList = null;
    String message = null;
    AVIMMessageOption messageOption;
    String messageToken = null;

    public ConversationDirectMessagePacket() {
        setCmd(Conversation.PARAM_MESSAGE_QUERY_DIRECT);
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    private void setMessageOption(AVIMMessageOption aVIMMessageOption) {
        this.messageOption = aVIMMessageOption;
    }

    public boolean isMentionAll() {
        return this.mentionAll;
    }

    public void setMentionAll(boolean z) {
        this.mentionAll = z;
    }

    public List<String> getMentionList() {
        return this.mentionList;
    }

    public void setMentionList(List<String> list) {
        this.mentionList = list;
    }

    public void setBinaryMessage(byte[] bArr) {
        if (bArr == null) {
            this.binaryMessage = null;
        } else {
            this.binaryMessage = ByteString.copyFrom(bArr);
        }
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setDirectMessage(getDirectCommand());
        AVIMMessageOption aVIMMessageOption = this.messageOption;
        if (!(aVIMMessageOption == null || aVIMMessageOption.getPriority() == null)) {
            genericCommandBuilder.setPriority(this.messageOption.getPriority().getNumber());
        }
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public DirectCommand getDirectCommand() {
        DirectCommand.Builder newBuilder = DirectCommand.newBuilder();
        String str = this.message;
        if (str != null) {
            newBuilder.setMsg(str);
        }
        newBuilder.setCid(this.conversationId);
        boolean z = this.mentionAll;
        if (z) {
            newBuilder.setMentionAll(z);
        }
        List<String> list = this.mentionList;
        if (list != null && list.size() > 0) {
            newBuilder.addAllMentionPids(this.mentionList);
        }
        AVIMMessageOption aVIMMessageOption = this.messageOption;
        if (aVIMMessageOption != null) {
            if (aVIMMessageOption.isReceipt()) {
                newBuilder.setR(true);
            }
            if (this.messageOption.isTransient()) {
                newBuilder.setTransient(true);
            }
            String pushData = this.messageOption.getPushData();
            if (!AVUtils.isBlankString(pushData)) {
                newBuilder.setPushData(pushData);
            }
            if (this.messageOption.isWill()) {
                newBuilder.setWill(true);
            }
        }
        if (!AVUtils.isBlankString(this.messageToken)) {
            newBuilder.setDt(this.messageToken);
        }
        ByteString byteString = this.binaryMessage;
        if (byteString != null) {
            newBuilder.setBinaryMsg(byteString);
        }
        return newBuilder.build();
    }

    public static ConversationDirectMessagePacket getConversationMessagePacket(String str, String str2, String str3, byte[] bArr, boolean z, List<String> list, AVIMMessageOption aVIMMessageOption, int i) {
        ConversationDirectMessagePacket conversationDirectMessagePacket = new ConversationDirectMessagePacket();
        if (AVIMClient.getClientsCount() > 1) {
            conversationDirectMessagePacket.setPeerId(str);
        }
        conversationDirectMessagePacket.setConversationId(str2);
        conversationDirectMessagePacket.setRequestId(i);
        conversationDirectMessagePacket.setMessageOption(aVIMMessageOption);
        conversationDirectMessagePacket.setMessage(str3);
        conversationDirectMessagePacket.setMentionAll(z);
        conversationDirectMessagePacket.setMentionList(list);
        conversationDirectMessagePacket.setBinaryMessage(bArr);
        return conversationDirectMessagePacket;
    }

    public static ConversationDirectMessagePacket getConversationMessagePacket(String str, String str2, String str3, byte[] bArr, boolean z, List<String> list, String str4, AVIMMessageOption aVIMMessageOption, int i) {
        ConversationDirectMessagePacket conversationMessagePacket = getConversationMessagePacket(str, str2, str3, bArr, z, list, aVIMMessageOption, i);
        conversationMessagePacket.messageToken = str4;
        return conversationMessagePacket;
    }
}
