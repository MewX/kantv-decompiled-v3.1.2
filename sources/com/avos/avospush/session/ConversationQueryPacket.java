package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.JsonObjectMessage;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.Conversation;
import java.util.Map;

public class ConversationQueryPacket extends PeerBasedCommandPacket {
    Map<String, Object> queryParams;

    public ConversationQueryPacket() {
        setCmd(ConversationControlPacket.CONVERSATION_CMD);
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setConvMessage(getConvCommand());
        genericCommandBuilder.setOp(OpType.valueOf("query"));
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public ConvCommand getConvCommand() {
        ConvCommand.Builder newBuilder = ConvCommand.newBuilder();
        Map<String, Object> map = this.queryParams;
        if (map != null && !map.isEmpty()) {
            Object obj = this.queryParams.get(Conversation.QUERY_PARAM_TEMPCONV);
            if (obj != null && !AVUtils.isBlankString(obj.toString())) {
                newBuilder.addTempConvIds(obj.toString());
            }
            Object obj2 = this.queryParams.get("order");
            if (obj2 != null && !AVUtils.isBlankString(obj2.toString())) {
                newBuilder.setSort(obj2.toString());
            }
            Object obj3 = this.queryParams.get(Conversation.QUERY_PARAM_OFFSET);
            if (obj3 != null && !AVUtils.isBlankString(obj3.toString())) {
                newBuilder.setSkip(Integer.parseInt(obj3.toString()));
            }
            Object obj4 = this.queryParams.get("limit");
            if (obj4 != null && !AVUtils.isBlankString(obj4.toString())) {
                newBuilder.setLimit(Integer.parseInt(obj4.toString()));
            }
            Object obj5 = this.queryParams.get(Conversation.QUERY_PARAM_WHERE);
            if (obj5 != null && !AVUtils.isBlankString(obj5.toString())) {
                JsonObjectMessage.Builder newBuilder2 = JsonObjectMessage.newBuilder();
                newBuilder2.setData(obj5.toString());
                newBuilder.setWhere(newBuilder2);
            }
            int i = 0;
            Object obj6 = this.queryParams.get(Conversation.QUERY_PARAM_LAST_MESSAGE);
            if (obj6 != null && !AVUtils.isBlankString(obj6.toString()) && Boolean.parseBoolean(obj6.toString())) {
                i = 2;
            }
            Object obj7 = this.queryParams.get(Conversation.QUERY_PARAM_COMPACT);
            if (obj7 != null && !AVUtils.isBlankString(obj7.toString()) && Boolean.parseBoolean(obj7.toString())) {
                i |= 1;
            }
            if (i > 0) {
                newBuilder.setFlag(i);
            }
        }
        return newBuilder.build();
    }

    public static ConversationQueryPacket getConversationQueryPacket(String str, Map<String, Object> map, int i) {
        ConversationQueryPacket conversationQueryPacket = new ConversationQueryPacket();
        if (AVIMClient.getClientsCount() > 1) {
            conversationQueryPacket.setPeerId(str);
        }
        conversationQueryPacket.queryParams = map;
        conversationQueryPacket.setRequestId(i);
        return conversationQueryPacket;
    }
}
