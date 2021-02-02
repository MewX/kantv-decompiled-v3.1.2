package com.avos.avoscloud.im.v2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVCacheManager;
import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVGeoPoint;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVQuery.CachePolicy;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.ObjectValueFilter;
import com.avos.avoscloud.QueryOperation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avoscloud.im.v2.callback.AVIMConversationQueryCallback;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class AVIMConversationsQuery {
    private static final long MAX_CONVERSATION_CACHE_TIME = 3600000;
    private AVIMClient client;
    AVIMConversationQueryConditions conditions;
    private long maxAge = MAX_CONVERSATION_CACHE_TIME;
    CachePolicy policy = CachePolicy.CACHE_ELSE_NETWORK;

    static class CacheConversationQueryCallback extends GenericObjectCallback {
        AVIMConversationQueryCallback callback;
        AVIMClient client;

        public CacheConversationQueryCallback(AVIMClient aVIMClient, AVIMConversationsQuery aVIMConversationsQuery, AVIMConversationQueryCallback aVIMConversationQueryCallback) {
            this.callback = aVIMConversationQueryCallback;
            this.client = aVIMClient;
        }

        public void onSuccess(String str, AVException aVException) {
            if (!AVUtils.isBlankString(str)) {
                try {
                    List list = (List) JSON.parseObject(str, List.class);
                    List cachedConversations = this.client.storage.getCachedConversations(list);
                    if (cachedConversations != null) {
                        if (cachedConversations.size() >= list.size()) {
                            this.callback.internalDone(cachedConversations, null);
                        }
                    }
                    onFailure(AVErrorUtils.createException(120, AVException.cacheMissingErrorString), null);
                } catch (Exception e) {
                    this.callback.internalDone(null, new AVException(e));
                }
            } else {
                this.callback.internalDone(new LinkedList(), null);
            }
        }

        public void onFailure(Throwable th, String str) {
            this.callback.internalDone(null, new AVException(th));
        }
    }

    protected AVIMConversationsQuery(AVIMClient aVIMClient) {
        this.client = aVIMClient;
        this.conditions = new AVIMConversationQueryConditions();
    }

    public AVIMConversationsQuery withMembers(List<String> list) {
        return withMembers(list, false);
    }

    public AVIMConversationsQuery withMembers(List<String> list, boolean z) {
        HashSet hashSet = new HashSet(list);
        if (z) {
            hashSet.add(this.client.clientId);
        }
        containsMembers(new LinkedList(hashSet));
        whereSizeEqual("m", hashSet.size());
        return this;
    }

    public AVIMConversationsQuery containsMembers(List<String> list) {
        this.conditions.addWhereItem("m", "$all", list);
        return this;
    }

    public AVIMConversationsQuery whereEqualTo(String str, Object obj) {
        this.conditions.whereEqualTo(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereLessThan(String str, Object obj) {
        this.conditions.whereLessThan(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereLessThanOrEqualsTo(String str, Object obj) {
        this.conditions.whereLessThanOrEqualTo(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereGreaterThan(String str, Object obj) {
        this.conditions.whereGreaterThan(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereGreaterThanOrEqualsTo(String str, Object obj) {
        this.conditions.whereGreaterThanOrEqualTo(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereNotEqualsTo(String str, Object obj) {
        this.conditions.whereNotEqualTo(str, obj);
        return this;
    }

    public AVIMConversationsQuery whereContainsIn(String str, Collection<?> collection) {
        this.conditions.whereContainedIn(str, collection);
        return this;
    }

    public AVIMConversationsQuery whereExists(String str) {
        this.conditions.whereExists(str);
        return this;
    }

    public AVIMConversationsQuery whereDoesNotExist(String str) {
        this.conditions.whereDoesNotExist(str);
        return this;
    }

    public AVIMConversationsQuery whereNotContainsIn(String str, Collection<?> collection) {
        this.conditions.whereNotContainedIn(str, collection);
        return this;
    }

    public AVIMConversationsQuery whereContainsAll(String str, Collection<?> collection) {
        this.conditions.whereContainsAll(str, collection);
        return this;
    }

    public AVIMConversationsQuery whereContains(String str, String str2) {
        this.conditions.whereContains(str, str2);
        return this;
    }

    public AVIMConversationsQuery whereStartsWith(String str, String str2) {
        this.conditions.whereStartsWith(str, str2);
        return this;
    }

    public AVIMConversationsQuery whereEndsWith(String str, String str2) {
        this.conditions.whereEndsWith(str, str2);
        return this;
    }

    public AVIMConversationsQuery whereMatches(String str, String str2) {
        this.conditions.whereMatches(str, str2);
        return this;
    }

    public AVIMConversationsQuery whereMatches(String str, String str2, String str3) {
        this.conditions.whereMatches(str, str2, str3);
        return this;
    }

    public AVIMConversationsQuery whereNear(String str, AVGeoPoint aVGeoPoint) {
        this.conditions.whereNear(str, aVGeoPoint);
        return this;
    }

    public AVIMConversationsQuery whereWithinGeoBox(String str, AVGeoPoint aVGeoPoint, AVGeoPoint aVGeoPoint2) {
        this.conditions.whereWithinGeoBox(str, aVGeoPoint, aVGeoPoint2);
        return this;
    }

    public AVIMConversationsQuery whereWithinKilometers(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinKilometers(str, aVGeoPoint, d);
        return this;
    }

    public AVIMConversationsQuery whereWithinMiles(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinMiles(str, aVGeoPoint, d);
        return this;
    }

    public AVIMConversationsQuery whereWithinRadians(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinRadians(str, aVGeoPoint, d);
        return this;
    }

    public AVIMConversationsQuery setLimit(int i) {
        this.conditions.setLimit(i);
        return this;
    }

    public AVIMConversationsQuery limit(int i) {
        return setLimit(i);
    }

    public AVIMConversationsQuery setSkip(int i) {
        this.conditions.setSkip(i);
        return this;
    }

    public AVIMConversationsQuery skip(int i) {
        return setSkip(i);
    }

    public AVIMConversationsQuery orderByAscending(String str) {
        this.conditions.orderByAscending(str);
        return this;
    }

    public AVIMConversationsQuery orderByDescending(String str) {
        this.conditions.orderByDescending(str);
        return this;
    }

    public AVIMConversationsQuery addAscendingOrder(String str) {
        this.conditions.addAscendingOrder(str);
        return this;
    }

    public AVIMConversationsQuery addDescendingOrder(String str) {
        this.conditions.addDescendingOrder(str);
        return this;
    }

    public AVIMConversationsQuery whereSizeEqual(String str, int i) {
        this.conditions.whereSizeEqual(str, i);
        return this;
    }

    public boolean isWithLastMessagesRefreshed() {
        return this.conditions.isWithLastMessagesRefreshed();
    }

    public AVIMConversationsQuery setWithLastMessagesRefreshed(boolean z) {
        this.conditions.setWithLastMessagesRefreshed(z);
        return this;
    }

    public void findInBackground(AVIMConversationQueryCallback aVIMConversationQueryCallback) {
        String jSONString = JSON.toJSONString((Object) this.conditions.assembleParameters(), (SerializeFilter) ObjectValueFilter.instance, new SerializerFeature[0]);
        switch (this.policy) {
            case CACHE_THEN_NETWORK:
            case CACHE_ELSE_NETWORK:
                AVCacheManager sharedInstance = AVCacheManager.sharedInstance();
                long j = this.maxAge;
                final String str = jSONString;
                AnonymousClass1 r3 = new CacheConversationQueryCallback(this.client, this, aVIMConversationQueryCallback) {
                    public void onFailure(Throwable th, String str) {
                        AVIMConversationsQuery.this.queryFromNetwork(this.callback, str);
                    }
                };
                sharedInstance.get(jSONString, j, null, r3);
                return;
            case NETWORK_ELSE_CACHE:
                if (AVUtils.isConnected(AVOSCloud.applicationContext)) {
                    queryFromNetwork(aVIMConversationQueryCallback, jSONString);
                    return;
                }
                AVCacheManager.sharedInstance().get(jSONString, this.maxAge, null, new CacheConversationQueryCallback(this.client, this, aVIMConversationQueryCallback));
                return;
            case CACHE_ONLY:
                AVCacheManager.sharedInstance().get(jSONString, this.maxAge, null, new CacheConversationQueryCallback(this.client, this, aVIMConversationQueryCallback));
                return;
            case NETWORK_ONLY:
            case IGNORE_CACHE:
                queryFromNetwork(aVIMConversationQueryCallback, jSONString);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void queryFromNetwork(final AVIMConversationQueryCallback aVIMConversationQueryCallback, final String str) {
        AnonymousClass2 r1 = null;
        if (!AVUtils.isConnected(AVOSCloud.applicationContext)) {
            if (aVIMConversationQueryCallback != null) {
                aVIMConversationQueryCallback.internalDone(null, new AVException(100, "Connection lost"));
            }
            return;
        }
        if (aVIMConversationQueryCallback != null) {
            r1 = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    Throwable th;
                    List list;
                    List access$100;
                    try {
                        Serializable serializable = intent.getExtras().getSerializable(Conversation.callbackData);
                        if (serializable instanceof Throwable) {
                            th = (Throwable) serializable;
                            list = null;
                        } else {
                            if (serializable instanceof JSONArray) {
                                access$100 = AVIMConversationsQuery.this.parseQueryResult((JSONArray) serializable);
                                if (!AVUtils.isEmptyList(access$100)) {
                                    AVIMConversationsQuery.this.cacheQueryResult(str, access$100);
                                }
                            } else if (serializable instanceof String) {
                                access$100 = AVIMConversationsQuery.this.parseQueryResult(JSON.parseArray(String.valueOf(serializable)));
                                if (!AVUtils.isEmptyList(access$100)) {
                                    AVIMConversationsQuery.this.cacheQueryResult(str, access$100);
                                }
                            } else {
                                th = null;
                                list = null;
                            }
                            list = access$100;
                            th = null;
                        }
                        if (aVIMConversationQueryCallback != null) {
                            AVIMConversationQueryCallback aVIMConversationQueryCallback = aVIMConversationQueryCallback;
                            if (th != null) {
                                list = null;
                            }
                            aVIMConversationQueryCallback.internalDone(list, th == null ? null : new AVException(th));
                        }
                        LocalBroadcastManager.getInstance(AVOSCloud.applicationContext).unregisterReceiver(this);
                    } catch (Exception e) {
                        AVIMConversationQueryCallback aVIMConversationQueryCallback2 = aVIMConversationQueryCallback;
                        if (aVIMConversationQueryCallback2 != null) {
                            aVIMConversationQueryCallback2.internalDone(null, new AVException(e));
                        }
                    }
                }
            };
        }
        this.client.sendClientCMDToPushService(str, r1, AVIMOperation.CONVERSATION_QUERY);
    }

    /* access modifiers changed from: private */
    public void cacheQueryResult(String str, List<AVIMConversation> list) {
        LinkedList linkedList = new LinkedList();
        AVIMMessageStorage aVIMMessageStorage = null;
        for (AVIMConversation aVIMConversation : list) {
            linkedList.add(aVIMConversation.getConversationId());
            aVIMMessageStorage = aVIMConversation.storage;
        }
        if (aVIMMessageStorage != null) {
            aVIMMessageStorage.insertConversations(list);
        }
        AVCacheManager.sharedInstance().save(str, JSON.toJSONString(linkedList), null);
    }

    /* access modifiers changed from: private */
    public List<AVIMConversation> parseQueryResult(JSONArray jSONArray) {
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < jSONArray.size(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            AVIMConversation parseFromJson = AVIMConversation.parseFromJson(this.client, jSONObject);
            if (parseFromJson != null) {
                AVIMConversation mergeConversationCache = this.client.mergeConversationCache(parseFromJson, false, jSONObject);
                if (mergeConversationCache != null) {
                    linkedList.add(mergeConversationCache);
                }
            }
        }
        return linkedList;
    }

    public void setQueryPolicy(CachePolicy cachePolicy) {
        this.policy = cachePolicy;
    }

    public static AVIMConversationsQuery or(List<AVIMConversationsQuery> list) {
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("Queries cannot be empty");
        }
        AVIMClient aVIMClient = ((AVIMConversationsQuery) list.get(0)).client;
        AVIMConversationsQuery aVIMConversationsQuery = new AVIMConversationsQuery(aVIMClient);
        for (AVIMConversationsQuery aVIMConversationsQuery2 : list) {
            if (aVIMClient.clientId.equals(aVIMConversationsQuery2.client.getClientId())) {
                AVIMConversationQueryConditions aVIMConversationQueryConditions = aVIMConversationsQuery.conditions;
                Map compileWhereOperationMap = aVIMConversationsQuery2.conditions.compileWhereOperationMap();
                String str = QueryOperation.OR_OP;
                aVIMConversationQueryConditions.addOrItems(new QueryOperation(str, str, compileWhereOperationMap));
            } else {
                throw new IllegalArgumentException("All queries must be for the same client");
            }
        }
        return aVIMConversationsQuery;
    }

    public void setCacheMaxAge(long j) {
        this.maxAge = j * 1000;
    }

    public long getCacheMaxAge() {
        return this.maxAge / 1000;
    }
}
