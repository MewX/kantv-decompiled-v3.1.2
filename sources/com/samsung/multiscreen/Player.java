package com.samsung.multiscreen;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.samsung.multiscreen.Channel.OnClientConnectListener;
import com.samsung.multiscreen.Channel.OnClientDisconnectListener;
import com.samsung.multiscreen.Channel.OnConnectListener;
import com.samsung.multiscreen.Channel.OnDisconnectListener;
import com.samsung.multiscreen.Channel.OnErrorListener;
import com.samsung.multiscreen.Channel.OnReadyListener;
import com.samsung.multiscreen.util.HttpUtil;
import com.samsung.multiscreen.util.HttpUtil.ResultCreator;
import com.tencent.open.SocialConstants;
import java.util.Map;
import org.json.JSONObject;

public class Player {
    private static final String APP_ID = "3201412000694";
    static final String CONTENT_URI = "uri";
    private static final String DEFAULT_MEDIA_PLAYER = "samsung.default.media.player";
    static final String PLAYER_APP_STATUS_EVENT = "appStatus";
    private static final String PLAYER_BGIMAGE1 = "url1";
    private static final String PLAYER_BGIMAGE2 = "url2";
    private static final String PLAYER_BGIMAGE3 = "url3";
    static final String PLAYER_CHANGE_SUB_EVENT = "playerChange";
    static final String PLAYER_CONTENT_CHANGE_EVENT = "playerContentChange";
    static final String PLAYER_CONTROL_EVENT = "playerControl";
    static final String PLAYER_CURRENT_PLAYING_EVENT = "currentPlaying";
    static final String PLAYER_DATA = "data";
    static final String PLAYER_ERROR_MESSAGE_EVENT = "error";
    static final String PLAYER_NOTICE_RESPONSE_EVENT = "playerNotice";
    static final String PLAYER_QUEUE_EVENT = "playerQueueEvent";
    static final String PLAYER_READY_SUB_EVENT = "playerReady";
    static final String PLAYER_SUB_EVENT = "subEvent";
    static final String PLAYER_TYPE = "playerType";
    private static final String PROPERTY_APP_VISIBLE = "visible";
    private static final String PROPERTY_DMP_RUNNING = "media_player";
    private static final String PROPERTY_ISCONTENTS = "isContents";
    private static final String PROPERTY_RUNNING = "running";
    private static final String TAG = "Player";
    static Application mApplication;

    /* renamed from: debug reason: collision with root package name */
    private boolean f5debug = false;
    JSONObject mAdditionalData = null;
    /* access modifiers changed from: private */
    public String mAppName;
    /* access modifiers changed from: private */
    public ContentType mContentType = null;

    enum ContentType {
        audio,
        video,
        photo,
        bgImage,
        logo
    }

    class DMPStatus {
        String mAppName;
        Boolean mDMPRunning;
        Boolean mRunning;
        Boolean mVisible;

        DMPStatus() {
            Boolean valueOf = Boolean.valueOf(false);
            this.mVisible = valueOf;
            this.mDMPRunning = valueOf;
            this.mRunning = valueOf;
            this.mAppName = null;
        }

        DMPStatus(Boolean bool, Boolean bool2, Boolean bool3, String str) {
            this.mVisible = bool;
            this.mRunning = bool3;
            this.mDMPRunning = bool2;
            this.mAppName = str;
        }
    }

    enum PlayerApplicationStatusEvents {
        suspend,
        resume
    }

    enum PlayerContentSubEvents {
        ADDITIONALMEDIAINFO,
        CHANGEPLAYINGCONTENT
    }

    enum PlayerControlEvents {
        play,
        pause,
        stop,
        mute,
        unMute,
        setVolume,
        getControlStatus,
        getVolume,
        volumeUp,
        volumeDown,
        previous,
        next,
        FF,
        RWD,
        seekTo,
        repeat,
        setRepeat,
        shuffle,
        setShuffle,
        playMusic,
        stopMusic
    }

    enum PlayerControlStatus {
        volume,
        mute,
        repeat,
        shuffle
    }

    private enum PlayerMiscEvents {
        setWatermark,
        unsetWatermark
    }

    enum PlayerQueueSubEvents {
        enqueue,
        dequeue,
        clear,
        fetch
    }

    public enum RepeatMode {
        repeatOff,
        repeatSingle,
        repeatAll
    }

    public void setDebug(boolean z) {
        this.f5debug = z;
    }

    public boolean isDebug() {
        return this.f5debug;
    }

    Player(Service service, Uri uri, String str) {
        this.mAppName = str;
        mApplication = service.createApplication(uri, DEFAULT_MEDIA_PLAYER);
        if (isDebug()) {
            Log.d(TAG, "Player Created");
        }
    }

    private void connect() {
        connect(null);
    }

    private void connect(Result<Client> result) {
        connect(null, result);
    }

    private void connect(Map<String, String> map, Result<Client> result) {
        mApplication.connectToPlay(map, result);
    }

    public void disconnect() {
        disconnect(true, null);
    }

    public void disconnect(Result<Client> result) {
        disconnect(true, result);
    }

    public void disconnect(boolean z, Result<Client> result) {
        mApplication.disconnect(z, result);
    }

    public boolean isConnected() {
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Player Connection Status : ");
            sb.append(mApplication.isConnected());
            Log.d(TAG, sb.toString());
        }
        return mApplication.isConnected();
    }

    public void setOnConnectListener(OnConnectListener onConnectListener) {
        mApplication.setOnConnectListener(onConnectListener);
    }

    public void setOnDisconnectListener(OnDisconnectListener onDisconnectListener) {
        mApplication.setOnDisconnectListener(onDisconnectListener);
    }

    public void setOnClientConnectListener(OnClientConnectListener onClientConnectListener) {
        mApplication.setOnClientConnectListener(onClientConnectListener);
    }

    public void setOnClientDisconnectListener(OnClientDisconnectListener onClientDisconnectListener) {
        mApplication.setOnClientDisconnectListener(onClientDisconnectListener);
    }

    public void setOnReadyListener(OnReadyListener onReadyListener) {
        mApplication.setOnReadyListener(onReadyListener);
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        mApplication.setOnErrorListener(onErrorListener);
    }

    /* access modifiers changed from: 0000 */
    public final void getDMPStatus(Result<DMPStatus> result) {
        Builder buildUpon = mApplication.getService().getUri().buildUpon();
        buildUpon.appendPath(Application.ROUTE_WEBAPPLICATION);
        buildUpon.appendPath("");
        HttpUtil.executeJSONRequest(buildUpon.build(), "GET", HttpHelper.createHttpCallback(new ResultCreator<DMPStatus>() {
            public DMPStatus createResult(Map<String, Object> map) {
                DMPStatus dMPStatus = new DMPStatus();
                if (map != null) {
                    String str = (String) map.get("id");
                    String str2 = "appName";
                    if (map.containsKey(str2)) {
                        dMPStatus.mAppName = (String) map.get(str2);
                    }
                    String str3 = Player.PROPERTY_APP_VISIBLE;
                    if (map.containsKey(str3)) {
                        dMPStatus.mVisible = (Boolean) map.get(str3);
                    }
                    String str4 = Player.PROPERTY_DMP_RUNNING;
                    if (map.containsKey(str4)) {
                        dMPStatus.mDMPRunning = (Boolean) map.get(str4);
                    }
                    String str5 = Player.PROPERTY_RUNNING;
                    if (map.containsKey(str5)) {
                        dMPStatus.mRunning = (Boolean) map.get(str5);
                    }
                    if (str != null && str.contains(Player.APP_ID)) {
                        return dMPStatus;
                    }
                }
                return null;
            }
        }, result));
    }

    public final void standbyConnect(Result<Boolean> result) {
        standbyConnect(null, null, null, result);
    }

    public final void standbyConnect(Uri uri, Result<Boolean> result) {
        standbyConnect(uri, null, null, result);
    }

    public final void standbyConnect(Uri uri, Uri uri2, Result<Boolean> result) {
        standbyConnect(uri, uri2, null, result);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0095  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void standbyConnect(android.net.Uri r4, android.net.Uri r5, android.net.Uri r6, final com.samsung.multiscreen.Result<java.lang.Boolean> r7) {
        /*
            r3 = this;
            boolean r0 = r3.isDebug()
            if (r0 == 0) goto L_0x0020
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "sendStandbyScreenRequest: Is Connected Status : "
            r0.append(r1)
            boolean r1 = r3.isConnected()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "MediaPlayer"
            android.util.Log.d(r1, r0)
        L_0x0020:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r1 = "url1"
            if (r4 == 0) goto L_0x005d
            java.lang.String r2 = r4.toString()     // Catch:{ Exception -> 0x0067 }
            int r2 = r2.length()     // Catch:{ Exception -> 0x0067 }
            if (r2 <= 0) goto L_0x005d
            com.samsung.multiscreen.Player$ContentType r2 = com.samsung.multiscreen.Player.ContentType.bgImage     // Catch:{ Exception -> 0x0067 }
            r3.mContentType = r2     // Catch:{ Exception -> 0x0067 }
            r0.put(r1, r4)     // Catch:{ Exception -> 0x0067 }
            if (r5 == 0) goto L_0x004b
            java.lang.String r4 = r5.toString()     // Catch:{ Exception -> 0x0067 }
            int r4 = r4.length()     // Catch:{ Exception -> 0x0067 }
            if (r4 <= 0) goto L_0x004b
            java.lang.String r4 = "url2"
            r0.put(r4, r5)     // Catch:{ Exception -> 0x0067 }
        L_0x004b:
            if (r6 == 0) goto L_0x0082
            java.lang.String r4 = r6.toString()     // Catch:{ Exception -> 0x0067 }
            int r4 = r4.length()     // Catch:{ Exception -> 0x0067 }
            if (r4 <= 0) goto L_0x0082
            java.lang.String r4 = "url3"
            r0.put(r4, r6)     // Catch:{ Exception -> 0x0067 }
            goto L_0x0082
        L_0x005d:
            com.samsung.multiscreen.Player$ContentType r4 = com.samsung.multiscreen.Player.ContentType.logo     // Catch:{ Exception -> 0x0067 }
            r3.mContentType = r4     // Catch:{ Exception -> 0x0067 }
            java.lang.String r4 = ""
            r0.put(r1, r4)     // Catch:{ Exception -> 0x0067 }
            goto L_0x0082
        L_0x0067:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "standbyConnect() : Exception : "
            r5.append(r6)
            java.lang.String r4 = r4.getMessage()
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "Player"
            android.util.Log.e(r5, r4)
        L_0x0082:
            java.lang.String r4 = r0.toString()
            boolean r5 = r3.isConnected()
            if (r5 != 0) goto L_0x0095
            com.samsung.multiscreen.Player$2 r5 = new com.samsung.multiscreen.Player$2
            r5.<init>(r4, r7)
            r3.connect(r5)
            goto L_0x0098
        L_0x0095:
            r3.launchStandbyScreen(r4, r7)
        L_0x0098:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.Player.standbyConnect(android.net.Uri, android.net.Uri, android.net.Uri, com.samsung.multiscreen.Result):void");
    }

    /* access modifiers changed from: private */
    public void launchStandbyScreen(final String str, final Result<Boolean> result) {
        getDMPStatus(new Result<DMPStatus>() {
            public void onSuccess(DMPStatus dMPStatus) {
                String str = "MediaPlayer";
                if (dMPStatus == null) {
                    ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_INVALID_TV_RESPONSE");
                    if (Player.this.isDebug()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("getDMPStatus() : Error: ");
                        sb.append(errorCode.name());
                        Log.e(str, sb.toString());
                    }
                    Result result = result;
                    if (result != null) {
                        result.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
                        return;
                    }
                    return;
                }
                if (Player.this.isDebug()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("DMP AppName : ");
                    sb2.append(dMPStatus.mAppName);
                    Log.d(str, sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("DMP Visible : ");
                    sb3.append(dMPStatus.mVisible);
                    Log.d(str, sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("DMP Running : ");
                    sb4.append(dMPStatus.mDMPRunning);
                    Log.d(str, sb4.toString());
                }
                if (!dMPStatus.mDMPRunning.booleanValue() || !dMPStatus.mRunning.booleanValue()) {
                    Player.this.sendStartDMPApplicationRequest(str, result);
                } else if (dMPStatus.mAppName == null || !dMPStatus.mAppName.equals(Player.this.mAppName)) {
                    Player.this.sendStartDMPApplicationRequest(str, result);
                } else if (!dMPStatus.mVisible.booleanValue()) {
                    Player.this.sendStartDMPApplicationRequest(str, result);
                }
            }

            public void onError(Error error) {
                if (Player.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("LaunchStandbyScreen: Error: ");
                    sb.append(error.toString());
                    Log.e("MediaPlayer", sb.toString());
                }
                Result result = result;
                if (result != null) {
                    result.onError(error);
                }
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public final void playContent(final JSONObject jSONObject, ContentType contentType, final Result<Boolean> result) {
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Is Connected Status : ");
            sb.append(isConnected());
            Log.d(TAG, sb.toString());
        }
        this.mAdditionalData = jSONObject;
        this.mContentType = contentType;
        if (!isConnected()) {
            connect(new Result<Client>() {
                public void onSuccess(Client client) {
                    Player.this.startPlay(jSONObject, result);
                }

                public void onError(Error error) {
                    Result result = result;
                    if (result != null) {
                        result.onError(error);
                    }
                }
            });
        } else {
            startPlay(jSONObject, result);
        }
    }

    /* access modifiers changed from: private */
    public void sendStartDMPApplicationRequest(String str, final Result<Boolean> result) {
        Map params = mApplication.getParams();
        Map startArgs = mApplication.getStartArgs();
        if (startArgs != null) {
            params.put("args", startArgs);
        }
        String name = this.mContentType.name();
        if (name.equalsIgnoreCase(ContentType.photo.name())) {
            name = SocialConstants.PARAM_AVATAR_URI;
        }
        params.put(PROPERTY_ISCONTENTS, name);
        params.put("url", str);
        params.put("os", VERSION.RELEASE);
        params.put("library", Application.PROPERTY_VALUE_LIBRARY);
        params.put("version", "2.5.1");
        params.put("appName", this.mAppName);
        params.put("modelNumber", Build.MODEL);
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Send ms.webapplication.start with params ");
            sb.append(params);
            Log.d(TAG, sb.toString());
        }
        mApplication.invokeMethod("ms.webapplication.start", params, new Result<Boolean>() {
            public void onSuccess(Boolean bool) {
                if (Player.this.isDebug()) {
                    Log.d(Player.TAG, "DMP Launched Successfully");
                }
                Result result = result;
                if (result != null) {
                    result.onSuccess(Boolean.valueOf(true));
                }
            }

            public void onError(Error error) {
                Player.mApplication.closeConnection();
                if (Player.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("DMP Launch Failed with error message : ");
                    sb.append(error.toString());
                    Log.e(Player.TAG, sb.toString());
                }
                Result result = result;
                if (result != null) {
                    result.onError(error);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void startPlay(final JSONObject jSONObject, final Result<Boolean> result) {
        final String str;
        String str2 = "PLAYER_ERROR_UNKNOWN";
        String str3 = TAG;
        if (jSONObject == null) {
            ErrorCode errorCode = new ErrorCode(str2);
            if (result != null) {
                result.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
            }
            if (isDebug()) {
                Log.e(str3, "startPlay() Error: 'data' is NULL.");
            }
            return;
        }
        String str4 = CONTENT_URI;
        if (jSONObject.has(str4)) {
            try {
                str = jSONObject.getString(str4);
            } catch (Exception e) {
                if (isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("startPlay() : Error in parsing JSON data: ");
                    sb.append(e.getMessage());
                    Log.e(str3, sb.toString());
                }
                return;
            }
        } else {
            str = null;
        }
        if (str == null) {
            ErrorCode errorCode2 = new ErrorCode(str2);
            if (result != null) {
                result.onError(Error.create((long) errorCode2.value(), errorCode2.name(), errorCode2.name()));
            }
            if (isDebug()) {
                Log.e(str3, "startPlay() Error: 'url' is NULL.");
            }
            return;
        }
        if (isDebug()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Content Url : ");
            sb2.append(str);
            Log.d(str3, sb2.toString());
        }
        getDMPStatus(new Result<DMPStatus>() {
            public void onSuccess(DMPStatus dMPStatus) {
                String str = Player.TAG;
                if (dMPStatus == null) {
                    ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_INVALID_TV_RESPONSE");
                    if (Player.this.isDebug()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("getDMPStatus() : Error: ");
                        sb.append(errorCode.name());
                        Log.e(str, sb.toString());
                    }
                    Result result = result;
                    if (result != null) {
                        result.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
                    }
                    return;
                }
                if (Player.this.isDebug()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("DMP AppName : ");
                    sb2.append(dMPStatus.mAppName);
                    Log.d(str, sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("DMP Visible : ");
                    sb3.append(dMPStatus.mVisible);
                    Log.d(str, sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("DMP Running : ");
                    sb4.append(dMPStatus.mDMPRunning);
                    Log.d(str, sb4.toString());
                }
                if (!dMPStatus.mDMPRunning.booleanValue() || !dMPStatus.mRunning.booleanValue()) {
                    Player.this.sendStartDMPApplicationRequest(str, result);
                } else if (dMPStatus.mAppName == null || !dMPStatus.mAppName.equals(Player.this.mAppName)) {
                    Player.this.sendStartDMPApplicationRequest(str, result);
                } else if (dMPStatus.mVisible.booleanValue()) {
                    try {
                        jSONObject.put(Player.PLAYER_SUB_EVENT, PlayerContentSubEvents.CHANGEPLAYINGCONTENT.name());
                        jSONObject.put(Player.PLAYER_TYPE, Player.this.mContentType.name());
                        Player.mApplication.publish(Player.PLAYER_CONTENT_CHANGE_EVENT, jSONObject);
                        Result result2 = result;
                        if (result2 != null) {
                            result2.onSuccess(Boolean.valueOf(true));
                        }
                    } catch (Exception e) {
                        if (Player.this.isDebug()) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Error while creating ChangePlayingContent Request : ");
                            sb5.append(e.getMessage());
                            Log.e(str, sb5.toString());
                        }
                    }
                } else {
                    Player.this.sendStartDMPApplicationRequest(str, new Result<Boolean>() {
                        public void onSuccess(Boolean bool) {
                            boolean isDebug = Player.this.isDebug();
                            String str = Player.TAG;
                            if (isDebug) {
                                Log.d(str, "DMP Launched Successfully, Sending ChangePlayingContent Request..");
                            }
                            try {
                                jSONObject.put(Player.PLAYER_SUB_EVENT, PlayerContentSubEvents.CHANGEPLAYINGCONTENT.name());
                                jSONObject.put(Player.PLAYER_TYPE, Player.this.mContentType.name());
                                Player.mApplication.publish(Player.PLAYER_CONTENT_CHANGE_EVENT, jSONObject);
                                if (result != null) {
                                    result.onSuccess(Boolean.valueOf(true));
                                }
                            } catch (Exception e) {
                                if (Player.this.isDebug()) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Error while creating ChangePlayingContent Request : ");
                                    sb.append(e.getMessage());
                                    Log.e(str, sb.toString());
                                }
                            }
                        }

                        public void onError(Error error) {
                            Player.mApplication.closeConnection();
                            if (Player.this.isDebug()) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("DMP Launch Failed with error message : ");
                                sb.append(error.toString());
                                Log.e(Player.TAG, sb.toString());
                            }
                            if (result != null) {
                                result.onError(error);
                            }
                        }
                    });
                }
            }

            public void onError(Error error) {
                if (Player.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("StartPlay() Error: ");
                    sb.append(error.toString());
                    Log.e(Player.TAG, sb.toString());
                }
                result.onError(error);
            }
        });
    }

    public final void resumeApplicationInForeground() {
        sendStartDMPApplicationRequest("http://DummyUrlToBringAppToForeground.msf", new Result<Boolean>() {
            public void onSuccess(Boolean bool) {
                if (Player.this.isDebug()) {
                    Log.d(Player.TAG, "resumeApplicationInForeground() onSuccess(): Successfully resumed application in foreground.");
                }
            }

            public void onError(Error error) {
                if (Player.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("resumeApplicationInForeground() onError(): ");
                    sb.append(error.toString());
                    Log.e(Player.TAG, sb.toString());
                }
            }
        });
    }

    public final void setPlayerWatermark(Uri uri) {
        if (isDebug()) {
            Log.d(TAG, "setPlayerWatermark");
        }
        if (isConnected()) {
            Application application = mApplication;
            StringBuilder sb = new StringBuilder();
            sb.append(PlayerMiscEvents.setWatermark.name());
            sb.append(":");
            sb.append(uri);
            application.publish(PLAYER_CONTROL_EVENT, sb.toString());
        }
    }

    public final void removePlayerWatermark() {
        if (isDebug()) {
            Log.d(TAG, "removePlayerWatermark");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerMiscEvents.unsetWatermark.name());
    }

    public void play() {
        if (isDebug()) {
            Log.d(TAG, "Send Play");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.play.name());
    }

    public void pause() {
        if (isDebug()) {
            Log.d(TAG, "Send Pause");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.pause.name());
    }

    public void stop() {
        if (isDebug()) {
            Log.d(TAG, "Send Stop");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.stop.name());
    }

    public void mute() {
        if (isDebug()) {
            Log.d(TAG, "Send Mute");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.mute.name());
    }

    public void unMute() {
        if (isDebug()) {
            Log.d(TAG, "Send Un-Mute");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.unMute.name());
    }

    public void setVolume(int i) {
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Send SetVolume : ");
            sb.append(i);
            Log.d(TAG, sb.toString());
        }
        Application application = mApplication;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(PlayerControlEvents.setVolume.name());
        sb2.append(":");
        sb2.append(i);
        application.publish(PLAYER_CONTROL_EVENT, sb2.toString());
    }

    public void getControlStatus() {
        if (isDebug()) {
            Log.d(TAG, "Send getControlStatus");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.getControlStatus.name());
    }

    public void volumeUp() {
        if (isDebug()) {
            Log.d(TAG, "Send VolumeUp");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.volumeUp.name());
    }

    public void volumeDown() {
        if (isDebug()) {
            Log.d(TAG, "Send VolumeDown");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.volumeDown.name());
    }

    public void previous() {
        if (isDebug()) {
            Log.d(TAG, "Send Previous");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.previous.name());
    }

    public void next() {
        if (isDebug()) {
            Log.d(TAG, "Send Next");
        }
        mApplication.publish(PLAYER_CONTROL_EVENT, PlayerControlEvents.next.name());
    }
}
