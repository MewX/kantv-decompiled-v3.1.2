package com.samsung.multiscreen;

import android.net.Uri;
import android.util.Log;
import com.samsung.multiscreen.Channel.OnMessageListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class PhotoPlayer extends Player {
    private static final String PHOTO_PLAYER_CONTROL_RESPONSE = "state";
    private static final String PHOTO_PLAYER_QUEUE_EVENT_RESPONSE = "queue";
    private static final String TAG = "PhotoPlayer";
    private List<Map<String, String>> mList = null;
    /* access modifiers changed from: private */
    public OnPhotoPlayerListener mPhotoPlayerListener = null;

    public interface OnPhotoPlayerListener {
        void onAddToList(JSONObject jSONObject);

        void onApplicationResume();

        void onApplicationSuspend();

        void onClearList();

        void onControlStatus(int i, Boolean bool);

        void onCurrentPlaying(JSONObject jSONObject, String str);

        void onError(Error error);

        void onGetList(JSONArray jSONArray);

        void onMute();

        void onNext();

        void onPause();

        void onPlay();

        void onPlayerChange(String str);

        void onPlayerInitialized();

        void onPrevious();

        void onRemoveFromList(JSONObject jSONObject);

        void onStop();

        void onUnMute();

        void onVolumeChange(int i);
    }

    private class OnPhotoPlayerMessageListener implements OnMessageListener {
        private OnPhotoPlayerMessageListener() {
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(5:52|53|54|55|56) */
        /* JADX WARNING: Missing exception handler attribute for start block: B:55:0x0154 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMessage(com.samsung.multiscreen.Message r8) {
            /*
                r7 = this;
                java.lang.String r0 = "error"
                java.lang.String r1 = "currentPlaying"
                java.lang.String r2 = "queue"
                java.lang.String r3 = "subEvent"
                com.samsung.multiscreen.PhotoPlayer r4 = com.samsung.multiscreen.PhotoPlayer.this
                boolean r4 = r4.isDebug()
                java.lang.String r5 = "PhotoPlayer"
                if (r4 == 0) goto L_0x0026
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r6 = "onMessage : "
                r4.append(r6)
                r4.append(r8)
                java.lang.String r4 = r4.toString()
                android.util.Log.d(r5, r4)
            L_0x0026:
                com.samsung.multiscreen.PhotoPlayer r4 = com.samsung.multiscreen.PhotoPlayer.this
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r4 = r4.mPhotoPlayerListener
                if (r4 != 0) goto L_0x003c
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this
                boolean r8 = r8.isDebug()
                if (r8 == 0) goto L_0x003b
                java.lang.String r8 = "Unregistered PlayerListener."
                android.util.Log.e(r5, r8)
            L_0x003b:
                return
            L_0x003c:
                java.lang.String r4 = r8.getEvent()
                java.lang.String r6 = "playerNotice"
                boolean r4 = r4.equals(r6)
                if (r4 != 0) goto L_0x0056
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this
                boolean r8 = r8.isDebug()
                if (r8 == 0) goto L_0x0055
                java.lang.String r8 = "In-Valid Player Message"
                android.util.Log.w(r5, r8)
            L_0x0055:
                return
            L_0x0056:
                org.json.JSONTokener r4 = new org.json.JSONTokener     // Catch:{ Exception -> 0x025a }
                java.lang.Object r8 = r8.getData()     // Catch:{ Exception -> 0x025a }
                java.lang.String r8 = (java.lang.String) r8     // Catch:{ Exception -> 0x025a }
                r4.<init>(r8)     // Catch:{ Exception -> 0x025a }
                java.lang.Object r8 = r4.nextValue()     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = (org.json.JSONObject) r8     // Catch:{ Exception -> 0x025a }
                if (r8 != 0) goto L_0x0077
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                boolean r8 = r8.isDebug()     // Catch:{ Exception -> 0x025a }
                if (r8 == 0) goto L_0x0076
                java.lang.String r8 = "NULL Response - Unable to parse JSON string."
                android.util.Log.e(r5, r8)     // Catch:{ Exception -> 0x025a }
            L_0x0076:
                return
            L_0x0077:
                boolean r4 = r8.has(r3)     // Catch:{ Exception -> 0x025a }
                java.lang.String r6 = "playerType"
                if (r4 == 0) goto L_0x00da
                java.lang.String r8 = r8.getString(r3)     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = "playerReady"
                boolean r0 = r8.equals(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x00c1
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = r8.mAdditionalData     // Catch:{ Exception -> 0x025a }
                if (r8 == 0) goto L_0x00b6
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = r8.mAdditionalData     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$ContentType r0 = com.samsung.multiscreen.Player.ContentType.photo     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                r8.put(r6, r0)     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = r8.mAdditionalData     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$PlayerContentSubEvents r0 = com.samsung.multiscreen.Player.PlayerContentSubEvents.ADDITIONALMEDIAINFO     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                r8.put(r3, r0)     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Application r8 = com.samsung.multiscreen.Player.mApplication     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = "playerContentChange"
                com.samsung.multiscreen.PhotoPlayer r1 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r1 = r1.mAdditionalData     // Catch:{ Exception -> 0x025a }
                r8.publish(r0, r1)     // Catch:{ Exception -> 0x025a }
            L_0x00b6:
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onPlayerInitialized()     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x00c1:
                java.lang.String r0 = "playerChange"
                boolean r8 = r8.equals(r0)     // Catch:{ Exception -> 0x025a }
                if (r8 == 0) goto L_0x027b
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$ContentType r0 = com.samsung.multiscreen.Player.ContentType.photo     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                r8.onPlayerChange(r0)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x00da:
                boolean r3 = r8.has(r6)     // Catch:{ Exception -> 0x025a }
                java.lang.String r4 = "state"
                if (r3 == 0) goto L_0x0163
                java.lang.String r3 = r8.getString(r6)     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$ContentType r6 = com.samsung.multiscreen.Player.ContentType.photo     // Catch:{ Exception -> 0x025a }
                java.lang.String r6 = r6.name()     // Catch:{ Exception -> 0x025a }
                boolean r6 = r3.equalsIgnoreCase(r6)     // Catch:{ Exception -> 0x025a }
                if (r6 == 0) goto L_0x027b
                boolean r6 = r8.has(r4)     // Catch:{ Exception -> 0x025a }
                if (r6 == 0) goto L_0x0101
                java.lang.String r8 = r8.getString(r4)     // Catch:{ Exception -> 0x025a }
                r7.handlePlayerControlResponse(r8)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0101:
                boolean r4 = r8.has(r2)     // Catch:{ Exception -> 0x025a }
                if (r4 == 0) goto L_0x0110
                java.lang.String r8 = r8.getString(r2)     // Catch:{ Exception -> 0x025a }
                r7.handlePlayerQueueEventResponse(r8)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0110:
                boolean r2 = r8.has(r1)     // Catch:{ Exception -> 0x025a }
                if (r2 == 0) goto L_0x0125
                com.samsung.multiscreen.PhotoPlayer r0 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r0 = r0.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = r8.getJSONObject(r1)     // Catch:{ Exception -> 0x025a }
                r0.onCurrentPlaying(r8, r3)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0125:
                boolean r1 = r8.has(r0)     // Catch:{ Exception -> 0x025a }
                if (r1 == 0) goto L_0x027b
                java.lang.String r8 = r8.getString(r0)     // Catch:{ Exception -> 0x025a }
                int r0 = java.lang.Integer.parseInt(r8)     // Catch:{ NumberFormatException -> 0x0154 }
                com.samsung.multiscreen.ErrorCode r1 = new com.samsung.multiscreen.ErrorCode     // Catch:{ NumberFormatException -> 0x0154 }
                r1.<init>(r0)     // Catch:{ NumberFormatException -> 0x0154 }
                com.samsung.multiscreen.PhotoPlayer r0 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ NumberFormatException -> 0x0154 }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r0 = r0.mPhotoPlayerListener     // Catch:{ NumberFormatException -> 0x0154 }
                int r2 = r1.value()     // Catch:{ NumberFormatException -> 0x0154 }
                long r2 = (long) r2     // Catch:{ NumberFormatException -> 0x0154 }
                java.lang.String r4 = r1.name()     // Catch:{ NumberFormatException -> 0x0154 }
                java.lang.String r1 = r1.name()     // Catch:{ NumberFormatException -> 0x0154 }
                com.samsung.multiscreen.Error r1 = com.samsung.multiscreen.Error.create(r2, r4, r1)     // Catch:{ NumberFormatException -> 0x0154 }
                r0.onError(r1)     // Catch:{ NumberFormatException -> 0x0154 }
                goto L_0x027b
            L_0x0154:
                com.samsung.multiscreen.PhotoPlayer r0 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r0 = r0.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Error r8 = com.samsung.multiscreen.Error.create(r8)     // Catch:{ Exception -> 0x025a }
                r0.onError(r8)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0163:
                boolean r0 = r8.has(r4)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x0222
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.getControlStatus     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r0 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x01c4
                org.json.JSONTokener r0 = new org.json.JSONTokener     // Catch:{ Exception -> 0x025a }
                r0.<init>(r8)     // Catch:{ Exception -> 0x025a }
                java.lang.Object r8 = r0.nextValue()     // Catch:{ Exception -> 0x025a }
                org.json.JSONObject r8 = (org.json.JSONObject) r8     // Catch:{ Exception -> 0x025a }
                r0 = 0
                java.lang.Boolean r1 = java.lang.Boolean.valueOf(r0)     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$PlayerControlStatus r2 = com.samsung.multiscreen.Player.PlayerControlStatus.volume     // Catch:{ Exception -> 0x025a }
                java.lang.String r2 = r2.name()     // Catch:{ Exception -> 0x025a }
                boolean r2 = r8.has(r2)     // Catch:{ Exception -> 0x025a }
                if (r2 == 0) goto L_0x019f
                com.samsung.multiscreen.Player$PlayerControlStatus r0 = com.samsung.multiscreen.Player.PlayerControlStatus.volume     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                int r0 = r8.getInt(r0)     // Catch:{ Exception -> 0x025a }
            L_0x019f:
                com.samsung.multiscreen.Player$PlayerControlStatus r2 = com.samsung.multiscreen.Player.PlayerControlStatus.mute     // Catch:{ Exception -> 0x025a }
                java.lang.String r2 = r2.name()     // Catch:{ Exception -> 0x025a }
                boolean r2 = r8.has(r2)     // Catch:{ Exception -> 0x025a }
                if (r2 == 0) goto L_0x01b9
                com.samsung.multiscreen.Player$PlayerControlStatus r1 = com.samsung.multiscreen.Player.PlayerControlStatus.mute     // Catch:{ Exception -> 0x025a }
                java.lang.String r1 = r1.name()     // Catch:{ Exception -> 0x025a }
                boolean r8 = r8.getBoolean(r1)     // Catch:{ Exception -> 0x025a }
                java.lang.Boolean r1 = java.lang.Boolean.valueOf(r8)     // Catch:{ Exception -> 0x025a }
            L_0x01b9:
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onControlStatus(r0, r1)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x01c4:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.mute     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r0 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x01db
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onMute()     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x01db:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.unMute     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r0 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x01f2
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onUnMute()     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x01f2:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.getVolume     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r0 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x027b
                java.lang.String r0 = ":"
                int r0 = r8.lastIndexOf(r0)     // Catch:{ Exception -> 0x025a }
                int r0 = r0 + 1
                int r1 = r8.length()     // Catch:{ Exception -> 0x025a }
                int r1 = r1 + -2
                java.lang.String r8 = r8.substring(r0, r1)     // Catch:{ Exception -> 0x025a }
                java.lang.String r8 = r8.trim()     // Catch:{ Exception -> 0x025a }
                int r8 = java.lang.Integer.parseInt(r8)     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer r0 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r0 = r0.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r0.onVolumeChange(r8)     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0222:
                java.lang.String r0 = "appStatus"
                boolean r0 = r8.has(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x027b
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.Player$PlayerApplicationStatusEvents r0 = com.samsung.multiscreen.Player.PlayerApplicationStatusEvents.suspend     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r0 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r0 == 0) goto L_0x0244
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onApplicationSuspend()     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x0244:
                com.samsung.multiscreen.Player$PlayerApplicationStatusEvents r0 = com.samsung.multiscreen.Player.PlayerApplicationStatusEvents.resume     // Catch:{ Exception -> 0x025a }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x025a }
                boolean r8 = r8.contains(r0)     // Catch:{ Exception -> 0x025a }
                if (r8 == 0) goto L_0x027b
                com.samsung.multiscreen.PhotoPlayer r8 = com.samsung.multiscreen.PhotoPlayer.this     // Catch:{ Exception -> 0x025a }
                com.samsung.multiscreen.PhotoPlayer$OnPhotoPlayerListener r8 = r8.mPhotoPlayerListener     // Catch:{ Exception -> 0x025a }
                r8.onApplicationResume()     // Catch:{ Exception -> 0x025a }
                goto L_0x027b
            L_0x025a:
                r8 = move-exception
                com.samsung.multiscreen.PhotoPlayer r0 = com.samsung.multiscreen.PhotoPlayer.this
                boolean r0 = r0.isDebug()
                if (r0 == 0) goto L_0x027b
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Error while parsing response : "
                r0.append(r1)
                java.lang.String r8 = r8.getMessage()
                r0.append(r8)
                java.lang.String r8 = r0.toString()
                android.util.Log.e(r5, r8)
            L_0x027b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.PhotoPlayer.OnPhotoPlayerMessageListener.onMessage(com.samsung.multiscreen.Message):void");
        }

        private void handlePlayerControlResponse(String str) {
            try {
                if (str.contains(PlayerControlEvents.play.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onPlay();
                } else if (str.contains(PlayerControlEvents.pause.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onPause();
                } else if (str.contains(PlayerControlEvents.stop.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onStop();
                } else if (str.contains(PlayerControlEvents.next.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onNext();
                } else if (str.contains(PlayerControlEvents.previous.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onPrevious();
                }
            } catch (Exception e) {
                if (PhotoPlayer.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while parsing control response : ");
                    sb.append(e.getMessage());
                    Log.e(PhotoPlayer.TAG, sb.toString());
                }
            }
        }

        private void handlePlayerQueueEventResponse(String str) {
            String str2 = "data";
            String str3 = PhotoPlayer.TAG;
            String str4 = "subEvent";
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(str4);
                jSONObject.remove(str4);
                if (string == null) {
                    if (PhotoPlayer.this.isDebug()) {
                        Log.e(str3, "Sub-Event key missing from message.");
                    }
                    return;
                }
                if (string.equals(PlayerQueueSubEvents.enqueue.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onAddToList(jSONObject);
                } else if (string.equals(PlayerQueueSubEvents.dequeue.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onRemoveFromList(jSONObject);
                } else if (string.equals(PlayerQueueSubEvents.clear.name())) {
                    PhotoPlayer.this.mPhotoPlayerListener.onClearList();
                } else if (string.equals(PlayerQueueSubEvents.fetch.name()) && jSONObject.has(str2)) {
                    PhotoPlayer.this.mPhotoPlayerListener.onGetList(jSONObject.getJSONArray(str2));
                }
            } catch (Exception e) {
                if (PhotoPlayer.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while parsing list Event response : ");
                    sb.append(e.getMessage());
                    Log.e(str3, sb.toString());
                }
            }
        }
    }

    private enum PhotoPlayerAttributes {
        title
    }

    PhotoPlayer(Service service, Uri uri, String str) {
        super(service, uri, str);
    }

    public void playContent(Uri uri, Result<Boolean> result) {
        playContent(uri, null, result);
    }

    public void playContent(Uri uri, String str, Result<Boolean> result) {
        JSONObject jSONObject = new JSONObject();
        String str2 = TAG;
        if (uri != null) {
            try {
                if (!uri.toString().isEmpty()) {
                    jSONObject.put("uri", uri);
                    if (str != null) {
                        jSONObject.put(PhotoPlayerAttributes.title.name(), str);
                    }
                    super.playContent(jSONObject, ContentType.photo, result);
                    return;
                }
            } catch (Exception unused) {
                ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_UNKNOWN");
                if (isDebug()) {
                    Log.e(str2, "Unable to create JSONObject!");
                }
                if (result != null) {
                    result.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
                }
            }
        }
        ErrorCode errorCode2 = new ErrorCode("PLAYER_ERROR_INVALID_URI");
        if (isDebug()) {
            Log.e(str2, "There's no media url to launch!");
        }
        if (result != null) {
            result.onError(Error.create((long) errorCode2.value(), errorCode2.name(), errorCode2.name()));
        }
    }

    public void setBackgroundMusic(Uri uri) {
        Application application = mApplication;
        StringBuilder sb = new StringBuilder();
        sb.append(PlayerControlEvents.playMusic.name());
        sb.append(":");
        sb.append(uri);
        application.publish("playerControl", sb.toString());
    }

    public void stopBackgroundMusic() {
        mApplication.publish("playerControl", PlayerControlEvents.stopMusic.name());
    }

    public void getList() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.fetch.name());
            jSONObject.put("playerType", ContentType.photo.name());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void clearList() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.clear.name());
            jSONObject.put("playerType", ContentType.photo.name());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void removeFromList(Uri uri) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.dequeue.name());
            jSONObject.put("playerType", ContentType.photo.name());
            jSONObject.put("uri", uri.toString());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void addToList(Uri uri) {
        addToList(uri, null);
    }

    public void addToList(Uri uri, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("uri", uri.toString());
        hashMap.put(PhotoPlayerAttributes.title.name(), str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashMap);
        addToList((List<Map<String, String>>) arrayList);
    }

    public void addToList(final List<Map<String, String>> list) {
        if (list == null || list.isEmpty()) {
            if (isDebug()) {
                Log.d(TAG, "enQueue(): photoList is NULL.");
            }
            return;
        }
        if (isConnected()) {
            getDMPStatus(new Result<DMPStatus>() {
                public void onSuccess(DMPStatus dMPStatus) {
                    String str = PhotoPlayer.TAG;
                    if (dMPStatus == null) {
                        Log.d(str, "Error : Something went wrong with Node server!");
                        return;
                    }
                    if (dMPStatus.mDMPRunning.booleanValue() && dMPStatus.mRunning.booleanValue()) {
                        int i = 0;
                        while (i < list.size()) {
                            String str2 = null;
                            Map map = (Map) list.get(i);
                            String str3 = "uri";
                            if (map.containsKey(str3)) {
                                Uri parse = Uri.parse((String) map.get(str3));
                                if (map.containsKey(PhotoPlayerAttributes.title.name())) {
                                    str2 = (String) map.get(PhotoPlayerAttributes.title.name());
                                }
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("subEvent", PlayerQueueSubEvents.enqueue.name());
                                    jSONObject.put("playerType", ContentType.photo.name());
                                    jSONObject.put(str3, parse.toString());
                                    jSONObject.put(PhotoPlayerAttributes.title.name(), str2);
                                } catch (Exception e) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("enQueue(): Error in parsing JSON object: ");
                                    sb.append(e.toString());
                                    Log.w(str, sb.toString());
                                }
                                Player.mApplication.publish("playerQueueEvent", jSONObject);
                                i++;
                            } else {
                                if (PhotoPlayer.this.isDebug()) {
                                    Log.d(str, "enQueue(): ContentUrl can not be Optional.");
                                }
                                return;
                            }
                        }
                    } else if (PhotoPlayer.this.isDebug()) {
                        Log.e(str, "enQueue() Error: DMP Un-Initialized!");
                    }
                }

                public void onError(Error error) {
                    if (PhotoPlayer.this.isDebug()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("enQueue() Error: ");
                        sb.append(error.toString());
                        Log.e(PhotoPlayer.TAG, sb.toString());
                    }
                }
            });
        } else if (this.mPhotoPlayerListener != null) {
            ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_PLAYER_NOT_LOADED");
            this.mPhotoPlayerListener.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
        }
    }

    public void addOnMessageListener(OnPhotoPlayerListener onPhotoPlayerListener) {
        this.mPhotoPlayerListener = onPhotoPlayerListener;
        mApplication.addOnMessageListener("playerNotice", new OnPhotoPlayerMessageListener());
    }
}
