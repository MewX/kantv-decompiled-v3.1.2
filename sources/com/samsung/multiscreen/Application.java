package com.samsung.multiscreen;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.WebSocket;
import com.samsung.multiscreen.Channel.OnConnectListener;
import com.samsung.multiscreen.Channel.OnReadyListener;
import com.samsung.multiscreen.util.HttpUtil;
import com.samsung.multiscreen.util.HttpUtil.ResultCreator;
import com.samsung.multiscreen.util.JSONUtil;
import com.samsung.multiscreen.util.RunUtil;
import java.util.HashMap;
import java.util.Map;

public class Application extends Channel {
    public static final String PROPERTY_VALUE_LIBRARY = "Android SDK";
    public static final String ROUTE_APPLICATION = "applications";
    public static final String ROUTE_WEBAPPLICATION = "webapplication";
    private static final String TAG = "Application";
    /* access modifiers changed from: private */
    public Boolean isHostDisconnected = Boolean.valueOf(false);
    /* access modifiers changed from: private */
    public boolean isStopping = false;
    /* access modifiers changed from: private */
    public OnConnectListener onConnectListener;
    private final Map<String, Object> startArgs;
    private final boolean webapp;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Application(super=");
        sb.append(super.toString());
        sb.append(", onConnectListener=");
        sb.append(this.onConnectListener);
        sb.append(", isStopping=");
        sb.append(this.isStopping);
        sb.append(", isHostDisconnected=");
        sb.append(this.isHostDisconnected);
        sb.append(", webapp=");
        sb.append(isWebapp());
        sb.append(", startArgs=");
        sb.append(getStartArgs());
        sb.append(")");
        return sb.toString();
    }

    public void setOnConnectListener(OnConnectListener onConnectListener2) {
        this.onConnectListener = onConnectListener2;
    }

    public boolean isWebapp() {
        return this.webapp;
    }

    private Application(Service service, Uri uri, String str, Map<String, Object> map) {
        super(service, uri, str);
        boolean z = !TextUtils.isEmpty(uri.getScheme());
        if (str.equals("samsung.default.media.player")) {
            z = true;
        }
        this.webapp = z;
        this.startArgs = map;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> getStartArgs() {
        return this.startArgs;
    }

    public boolean isConnected() {
        return super.isConnected() && this.connected && !this.isHostDisconnected.booleanValue();
    }

    public void getInfo(Result<ApplicationInfo> result) {
        Builder buildUpon = getService().getUri().buildUpon();
        if (this.webapp) {
            buildUpon.appendPath(ROUTE_WEBAPPLICATION);
        } else {
            buildUpon.appendPath(ROUTE_APPLICATION).appendPath(getUri().toString());
        }
        buildUpon.appendPath("");
        Uri build = buildUpon.build();
        if (this.securityMode) {
            build = super.getSecureURL(build);
        }
        HttpUtil.executeJSONRequest(build, "GET", HttpHelper.createHttpCallback(new ResultCreator<ApplicationInfo>() {
            public ApplicationInfo createResult(Map<String, Object> map) {
                return ApplicationInfo.create(map);
            }
        }, result));
    }

    public void start(Result<Boolean> result) {
        Map params = getParams();
        params.put("os", VERSION.RELEASE);
        params.put("library", PROPERTY_VALUE_LIBRARY);
        params.put("version", "2.5.1");
        params.put("modelNumber", Build.MODEL);
        Map<String, Object> map = this.startArgs;
        if (map != null) {
            params.put("data", map);
        }
        invokeMethod(this.webapp ? "ms.webapplication.start" : "ms.application.start", params, result);
    }

    public void stop(Result<Boolean> result) {
        invokeMethod(this.webapp ? "ms.webapplication.stop" : "ms.application.stop", getParams(), result);
    }

    public void install(Result<Boolean> result) {
        if (this.webapp) {
            String uid = getUID();
            registerCallback(uid, result);
            handleError(uid, Error.create("Unsupported method"));
            return;
        }
        Uri build = getService().getUri().buildUpon().appendPath(ROUTE_APPLICATION).appendPath(getUri().toString()).appendPath("").build();
        if (this.securityMode) {
            build = super.getSecureURL(build);
        }
        HttpUtil.executeJSONRequest(build, "PUT", HttpHelper.createHttpCallback(new ResultCreator<Boolean>() {
            public Boolean createResult(Map<String, Object> map) {
                return Boolean.TRUE;
            }
        }, result));
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> getParams() {
        String uri = getUri().toString();
        String str = this.webapp ? "url" : "id";
        HashMap hashMap = new HashMap();
        hashMap.put(str, uri);
        return hashMap;
    }

    /* access modifiers changed from: 0000 */
    public void connectToPlay(Map<String, String> map, Result<Client> result) {
        super.connect(map, result);
    }

    public void connect(Map<String, String> map, final Result<Client> result) {
        super.connect(map, new Result<Client>() {
            public void onSuccess(final Client client) {
                Application.this.start(new Result<Boolean>() {
                    public void onSuccess(Boolean bool) {
                        if (result != null) {
                            result.onSuccess(client);
                        }
                        Application.this.isHostDisconnected = Boolean.valueOf(false);
                    }

                    public void onError(Error error) {
                        Application.this.closeConnection();
                        if (result != null) {
                            result.onError(error);
                        }
                    }
                });
            }

            public void onError(Error error) {
                Result result = result;
                if (result != null) {
                    result.onError(error);
                }
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void closeConnection() {
        WebSocket webSocket = getWebSocket();
        if (webSocket != null && webSocket.isOpen()) {
            webSocket.setClosedCallback(new CompletedCallback() {
                public void onCompleted(Exception exc) {
                    Application.this.handleSocketClosed();
                }
            });
            webSocket.close();
        }
    }

    public void disconnect() {
        disconnect(true, null);
    }

    public void disconnect(Result<Client> result) {
        disconnect(true, result);
    }

    public void disconnect(boolean z, final Result<Client> result) {
        if (z) {
            Clients clients = getClients();
            int size = clients.size();
            final Client me = clients.me();
            if (!(size != 2 || clients.getHost() == null || me == null) || ((size == 1 && me != null) || size == 0)) {
                stop(new Result<Boolean>() {
                    public void onSuccess(Boolean bool) {
                        Application.this.isStopping = false;
                        synchronized (Application.this.isHostDisconnected) {
                            if (Application.this.isHostDisconnected.booleanValue()) {
                                Application.this.realDisconnect(result);
                            } else if (result != null) {
                                result.onSuccess(me);
                            }
                        }
                    }

                    public void onError(Error error) {
                        Application.this.isStopping = false;
                        Result result = result;
                        if (result != null) {
                            result.onError(error);
                        }
                    }
                });
                this.isStopping = true;
                return;
            }
        }
        realDisconnect(result);
    }

    /* access modifiers changed from: private */
    public void realDisconnect(Result<Client> result) {
        super.disconnect(result);
    }

    /* access modifiers changed from: 0000 */
    public void invokeMethod(String str, Map<String, Object> map, Result result) {
        String uid = getUID();
        registerCallback(uid, result);
        invokeMethod(str, map, uid, result);
    }

    private void invokeMethod(String str, Map<String, Object> map, String str2, Result result) {
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("method: ");
            sb.append(str);
            sb.append(", params: ");
            sb.append(map);
            Log.d(TAG, sb.toString());
        }
        if (!super.isConnected()) {
            handleError(str2, Error.create("Not connected"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Param.METHOD, str);
        hashMap.put("id", str2);
        hashMap.put("params", map);
        getWebSocket().send(JSONUtil.toJSONString(hashMap));
    }

    /* access modifiers changed from: protected */
    public void handleMessage(String str, Map<String, Object> map, byte[] bArr) {
        if (((String) map.get("event")) != null) {
            super.handleMessage(str, map, bArr);
        } else {
            handleApplicationMessage(map);
        }
    }

    private void handleApplicationMessage(Map<String, Object> map) {
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("message: ");
            sb.append(map.toString());
            Log.d(TAG, sb.toString());
        }
        Map map2 = (Map) map.get("error");
        try {
            Result callback = getCallback((String) map.get("id"));
            if (callback != null) {
                doApplicationCallback(callback, map);
            }
        } catch (Exception unused) {
        }
    }

    private void doApplicationCallback(final Result<Object> result, Map<String, Object> map) {
        final Object obj = map.get(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT);
        final Map map2 = (Map) map.get("error");
        RunUtil.runOnUI(new Runnable() {
            public void run() {
                long longValue;
                Map map = map2;
                if (map != null) {
                    long j = -1;
                    try {
                        Object obj = map.get("code");
                        if (obj instanceof String) {
                            longValue = Long.parseLong((String) obj);
                        } else if (obj instanceof Integer) {
                            longValue = (long) ((Integer) obj).intValue();
                        } else {
                            if (obj instanceof Long) {
                                longValue = ((Long) obj).longValue();
                            }
                            result.onError(Error.create(j, map2));
                            return;
                        }
                        j = longValue;
                    } catch (Exception unused) {
                    }
                    result.onError(Error.create(j, map2));
                    return;
                }
                Object obj2 = obj;
                if (obj2 instanceof Map) {
                    try {
                        result.onSuccess(ApplicationInfo.create((Map) obj2));
                    } catch (NullPointerException unused2) {
                        Result result = result;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unexpected response: ");
                        sb.append(obj.toString());
                        result.onError(Error.create(sb.toString()));
                    }
                } else {
                    result.onSuccess(obj2);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void handleClientDisconnectMessage(Map<String, Object> map) {
        Client client;
        Map map2 = (Map) map.get("data");
        if (map2 != null) {
            client = getClients().get((String) map2.get("id"));
        } else {
            client = null;
        }
        super.handleClientDisconnectMessage(map);
        if (client != null && client.isHost()) {
            synchronized (this.isHostDisconnected) {
                this.isHostDisconnected = Boolean.valueOf(true);
            }
        }
        if (!this.isStopping && client != null && client.isHost()) {
            realDisconnect(null);
        }
    }

    /* access modifiers changed from: protected */
    public void handleReadyMessage(Map<String, Object> map) {
        if (this.onConnectListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    Application.this.onConnectListener.onConnect(Application.this.getClients().me());
                }
            });
        }
        final OnReadyListener onReadyListener = getOnReadyListener();
        if (onReadyListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    onReadyListener.onReady();
                }
            });
        }
    }

    static Application create(Service service, Uri uri) {
        if (service == null || uri == null) {
            throw new NullPointerException();
        }
        String uri2 = uri.toString();
        if (!TextUtils.isEmpty(uri.getScheme())) {
            uri2 = uri.getHost();
        }
        return new Application(service, uri, uri2, null);
    }

    static Application create(Service service, Uri uri, String str, Map<String, Object> map) {
        if (service != null && uri != null && str != null) {
            return new Application(service, uri, str, map);
        }
        throw new NullPointerException();
    }
}
