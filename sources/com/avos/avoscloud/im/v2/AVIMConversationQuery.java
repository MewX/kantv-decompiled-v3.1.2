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
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class AVIMConversationQuery {
    private static final long MAX_CONVERSATION_CACHE_TIME = 3600000;
    private AVIMClient client;
    AVIMConversationQueryConditions conditions;
    private long maxAge = MAX_CONVERSATION_CACHE_TIME;
    CachePolicy policy = CachePolicy.CACHE_ELSE_NETWORK;

    static class CacheConversationQueryCallback extends GenericObjectCallback {
        AVIMConversationQueryCallback callback;
        AVIMClient client;

        public CacheConversationQueryCallback(AVIMClient aVIMClient, AVIMConversationQuery aVIMConversationQuery, AVIMConversationQueryCallback aVIMConversationQueryCallback) {
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

    protected AVIMConversationQuery(AVIMClient aVIMClient) {
        this.client = aVIMClient;
        this.conditions = new AVIMConversationQueryConditions();
    }

    public AVIMConversationQuery withMembers(List<String> list) {
        return withMembers(list, false);
    }

    public AVIMConversationQuery withMembers(List<String> list, boolean z) {
        HashSet hashSet = new HashSet(list);
        if (z) {
            hashSet.add(this.client.clientId);
        }
        containsMembers(new LinkedList(hashSet));
        whereSizeEqual("m", hashSet.size());
        return this;
    }

    public AVIMConversationQuery containsMembers(List<String> list) {
        this.conditions.addWhereItem("m", "$all", list);
        return this;
    }

    public AVIMConversationQuery whereEqualTo(String str, Object obj) {
        this.conditions.whereEqualTo(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereLessThan(String str, Object obj) {
        this.conditions.whereLessThan(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereLessThanOrEqualsTo(String str, Object obj) {
        this.conditions.whereLessThanOrEqualTo(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereGreaterThan(String str, Object obj) {
        this.conditions.whereGreaterThan(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereGreaterThanOrEqualsTo(String str, Object obj) {
        this.conditions.whereGreaterThanOrEqualTo(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereNotEqualsTo(String str, Object obj) {
        this.conditions.whereNotEqualTo(getColumnKey(str), obj);
        return this;
    }

    public AVIMConversationQuery whereContainsIn(String str, Collection<?> collection) {
        this.conditions.whereContainedIn(getColumnKey(str), collection);
        return this;
    }

    public AVIMConversationQuery whereExists(String str) {
        this.conditions.whereExists(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery whereDoesNotExist(String str) {
        this.conditions.whereDoesNotExist(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery whereNotContainsIn(String str, Collection<?> collection) {
        this.conditions.whereNotContainedIn(getColumnKey(str), collection);
        return this;
    }

    public AVIMConversationQuery whereContainsAll(String str, Collection<?> collection) {
        this.conditions.whereContainsAll(getColumnKey(str), collection);
        return this;
    }

    public AVIMConversationQuery whereContains(String str, String str2) {
        this.conditions.whereContains(getColumnKey(str), str2);
        return this;
    }

    public AVIMConversationQuery whereStartsWith(String str, String str2) {
        this.conditions.whereStartsWith(getColumnKey(str), str2);
        return this;
    }

    public AVIMConversationQuery whereEndsWith(String str, String str2) {
        this.conditions.whereEndsWith(getColumnKey(str), str2);
        return this;
    }

    public AVIMConversationQuery whereMatches(String str, String str2) {
        this.conditions.whereMatches(getColumnKey(str), str2);
        return this;
    }

    public AVIMConversationQuery whereMatches(String str, String str2, String str3) {
        this.conditions.whereMatches(getColumnKey(str), str2, str3);
        return this;
    }

    public AVIMConversationQuery whereNear(String str, AVGeoPoint aVGeoPoint) {
        this.conditions.whereNear(getColumnKey(str), aVGeoPoint);
        return this;
    }

    public AVIMConversationQuery whereWithinGeoBox(String str, AVGeoPoint aVGeoPoint, AVGeoPoint aVGeoPoint2) {
        this.conditions.whereWithinGeoBox(getColumnKey(str), aVGeoPoint, aVGeoPoint2);
        return this;
    }

    public AVIMConversationQuery whereWithinKilometers(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinKilometers(getColumnKey(str), aVGeoPoint, d);
        return this;
    }

    public AVIMConversationQuery whereWithinMiles(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinMiles(getColumnKey(str), aVGeoPoint, d);
        return this;
    }

    public AVIMConversationQuery whereWithinRadians(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinRadians(getColumnKey(str), aVGeoPoint, d);
        return this;
    }

    public AVIMConversationQuery setLimit(int i) {
        this.conditions.setLimit(i);
        return this;
    }

    public AVIMConversationQuery limit(int i) {
        return setLimit(i);
    }

    public AVIMConversationQuery setSkip(int i) {
        this.conditions.setSkip(i);
        return this;
    }

    public AVIMConversationQuery skip(int i) {
        return setSkip(i);
    }

    public AVIMConversationQuery orderByAscending(String str) {
        this.conditions.orderByAscending(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery orderByDescending(String str) {
        this.conditions.orderByDescending(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery addAscendingOrder(String str) {
        this.conditions.addAscendingOrder(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery addDescendingOrder(String str) {
        this.conditions.addDescendingOrder(getColumnKey(str));
        return this;
    }

    public AVIMConversationQuery whereSizeEqual(String str, int i) {
        this.conditions.whereSizeEqual(getColumnKey(str), i);
        return this;
    }

    public boolean isWithLastMessagesRefreshed() {
        return this.conditions.isWithLastMessagesRefreshed();
    }

    public AVIMConversationQuery setWithLastMessagesRefreshed(boolean z) {
        this.conditions.setWithLastMessagesRefreshed(z);
        return this;
    }

    public AVIMConversationQuery setCompact(boolean z) {
        this.conditions.setCompact(z);
        return this;
    }

    private String getAttributeKey(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("attr.");
        sb.append(str);
        return sb.toString();
    }

    private String getColumnKey(String str) {
        if (!Arrays.asList(Conversation.CONVERSATION_COLUMNS).contains(str) && !str.startsWith("attr.")) {
            return getAttributeKey(str);
        }
        return str;
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
                        AVIMConversationQuery.this.queryFromNetwork(this.callback, str);
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
                                access$100 = AVIMConversationQuery.this.parseQueryResult((JSONArray) serializable);
                                if (!AVUtils.isEmptyList(access$100)) {
                                    AVIMConversationQuery.this.cacheQueryResult(str, access$100);
                                }
                            } else if (serializable instanceof String) {
                                access$100 = AVIMConversationQuery.this.parseQueryResult(JSON.parseArray(String.valueOf(serializable)));
                                if (!AVUtils.isEmptyList(access$100)) {
                                    AVIMConversationQuery.this.cacheQueryResult(str, access$100);
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

    public static AVIMConversationQuery or(List<AVIMConversationQuery> list) {
        if (list.size() > 1) {
            AVIMClient aVIMClient = ((AVIMConversationQuery) list.get(0)).client;
            AVIMConversationQuery aVIMConversationQuery = new AVIMConversationQuery(aVIMClient);
            if (list.size() > 1) {
                for (AVIMConversationQuery aVIMConversationQuery2 : list) {
                    if (aVIMClient.clientId.equals(aVIMConversationQuery2.client.getClientId())) {
                        AVIMConversationQueryConditions aVIMConversationQueryConditions = aVIMConversationQuery.conditions;
                        Map compileWhereOperationMap = aVIMConversationQuery2.conditions.compileWhereOperationMap();
                        String str = QueryOperation.OR_OP;
                        aVIMConversationQueryConditions.addOrItems(new QueryOperation(str, str, compileWhereOperationMap));
                    } else {
                        throw new IllegalArgumentException("All queries must be for the same client");
                    }
                }
            } else {
                aVIMConversationQuery.conditions.setWhere(((AVIMConversationQuery) list.get(0)).conditions.getWhere());
            }
            return aVIMConversationQuery;
        }
        throw new IllegalArgumentException("Queries length should be l");
    }

    public void setCacheMaxAge(long j) {
        this.maxAge = j * 1000;
    }

    public long getCacheMaxAge() {
        return this.maxAge / 1000;
    }
}
