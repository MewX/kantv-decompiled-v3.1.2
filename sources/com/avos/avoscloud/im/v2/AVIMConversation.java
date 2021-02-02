package com.avos.avoscloud.im.v2;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVObject;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.IntentUtil;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.PushService;
import com.avos.avoscloud.PushServiceParcel;
import com.avos.avoscloud.QueryConditions;
import com.avos.avoscloud.QueryOperation;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus;
import com.avos.avoscloud.im.v2.AVIMMessageStorage.StorageMessageCallback;
import com.avos.avoscloud.im.v2.AVIMMessageStorage.StorageQueryCallback;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avoscloud.im.v2.callback.AVIMConversationCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationMemberCountCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationMemberQueryCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationSimpleResultCallback;
import com.avos.avoscloud.im.v2.callback.AVIMMessageRecalledCallback;
import com.avos.avoscloud.im.v2.callback.AVIMMessageUpdatedCallback;
import com.avos.avoscloud.im.v2.callback.AVIMMessagesQueryCallback;
import com.avos.avoscloud.im.v2.callback.AVIMOperationPartiallySucceededCallback;
import com.avos.avoscloud.im.v2.callback.AVIMSingleMessageQueryCallback;
import com.avos.avoscloud.im.v2.conversation.AVIMConversationMemberInfo;
import com.avos.avoscloud.im.v2.conversation.ConversationMemberRole;
import com.avos.avoscloud.im.v2.messages.AVIMFileMessage;
import com.avos.avoscloud.im.v2.messages.AVIMFileMessageAccessor;
import com.avos.avoscloud.im.v2.messages.AVIMRecalledMessage;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class AVIMConversation {
    private static final String ATTR_PERFIX = "attr.";
    public static final int RECEIPT_MESSAGE_FLAG = 256;
    public static final int TRANSIENT_MESSAGE_FLAG = 16;
    static Comparator<AVIMMessage> messageComparator = new Comparator<AVIMMessage>() {
        public int compare(AVIMMessage aVIMMessage, AVIMMessage aVIMMessage2) {
            if (aVIMMessage.getTimestamp() < aVIMMessage2.getTimestamp()) {
                return -1;
            }
            if (aVIMMessage.getTimestamp() > aVIMMessage2.getTimestamp()) {
                return 1;
            }
            return aVIMMessage.messageId.compareTo(aVIMMessage2.messageId);
        }
    };
    int FETCH_TIME_INTERVEL;
    Map<String, Object> attributes;
    AVIMClient client;
    String conversationId;
    String createdAt;
    String creator;
    Map<String, Object> instanceData;
    private boolean isSyncLastMessage;
    boolean isSystem;
    boolean isTemporary;
    boolean isTransient;
    long lastDeliveredAt;
    AVIMMessage lastMessage;
    Date lastMessageAt;
    long lastReadAt;
    long latestConversationFetch;
    Set<String> members;
    Map<String, Object> pendingAttributes;
    Map<String, Object> pendingInstanceData;
    AVIMMessageStorage storage;
    long temporaryExpiredat;
    int unreadMessagesCount;
    boolean unreadMessagesMentioned;
    String updatedAt;

    interface OperationCompleteCallback {
        void onComplete();

        void onFailure();
    }

    private void updateMemberComment(String str, AVIMConversationCallback aVIMConversationCallback) {
    }

    private void updateNickName(String str, AVIMConversationCallback aVIMConversationCallback) {
    }

    public boolean isSystem() {
        return this.isSystem;
    }

    public boolean isTemporary() {
        return this.isTemporary;
    }

    /* access modifiers changed from: 0000 */
    public void setTemporary(boolean z) {
        this.isTemporary = z;
    }

    public long getTemporaryExpiredat() {
        return this.temporaryExpiredat;
    }

    public void setTemporaryExpiredat(long j) {
        if (isTemporary()) {
            this.temporaryExpiredat = j;
        }
    }

    /* access modifiers changed from: protected */
    public int getType() {
        if (isSystem()) {
            return 3;
        }
        if (isTransient()) {
            return 2;
        }
        return isTemporary() ? 4 : 1;
    }

    protected AVIMConversation(AVIMClient aVIMClient, List<String> list, Map<String, Object> map, boolean z) {
        this.instanceData = new HashMap();
        this.pendingInstanceData = new HashMap();
        this.isSyncLastMessage = false;
        this.unreadMessagesCount = 0;
        this.unreadMessagesMentioned = false;
        this.isSystem = false;
        this.isTemporary = false;
        this.temporaryExpiredat = 0;
        this.FETCH_TIME_INTERVEL = Conversation.DEFAULT_CONVERSATION_EXPIRE_TIME_IN_MILLS;
        this.latestConversationFetch = 0;
        this.members = new HashSet();
        if (list != null) {
            this.members.addAll(list);
        }
        this.attributes = new HashMap();
        if (map != null) {
            this.attributes.putAll(map);
        }
        this.client = aVIMClient;
        this.pendingAttributes = new HashMap();
        this.isTransient = z;
        this.storage = AVIMMessageStorage.getInstance(aVIMClient.clientId);
    }

    protected AVIMConversation(AVIMClient aVIMClient, String str) {
        this(aVIMClient, null, null, false);
        this.conversationId = str;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    /* access modifiers changed from: protected */
    public void setConversationId(String str) {
        this.conversationId = str;
    }

    /* access modifiers changed from: protected */
    public void setCreator(String str) {
        this.creator = str;
    }

    public String getCreator() {
        return this.creator;
    }

    public void sendMessage(AVIMMessage aVIMMessage, AVIMConversationCallback aVIMConversationCallback) {
        sendMessage(aVIMMessage, (AVIMMessageOption) null, aVIMConversationCallback);
    }

    public void sendMessage(final AVIMMessage aVIMMessage, final AVIMMessageOption aVIMMessageOption, final AVIMConversationCallback aVIMConversationCallback) {
        aVIMMessage.setConversationId(this.conversationId);
        aVIMMessage.setFrom(this.client.clientId);
        aVIMMessage.generateUniqueToken();
        aVIMMessage.setTimestamp(System.currentTimeMillis());
        if (!AVUtils.isConnected(AVOSCloud.applicationContext)) {
            aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusFailed);
            if (aVIMConversationCallback != null) {
                aVIMConversationCallback.internalDone(new AVException(100, "Connection lost"));
            }
            return;
        }
        aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusSending);
        if (AVIMFileMessage.class.isAssignableFrom(aVIMMessage.getClass())) {
            AVIMFileMessageAccessor.upload((AVIMFileMessage) aVIMMessage, new SaveCallback() {
                public void done(AVException aVException) {
                    if (aVException != null) {
                        aVIMMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusFailed);
                        AVIMConversationCallback aVIMConversationCallback = aVIMConversationCallback;
                        if (aVIMConversationCallback != null) {
                            aVIMConversationCallback.internalDone(aVException);
                            return;
                        }
                        return;
                    }
                    AVIMConversation.this.sendCMDToPushService(null, aVIMMessage, aVIMMessageOption, AVIMOperation.CONVERSATION_SEND_MESSAGE, aVIMConversationCallback, null);
                }
            });
        } else {
            sendCMDToPushService(null, aVIMMessage, aVIMMessageOption, AVIMOperation.CONVERSATION_SEND_MESSAGE, aVIMConversationCallback, null);
        }
    }

    public void sendMessage(AVIMMessage aVIMMessage, int i, AVIMConversationCallback aVIMConversationCallback) {
        AVIMMessageOption aVIMMessageOption = new AVIMMessageOption();
        boolean z = true;
        aVIMMessageOption.setReceipt((i & 256) == 256);
        if ((i & 16) != 16) {
            z = false;
        }
        aVIMMessageOption.setTransient(z);
        sendMessage(aVIMMessage, aVIMMessageOption, aVIMConversationCallback);
    }

    public void updateMessage(AVIMMessage aVIMMessage, AVIMMessage aVIMMessage2, AVIMMessageUpdatedCallback aVIMMessageUpdatedCallback) {
        PushServiceParcel pushServiceParcel = new PushServiceParcel();
        pushServiceParcel.setOldMessage(aVIMMessage);
        pushServiceParcel.setNewMessage(aVIMMessage2);
        sendParcelToPushService(pushServiceParcel, AVIMOperation.CONVERSATION_UPDATE_MESSAGE, aVIMMessageUpdatedCallback);
    }

    public void recallMessage(AVIMMessage aVIMMessage, AVIMMessageRecalledCallback aVIMMessageRecalledCallback) {
        PushServiceParcel pushServiceParcel = new PushServiceParcel();
        pushServiceParcel.setRecallMessage(aVIMMessage);
        sendParcelToPushService(pushServiceParcel, AVIMOperation.CONVERSATION_RECALL_MESSAGE, aVIMMessageRecalledCallback);
    }

    public void addToLocalCache(AVIMMessage aVIMMessage) {
        this.storage.insertLocalMessage(aVIMMessage);
    }

    public void removeFromLocalCache(AVIMMessage aVIMMessage) {
        this.storage.removeLocalMessage(aVIMMessage);
    }

    public void queryMessages(AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        queryMessages(20, aVIMMessagesQueryCallback);
    }

    public void queryMessagesFromServer(int i, final AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        queryMessagesFromServer(null, 0, i, null, 0, new AVIMMessagesQueryCallback() {
            public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                if (aVIMException == null) {
                    if (AVIMClient.messageQueryCacheEnabled) {
                        AVIMConversation.this.processContinuousMessages(list);
                    }
                    aVIMMessagesQueryCallback.internalDone(list, null);
                    return;
                }
                aVIMMessagesQueryCallback.internalDone(null, aVIMException);
            }
        });
    }

    public void queryMessagesFromCache(int i, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
    }

    /* access modifiers changed from: private */
    public void queryMessagesFromServer(String str, long j, int i, String str2, long j2, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        queryMessagesFromServer(str, j, false, str2, j2, false, AVIMMessageQueryDirection.AVIMMessageQueryDirectionFromNewToOld, i, aVIMMessagesQueryCallback);
    }

    public void queryMessagesByType(int i, int i2, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        queryMessagesByType(i, null, 0, i2, aVIMMessagesQueryCallback);
    }

    public void queryMessagesByType(int i, String str, long j, int i2, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_MSGID, str);
        hashMap.put("ts", Long.valueOf(j));
        Boolean valueOf = Boolean.valueOf(false);
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_STARTCLOSED, valueOf);
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_TO_MSGID, "");
        hashMap.put("tt", Integer.valueOf(0));
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_TOCLOSED, valueOf);
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_DIRECT, Integer.valueOf(AVIMMessageQueryDirection.AVIMMessageQueryDirectionFromNewToOld.getCode()));
        hashMap.put("limit", Integer.valueOf(i2));
        hashMap.put("type", Integer.valueOf(i));
        sendNonSideEffectCommand(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_MESSAGE_QUERY, aVIMMessagesQueryCallback);
    }

    private void queryMessagesFromServer(String str, long j, boolean z, String str2, long j2, boolean z2, AVIMMessageQueryDirection aVIMMessageQueryDirection, int i, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_MSGID, str);
        hashMap.put("ts", Long.valueOf(j));
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_STARTCLOSED, Boolean.valueOf(z));
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_TO_MSGID, str2);
        hashMap.put("tt", Long.valueOf(j2));
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_TOCLOSED, Boolean.valueOf(z2));
        hashMap.put(Conversation.PARAM_MESSAGE_QUERY_DIRECT, Integer.valueOf(aVIMMessageQueryDirection.getCode()));
        hashMap.put("limit", Integer.valueOf(i));
        hashMap.put("type", Integer.valueOf(0));
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_MESSAGE_QUERY, aVIMMessagesQueryCallback);
    }

    /* access modifiers changed from: private */
    public void queryMessagesFromCache(String str, long j, int i, final AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        if (aVIMMessagesQueryCallback != null) {
            this.storage.getMessages(str, j, i, this.conversationId, new StorageQueryCallback() {
                public void done(List<AVIMMessage> list, List<Boolean> list2) {
                    Collections.reverse(list);
                    aVIMMessagesQueryCallback.internalDone(list, null);
                }
            });
        }
    }

    public void queryMessages(final int i, final AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        long j;
        String str;
        if ((i <= 0 || i > 1000) && aVIMMessagesQueryCallback != null) {
            aVIMMessagesQueryCallback.internalDone(null, new AVException(new IllegalArgumentException("limit should be in [1, 1000]")));
        }
        if (!AVIMClient.messageQueryCacheEnabled) {
            queryMessagesFromServer(null, 0, i, null, 0, new AVIMMessagesQueryCallback() {
                public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                    AVIMMessagesQueryCallback aVIMMessagesQueryCallback = aVIMMessagesQueryCallback;
                    if (aVIMMessagesQueryCallback == null) {
                        return;
                    }
                    if (aVIMException != null) {
                        aVIMMessagesQueryCallback.internalDone(aVIMException);
                    } else {
                        aVIMMessagesQueryCallback.internalDone(list, null);
                    }
                }
            });
            return;
        }
        if (!AVUtils.isConnected(AVOSCloud.applicationContext)) {
            queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
        } else {
            if (this.storage.getMessageCount(this.conversationId) >= ((long) i)) {
                AVIMMessage latestMessageWithBreakpoint = this.storage.getLatestMessageWithBreakpoint(this.conversationId, false);
                if (latestMessageWithBreakpoint != null) {
                    str = latestMessageWithBreakpoint.getMessageId();
                    j = latestMessageWithBreakpoint.getTimestamp();
                    queryMessagesFromServer(null, 0, i, str, j, new AVIMMessagesQueryCallback() {
                        public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                            if (aVIMException == null) {
                                if (!AVUtils.isEmptyList(list)) {
                                    AVIMConversation.this.processContinuousMessages(list);
                                }
                                AVIMConversation.this.queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
                            } else if (aVIMException.getCode() == 124 || aVIMException.getCode() == 0 || aVIMException.getCode() == 3000) {
                                AVIMConversation.this.queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
                            } else {
                                AVIMMessagesQueryCallback aVIMMessagesQueryCallback = aVIMMessagesQueryCallback;
                                if (aVIMMessagesQueryCallback != null) {
                                    aVIMMessagesQueryCallback.internalDone(aVIMException);
                                }
                            }
                        }
                    });
                }
            }
            j = 0;
            str = null;
            queryMessagesFromServer(null, 0, i, str, j, new AVIMMessagesQueryCallback() {
                public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                    if (aVIMException == null) {
                        if (!AVUtils.isEmptyList(list)) {
                            AVIMConversation.this.processContinuousMessages(list);
                        }
                        AVIMConversation.this.queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
                    } else if (aVIMException.getCode() == 124 || aVIMException.getCode() == 0 || aVIMException.getCode() == 3000) {
                        AVIMConversation.this.queryMessagesFromCache(null, 0, i, aVIMMessagesQueryCallback);
                    } else {
                        AVIMMessagesQueryCallback aVIMMessagesQueryCallback = aVIMMessagesQueryCallback;
                        if (aVIMMessagesQueryCallback != null) {
                            aVIMMessagesQueryCallback.internalDone(aVIMException);
                        }
                    }
                }
            });
        }
    }

    public void queryMessages(String str, long j, int i, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        final AVIMMessagesQueryCallback aVIMMessagesQueryCallback2 = aVIMMessagesQueryCallback;
        if (!AVUtils.isBlankString(str) || j != 0) {
            int i2 = i;
            if (!AVIMClient.messageQueryCacheEnabled) {
                queryMessagesFromServer(str, j, i, null, 0, new AVIMMessagesQueryCallback() {
                    public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                        AVIMMessagesQueryCallback aVIMMessagesQueryCallback = aVIMMessagesQueryCallback2;
                        if (aVIMMessagesQueryCallback == null) {
                            return;
                        }
                        if (aVIMException != null) {
                            aVIMMessagesQueryCallback.internalDone(aVIMException);
                        } else {
                            aVIMMessagesQueryCallback.internalDone(list, null);
                        }
                    }
                });
                return;
            }
            AVIMMessageStorage aVIMMessageStorage = this.storage;
            String str2 = this.conversationId;
            final String str3 = str;
            final long j2 = j;
            final int i3 = i;
            final AVIMMessagesQueryCallback aVIMMessagesQueryCallback3 = aVIMMessagesQueryCallback;
            AnonymousClass7 r0 = new StorageMessageCallback() {
                public void done(AVIMMessage aVIMMessage, boolean z) {
                    final AVIMMessage aVIMMessage2 = aVIMMessage;
                    if (aVIMMessage2 == null || z) {
                        AVIMConversation.this.queryMessagesFromServer(str3, j2, i3, null, 0, new AVIMMessagesQueryCallback() {
                            public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                                if (aVIMException != null) {
                                    aVIMMessagesQueryCallback3.internalDone(aVIMException);
                                    return;
                                }
                                LinkedList linkedList = new LinkedList();
                                AVIMMessage aVIMMessage = aVIMMessage2;
                                if (aVIMMessage != null) {
                                    linkedList.add(aVIMMessage);
                                }
                                if (list != null) {
                                    linkedList.addAll(list);
                                }
                                AVIMConversation.this.processContinuousMessages(linkedList);
                                AVIMConversation.this.queryMessagesFromCache(str3, j2, i3, aVIMMessagesQueryCallback3);
                            }
                        });
                        return;
                    }
                    AVIMConversation.this.storage.getMessages(str3, j2, i3, AVIMConversation.this.conversationId, new StorageQueryCallback() {
                        public void done(List<AVIMMessage> list, List<Boolean> list2) {
                            AVIMConversation.this.processStorageQueryResult(list, list2, str3, j2, i3, aVIMMessagesQueryCallback3);
                        }
                    });
                }
            };
            aVIMMessageStorage.getMessage(str, j, str2, r0);
            return;
        }
        queryMessages(i, aVIMMessagesQueryCallback2);
    }

    public void queryMessages(AVIMMessageInterval aVIMMessageInterval, AVIMMessageQueryDirection aVIMMessageQueryDirection, int i, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        boolean z;
        long j;
        String str;
        boolean z2;
        long j2;
        String str2;
        AVIMMessageInterval aVIMMessageInterval2 = aVIMMessageInterval;
        AVIMMessagesQueryCallback aVIMMessagesQueryCallback2 = aVIMMessagesQueryCallback;
        if (aVIMMessageInterval2 == null || i < 0) {
            if (aVIMMessagesQueryCallback2 != null) {
                aVIMMessagesQueryCallback2.internalDone(null, new AVException(new IllegalArgumentException("interval must not null, or limit must great than 0.")));
            }
            return;
        }
        if (aVIMMessageInterval2.startIntervalBound != null) {
            str = aVIMMessageInterval2.startIntervalBound.messageId;
            j = aVIMMessageInterval2.startIntervalBound.timestamp;
            z = aVIMMessageInterval2.startIntervalBound.closed;
        } else {
            str = null;
            j = 0;
            z = false;
        }
        if (aVIMMessageInterval2.endIntervalBound != null) {
            String str3 = aVIMMessageInterval2.endIntervalBound.messageId;
            long j3 = aVIMMessageInterval2.endIntervalBound.timestamp;
            z2 = aVIMMessageInterval2.endIntervalBound.closed;
            str2 = str3;
            j2 = j3;
        } else {
            j2 = 0;
            z2 = false;
            str2 = null;
        }
        queryMessagesFromServer(str, j, z, str2, j2, z2, aVIMMessageQueryDirection, i, aVIMMessagesQueryCallback);
    }

    public void getLastMessage(final AVIMSingleMessageQueryCallback aVIMSingleMessageQueryCallback) {
        if (AVIMClient.messageQueryCacheEnabled) {
            queryMessagesFromCache(null, 0, 1, new AVIMMessagesQueryCallback() {
                public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                    AVIMConversation.this.processLastMessageResult(list, aVIMException, aVIMSingleMessageQueryCallback);
                }
            });
            return;
        }
        queryMessagesFromServer(null, 0, 1, null, 0, new AVIMMessagesQueryCallback() {
            public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                AVIMConversation.this.processLastMessageResult(list, aVIMException, aVIMSingleMessageQueryCallback);
            }
        });
    }

    /* access modifiers changed from: private */
    public void processLastMessageResult(List<AVIMMessage> list, AVIMException aVIMException, AVIMSingleMessageQueryCallback aVIMSingleMessageQueryCallback) {
        if (aVIMException != null) {
            aVIMSingleMessageQueryCallback.internalDone(null, aVIMException);
        } else if (list == null || list.size() <= 0) {
            aVIMSingleMessageQueryCallback.done(null, null);
        } else {
            aVIMSingleMessageQueryCallback.internalDone(list.get(0), null);
        }
    }

    /* access modifiers changed from: private */
    public void processStorageQueryResult(List<AVIMMessage> list, List<Boolean> list2, String str, long j, int i, AVIMMessagesQueryCallback aVIMMessagesQueryCallback) {
        String str2;
        int i2 = i;
        final AVIMMessagesQueryCallback aVIMMessagesQueryCallback2 = aVIMMessagesQueryCallback;
        final ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < list.size() && !((Boolean) list2.get(i3)).booleanValue()) {
            List<AVIMMessage> list3 = list;
            arrayList.add(list.get(i3));
            i3++;
        }
        AVIMMessage aVIMMessage = null;
        if (!AVUtils.isConnected(AVOSCloud.applicationContext) || arrayList.size() >= i2) {
            Collections.sort(arrayList, messageComparator);
            aVIMMessagesQueryCallback2.internalDone(arrayList, null);
            return;
        }
        if (!arrayList.isEmpty()) {
            i2 -= arrayList.size();
            aVIMMessage = (AVIMMessage) arrayList.get(arrayList.size() - 1);
        }
        int i4 = i2;
        if (aVIMMessage == null) {
            str2 = str;
        } else {
            str2 = aVIMMessage.messageId;
        }
        queryMessagesFromServer(str2, aVIMMessage == null ? j : aVIMMessage.timestamp, i4, null, 0, new AVIMMessagesQueryCallback() {
            public void done(List<AVIMMessage> list, AVIMException aVIMException) {
                if (aVIMException == null) {
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    arrayList.addAll(list);
                    AVIMConversation.this.processContinuousMessages(arrayList);
                    aVIMMessagesQueryCallback2.internalDone(arrayList, null);
                } else if (arrayList.size() > 0) {
                    aVIMMessagesQueryCallback2.internalDone(arrayList, null);
                } else {
                    aVIMMessagesQueryCallback2.internalDone(aVIMException);
                }
            }
        });
    }

    public void getAllMemberInfo(int i, int i2, AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback) {
        QueryConditions queryConditions = new QueryConditions();
        queryConditions.addWhereItem("cid", QueryOperation.EQUAL_OP, this.conversationId);
        queryConditions.setSkip(i);
        queryConditions.setLimit(i2);
        queryMemberInfo(queryConditions, aVIMConversationMemberQueryCallback);
    }

    public void getMemberInfo(String str, AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback) {
        QueryConditions queryConditions = new QueryConditions();
        String str2 = this.conversationId;
        String str3 = QueryOperation.EQUAL_OP;
        queryConditions.addWhereItem("cid", str3, str2);
        queryConditions.addWhereItem("peerId", str3, str);
        queryMemberInfo(queryConditions, aVIMConversationMemberQueryCallback);
    }

    public void updateMemberRole(String str, ConversationMemberRole conversationMemberRole, AVIMConversationCallback aVIMConversationCallback) {
        AVIMConversationMemberInfo aVIMConversationMemberInfo = new AVIMConversationMemberInfo(this.conversationId, str, conversationMemberRole);
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER_DETAILS, aVIMConversationMemberInfo.getUpdateAttrs());
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_PROMOTE_MEMBER, aVIMConversationCallback, null);
    }

    private void queryMemberInfo(QueryConditions queryConditions, AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback) {
        if (queryConditions != null && aVIMConversationMemberQueryCallback != null) {
            this.client.queryConversationMemberInfo(queryConditions, aVIMConversationMemberQueryCallback);
        }
    }

    public void muteMembers(List<String> list, AVIMOperationPartiallySucceededCallback aVIMOperationPartiallySucceededCallback) {
        if (list == null || list.size() < 1) {
            if (aVIMOperationPartiallySucceededCallback != null) {
                aVIMOperationPartiallySucceededCallback.done(new AVIMException(new IllegalArgumentException("memberIds is null")), null, null);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_MUTE_MEMBER, aVIMOperationPartiallySucceededCallback, null);
    }

    public void unmuteMembers(List<String> list, AVIMOperationPartiallySucceededCallback aVIMOperationPartiallySucceededCallback) {
        if (list == null || list.size() < 1) {
            if (aVIMOperationPartiallySucceededCallback != null) {
                aVIMOperationPartiallySucceededCallback.done(new AVIMException(new IllegalArgumentException("memberIds is null")), null, null);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_UNMUTE_MEMBER, aVIMOperationPartiallySucceededCallback, null);
    }

    public void queryMutedMembers(int i, int i2, AVIMConversationSimpleResultCallback aVIMConversationSimpleResultCallback) {
        if (aVIMConversationSimpleResultCallback != null) {
            if (i < 0 || i2 > 100) {
                aVIMConversationSimpleResultCallback.internalDone(null, new AVIMException(new IllegalArgumentException("offset/limit is illegal.")));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("limit", Integer.valueOf(i2));
            hashMap.put(Conversation.QUERY_PARAM_OFFSET, Integer.valueOf(i));
            sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY, aVIMConversationSimpleResultCallback, null);
        }
    }

    public void blockMembers(List<String> list, AVIMOperationPartiallySucceededCallback aVIMOperationPartiallySucceededCallback) {
        if (list == null || list.size() < 1) {
            if (aVIMOperationPartiallySucceededCallback != null) {
                aVIMOperationPartiallySucceededCallback.done(new AVIMException(new IllegalArgumentException("memberIds is null")), null, null);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_BLOCK_MEMBER, aVIMOperationPartiallySucceededCallback, null);
    }

    public void unblockMembers(List<String> list, AVIMOperationPartiallySucceededCallback aVIMOperationPartiallySucceededCallback) {
        if (list == null || list.size() < 1) {
            if (aVIMOperationPartiallySucceededCallback != null) {
                aVIMOperationPartiallySucceededCallback.done(new AVIMException(new IllegalArgumentException("memberIds is null")), null, null);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_UNBLOCK_MEMBER, aVIMOperationPartiallySucceededCallback, null);
    }

    public void queryBlockedMembers(int i, int i2, AVIMConversationSimpleResultCallback aVIMConversationSimpleResultCallback) {
        if (aVIMConversationSimpleResultCallback != null) {
            if (i < 0 || i2 > 100) {
                aVIMConversationSimpleResultCallback.internalDone(null, new AVIMException(new IllegalArgumentException("offset/limit is illegal.")));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("limit", Integer.valueOf(i2));
            hashMap.put(Conversation.QUERY_PARAM_OFFSET, Integer.valueOf(i));
            sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY, aVIMConversationSimpleResultCallback, null);
        }
    }

    public void getMemberCount(AVIMConversationMemberCountCallback aVIMConversationMemberCountCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY, aVIMConversationMemberCountCallback);
    }

    public void addMembers(final List<String> list, AVIMConversationCallback aVIMConversationCallback) {
        AVException validateNonEmptyConversationMembers = AVIMClient.validateNonEmptyConversationMembers(list);
        if (validateNonEmptyConversationMembers != null) {
            if (aVIMConversationCallback != null) {
                aVIMConversationCallback.internalDone(null, validateNonEmptyConversationMembers);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_ADD_MEMBER, aVIMConversationCallback, new OperationCompleteCallback() {
            public void onFailure() {
            }

            public void onComplete() {
                AVIMConversation.this.members.addAll(list);
                AVIMConversation.this.storage.insertConversations(Arrays.asList(new AVIMConversation[]{AVIMConversation.this}));
            }
        });
    }

    public void kickMembers(final List<String> list, AVIMConversationCallback aVIMConversationCallback) {
        AVException validateNonEmptyConversationMembers = AVIMClient.validateNonEmptyConversationMembers(list);
        if (validateNonEmptyConversationMembers != null) {
            if (aVIMConversationCallback != null) {
                aVIMConversationCallback.internalDone(null, validateNonEmptyConversationMembers);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_CONVERSATION_MEMBER, list);
        sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_RM_MEMBER, aVIMConversationCallback, new OperationCompleteCallback() {
            public void onFailure() {
            }

            public void onComplete() {
                AVIMConversation.this.members.removeAll(list);
                AVIMConversation.this.storage.insertConversations(Arrays.asList(new AVIMConversation[]{AVIMConversation.this}));
            }
        });
    }

    public List<String> getMembers() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.members);
        return Collections.unmodifiableList(arrayList);
    }

    public void mute(AVIMConversationCallback aVIMConversationCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_MUTE, aVIMConversationCallback, null);
    }

    public void unmute(AVIMConversationCallback aVIMConversationCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_UNMUTE, aVIMConversationCallback, null);
    }

    /* access modifiers changed from: protected */
    public void setMembers(List<String> list) {
        this.members.clear();
        if (list != null) {
            this.members.addAll(list);
        }
    }

    public long getLastReadAt() {
        return this.lastReadAt;
    }

    public long getLastDeliveredAt() {
        long j = this.lastReadAt;
        long j2 = this.lastDeliveredAt;
        return j > j2 ? j : j2;
    }

    /* access modifiers changed from: 0000 */
    public void setLastReadAt(long j, boolean z) {
        if (j > this.lastReadAt) {
            this.lastReadAt = j;
            if (z) {
                this.storage.updateConversationTimes(this);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void setLastDeliveredAt(long j, boolean z) {
        if (j > this.lastDeliveredAt) {
            this.lastDeliveredAt = j;
            if (z) {
                this.storage.updateConversationTimes(this);
            }
        }
    }

    public void quit(AVIMConversationCallback aVIMConversationCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_QUIT, aVIMConversationCallback, new OperationCompleteCallback() {
            public void onFailure() {
            }

            public void onComplete() {
                AVIMConversation.this.storage.deleteConversationData(AVIMConversation.this.conversationId);
                AVIMConversation.this.members.remove(AVIMConversation.this.client.getClientId());
            }
        });
    }

    public void set(String str, Object obj) {
        if (!AVUtils.isBlankString(str) && obj != null) {
            this.pendingInstanceData.put(str, obj);
        }
    }

    public Object get(String str) {
        if (!AVUtils.isBlankString(str)) {
            if (this.pendingInstanceData.containsKey(str)) {
                return this.pendingInstanceData.get(str);
            }
            if (this.instanceData.containsKey(str)) {
                return this.instanceData.get(str);
            }
        }
        return null;
    }

    @Deprecated
    public Object getAttribute(String str) {
        if (this.pendingAttributes.containsKey(str)) {
            return this.pendingAttributes.get(str);
        }
        return this.attributes.get(str);
    }

    @Deprecated
    public void setAttribute(String str, Object obj) {
        if (AVUtils.isBlankContent(str)) {
            return;
        }
        if (str.startsWith(ATTR_PERFIX)) {
            this.pendingAttributes.put(str.substring(5), obj);
        } else {
            this.pendingAttributes.put(str, obj);
        }
    }

    @Deprecated
    public void setAttributes(Map<String, Object> map) {
        this.pendingAttributes.clear();
        this.pendingAttributes.putAll(map);
    }

    /* access modifiers changed from: 0000 */
    public void setAttributesForInit(Map<String, Object> map) {
        this.attributes.clear();
        if (map != null) {
            this.attributes.putAll(map);
        }
    }

    public String getName() {
        return (String) getAttribute("name");
    }

    public void setName(String str) {
        this.pendingAttributes.put("name", str);
    }

    public Date getLastMessageAt() {
        AVIMMessage lastMessage2 = getLastMessage();
        if (lastMessage2 != null) {
            setLastMessageAt(new Date(lastMessage2.getReceiptTimestamp()));
        }
        return this.lastMessageAt;
    }

    /* access modifiers changed from: 0000 */
    public void setLastMessageAt(Date date) {
        if (date != null) {
            Date date2 = this.lastMessageAt;
            if (date2 == null || date.after(date2)) {
                this.lastMessageAt = date;
            }
        }
    }

    public AVIMMessage getLastMessage() {
        if (AVIMClient.messageQueryCacheEnabled && !this.isSyncLastMessage) {
            setLastMessage(getLastMessageFromLocal());
        }
        return this.lastMessage;
    }

    private AVIMMessage getLastMessageFromLocal() {
        if (!AVIMClient.messageQueryCacheEnabled) {
            return null;
        }
        AVIMMessage latestMessage = this.storage.getLatestMessage(getConversationId());
        this.isSyncLastMessage = true;
        return latestMessage;
    }

    /* access modifiers changed from: 0000 */
    public void setLastMessage(AVIMMessage aVIMMessage) {
        if (aVIMMessage != null) {
            AVIMMessage aVIMMessage2 = this.lastMessage;
            if (aVIMMessage2 == null) {
                this.lastMessage = aVIMMessage;
            } else if (aVIMMessage2.getTimestamp() <= aVIMMessage.getTimestamp()) {
                this.lastMessage = aVIMMessage;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void increaseUnreadCount(int i, boolean z) {
        this.unreadMessagesCount = getUnreadMessagesCount() + i;
        if (z) {
            this.unreadMessagesMentioned = z;
        }
    }

    /* access modifiers changed from: 0000 */
    public void updateUnreadCountAndMessage(AVIMMessage aVIMMessage, int i, boolean z) {
        if (aVIMMessage != null) {
            setLastMessage(aVIMMessage);
            this.storage.insertMessage(aVIMMessage, true);
        }
        if (this.unreadMessagesCount != i) {
            this.unreadMessagesCount = i;
            this.unreadMessagesMentioned = z;
            this.storage.updateConversationUreadCount(this.conversationId, (long) this.unreadMessagesCount, z);
        }
    }

    public int getUnreadMessagesCount() {
        return this.unreadMessagesCount;
    }

    public boolean unreadMessagesMentioned() {
        return this.unreadMessagesMentioned;
    }

    public void read() {
        if (!this.isTransient) {
            AVIMMessage lastMessage2 = getLastMessage();
            HashMap hashMap = new HashMap();
            if (lastMessage2 != null) {
                hashMap.put(Conversation.PARAM_MESSAGE_QUERY_MSGID, lastMessage2.getMessageId());
                hashMap.put("ts", Long.valueOf(lastMessage2.getTimestamp()));
            }
            sendCMDToPushService(JSON.toJSONString(hashMap), AVIMOperation.CONVERSATION_READ, null, null);
        }
    }

    public Date getCreatedAt() {
        return AVUtils.dateFromString(this.createdAt);
    }

    /* access modifiers changed from: 0000 */
    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public Date getUpdatedAt() {
        return AVUtils.dateFromString(this.updatedAt);
    }

    /* access modifiers changed from: 0000 */
    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public void fetchReceiptTimestamps(AVIMConversationCallback aVIMConversationCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME, aVIMConversationCallback, null);
    }

    public void updateInfoInBackground(AVIMConversationCallback aVIMConversationCallback) {
        if (!this.pendingAttributes.isEmpty() || !this.pendingInstanceData.isEmpty()) {
            HashMap hashMap = new HashMap();
            if (!this.pendingAttributes.isEmpty()) {
                Map processAttributes = processAttributes(this.pendingAttributes, false);
                if (processAttributes != null) {
                    hashMap.putAll(processAttributes);
                }
            }
            if (!this.pendingInstanceData.isEmpty()) {
                hashMap.putAll(this.pendingInstanceData);
            }
            HashMap hashMap2 = new HashMap();
            if (!hashMap.isEmpty()) {
                hashMap2.put(Conversation.PARAM_CONVERSATION_ATTRIBUTE, hashMap);
            }
            sendCMDToPushService(JSON.toJSONString(hashMap2), AVIMOperation.CONVERSATION_UPDATE, aVIMConversationCallback, new OperationCompleteCallback() {
                public void onFailure() {
                }

                public void onComplete() {
                    AVIMConversation.this.attributes.putAll(AVIMConversation.this.pendingAttributes);
                    AVIMConversation.this.pendingAttributes.clear();
                    AVIMConversation.this.instanceData.putAll(AVIMConversation.this.pendingInstanceData);
                    AVIMConversation.this.pendingInstanceData.clear();
                    AVIMConversation.this.storage.insertConversations(Arrays.asList(new AVIMConversation[]{AVIMConversation.this}));
                }
            });
            return;
        }
        aVIMConversationCallback.internalDone(null);
    }

    public void fetchInfoInBackground(AVIMConversationCallback aVIMConversationCallback) {
        if (AVUtils.isBlankString(this.conversationId)) {
            String str = "ConversationId is empty";
            if (aVIMConversationCallback != null) {
                aVIMConversationCallback.internalDone(null, new AVException(102, str));
            } else {
                avlog.e(str);
            }
            return;
        }
        sendCMDToPushService(JSON.toJSONString(getFetchRequestParams()), AVIMOperation.CONVERSATION_QUERY, aVIMConversationCallback);
    }

    public Map<String, Object> getFetchRequestParams() {
        HashMap hashMap = new HashMap();
        if (this.conversationId.startsWith(Conversation.TEMPCONV_ID_PREFIX)) {
            hashMap.put(Conversation.QUERY_PARAM_TEMPCONV, this.conversationId);
        } else {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("objectId", this.conversationId);
            hashMap.put(Conversation.QUERY_PARAM_WHERE, hashMap2);
        }
        return hashMap;
    }

    public void join(AVIMConversationCallback aVIMConversationCallback) {
        sendCMDToPushService(null, AVIMOperation.CONVERSATION_JOIN, aVIMConversationCallback, new OperationCompleteCallback() {
            public void onFailure() {
            }

            public void onComplete() {
                AVIMConversation.this.members.add(AVIMConversation.this.client.getClientId());
            }
        });
    }

    public boolean isTransient() {
        return this.isTransient;
    }

    /* access modifiers changed from: 0000 */
    public void setTransientForInit(boolean z) {
        this.isTransient = z;
    }

    public boolean isShouldFetch() {
        return getCreatedAt() == null || System.currentTimeMillis() - this.latestConversationFetch > ((long) this.FETCH_TIME_INTERVEL);
    }

    public void setMustFetch() {
        this.latestConversationFetch = 0;
    }

    /* access modifiers changed from: private */
    public void processContinuousMessages(List<AVIMMessage> list) {
        if (list != null && !list.isEmpty()) {
            Collections.sort(list, messageComparator);
            setLastMessage((AVIMMessage) list.get(list.size() - 1));
            this.storage.insertContinuousMessages(list, this.conversationId);
        }
    }

    /* access modifiers changed from: 0000 */
    public void updateLocalMessage(AVIMMessage aVIMMessage) {
        this.storage.updateMessageForPatch(aVIMMessage);
    }

    private void sendParcelToPushService(final PushServiceParcel pushServiceParcel, final AVIMOperation aVIMOperation, AVCallback aVCallback) {
        int nextIMRequestId = AVUtils.getNextIMRequestId();
        Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
        intent.setAction(Conversation.AV_CONVERSATION_PARCEL_ACTION);
        intent.putExtra(Conversation.INTENT_KEY_DATA, pushServiceParcel);
        intent.putExtra(Conversation.INTENT_KEY_CLIENT, this.client.clientId);
        intent.putExtra(Conversation.INTENT_KEY_CONVERSATION, this.conversationId);
        intent.putExtra(Conversation.INTENT_KEY_CONV_TYPE, getType());
        intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
        intent.putExtra(Conversation.INTENT_KEY_OPERATION, aVIMOperation.getCode());
        AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
        if (aVCallback != null) {
            LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
            AnonymousClass16 r2 = new AVIMBaseBroadcastReceiver(aVCallback) {
                public void execute(Intent intent, Throwable th) {
                    if (th == null) {
                        long longExtra = intent.getLongExtra(Conversation.PARAM_MESSAGE_PATCH_TIME, 0);
                        if (aVIMOperation.equals(AVIMOperation.CONVERSATION_RECALL_MESSAGE)) {
                            AVIMConversation.this.onMessageRecalled(pushServiceParcel, longExtra, this.callback);
                        } else {
                            AVIMConversation.this.onMessageUpdated(pushServiceParcel, longExtra, this.callback);
                        }
                    } else {
                        this.callback.internalDone(new AVException(th));
                    }
                }
            };
            StringBuilder sb = new StringBuilder();
            sb.append(aVIMOperation.getOperation());
            sb.append(nextIMRequestId);
            instance.registerReceiver(r2, new IntentFilter(sb.toString()));
        }
    }

    /* access modifiers changed from: private */
    public void onMessageRecalled(PushServiceParcel pushServiceParcel, long j, AVCallback aVCallback) {
        AVIMMessage recallMessage = pushServiceParcel.getRecallMessage();
        AVIMRecalledMessage aVIMRecalledMessage = new AVIMRecalledMessage();
        copyMessageWithoutContent(recallMessage, aVIMRecalledMessage);
        aVIMRecalledMessage.setUpdateAt(j);
        aVIMRecalledMessage.setMessageStatus(AVIMMessageStatus.AVIMMessageStatusRecalled);
        updateLocalMessage(aVIMRecalledMessage);
        aVCallback.internalDone(aVIMRecalledMessage, null);
    }

    /* access modifiers changed from: private */
    public void onMessageUpdated(PushServiceParcel pushServiceParcel, long j, AVCallback aVCallback) {
        AVIMMessage oldMessage = pushServiceParcel.getOldMessage();
        AVIMMessage newMessage = pushServiceParcel.getNewMessage();
        copyMessageWithoutContent(oldMessage, newMessage);
        newMessage.setUpdateAt(j);
        updateLocalMessage(newMessage);
        aVCallback.internalDone(newMessage, null);
    }

    private void copyMessageWithoutContent(AVIMMessage aVIMMessage, AVIMMessage aVIMMessage2) {
        aVIMMessage2.setMessageId(aVIMMessage.getMessageId());
        aVIMMessage2.setConversationId(aVIMMessage.getConversationId());
        aVIMMessage2.setFrom(aVIMMessage.getFrom());
        aVIMMessage2.setDeliveredAt(aVIMMessage.getDeliveredAt());
        aVIMMessage2.setReadAt(aVIMMessage.getReadAt());
        aVIMMessage2.setTimestamp(aVIMMessage.getTimestamp());
        aVIMMessage2.setMessageStatus(aVIMMessage.getMessageStatus());
        aVIMMessage2.setMessageIOType(aVIMMessage.getMessageIOType());
    }

    private void sendCMDToPushService(String str, AVIMOperation aVIMOperation, AVCallback aVCallback, OperationCompleteCallback operationCompleteCallback) {
        sendCMDToPushService(str, null, null, aVIMOperation, aVCallback, operationCompleteCallback);
    }

    /* access modifiers changed from: protected */
    public void sendCMDToPushService(String str, AVIMOperation aVIMOperation, AVCallback aVCallback) {
        sendCMDToPushService(str, null, null, aVIMOperation, aVCallback, null);
    }

    private void sendNonSideEffectCommand(String str, final AVIMOperation aVIMOperation, AVCallback aVCallback) {
        if (aVCallback != null) {
            int nextIMRequestId = AVUtils.getNextIMRequestId();
            Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
            intent.setAction(Conversation.AV_CONVERSATION_INTENT_ACTION);
            if (!AVUtils.isBlankString(str)) {
                intent.putExtra(Conversation.INTENT_KEY_DATA, str);
            }
            intent.putExtra(Conversation.INTENT_KEY_CLIENT, this.client.clientId);
            intent.putExtra(Conversation.INTENT_KEY_CONVERSATION, this.conversationId);
            intent.putExtra(Conversation.INTENT_KEY_CONV_TYPE, getType());
            intent.putExtra(Conversation.INTENT_KEY_OPERATION, aVIMOperation.getCode());
            intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
            AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
            LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
            AnonymousClass17 r1 = new AVIMBaseBroadcastReceiver(aVCallback) {
                public void execute(Intent intent, Throwable th) {
                    if (aVIMOperation.getCode() == AVIMOperation.CONVERSATION_MESSAGE_QUERY.getCode()) {
                        Object parcelableArrayListExtra = intent.getParcelableArrayListExtra(Conversation.callbackHistoryMessages);
                        if (th != null) {
                            this.callback.internalDone(null, new AVIMException(th));
                            return;
                        }
                        if (parcelableArrayListExtra == null) {
                            parcelableArrayListExtra = Collections.EMPTY_LIST;
                        }
                        this.callback.internalDone(parcelableArrayListExtra, null);
                    }
                }
            };
            StringBuilder sb = new StringBuilder();
            sb.append(aVIMOperation.getOperation());
            sb.append(nextIMRequestId);
            instance.registerReceiver(r1, new IntentFilter(sb.toString()));
        }
    }

    /* access modifiers changed from: private */
    public void sendCMDToPushService(String str, AVIMMessage aVIMMessage, AVIMMessageOption aVIMMessageOption, AVIMOperation aVIMOperation, AVCallback aVCallback, OperationCompleteCallback operationCompleteCallback) {
        int nextIMRequestId = AVUtils.getNextIMRequestId();
        Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
        intent.setAction(Conversation.AV_CONVERSATION_INTENT_ACTION);
        boolean isBlankString = AVUtils.isBlankString(str);
        String str2 = Conversation.INTENT_KEY_DATA;
        if (!isBlankString) {
            intent.putExtra(str2, str);
        }
        if (aVIMMessage != null) {
            intent.putExtra(str2, aVIMMessage);
            if (aVIMMessageOption != null) {
                intent.putExtra(Conversation.INTENT_KEY_MESSAGE_OPTION, aVIMMessageOption);
                if (!this.isTransient && aVIMMessageOption.getPriority() != null && AVOSCloud.isDebugLogEnabled()) {
                    avlog.d("Message priority is invalid in transient conversation");
                }
            }
        }
        intent.putExtra(Conversation.INTENT_KEY_CLIENT, this.client.clientId);
        intent.putExtra(Conversation.INTENT_KEY_CONVERSATION, this.conversationId);
        intent.putExtra(Conversation.INTENT_KEY_CONV_TYPE, getType());
        intent.putExtra(Conversation.INTENT_KEY_OPERATION, aVIMOperation.getCode());
        intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
        AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
        if (aVCallback != null) {
            LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
            final AVIMOperation aVIMOperation2 = aVIMOperation;
            final OperationCompleteCallback operationCompleteCallback2 = operationCompleteCallback;
            final AVIMMessage aVIMMessage2 = aVIMMessage;
            final AVIMMessageOption aVIMMessageOption2 = aVIMMessageOption;
            AnonymousClass18 r1 = new AVIMBaseBroadcastReceiver(aVCallback) {
                /* JADX WARNING: Removed duplicated region for block: B:13:0x002f  */
                /* JADX WARNING: Removed duplicated region for block: B:29:0x00a9  */
                /* JADX WARNING: Removed duplicated region for block: B:37:0x00e9  */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void execute(android.content.Intent r11, java.lang.Throwable r12) {
                    /*
                        r10 = this;
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_QUIT
                        int r1 = r1.getCode()
                        if (r0 != r1) goto L_0x0017
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMClient r0 = r0.client
                        com.avos.avoscloud.im.v2.AVIMConversation r1 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        r0.removeConversationCache(r1)
                    L_0x0017:
                        if (r12 != 0) goto L_0x0021
                        com.avos.avoscloud.im.v2.AVIMConversation$OperationCompleteCallback r0 = r5
                        if (r0 == 0) goto L_0x0021
                        r0.onComplete()
                        goto L_0x002a
                    L_0x0021:
                        if (r12 == 0) goto L_0x002a
                        com.avos.avoscloud.im.v2.AVIMConversation$OperationCompleteCallback r0 = r5
                        if (r0 == 0) goto L_0x002a
                        r0.onFailure()
                    L_0x002a:
                        com.avos.avoscloud.im.v2.AVIMMessage r0 = r6
                        r1 = 0
                        if (r0 == 0) goto L_0x0094
                        if (r12 != 0) goto L_0x008f
                        android.os.Bundle r0 = r11.getExtras()
                        r2 = -1
                        java.lang.String r4 = "callbackMessageTimeStamp"
                        long r4 = r0.getLong(r4, r2)
                        java.lang.String r0 = "callbackMessageId"
                        java.lang.String r0 = r11.getStringExtra(r0)
                        com.avos.avoscloud.im.v2.AVIMMessage r6 = r6
                        r6.setMessageId(r0)
                        com.avos.avoscloud.im.v2.AVIMMessage r0 = r6
                        com.avos.avoscloud.im.v2.AVIMMessage$AVIMMessageStatus r6 = com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus.AVIMMessageStatusSent
                        r0.setMessageStatus(r6)
                        int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                        if (r0 == 0) goto L_0x0058
                        com.avos.avoscloud.im.v2.AVIMMessage r0 = r6
                        r0.setTimestamp(r4)
                    L_0x0058:
                        com.avos.avoscloud.im.v2.AVIMMessageOption r0 = r7
                        if (r0 == 0) goto L_0x0062
                        boolean r0 = r0.isTransient()
                        if (r0 != 0) goto L_0x0077
                    L_0x0062:
                        boolean r0 = com.avos.avoscloud.im.v2.AVIMClient.messageQueryCacheEnabled
                        if (r0 == 0) goto L_0x0077
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMMessage r2 = r6
                        r0.setLastMessage(r2)
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMMessageStorage r0 = r0.storage
                        com.avos.avoscloud.im.v2.AVIMMessage r2 = r6
                        r0.insertMessage(r2, r1)
                        goto L_0x007c
                    L_0x0077:
                        java.lang.String r0 = "skip inserting into local storage."
                        com.avos.avoscloud.LogUtil.avlog.d(r0)
                    L_0x007c:
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        java.util.Date r2 = new java.util.Date
                        r2.<init>(r4)
                        r0.lastMessageAt = r2
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMMessageStorage r0 = r0.storage
                        com.avos.avoscloud.im.v2.AVIMConversation r2 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        r0.updateConversationLastMessageAt(r2)
                        goto L_0x0094
                    L_0x008f:
                        com.avos.avoscloud.im.v2.AVIMMessage$AVIMMessageStatus r2 = com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus.AVIMMessageStatusFailed
                        r0.setMessageStatus(r2)
                    L_0x0094:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r2 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MESSAGE_QUERY
                        int r2 = r2.getCode()
                        java.lang.String r3 = "callbackDeliveredAt"
                        java.lang.String r4 = "callbackReadAt"
                        r5 = 0
                        r7 = 0
                        if (r0 != r2) goto L_0x00e9
                        java.lang.String r0 = "callbackHistoryMessages"
                        java.util.ArrayList r0 = r11.getParcelableArrayListExtra(r0)
                        if (r12 == 0) goto L_0x00c4
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r0 = new com.avos.avoscloud.im.v2.AVIMException
                        r1 = 124(0x7c, float:1.74E-43)
                        r2 = 100
                        java.lang.String r12 = r12.getMessage()
                        r0.<init>(r1, r2, r12)
                        r11.internalDone(r7, r0)
                        goto L_0x00e8
                    L_0x00c4:
                        com.avos.avoscloud.im.v2.AVIMConversation r12 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        long r8 = r11.getLongExtra(r4, r5)
                        r12.setLastReadAt(r8, r1)
                        com.avos.avoscloud.im.v2.AVIMConversation r12 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        long r2 = r11.getLongExtra(r3, r5)
                        r12.setLastDeliveredAt(r2, r1)
                        com.avos.avoscloud.im.v2.AVIMConversation r11 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMMessageStorage r11 = r11.storage
                        com.avos.avoscloud.im.v2.AVIMConversation r12 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        r11.updateConversationTimes(r12)
                        if (r0 != 0) goto L_0x00e3
                        java.util.List r0 = java.util.Collections.EMPTY_LIST
                    L_0x00e3:
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        r11.internalDone(r0, r7)
                    L_0x00e8:
                        return
                    L_0x00e9:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r2 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UPDATE
                        int r2 = r2.getCode()
                        if (r0 != r2) goto L_0x010f
                        android.os.Bundle r0 = r11.getExtras()
                        java.lang.String r2 = "callbackUpdatedAt"
                        boolean r0 = r0.containsKey(r2)
                        if (r0 == 0) goto L_0x010f
                        android.os.Bundle r0 = r11.getExtras()
                        java.lang.String r0 = r0.getString(r2)
                        com.avos.avoscloud.im.v2.AVIMConversation r2 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        r2.updatedAt = r0
                    L_0x010f:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r2 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MEMBER_COUNT_QUERY
                        int r2 = r2.getCode()
                        if (r0 != r2) goto L_0x0131
                        java.lang.String r0 = "callbackMemberCount"
                        int r11 = r11.getIntExtra(r0, r1)
                        com.avos.avoscloud.AVCallback r0 = r10.callback
                        java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
                        com.avos.avoscloud.im.v2.AVIMException r12 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r0.internalDone(r11, r12)
                        return
                    L_0x0131:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r2 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_FETCH_RECEIPT_TIME
                        int r2 = r2.getCode()
                        if (r0 != r2) goto L_0x0164
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        long r8 = r11.getLongExtra(r4, r5)
                        r0.setLastReadAt(r8, r1)
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        long r2 = r11.getLongExtra(r3, r5)
                        r0.setLastDeliveredAt(r2, r1)
                        com.avos.avoscloud.im.v2.AVIMConversation r11 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        com.avos.avoscloud.im.v2.AVIMMessageStorage r11 = r11.storage
                        com.avos.avoscloud.im.v2.AVIMConversation r0 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        r11.updateConversationTimes(r0)
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r12 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r11.internalDone(r7, r12)
                        return
                    L_0x0164:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MUTE_MEMBER
                        int r1 = r1.getCode()
                        if (r0 == r1) goto L_0x020c
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UNMUTE_MEMBER
                        int r1 = r1.getCode()
                        if (r0 == r1) goto L_0x020c
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_BLOCK_MEMBER
                        int r1 = r1.getCode()
                        if (r0 == r1) goto L_0x020c
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_UNBLOCK_MEMBER
                        int r1 = r1.getCode()
                        if (r0 != r1) goto L_0x019d
                        goto L_0x020c
                    L_0x019d:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MUTED_MEMBER_QUERY
                        int r1 = r1.getCode()
                        java.lang.String r2 = "callbackData"
                        if (r0 == r1) goto L_0x01f8
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_BLOCKED_MEMBER_QUERY
                        int r1 = r1.getCode()
                        if (r0 != r1) goto L_0x01bc
                        goto L_0x01f8
                    L_0x01bc:
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = r4
                        int r0 = r0.getCode()
                        com.avos.avoscloud.im.v2.Conversation$AVIMOperation r1 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_QUERY
                        int r1 = r1.getCode()
                        if (r0 != r1) goto L_0x01ee
                        if (r12 == 0) goto L_0x01d6
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r12 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r11.internalDone(r7, r12)
                        goto L_0x01ed
                    L_0x01d6:
                        com.avos.avoscloud.im.v2.AVIMConversation r12 = com.avos.avoscloud.im.v2.AVIMConversation.this
                        android.os.Bundle r11 = r11.getExtras()
                        java.io.Serializable r11 = r11.getSerializable(r2)
                        java.lang.Exception r11 = r12.processQueryResult(r11)
                        com.avos.avoscloud.AVCallback r12 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r11 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r11)
                        r12.internalDone(r7, r11)
                    L_0x01ed:
                        return
                    L_0x01ee:
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r12 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r11.internalDone(r7, r12)
                        return
                    L_0x01f8:
                        java.lang.String[] r11 = r11.getStringArrayExtra(r2)
                        com.avos.avoscloud.AVCallback r0 = r10.callback
                        if (r11 == 0) goto L_0x0204
                        java.util.List r7 = java.util.Arrays.asList(r11)
                    L_0x0204:
                        com.avos.avoscloud.im.v2.AVIMException r11 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r0.internalDone(r7, r11)
                        return
                    L_0x020c:
                        java.lang.String r0 = "callbackConvMemberMutedSUCC"
                        java.lang.String[] r1 = r11.getStringArrayExtra(r0)
                        java.lang.String r2 = "callbackConvMemberMutedFAIL"
                        java.util.ArrayList r11 = r11.getParcelableArrayListExtra(r2)
                        java.util.HashMap r3 = new java.util.HashMap
                        r3.<init>()
                        r3.put(r0, r1)
                        r3.put(r2, r11)
                        com.avos.avoscloud.AVCallback r11 = r10.callback
                        com.avos.avoscloud.im.v2.AVIMException r12 = com.avos.avoscloud.im.v2.AVIMException.wrapperAVException(r12)
                        r11.internalDone(r3, r12)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMConversation.AnonymousClass18.execute(android.content.Intent, java.lang.Throwable):void");
                }
            };
            StringBuilder sb = new StringBuilder();
            sb.append(aVIMOperation.getOperation());
            sb.append(nextIMRequestId);
            instance.registerReceiver(r1, new IntentFilter(sb.toString()));
        }
    }

    public Exception processQueryResult(Serializable serializable) {
        if (serializable != null) {
            try {
                JSONArray parseArray = JSON.parseArray(String.valueOf((String) serializable));
                if (parseArray != null && !parseArray.isEmpty()) {
                    updateConversation(this, parseArray.getJSONObject(0));
                    this.client.mergeConversationCache(this, true, null);
                    this.storage.insertConversations(Arrays.asList(new AVIMConversation[]{this}));
                    this.latestConversationFetch = System.currentTimeMillis();
                }
            } catch (Exception e) {
                return e;
            }
        }
        return null;
    }

    public static AVIMConversation parseFromJson(AVIMClient aVIMClient, JSONObject jSONObject) {
        AVIMConversation aVIMConversation;
        if (jSONObject == null || aVIMClient == null) {
            return null;
        }
        String string = jSONObject.getString("objectId");
        if (AVUtils.isBlankContent(string)) {
            return null;
        }
        String str = "sys";
        boolean z = false;
        boolean booleanValue = jSONObject.containsKey(str) ? jSONObject.getBoolean(str).booleanValue() : false;
        String str2 = Conversation.TRANSIENT;
        boolean booleanValue2 = jSONObject.containsKey(str2) ? jSONObject.getBoolean(str2).booleanValue() : false;
        String str3 = Conversation.TEMPORARY;
        if (jSONObject.containsKey(str3)) {
            z = jSONObject.getBoolean(str3).booleanValue();
        }
        if (booleanValue) {
            aVIMConversation = new AVIMServiceConversation(aVIMClient, string);
        } else if (z) {
            aVIMConversation = new AVIMTemporaryConversation(aVIMClient, string);
        } else if (booleanValue2) {
            aVIMConversation = new AVIMChatRoom(aVIMClient, string);
        } else {
            aVIMConversation = new AVIMConversation(aVIMClient, string);
        }
        aVIMConversation.latestConversationFetch = System.currentTimeMillis();
        return updateConversation(aVIMConversation, jSONObject);
    }

    public static void mergeConversationFromJsonObject(AVIMConversation aVIMConversation, JSONObject jSONObject) {
        if (aVIMConversation != null && jSONObject != null) {
            HashMap hashMap = new HashMap();
            String str = "name";
            if (jSONObject.containsKey(str)) {
                hashMap.put(str, jSONObject.getString(str));
            }
            String str2 = Conversation.ATTRIBUTE;
            if (jSONObject.containsKey(str2)) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(str2);
                if (jSONObject2 != null) {
                    hashMap.putAll((Map) JSON.toJavaObject(jSONObject2, Map.class));
                }
            }
            aVIMConversation.attributes.putAll(hashMap);
            Set<String> keySet = jSONObject.keySet();
            if (!keySet.isEmpty()) {
                for (String str3 : keySet) {
                    if (!Arrays.asList(Conversation.CONVERSATION_COLUMNS).contains(str3)) {
                        aVIMConversation.instanceData.put(str3, jSONObject.get(str3));
                    }
                }
            }
        }
    }

    static AVIMConversation updateConversation(AVIMConversation aVIMConversation, JSONObject jSONObject) {
        if (!(jSONObject == null || aVIMConversation == null)) {
            String string = jSONObject.getString("objectId");
            aVIMConversation.setMembers((List) jSONObject.getObject("m", List.class));
            aVIMConversation.setCreator(jSONObject.getString(Conversation.CREATOR));
            HashMap hashMap = new HashMap();
            String str = "name";
            if (jSONObject.containsKey(str)) {
                hashMap.put(str, jSONObject.getString(str));
            }
            String str2 = Conversation.ATTRIBUTE;
            if (jSONObject.containsKey(str2)) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(str2);
                if (jSONObject2 != null) {
                    hashMap.putAll((Map) JSON.toJavaObject(jSONObject2, Map.class));
                }
            }
            aVIMConversation.setAttributesForInit(hashMap);
            aVIMConversation.instanceData.clear();
            Set<String> keySet = jSONObject.keySet();
            if (!keySet.isEmpty()) {
                for (String str3 : keySet) {
                    if (!Arrays.asList(Conversation.CONVERSATION_COLUMNS).contains(str3)) {
                        aVIMConversation.instanceData.put(str3, jSONObject.get(str3));
                    }
                }
            }
            String str4 = "sys";
            if (jSONObject.containsKey(str4)) {
                aVIMConversation.instanceData.put(str4, jSONObject.get(str4));
            }
            String str5 = Conversation.MUTE;
            if (jSONObject.containsKey(str5)) {
                aVIMConversation.instanceData.put(str5, jSONObject.get(str5));
            }
            String str6 = AVObject.CREATED_AT;
            if (jSONObject.containsKey(str6)) {
                aVIMConversation.setCreatedAt(jSONObject.getString(str6));
            }
            String str7 = AVObject.UPDATED_AT;
            if (jSONObject.containsKey(str7)) {
                aVIMConversation.setUpdatedAt(jSONObject.getString(str7));
            }
            aVIMConversation.setLastMessage(AVIMTypedMessage.parseMessage(string, jSONObject));
            String str8 = Conversation.LAST_MESSAGE_AT;
            if (jSONObject.containsKey(str8)) {
                aVIMConversation.setLastMessageAt(AVUtils.dateFromMap((Map) jSONObject.getObject(str8, Map.class)));
            }
            String str9 = Conversation.TRANSIENT;
            if (jSONObject.containsKey(str9)) {
                aVIMConversation.isTransient = jSONObject.getBoolean(str9).booleanValue();
            }
        }
        return aVIMConversation;
    }

    static Map<String, Object> processAttributes(Map<String, Object> map, boolean z) {
        if (z) {
            return processAttributesForCovering(map);
        }
        return processAttributesForIncremental(map);
    }

    static Map<String, Object> processAttributesForIncremental(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        String str = "name";
        if (map.containsKey(str)) {
            hashMap.put(str, map.get(str));
        }
        for (String str2 : map.keySet()) {
            if (!Arrays.asList(Conversation.CONVERSATION_COLUMNS).contains(str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append(ATTR_PERFIX);
                sb.append(str2);
                hashMap.put(sb.toString(), map.get(str2));
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    static JSONObject processAttributesForCovering(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        String str = "name";
        if (map.containsKey(str)) {
            hashMap.put(str, map.get(str));
        }
        HashMap hashMap2 = new HashMap();
        for (String str2 : map.keySet()) {
            if (!Arrays.asList(Conversation.CONVERSATION_COLUMNS).contains(str2)) {
                hashMap2.put(str2, map.get(str2));
            }
        }
        if (!hashMap2.isEmpty()) {
            hashMap.put(Conversation.ATTRIBUTE, hashMap2);
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return new JSONObject((Map<String, Object>) hashMap);
    }
}
