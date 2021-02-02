package com.avos.avoscloud;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.im.v2.AVIMBaseBroadcastReceiver;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class AVLiveQuery {
    static final String ACTION_LIVE_QUERY_LOGIN = "action_live_query_login";
    static final String LIVEQUERY_PRIFIX = "live_query_";
    private static final String OBJECT = "object";
    private static final String OP = "op";
    private static final String QUERY = "query";
    private static final String QUERY_ID = "query_id";
    private static final String SESSION_TOKEN = "sessionToken";
    private static final String SUBSCRIBE_ID = "id";
    private static final String SUBSCRIBE_PATH = "LiveQuery/subscribe";
    private static final String UNSUBSCRIBE_PATH = "LiveQuery/unsubscribe";
    private static final String UPDATE_KEYS = "updatedKeys";
    /* access modifiers changed from: private */
    public static Set<AVLiveQuery> liveQuerySet = Collections.synchronizedSet(new HashSet());
    private static String subscribeId;
    /* access modifiers changed from: private */
    public AVLiveQueryEventHandler eventHandler;
    private AVQuery query;
    /* access modifiers changed from: private */
    public String queryId;

    public enum EventType {
        CREATE("create"),
        UPDATE(ConversationControlOp.UPDATE),
        ENTER("enter"),
        LEAVE("leave"),
        DELETE("delete"),
        LOGIN(Event.LOGIN),
        UNKONWN("unknown");
        
        private String event;

        public static EventType getType(String str) {
            if (CREATE.getContent().equals(str)) {
                return CREATE;
            }
            if (UPDATE.getContent().equals(str)) {
                return UPDATE;
            }
            if (ENTER.getContent().equals(str)) {
                return ENTER;
            }
            if (LEAVE.getContent().equals(str)) {
                return LEAVE;
            }
            if (DELETE.getContent().equals(str)) {
                return DELETE;
            }
            if (LOGIN.getContent().equals(str)) {
                return LOGIN;
            }
            return UNKONWN;
        }

        private EventType(String str) {
            this.event = str;
        }

        public String getContent() {
            return this.event;
        }
    }

    private AVLiveQuery(AVQuery aVQuery) {
        this.query = aVQuery;
    }

    public static AVLiveQuery initWithQuery(AVQuery aVQuery) {
        if (aVQuery != null) {
            return new AVLiveQuery(aVQuery);
        }
        throw new IllegalArgumentException("query cannot be null");
    }

    public void subscribeInBackground(final AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback) {
        Map assembleParameters = this.query.assembleParameters();
        assembleParameters.put(AVUtils.classNameTag, this.query.getClassName());
        HashMap hashMap = new HashMap();
        hashMap.put("query", assembleParameters);
        String sessionToken = getSessionToken();
        if (!AVUtils.isBlankString(sessionToken)) {
            hashMap.put("sessionToken", sessionToken);
        }
        hashMap.put("id", getSubscribeId());
        String jsonStringFromMapWithNull = AVUtils.jsonStringFromMapWithNull(hashMap);
        PaasClient.storageInstance().postObject(SUBSCRIBE_PATH, jsonStringFromMapWithNull, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                JSONObject parseObject = JSONObject.parseObject(str);
                if (parseObject != null) {
                    String str2 = AVLiveQuery.QUERY_ID;
                    if (parseObject.containsKey(str2)) {
                        AVLiveQuery.this.queryId = parseObject.getString(str2);
                        AVLiveQuery.liveQuerySet.add(AVLiveQuery.this);
                        AVLiveQuery.this.loginLiveQuery(aVLiveQuerySubscribeCallback);
                        return;
                    }
                }
                AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback = aVLiveQuerySubscribeCallback;
                if (aVLiveQuerySubscribeCallback != null) {
                    aVLiveQuerySubscribeCallback.internalDone(new AVException(aVException));
                }
            }

            public void onFailure(Throwable th, String str) {
                AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback = aVLiveQuerySubscribeCallback;
                if (aVLiveQuerySubscribeCallback != null) {
                    aVLiveQuerySubscribeCallback.internalDone(new AVException(th));
                }
            }
        });
    }

    public void setEventHandler(AVLiveQueryEventHandler aVLiveQueryEventHandler) {
        if (aVLiveQueryEventHandler != null) {
            this.eventHandler = aVLiveQueryEventHandler;
            return;
        }
        throw new IllegalArgumentException("eventHandler can not be null.");
    }

    /* access modifiers changed from: private */
    public void loginLiveQuery(final AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback) {
        int nextIMRequestId = AVUtils.getNextIMRequestId();
        AnonymousClass2 r1 = new AVIMBaseBroadcastReceiver(null) {
            public void execute(Intent intent, Throwable th) {
                AVException aVException;
                AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback = aVLiveQuerySubscribeCallback;
                if (aVLiveQuerySubscribeCallback != null) {
                    if (th == null) {
                        aVException = null;
                    } else {
                        aVException = new AVException(th);
                    }
                    aVLiveQuerySubscribeCallback.internalDone(aVException);
                }
            }
        };
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(AVOSCloud.applicationContext);
        StringBuilder sb = new StringBuilder();
        sb.append(LIVEQUERY_PRIFIX);
        sb.append(nextIMRequestId);
        instance.registerReceiver(r1, new IntentFilter(sb.toString()));
        Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
        intent.setAction(ACTION_LIVE_QUERY_LOGIN);
        intent.putExtra("id", getSubscribeId());
        intent.putExtra(Conversation.INTENT_KEY_REQUESTID, nextIMRequestId);
        AVOSCloud.applicationContext.startService(IntentUtil.setupIntentFlags(intent));
    }

    public void unsubscribeInBackground(final AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put("id", getSubscribeId());
        hashMap.put(QUERY_ID, this.queryId);
        String jsonStringFromMapWithNull = AVUtils.jsonStringFromMapWithNull(hashMap);
        PaasClient.storageInstance().postObject(UNSUBSCRIBE_PATH, jsonStringFromMapWithNull, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                if (aVException == null) {
                    AVLiveQuery.liveQuerySet.remove(AVLiveQuery.this);
                    AVLiveQuery.this.queryId = "";
                    AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback = aVLiveQuerySubscribeCallback;
                    if (aVLiveQuerySubscribeCallback != null) {
                        aVLiveQuerySubscribeCallback.internalDone(null);
                        return;
                    }
                    return;
                }
                AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback2 = aVLiveQuerySubscribeCallback;
                if (aVLiveQuerySubscribeCallback2 != null) {
                    aVLiveQuerySubscribeCallback2.internalDone(aVException);
                }
            }

            public void onFailure(Throwable th, String str) {
                AVLiveQuerySubscribeCallback aVLiveQuerySubscribeCallback = aVLiveQuerySubscribeCallback;
                if (aVLiveQuerySubscribeCallback != null) {
                    aVLiveQuerySubscribeCallback.internalDone(new AVException(th));
                }
            }
        });
    }

    private String getSubscribeId() {
        if (AVUtils.isBlankString(subscribeId)) {
            String str = "subscribeId";
            String str2 = "livequery_keyzone";
            subscribeId = AVPersistenceUtils.sharedInstance().getPersistentSettingString(str2, str, "");
            if (AVUtils.isBlankString(subscribeId)) {
                String packageName = AVOSCloud.applicationContext.getPackageName();
                String uuid = UUID.randomUUID().toString();
                StringBuilder sb = new StringBuilder();
                sb.append(packageName);
                sb.append(uuid);
                subscribeId = AVUtils.md5(sb.toString());
                AVPersistenceUtils.sharedInstance().savePersistentSettingString(str2, str, subscribeId);
            }
        }
        return subscribeId;
    }

    private String getSessionToken() {
        AVUser currentUser = AVUser.getCurrentUser();
        return currentUser != null ? currentUser.getSessionToken() : "";
    }

    static void processData(ArrayList<String> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final String str = (String) it.next();
            AVOSCloud.handler.post(new Runnable() {
                public void run() {
                    String str = AVLiveQuery.UPDATE_KEYS;
                    try {
                        JSONObject parseObject = JSON.parseObject(str);
                        String string = parseObject.getString(AVLiveQuery.OP);
                        String string2 = parseObject.getString(AVLiveQuery.QUERY_ID);
                        JSONObject jSONObject = parseObject.getJSONObject(AVLiveQuery.OBJECT);
                        if (!AVUtils.isBlankString(string2)) {
                            ArrayList arrayList = new ArrayList();
                            if (parseObject.containsKey(str)) {
                                Iterator it = parseObject.getJSONArray(str).iterator();
                                while (it.hasNext()) {
                                    arrayList.add((String) it.next());
                                }
                            }
                            for (AVLiveQuery aVLiveQuery : AVLiveQuery.liveQuerySet) {
                                if (string2.equals(aVLiveQuery.queryId) && aVLiveQuery.eventHandler != null) {
                                    aVLiveQuery.eventHandler.done(EventType.getType(string), AVUtils.parseObjectFromMap(jSONObject), arrayList);
                                }
                            }
                        }
                    } catch (Exception e) {
                        if (AVOSCloud.isDebugLogEnabled()) {
                            avlog.e("Parsing json data error, ", e);
                        }
                    }
                }
            });
        }
    }
}
