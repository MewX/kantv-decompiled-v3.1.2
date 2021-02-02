package com.avos.avoscloud.im.v2;

import android.annotation.TargetApi;
import android.util.Pair;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVIMEventHandler;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.im.v2.conversation.AVIMConversationMemberInfo;
import com.avos.avoscloud.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;

@TargetApi(11)
public abstract class AVIMConversationEventHandler extends AVIMEventHandler {
    public abstract void onInvited(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str);

    public abstract void onKicked(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str);

    public void onLastDeliveredAtUpdated(AVIMClient aVIMClient, AVIMConversation aVIMConversation) {
    }

    public void onLastReadAtUpdated(AVIMClient aVIMClient, AVIMConversation aVIMConversation) {
    }

    public abstract void onMemberJoined(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str);

    public abstract void onMemberLeft(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str);

    public void onMessageRecalled(AVIMClient aVIMClient, AVIMConversation aVIMConversation, AVIMMessage aVIMMessage) {
    }

    public void onMessageUpdated(AVIMClient aVIMClient, AVIMConversation aVIMConversation, AVIMMessage aVIMMessage) {
    }

    public void onUnreadMessagesCountUpdated(AVIMClient aVIMClient, AVIMConversation aVIMConversation) {
    }

    public void onMuted(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification ---  you are muted by ");
        sb.append(str);
        log.d(sb.toString());
    }

    public void onUnmuted(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification ---  you are unmuted by ");
        sb.append(str);
        log.d(sb.toString());
    }

    public void onMemberMuted(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" muted members: ");
        sb.append(StringUtils.join(", ", list));
        log.d(sb.toString());
    }

    public void onMemberUnmuted(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" unmuted members: ");
        sb.append(StringUtils.join(", ", list));
        log.d(sb.toString());
    }

    public void onBlocked(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification ---  you are blocked by ");
        sb.append(str);
        log.d(sb.toString());
    }

    public void onUnblocked(AVIMClient aVIMClient, AVIMConversation aVIMConversation, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification ---  you are unblocked by ");
        sb.append(str);
        log.d(sb.toString());
    }

    public void onMemberBlocked(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" blocked members: ");
        sb.append(StringUtils.join(", ", list));
        log.d(sb.toString());
    }

    public void onMemberUnblocked(AVIMClient aVIMClient, AVIMConversation aVIMConversation, List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" unblocked members: ");
        sb.append(StringUtils.join(", ", list));
        log.d(sb.toString());
    }

    public void onMemberInfoUpdated(AVIMClient aVIMClient, AVIMConversation aVIMConversation, AVIMConversationMemberInfo aVIMConversationMemberInfo, List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" updated memberInfo: ");
        sb.append(aVIMConversationMemberInfo.toString());
        log.d(sb.toString());
    }

    public void onInfoChanged(AVIMClient aVIMClient, AVIMConversation aVIMConversation, JSONObject jSONObject, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification --- ");
        sb.append(str);
        sb.append(" by member: ");
        sb.append(str);
        sb.append(", changedTo: ");
        sb.append(jSONObject.toJSONString());
        log.d(sb.toString());
    }

    /* access modifiers changed from: protected */
    public final void processEvent0(int i, Object obj, Object obj2, Object obj3) {
        processConversationEvent(i, obj, obj2, (AVIMConversation) obj3);
    }

    private void processConversationEvent(int i, Object obj, Object obj2, AVIMConversation aVIMConversation) {
        switch (i) {
            case 50004:
                onMemberLeft(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case 50005:
                onMemberJoined(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case Conversation.STATUS_ON_JOINED /*50008*/:
                onInvited(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_KICKED_FROM_CONVERSATION /*50009*/:
                onKicked(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_UNREAD_EVENT /*50012*/:
                Pair pair = (Pair) obj2;
                aVIMConversation.updateUnreadCountAndMessage((AVIMMessage) obj, ((Integer) pair.first).intValue(), ((Boolean) pair.second).booleanValue());
                onUnreadMessagesCountUpdated(aVIMConversation.client, aVIMConversation);
                return;
            case Conversation.STATUS_ON_MESSAGE_READ /*50013*/:
                aVIMConversation.setLastReadAt(((Long) obj).longValue(), true);
                onLastReadAtUpdated(aVIMConversation.client, aVIMConversation);
                return;
            case Conversation.STATUS_ON_MESSAGE_DELIVERED /*50014*/:
                aVIMConversation.setLastDeliveredAt(((Long) obj).longValue(), true);
                onLastDeliveredAtUpdated(aVIMConversation.client, aVIMConversation);
                return;
            case Conversation.STATUS_ON_MESSAGE_UPDATED /*50015*/:
                AVIMMessage aVIMMessage = (AVIMMessage) obj;
                aVIMConversation.updateLocalMessage(aVIMMessage);
                onMessageUpdated(aVIMConversation.client, aVIMConversation, aVIMMessage);
                return;
            case Conversation.STATUS_ON_MESSAGE_RECALLED /*50016*/:
                AVIMMessage aVIMMessage2 = (AVIMMessage) obj;
                aVIMConversation.updateLocalMessage(aVIMMessage2);
                onMessageRecalled(aVIMConversation.client, aVIMConversation, aVIMMessage2);
                return;
            case Conversation.STATUS_ON_MEMBER_INFO_CHANGED /*50017*/:
                ArrayList arrayList = new ArrayList();
                arrayList.add(AVIMConversationMemberInfo.ATTR_ROLE);
                onMemberInfoUpdated(aVIMConversation.client, aVIMConversation, (AVIMConversationMemberInfo) obj2, arrayList, (String) obj);
                return;
            case Conversation.STATUS_ON_MUTED /*50018*/:
                onMuted(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_UNMUTED /*50019*/:
                onUnmuted(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_MEMBER_MUTED /*50020*/:
                onMemberMuted(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case Conversation.STATUS_ON_MEMBER_UNMUTED /*50021*/:
                onMemberUnmuted(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case Conversation.STATUS_ON_BLOCKED /*50022*/:
                onBlocked(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_UNBLOCKED /*50023*/:
                onUnblocked(aVIMConversation.client, aVIMConversation, (String) obj);
                return;
            case Conversation.STATUS_ON_MEMBER_BLOCKED /*50024*/:
                onMemberBlocked(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case Conversation.STATUS_ON_MEMBER_UNBLOCKED /*50025*/:
                onMemberUnblocked(aVIMConversation.client, aVIMConversation, (List) obj2, (String) obj);
                return;
            case Conversation.STATUS_ON_INFO_CHANGED /*50026*/:
                onInfoChanged(aVIMConversation.client, aVIMConversation, (JSONObject) obj2, (String) obj);
                return;
            default:
                return;
        }
    }
}
