package com.avos.avoscloud.im.v2;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVIMClientParcel;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVPowerfulUtils;
import com.avos.avoscloud.AVQuery.CachePolicy;
import com.avos.avoscloud.AVRequestParams;
import com.avos.avoscloud.AVResponse;
import com.avos.avoscloud.AVRuntimeException;
import com.avos.avoscloud.AVSession;
import com.avos.avoscloud.AVUser;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.IntentUtil;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.PaasClient;
import com.avos.avoscloud.PushService;
import com.avos.avoscloud.QueryConditions;
import com.avos.avoscloud.SignatureFactory;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avoscloud.im.v2.callback.AVIMClientCallback;
import com.avos.avoscloud.im.v2.callback.AVIMClientStatusCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationCreatedCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationMemberQueryCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationQueryCallback;
import com.avos.avoscloud.im.v2.callback.AVIMOnlineClientsCallback;
import com.avos.avoscloud.im.v2.conversation.AVIMConversationMemberInfo;
import com.avos.avoscloud.utils.StringUtils;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AVIMClient {
    private static int REALTIME_TOKEN_WINDOW_INSECOND = 300;
    static AVIMClientEventHandler clientEventHandler;
    static ConcurrentHashMap<String, AVIMClient> clients = new ConcurrentHashMap<>();
    private static boolean isAutoOpen = true;
    static boolean messageQueryCacheEnabled = true;
    String clientId;
    private ConcurrentHashMap<String, AVIMConversation> conversationCache = new ConcurrentHashMap<>();
    volatile boolean isConversationSync = false;
    private String realtimeSessionToken = null;
    private long realtimeSessionTokenExpired = 0;
    AVIMMessageStorage storage;
    private String tag;
    private String userSessionToken;

    public enum AVIMClientStatus {
        AVIMClientStatusNone(110),
        AVIMClientStatusOpened(111),
        AVIMClientStatusPaused(120);
        
        int code;

        private AVIMClientStatus(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }

        static AVIMClientStatus getClientStatus(int i) {
            if (i == 110) {
                return AVIMClientStatusNone;
            }
            if (i == 111) {
                return AVIMClientStatusOpened;
            }
            if (i != 120) {
                return null;
            }
            return AVIMClientStatusPaused;
        }
    }

    private void querySubscribedServiceConversations(String str, long j, int i, AVIMConversationQueryCallback aVIMConversationQueryCallback) {
    }

    public SignatureFactory getSignatureFactory() {
        return AVIMOptions.getGlobalOptions().getSignatureFactory();
    }

    public static void setSignatureFactory(SignatureFactory signatureFactory) {
        AVIMOptions.getGlobalOptions().setSignatureFactory(signatureFactory);
    }

    public static void setTimeoutInSecs(int i) {
        AVIMOptions.getGlobalOptions().setTimeoutInSecs(i);
    }

    public static void setAutoOpen(boolean z) {
        isAutoOpen = z;
    }

    public static boolean isAutoOpen() {
        return isAutoOpen;
    }

    private AVIMClient(String str) {
        this.clientId = str;
        this.storage = AVIMMessageStorage.getInstance(str);
    }

    public static AVIMClient getInstance(String str) {
        if (!AVUtils.isBlankString(str)) {
            AVIMClient aVIMClient = (AVIMClient) clients.get(str);
            if (aVIMClient != null) {
                return aVIMClient;
            }
            AVIMClient aVIMClient2 = new AVIMClient(str);
            AVIMClient aVIMClient3 = (AVIMClient) clients.putIfAbsent(str, aVIMClient2);
            if (aVIMClient3 == null) {
                aVIMClient3 = aVIMClient2;
            }
            return aVIMClient3;
        }
        throw new IllegalArgumentException("clientId cannot be null.");
    }

    public static int getClientsCount() {
        return clients.size();
    }

    public static String getDefaultClient() {
        return getClientsCount() == 1 ? (String) clients.keys().nextElement() : "";
    }

    public static AVIMClient getInstance(String str, String str2) {
        AVIMClient instance = getInstance(str);
        instance.tag = str2;
        return instance;
    }

    public static AVIMClient getInstance(AVUser aVUser) {
        if (aVUser != null) {
            String objectId = aVUser.getObjectId();
            String sessionToken = aVUser.getSessionToken();
            if (AVUtils.isBlankString(objectId) || AVUtils.isBlankString(sessionToken)) {
                throw new IllegalArgumentException("user must login first.");
            }
            AVIMClient instance = getInstance(objectId);
            instance.userSessionToken = sessionToken;
            return instance;
        }
        throw new IllegalArgumentException("user cannot be null.");
    }

    public static AVIMClient getInstance(AVUser aVUser, String str) {
        AVIMClient instance = getInstance(aVUser);
        instance.tag = str;
        return instance;
    }

    public void updateRealtimeSessionToken(String str, long j) {
        this.realtimeSessionToken = str;
        this.realtimeSessionTokenExpired = j;
    }

    public String getRealtimeSessionToken() {
        return this.realtimeSessionToken;
    }

    /* access modifiers changed from: 0000 */
    public boolean realtimeSessionTokenExpired() {
        return (System.currentTimeMillis() / 1000) + ((long) REALTIME_TOKEN_WINDOW_INSECOND) >= this.realtimeSessionTokenExpired;
    }

    public void open(AVIMClientCallback aVIMClientCallback) {
        open(null, aVIMClientCallback);
    }

    public void open(AVIMClientOpenOption aVIMClientOpenOption, AVIMClientCallback aVIMClientCallback) {
        AVIMClientParcel aVIMClientParcel = new AVIMClientParcel();
        aVIMClientParcel.setClientTag(this.tag);
        aVIMClientParcel.setSessionToken(this.userSessionToken);
        if (aVIMClientOpenOption != null) {
            aVIMClientParcel.setReconnection(aVIMClientOpenOption.isReconnect());
        } else {
            aVIMClientParcel.setReconnection(false);
        }
        AnonymousClass1 r3 = null;
        if (aVIMClientCallback != null) {
            r3 = new AVIMBaseBroadcastReceiver(aVIMClientCallback) {
                public void execute(Intent intent, Throwable th) {
                    this.callback.internalDone(AVIMClient.this, AVIMException.wrapperAVException(th));
                }
            };
        }
        sendClientCommand(aVIMClientParcel, r3, AVIMOperation.CLIENT_OPEN);
    }

    public void getOnlineClients(List<String> list, AVIMOnlineClientsCallback aVIMOnlineClientsCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(Conversation.PARAM_ONLINE_CLIENTS, list);
        sendClientCMDToPushService(JSON.toJSONString(hashMap), aVIMOnlineClientsCallback != null ? new AVIMBaseBroadcastReceiver(aVIMOnlineClientsCallback) {
            public void execute(Intent intent, Throwable th) {
                if (th != null) {
                    this.callback.internalDone(null, AVIMException.wrapperAVException(th));
                    return;
                }
                this.callback.internalDone(intent.getStringArrayListExtra(Conversation.callbackOnlineClients), null);
            }
        } : null, AVIMOperation.CLIENT_ONLINE_QUERY);
    }

    public String getClientId() {
        return this.clientId;
    }

    public void createConversation(List<String> list, Map<String, Object> map, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, null, map, false, aVIMConversationCreatedCallback);
    }

    public void createConversation(List<String> list, String str, Map<String, Object> map, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, str, map, false, aVIMConversationCreatedCallback);
    }

    public void createConversation(List<String> list, String str, Map<String, Object> map, boolean z, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, str, map, z, false, aVIMConversationCreatedCallback);
    }

    public void createChatRoom(List<String> list, String str, Map<String, Object> map, boolean z, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, str, map, true, z, aVIMConversationCreatedCallback);
    }

    private void createServiceConversation(String str, Map<String, Object> map, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        throw new AVRuntimeException("can't invoke createServiceConversation within SDK.", new UnsupportedOperationException());
    }

    public void createTemporaryConversation(List<String> list, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createTemporaryConversation(list, 259200, aVIMConversationCreatedCallback);
    }

    public void createTemporaryConversation(List<String> list, int i, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, null, null, false, true, true, i, aVIMConversationCreatedCallback);
    }

    public void createConversation(List<String> list, String str, Map<String, Object> map, boolean z, boolean z2, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        createConversation(list, str, map, z, z2, false, 0, aVIMConversationCreatedCallback);
    }

    private void createConversation(List<String> list, String str, Map<String, Object> map, boolean z, boolean z2, boolean z3, int i, AVIMConversationCreatedCallback aVIMConversationCreatedCallback) {
        AnonymousClass3 r9;
        List<String> list2 = list;
        Map<String, Object> map2 = map;
        AVIMConversationCreatedCallback aVIMConversationCreatedCallback2 = aVIMConversationCreatedCallback;
        try {
            AVUtils.ensureElementsNotNull(list, AVSession.ERROR_INVALID_SESSION_ID);
            final HashMap hashMap = new HashMap();
            if (map2 != null) {
                hashMap.putAll(map);
            }
            if (!AVUtils.isBlankString(str)) {
                String str2 = str;
                hashMap.put("name", str);
            }
            final ArrayList arrayList = new ArrayList();
            arrayList.addAll(list);
            if (!arrayList.contains(this.clientId)) {
                arrayList.add(this.clientId);
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put(Conversation.PARAM_CONVERSATION_MEMBER, arrayList);
            hashMap2.put(Conversation.PARAM_CONVERSATION_ISUNIQUE, Boolean.valueOf(z2));
            hashMap2.put(Conversation.PARAM_CONVERSATION_ISTRANSIENT, Boolean.valueOf(z));
            hashMap2.put(Conversation.PARAM_CONVERSATION_ISTEMPORARY, Boolean.valueOf(z3));
            if (z3) {
                hashMap2.put(Conversation.PARAM_CONVERSATION_TEMPORARY_TTL, Integer.valueOf(i));
            }
            if (hashMap.size() > 0) {
                Map processAttributes = AVIMConversation.processAttributes(hashMap, true);
                if (processAttributes != null) {
                    hashMap2.put(Conversation.PARAM_CONVERSATION_ATTRIBUTE, processAttributes);
                }
            }
            if (aVIMConversationCreatedCallback2 != null) {
                final boolean z4 = z;
                final boolean z5 = z3;
                r9 = new AVIMBaseBroadcastReceiver(aVIMConversationCreatedCallback) {
                    public void execute(Intent intent, Throwable th) {
                        AVIMConversation aVIMConversation;
                        String string = intent.getExtras().getString(Conversation.callbackConversationKey);
                        String string2 = intent.getExtras().getString(Conversation.callbackCreatedAt);
                        int i = intent.getExtras().getInt(Conversation.callbackTemporaryTTL, 0);
                        if (th == null) {
                            aVIMConversation = AVIMClient.this.getConversation(string, z4, z5);
                            aVIMConversation.setMembers(arrayList);
                            aVIMConversation.setAttributesForInit(hashMap);
                            aVIMConversation.setTransientForInit(z4);
                            aVIMConversation.setConversationId(string);
                            aVIMConversation.setCreator(AVIMClient.this.clientId);
                            aVIMConversation.setCreatedAt(string2);
                            aVIMConversation.setUpdatedAt(string2);
                            aVIMConversation.setTemporary(z5);
                            aVIMConversation.setTemporaryExpiredat((System.currentTimeMillis() / 1000) + ((long) i));
                            AVIMClient.this.storage.insertConversations(Arrays.asList(new AVIMConversation[]{aVIMConversation}));
                        } else {
                            aVIMConversation = null;
                        }
                        this.callback.internalDone(aVIMConversation, AVIMException.wrapperAVException(th));
                    }
                };
            } else {
                r9 = null;
            }
            sendClientCMDToPushService(JSON.toJSONString(hashMap2), r9, AVIMOperation.CONVERSATION_CREATION);
        } catch (Exception e) {
            if (aVIMConversationCreatedCallback2 != null) {
                aVIMConversationCreatedCallback2.internalDone(null, AVIMException.wrapperAVException(e));
            }
        }
    }

    public AVIMConversation getConversation(String str) {
        if (StringUtils.isBlankString(str)) {
            return null;
        }
        return getConversation(str, false, str.startsWith(Conversation.TEMPCONV_ID_PREFIX));
    }

    public AVIMConversation getConversation(String str, int i) {
        if (i == 2) {
            return getChatRoom(str);
        }
        if (i == 3) {
            return getServiceConversation(str);
        }
        if (i != 4) {
            return getConversation(str);
        }
        return getTemporaryConversation(str);
    }

    public AVIMConversation getChatRoom(String str) {
        return getConversation(str, true, false);
    }

    public AVIMConversation getServiceConversation(String str) {
        return getConversation(str, false, false, true);
    }

    public AVIMConversation getTemporaryConversation(String str) {
        return getConversation(str, false, true);
    }

    public AVIMConversation getConversation(String str, boolean z, boolean z2) {
        return getConversation(str, z, z2, false);
    }

    private AVIMConversation getConversation(String str, boolean z, boolean z2, boolean z3) {
        AVIMConversation aVIMConversation;
        if (!this.isConversationSync) {
            syncConversationCache();
        }
        AVIMConversation aVIMConversation2 = (AVIMConversation) this.conversationCache.get(str);
        if (aVIMConversation2 != null) {
            return aVIMConversation2;
        }
        if (AVUtils.isBlankString(str)) {
            log.w("conversationId is null");
            return null;
        }
        if (z3) {
            aVIMConversation = new AVIMServiceConversation(this, str);
        } else if (z2 || str.startsWith(Conversation.TEMPCONV_ID_PREFIX)) {
            aVIMConversation = new AVIMTemporaryConversation(this, str);
        } else if (z) {
            aVIMConversation = new AVIMChatRoom(this, str);
        } else {
            aVIMConversation = new AVIMConversation(this, str);
        }
        AVIMConversation aVIMConversation3 = (AVIMConversation) this.conversationCache.putIfAbsent(str, aVIMConversation);
        if (aVIMConversation3 == null) {
            aVIMConversation3 = aVIMConversation;
        }
        return aVIMConversation3;
    }

    public AVIMConversationQuery getQuery() {
        return new AVIMConversationQuery(this);
    }

    public AVIMConversationsQuery getConversationsQuery() {
        return new AVIMConversationsQuery(this);
    }

    public AVIMConversationsQuery getServiceConversationQuery() {
        AVIMConversationsQuery aVIMConversationsQuery = new AVIMConversationsQuery(this);
        aVIMConversationsQuery.whereEqualTo("sys", Boolean.valueOf(true));
        return aVIMConversationsQuery;
    }

    private AVIMConversationsQuery getTemporaryConversationQuery() {
        throw new UnsupportedOperationException("only conversationId query is allowed, please invoke #getTemporaryConversaton with conversationId.");
    }

    public AVIMConversationsQuery getChatRoomQuery() {
        AVIMConversationsQuery aVIMConversationsQuery = new AVIMConversationsQuery(this);
        aVIMConversationsQuery.whereEqualTo(Conversation.TRANSIENT, Boolean.valueOf(true));
        return aVIMConversationsQuery;
    }

    private void querySubscribedServiceConversations(int i, AVIMConversationQueryCallback aVIMConversationQueryCallback) {
        querySubscribedServiceConversations(null, 0, i, aVIMConversationQueryCallback);
    }

    public static void setClientEventHandler(AVIMClientEventHandler aVIMClientEventHandler) {
        clientEventHandler = aVIMClientEventHandler;
    }

    protected static AVIMClientEventHandler getClientEventHandler() {
        return clientEventHandler;
    }

    public static void setOfflineMessagePush(boolean z) {
        setUnreadNotificationEnabled(z);
    }

    public static void setUnreadNotificationEnabled(boolean z) {
        AVSession.setUnreadNotificationEnabled(z);
    }

    public void close(AVIMClientCallback aVIMClientCallback) {
        sendClientCMDToPushService(null, aVIMClientCallback != null ? new AVIMBaseBroadcastReceiver(aVIMClientCallback) {
            public void execute(Intent intent, Throwable th) {
                this.callback.internalDone(AVIMClient.this, AVIMException.wrapperAVException(th));
                AVIMClient.this.close();
            }
        } : null, AVIMOperation.CLIENT_DISCONNECT);
    }

    /* access modifiers changed from: protected */
    public void close() {
        clients.remove(this.clientId);
        this.conversationCache.clear();
        this.storage.deleteClientData();
    }

    /* access modifiers changed from: 0000 */
    public void queryConversationMemberInfo(final QueryConditions queryConditions, final AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback) {
        if (queryConditions != null && aVIMConversationMemberQueryCallback != null) {
            if (!realtimeSessionTokenExpired()) {
                queryConvMemberThroughNetwork(queryConditions, aVIMConversationMemberQueryCallback);
                return;
            }
            log.d("realtime session token expired, start to refresh...");
            sendClientCMDToPushService(null, new AVIMBaseBroadcastReceiver(null) {
                public void execute(Intent intent, Throwable th) {
                    if (th != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("failed to refresh realtime session token. cause: ");
                        sb.append(th.getMessage());
                        log.e(sb.toString());
                        aVIMConversationMemberQueryCallback.internalDone(null, AVIMException.wrapperAVException(th));
                        return;
                    }
                    AVIMClient.this.queryConvMemberThroughNetwork(queryConditions, aVIMConversationMemberQueryCallback);
                }
            }, AVIMOperation.CLIENT_REFRESH_TOKEN);
        }
    }

    /* access modifiers changed from: private */
    public void queryConvMemberThroughNetwork(QueryConditions queryConditions, final AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback) {
        String endpoint = AVPowerfulUtils.getEndpoint("_ConversationMemberInfo");
        queryConditions.assembleParameters();
        Map parameters = queryConditions.getParameters();
        parameters.put(Constants.PARAM_CLIENT_ID, this.clientId);
        AVRequestParams aVRequestParams = new AVRequestParams(parameters);
        HashMap hashMap = new HashMap();
        hashMap.put("X-LC-IM-Session-Token", getRealtimeSessionToken());
        PaasClient.storageInstance().getObject(endpoint, aVRequestParams, false, hashMap, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                try {
                    List access$100 = AVIMClient.this.processResults(str);
                    if (aVIMConversationMemberQueryCallback != null) {
                        aVIMConversationMemberQueryCallback.internalDone(access$100, null);
                    }
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("failed to parse ConversationMemberInfo result, cause: ");
                    sb.append(e.getMessage());
                    log.e(sb.toString());
                    AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback = aVIMConversationMemberQueryCallback;
                    if (aVIMConversationMemberQueryCallback != null) {
                        aVIMConversationMemberQueryCallback.internalDone(null, new AVIMException(e));
                    }
                }
            }

            public void onFailure(Throwable th, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("failed to fetch ConversationMemberInfo, cause: ");
                sb.append(th.getMessage());
                log.e(sb.toString());
                AVIMConversationMemberQueryCallback aVIMConversationMemberQueryCallback = aVIMConversationMemberQueryCallback;
                if (aVIMConversationMemberQueryCallback != null) {
                    aVIMConversationMemberQueryCallback.internalDone(null, new AVIMException(str, th));
                }
            }
        }, CachePolicy.NETWORK_ONLY, 86400000);
    }

    /* access modifiers changed from: private */
    public List<AVIMConversationMemberInfo> processResults(String str) throws Exception {
        Map[] mapArr;
        if (AVUtils.isBlankContent(str)) {
            return Collections.emptyList();
        }
        AVResponse aVResponse = (AVResponse) JSON.parseObject(str, new AVResponse().getClass());
        LinkedList linkedList = new LinkedList();
        for (Map map : aVResponse.results) {
            if (map != null && !map.isEmpty()) {
                linkedList.add(AVIMConversationMemberInfo.createInstance(map));
            }
        }
        return linkedList;
    }

    public void getClientStatus(AVIMClientStatusCallback aVIMClientStatusCallback) {
        sendClientCMDToPushService(null, aVIMClientStatusCallback != null ? new AVIMBaseBroadcastReceiver(aVIMClientStatusCallback) {
            public void execute(Intent intent, Throwable th) {
                AVIMClientStatus aVIMClientStatus;
                if (intent.getExtras() != null) {
                    Bundle extras = intent.getExtras();
                    String str = Conversation.callbackClientStatus;
                    if (extras.containsKey(str)) {
                        aVIMClientStatus = AVIMClientStatus.getClientStatus(intent.getExtras().getInt(str));
                        this.callback.internalDone(aVIMClientStatus, AVIMException.wrapperAVException(th));
                    }
                }
                aVIMClientStatus = null;
                this.callback.internalDone(aVIMClientStatus, AVIMException.wrapperAVException(th));
            }
        } : null, AVIMOperation.CLIENT_STATUS);
    }

    /* access modifiers changed from: protected */
    public void sendClientCommand(AVIMClientParcel aVIMClientParcel, BroadcastReceiver broadcastReceiver, AVIMOperation aVIMOperation) {
        int nextIMRequestId = AVUtils.getNextIMRequestId();
        if (broadcastReceiver != null) {
            LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
            StringBuilder sb = new StringBuilder();
            sb.append(aVIMOperation.getOperation());
            sb.append(nextIMRequestId);
            instance.registerReceiver(broadcastReceiver, new IntentFilter(sb.toString()));
        }
        Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
        intent.setAction(Conversation.AV_CONVERSATION_INTENT_ACTION);
        intent.putExtra(Conversation.INTENT_KEY_CLIENT_PARCEL, aVIMClientParcel);
        intent.putExtra(Conversation.INTENT_KEY_CLIENT, this.clientId);
        intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
        intent.putExtra(Conversation.INTENT_KEY_OPERATION, aVIMOperation.getCode());
        AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
    }

    /* access modifiers changed from: protected */
    public void sendClientCMDToPushService(String str, BroadcastReceiver broadcastReceiver, AVIMOperation aVIMOperation) {
        int nextIMRequestId = AVUtils.getNextIMRequestId();
        if (broadcastReceiver != null) {
            LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
            StringBuilder sb = new StringBuilder();
            sb.append(aVIMOperation.getOperation());
            sb.append(nextIMRequestId);
            instance.registerReceiver(broadcastReceiver, new IntentFilter(sb.toString()));
        }
        Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
        intent.setAction(Conversation.AV_CONVERSATION_INTENT_ACTION);
        if (!AVUtils.isBlankString(str)) {
            intent.putExtra(Conversation.INTENT_KEY_DATA, str);
        }
        intent.putExtra(Conversation.INTENT_KEY_CLIENT, this.clientId);
        intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
        intent.putExtra(Conversation.INTENT_KEY_OPERATION, aVIMOperation.getCode());
        AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
    }

    static AVException validateNonEmptyConversationMembers(List<String> list) {
        if (list == null || list.isEmpty()) {
            return new AVException(999, "Conversation can't be created with empty members");
        }
        try {
            AVUtils.ensureElementsNotNull(list, AVSession.ERROR_INVALID_SESSION_ID);
            return null;
        } catch (Exception e) {
            return new AVException(e);
        }
    }

    private void syncConversationCache() {
        for (AVIMConversation aVIMConversation : this.storage.getAllCachedConversations()) {
            this.conversationCache.put(aVIMConversation.getConversationId(), aVIMConversation);
        }
        this.isConversationSync = true;
    }

    /* access modifiers changed from: protected */
    public void removeConversationCache(AVIMConversation aVIMConversation) {
        this.conversationCache.remove(aVIMConversation.getConversationId());
    }

    /* access modifiers changed from: 0000 */
    public AVIMConversation mergeConversationCache(AVIMConversation aVIMConversation, boolean z, JSONObject jSONObject) {
        if (aVIMConversation == null || StringUtils.isBlankString(aVIMConversation.getConversationId())) {
            return null;
        }
        String conversationId = aVIMConversation.getConversationId();
        if (z) {
            this.conversationCache.put(conversationId, aVIMConversation);
            return aVIMConversation;
        }
        AVIMConversation aVIMConversation2 = (AVIMConversation) this.conversationCache.get(conversationId);
        if (aVIMConversation2 == null) {
            this.conversationCache.put(conversationId, aVIMConversation);
        } else {
            aVIMConversation = AVIMConversation.updateConversation(aVIMConversation2, jSONObject);
        }
        return aVIMConversation;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        AVIMClient aVIMClient = (AVIMClient) obj;
        String str = this.clientId;
        if (str != null) {
            return str.equals(aVIMClient.clientId);
        }
        if (aVIMClient.clientId == null) {
            z = true;
        }
        return z;
    }

    public static void setMessageQueryCacheEnable(boolean z) {
        messageQueryCacheEnabled = z;
    }
}
