package com.avos.avoscloud.im.v2;

import android.util.SparseArray;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.im.v2.messages.AVIMAudioMessage;
import com.avos.avoscloud.im.v2.messages.AVIMFileMessage;
import com.avos.avoscloud.im.v2.messages.AVIMImageMessage;
import com.avos.avoscloud.im.v2.messages.AVIMLocationMessage;
import com.avos.avoscloud.im.v2.messages.AVIMRecalledMessage;
import com.avos.avoscloud.im.v2.messages.AVIMTextMessage;
import com.avos.avoscloud.im.v2.messages.AVIMVideoMessage;
import java.lang.annotation.IncompleteAnnotationException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

public class AVIMMessageManager {
    static AVIMConversationEventHandler conversationEventHandler;
    static AVIMMessageHandler defaultMessageHandler;
    static ConcurrentHashMap<Class<? extends AVIMMessage>, Set<MessageHandler>> messageHandlerRepository = new ConcurrentHashMap<>();
    static SparseArray<Class<? extends AVIMTypedMessage>> messageTypesRepository = new SparseArray<>();

    static {
        registerAVIMMessageType(AVIMTextMessage.class);
        registerAVIMMessageType(AVIMFileMessage.class);
        registerAVIMMessageType(AVIMImageMessage.class);
        registerAVIMMessageType(AVIMAudioMessage.class);
        registerAVIMMessageType(AVIMVideoMessage.class);
        registerAVIMMessageType(AVIMLocationMessage.class);
        registerAVIMMessageType(AVIMRecalledMessage.class);
    }

    public static void registerAVIMMessageType(Class<? extends AVIMTypedMessage> cls) {
        AVIMMessageType aVIMMessageType = (AVIMMessageType) cls.getAnnotation(AVIMMessageType.class);
        if (aVIMMessageType != null) {
            messageTypesRepository.put(aVIMMessageType.type(), cls);
            try {
                Method declaredMethod = cls.getDeclaredMethod("computeFieldAttribute", new Class[]{Class.class});
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, new Object[]{cls});
            } catch (Exception unused) {
                if (AVOSCloud.showInternalDebugLog()) {
                    avlog.d("failed to initialize message Fields");
                }
            }
        } else {
            throw new IncompleteAnnotationException(AVIMMessageType.class, "type");
        }
    }

    public static void registerDefaultMessageHandler(AVIMMessageHandler aVIMMessageHandler) {
        defaultMessageHandler = aVIMMessageHandler;
    }

    public static void registerMessageHandler(Class<? extends AVIMMessage> cls, MessageHandler<?> messageHandler) {
        Set copyOnWriteArraySet = new CopyOnWriteArraySet();
        Set set = (Set) messageHandlerRepository.putIfAbsent(cls, copyOnWriteArraySet);
        if (set == null) {
            set = copyOnWriteArraySet;
        }
        set.add(messageHandler);
    }

    public static void unregisterMessageHandler(Class<? extends AVIMMessage> cls, MessageHandler<?> messageHandler) {
        Set set = (Set) messageHandlerRepository.get(cls);
        if (set != null) {
            set.remove(messageHandler);
        }
    }

    public static void setConversationEventHandler(AVIMConversationEventHandler aVIMConversationEventHandler) {
        conversationEventHandler = aVIMConversationEventHandler;
    }

    protected static AVIMConversationEventHandler getConversationEventHandler() {
        return conversationEventHandler;
    }

    protected static void processMessage(AVIMMessage aVIMMessage, int i, AVIMClient aVIMClient, boolean z, boolean z2) {
        if (!aVIMClient.storage.containMessage(aVIMMessage)) {
            if (!z2 && AVIMClient.messageQueryCacheEnabled) {
                aVIMClient.storage.insertMessage(aVIMMessage, z);
            }
            AVIMMessage parseTypedMessage = parseTypedMessage(aVIMMessage);
            AVIMConversation conversation = aVIMClient.getConversation(parseTypedMessage.getConversationId(), i);
            conversation.setLastMessage(parseTypedMessage);
            if (!z2) {
                conversation.increaseUnreadCount(1, parseTypedMessage.mentioned());
            }
            conversation.setLastMessageAt(new Date(parseTypedMessage.getTimestamp()));
            retrieveAllMessageHandlers(parseTypedMessage, conversation, false);
        }
    }

    protected static void processMessageReceipt(AVIMMessage aVIMMessage, AVIMClient aVIMClient) {
        aVIMClient.storage.updateMessage(aVIMMessage, aVIMMessage.getMessageId());
        AVIMMessage parseTypedMessage = parseTypedMessage(aVIMMessage);
        retrieveAllMessageHandlers(parseTypedMessage, aVIMClient.getConversation(parseTypedMessage.getConversationId()), true);
    }

    private static void retrieveAllMessageHandlers(AVIMMessage aVIMMessage, AVIMConversation aVIMConversation, boolean z) {
        boolean z2 = false;
        for (Class cls : messageHandlerRepository.keySet()) {
            if (cls.isAssignableFrom(aVIMMessage.getClass())) {
                Set<MessageHandler> set = (Set) messageHandlerRepository.get(cls);
                if (set.size() > 0) {
                    z2 = true;
                }
                for (MessageHandler messageHandler : set) {
                    if (z) {
                        messageHandler.processEvent(50001, null, aVIMMessage, aVIMConversation);
                    } else {
                        messageHandler.processEvent(50000, null, aVIMMessage, aVIMConversation);
                    }
                }
            }
        }
        if (!z2) {
            AVIMMessageHandler aVIMMessageHandler = defaultMessageHandler;
            if (aVIMMessageHandler == null) {
                return;
            }
            if (z) {
                aVIMMessageHandler.processEvent(50001, null, aVIMMessage, aVIMConversation);
            } else {
                aVIMMessageHandler.processEvent(50000, null, aVIMMessage, aVIMConversation);
            }
        }
    }

    protected static AVIMMessage parseTypedMessage(AVIMMessage aVIMMessage) {
        int messageType = getMessageType(aVIMMessage.getContent());
        if (messageType == 0) {
            return aVIMMessage;
        }
        Class cls = (Class) messageTypesRepository.get(messageType);
        if (cls == null) {
            return aVIMMessage;
        }
        try {
            AVIMMessage aVIMMessage2 = (AVIMMessage) cls.newInstance();
            aVIMMessage2.setConversationId(aVIMMessage.getConversationId());
            aVIMMessage2.setFrom(aVIMMessage.getFrom());
            aVIMMessage2.setReceiptTimestamp(aVIMMessage.getReceiptTimestamp());
            aVIMMessage2.setTimestamp(aVIMMessage.getTimestamp());
            aVIMMessage2.setContent(aVIMMessage.getContent());
            aVIMMessage2.setMessageId(aVIMMessage.getMessageId());
            aVIMMessage2.setMessageStatus(aVIMMessage.getMessageStatus());
            aVIMMessage2.setMessageIOType(aVIMMessage.getMessageIOType());
            aVIMMessage2.uniqueToken = aVIMMessage.uniqueToken;
            aVIMMessage2.currentClient = aVIMMessage.currentClient;
            aVIMMessage2.mentionAll = aVIMMessage.mentionAll;
            aVIMMessage2.mentionList = aVIMMessage.mentionList;
            return aVIMMessage2;
        } catch (Exception unused) {
            return aVIMMessage;
        }
    }

    private static int getMessageType(String str) {
        if (!AVUtils.isBlankContent(str)) {
            try {
                return JSON.parseObject(str).getInteger("_lctype").intValue();
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing json data error, ");
                sb.append(str);
                avlog.e(sb.toString(), e);
            }
        }
        return 0;
    }
}
