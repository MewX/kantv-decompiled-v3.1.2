package com.avos.avospush.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVHttpClient;
import com.avos.avoscloud.AVInstallation;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.AppRouterManager;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.GetHttpResponseHandler;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.im.v2.Conversation;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.Request.Builder;

public class AVPushRouter {
    private static final String EXPIRE_AT = "expireAt";
    private static final String PUSH_SERVER_CACHE_KEY_FMT = "com.avos.push.router.server.cache%s";
    private static String ROUTER_QUERY_SRTING = "/v1/route?appId=%s&installationId=%s&secure=1";
    private static final int ROUTER_REQUEST_TIME_OUT = 5000;
    private static final String SECONDARY = "secondary";
    public static final String SERVER = "server";
    private final Context context;
    private final String installationId;
    /* access modifiers changed from: private */
    public volatile boolean isPrimarySever = true;
    /* access modifiers changed from: private */
    public volatile boolean isRequesting = false;
    /* access modifiers changed from: private */
    public RouterResponseListener listener;
    private AVHttpClient routerHttpClient;
    /* access modifiers changed from: private */
    public AtomicInteger socketLostNum = new AtomicInteger(0);
    /* access modifiers changed from: private */
    public int ttlInSecs = -1;

    public interface RouterResponseListener {
        void onServerAddress(String str);
    }

    public AVPushRouter(Context context2, RouterResponseListener routerResponseListener) {
        this.context = context2;
        this.listener = routerResponseListener;
        this.installationId = AVInstallation.getCurrentInstallation(context2).getInstallationId();
    }

    private String getRouterUrl() {
        StringBuilder sb = new StringBuilder();
        sb.append(AppRouterManager.getInstance().getRtmRouterServer());
        sb.append(ROUTER_QUERY_SRTING);
        return String.format(sb.toString(), new Object[]{AVOSCloud.applicationId, this.installationId});
    }

    private synchronized AVHttpClient getRouterHttpClient() {
        if (this.routerHttpClient == null) {
            this.routerHttpClient = AVHttpClient.newClientInstance(5000);
        }
        return this.routerHttpClient;
    }

    public void processSocketConnectionResult(AVException aVException) {
        if (aVException == null) {
            this.socketLostNum.set(0);
            return;
        }
        String message = aVException.getMessage();
        if (!AVUtils.isConnected(this.context)) {
            return;
        }
        if (AVUtils.isBlankContent(message) || !message.contains("Permission")) {
            this.socketLostNum.incrementAndGet();
            if (this.socketLostNum.get() > 1) {
                this.isPrimarySever = false;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x007f, code lost:
        if (com.avos.avoscloud.AVUtils.isBlankContent(r0) == false) goto L_0x0083;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void fetchPushServer() {
        /*
            r7 = this;
            java.lang.String r0 = com.avos.avoscloud.AVOSCloud.applicationId
            boolean r0 = com.avos.avoscloud.AVUtils.isBlankString(r0)
            if (r0 == 0) goto L_0x000e
            java.lang.String r0 = "Please initialize Application first"
            com.avos.avoscloud.LogUtil.avlog.e(r0)
            return
        L_0x000e:
            com.avos.avoscloud.im.v2.AVIMOptions r0 = com.avos.avoscloud.im.v2.AVIMOptions.getGlobalOptions()
            java.lang.String r0 = r0.getRTMServer()
            boolean r1 = com.avos.avoscloud.AVUtils.isBlankString(r0)
            if (r1 != 0) goto L_0x0023
            com.avos.avospush.push.AVPushRouter$RouterResponseListener r1 = r7.listener
            r1.onServerAddress(r0)
            goto L_0x00a6
        L_0x0023:
            android.content.Context r0 = r7.context
            boolean r0 = com.avos.avoscloud.AVUtils.isConnected(r0)
            java.lang.String r1 = "server"
            if (r0 != 0) goto L_0x0046
            java.util.HashMap r0 = r7.getPushServerFromCache()
            if (r0 == 0) goto L_0x003f
            com.avos.avospush.push.AVPushRouter$RouterResponseListener r2 = r7.listener
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r2.onServerAddress(r0)
            goto L_0x00a6
        L_0x003f:
            com.avos.avospush.push.AVPushRouter$RouterResponseListener r0 = r7.listener
            r1 = 0
            r0.onServerAddress(r1)
            goto L_0x00a6
        L_0x0046:
            java.util.HashMap r0 = r7.getPushServerFromCache()
            if (r0 == 0) goto L_0x00a3
            java.lang.String r2 = "expireAt"
            java.lang.Object r2 = r0.get(r2)
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            long r4 = java.lang.System.currentTimeMillis()
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L_0x00a3
            java.util.concurrent.atomic.AtomicInteger r2 = r7.socketLostNum
            int r2 = r2.get()
            r3 = 3
            if (r2 > r3) goto L_0x00a3
            java.lang.Object r1 = r0.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            boolean r2 = r7.isPrimarySever
            if (r2 != 0) goto L_0x0082
            java.lang.String r2 = "secondary"
            java.lang.Object r0 = r0.get(r2)
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = com.avos.avoscloud.AVUtils.isBlankContent(r0)
            if (r2 != 0) goto L_0x0082
            goto L_0x0083
        L_0x0082:
            r0 = r1
        L_0x0083:
            com.avos.avospush.push.AVPushRouter$RouterResponseListener r1 = r7.listener
            r1.onServerAddress(r0)
            boolean r1 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()
            if (r1 == 0) goto L_0x00a6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "get push server from cache:"
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            com.avos.avoscloud.LogUtil.avlog.d(r0)
            goto L_0x00a6
        L_0x00a3:
            r7.fetchPushServerFromServer()
        L_0x00a6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avospush.push.AVPushRouter.fetchPushServer():void");
    }

    private void fetchPushServerFromServer() {
        if (!this.isRequesting) {
            this.isRequesting = true;
            String routerUrl = getRouterUrl();
            if (AVOSCloud.showInternalDebugLog()) {
                StringBuilder sb = new StringBuilder();
                sb.append("try to fetch push server from :");
                sb.append(routerUrl);
                avlog.d(sb.toString());
            }
            AnonymousClass1 r1 = new GenericObjectCallback() {
                public boolean isRequestStatisticNeed() {
                    return false;
                }

                public void onSuccess(String str, AVException aVException) {
                    String str2 = "groupUrl";
                    String str3 = AVPushRouter.SECONDARY;
                    String str4 = AVPushRouter.SERVER;
                    if (aVException == null) {
                        try {
                            AVPushRouter.this.socketLostNum.set(0);
                            HashMap hashMap = (HashMap) JSON.parseObject(str, HashMap.class);
                            AVPushRouter.this.ttlInSecs = ((Integer) hashMap.get(Conversation.TEMPORARYTTL)).intValue();
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put(str4, hashMap.get(str4));
                            hashMap2.put(AVPushRouter.EXPIRE_AT, Long.valueOf((((long) AVPushRouter.this.ttlInSecs) * 1000) + System.currentTimeMillis()));
                            hashMap2.put(str3, hashMap.get(str3));
                            if (hashMap.containsKey(str2)) {
                                AppRouterManager.getInstance().updateRtmRouterServer((String) hashMap.get(str2), true);
                            }
                            AVPushRouter.this.cachePushServer(hashMap2);
                            AVPushRouter.this.listener.onServerAddress((String) hashMap2.get(str4));
                            AVPushRouter.this.isPrimarySever = true;
                        } catch (Exception e) {
                            onFailure(e, str);
                        }
                    }
                    AVPushRouter.this.isRequesting = false;
                }

                public void onFailure(Throwable th, String str) {
                    if (AVOSCloud.showInternalDebugLog()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("failed to fetch push server:");
                        sb.append(th);
                        avlog.d(sb.toString());
                    }
                    AVPushRouter.this.listener.onServerAddress(null);
                    AVPushRouter.this.isRequesting = false;
                }
            };
            Builder builder = new Builder();
            builder.url(routerUrl).get();
            if (AVOSCloud.isDebugLogEnabled()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("get router url: ");
                sb2.append(routerUrl);
                avlog.d(sb2.toString());
            }
            getRouterHttpClient().execute(builder.build(), false, new GetHttpResponseHandler(r1));
        }
    }

    private HashMap<String, Object> getPushServerFromCache() {
        HashMap<String, Object> hashMap = new HashMap<>();
        SharedPreferences sharedPreferences = this.context.getSharedPreferences(String.format(PUSH_SERVER_CACHE_KEY_FMT, new Object[]{AVOSCloud.applicationId}), 0);
        String str = SERVER;
        hashMap.put(str, sharedPreferences.getString(str, null));
        String str2 = EXPIRE_AT;
        hashMap.put(str2, Long.valueOf(sharedPreferences.getLong(str2, 0)));
        String str3 = SECONDARY;
        hashMap.put(str3, sharedPreferences.getString(str3, null));
        return hashMap;
    }

    /* access modifiers changed from: private */
    public void cachePushServer(HashMap<String, Object> hashMap) {
        Editor edit = this.context.getSharedPreferences(String.format(PUSH_SERVER_CACHE_KEY_FMT, new Object[]{AVOSCloud.applicationId}), 0).edit();
        String str = SERVER;
        edit.putString(str, (String) hashMap.get(str));
        String str2 = EXPIRE_AT;
        edit.putLong(str2, ((Long) hashMap.get(str2)).longValue());
        String str3 = SECONDARY;
        edit.putString(str3, (String) hashMap.get(str3));
        edit.commit();
    }
}
