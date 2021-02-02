package com.samsung.multiscreen;

import android.net.Uri;
import android.util.Log;
import com.samsung.multiscreen.Channel.OnMessageListener;
import com.samsung.multiscreen.Player.RepeatMode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class AudioPlayer extends Player {
    private static final String AUDIO_PLAYER_CONTROL_RESPONSE = "state";
    private static final String AUDIO_PLAYER_INTERNAL_RESPONSE = "Audio State";
    private static final String AUDIO_PLAYER_QUEUE_EVENT_RESPONSE = "queue";
    private static final String TAG = "AudioPlayer";
    /* access modifiers changed from: private */
    public OnAudioPlayerListener mAudioPlayerListener = null;
    private List<Map<String, String>> mList = null;

    private enum AudioPlayerAttributes {
        title,
        albumName,
        albumArt,
        endTime
    }

    private enum AudioPlayerInternalEvents {
        streamcompleted,
        currentplaytime,
        totalduration,
        bufferingstart,
        bufferingprogress,
        bufferingcomplete
    }

    public interface OnAudioPlayerListener {
        void onAddToList(JSONObject jSONObject);

        void onApplicationResume();

        void onApplicationSuspend();

        void onBufferingComplete();

        void onBufferingProgress(int i);

        void onBufferingStart();

        void onClearList();

        void onControlStatus(int i, Boolean bool, Boolean bool2, RepeatMode repeatMode);

        void onCurrentPlayTime(int i);

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

        void onRepeat(RepeatMode repeatMode);

        void onShuffle(Boolean bool);

        void onStop();

        void onStreamCompleted();

        void onStreamingStarted(int i);

        void onUnMute();

        void onVolumeChange(int i);
    }

    private class OnAudioPlayerMessageListener implements OnMessageListener {
        private OnAudioPlayerMessageListener() {
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(5:55|56|57|58|59) */
        /* JADX WARNING: Missing exception handler attribute for start block: B:58:0x0165 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMessage(com.samsung.multiscreen.Message r9) {
            /*
                r8 = this;
                java.lang.String r0 = "error"
                java.lang.String r1 = "currentPlaying"
                java.lang.String r2 = "queue"
                java.lang.String r3 = "Audio State"
                java.lang.String r4 = "subEvent"
                com.samsung.multiscreen.AudioPlayer r5 = com.samsung.multiscreen.AudioPlayer.this
                boolean r5 = r5.isDebug()
                java.lang.String r6 = "AudioPlayer"
                if (r5 == 0) goto L_0x0028
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r7 = "onMessage : "
                r5.append(r7)
                r5.append(r9)
                java.lang.String r5 = r5.toString()
                android.util.Log.d(r6, r5)
            L_0x0028:
                com.samsung.multiscreen.AudioPlayer r5 = com.samsung.multiscreen.AudioPlayer.this
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r5 = r5.mAudioPlayerListener
                if (r5 != 0) goto L_0x003e
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this
                boolean r9 = r9.isDebug()
                if (r9 == 0) goto L_0x003d
                java.lang.String r9 = "Unregistered PlayerListener."
                android.util.Log.e(r6, r9)
            L_0x003d:
                return
            L_0x003e:
                java.lang.String r5 = r9.getEvent()
                java.lang.String r7 = "playerNotice"
                boolean r5 = r5.equals(r7)
                if (r5 != 0) goto L_0x0058
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this
                boolean r9 = r9.isDebug()
                if (r9 == 0) goto L_0x0057
                java.lang.String r9 = "In-Valid Player Message"
                android.util.Log.w(r6, r9)
            L_0x0057:
                return
            L_0x0058:
                org.json.JSONTokener r5 = new org.json.JSONTokener     // Catch:{ Exception -> 0x02d0 }
                java.lang.Object r9 = r9.getData()     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r9 = (java.lang.String) r9     // Catch:{ Exception -> 0x02d0 }
                r5.<init>(r9)     // Catch:{ Exception -> 0x02d0 }
                java.lang.Object r9 = r5.nextValue()     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch:{ Exception -> 0x02d0 }
                if (r9 != 0) goto L_0x0079
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                boolean r9 = r9.isDebug()     // Catch:{ Exception -> 0x02d0 }
                if (r9 == 0) goto L_0x0078
                java.lang.String r9 = "NULL Response - Unable to parse JSON string."
                android.util.Log.e(r6, r9)     // Catch:{ Exception -> 0x02d0 }
            L_0x0078:
                return
            L_0x0079:
                boolean r5 = r9.has(r4)     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r7 = "playerType"
                if (r5 == 0) goto L_0x00dc
                java.lang.String r9 = r9.getString(r4)     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = "playerReady"
                boolean r0 = r9.equals(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x00c3
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = r9.mAdditionalData     // Catch:{ Exception -> 0x02d0 }
                if (r9 == 0) goto L_0x00b8
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = r9.mAdditionalData     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$ContentType r0 = com.samsung.multiscreen.Player.ContentType.audio     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                r9.put(r7, r0)     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = r9.mAdditionalData     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$PlayerContentSubEvents r0 = com.samsung.multiscreen.Player.PlayerContentSubEvents.ADDITIONALMEDIAINFO     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                r9.put(r4, r0)     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Application r9 = com.samsung.multiscreen.Player.mApplication     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = "playerContentChange"
                com.samsung.multiscreen.AudioPlayer r1 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r1 = r1.mAdditionalData     // Catch:{ Exception -> 0x02d0 }
                r9.publish(r0, r1)     // Catch:{ Exception -> 0x02d0 }
            L_0x00b8:
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onPlayerInitialized()     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x00c3:
                java.lang.String r0 = "playerChange"
                boolean r9 = r9.equals(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r9 == 0) goto L_0x02f1
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$ContentType r0 = com.samsung.multiscreen.Player.ContentType.audio     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                r9.onPlayerChange(r0)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x00dc:
                boolean r4 = r9.has(r7)     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r5 = "state"
                if (r4 == 0) goto L_0x0174
                java.lang.String r4 = r9.getString(r7)     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$ContentType r7 = com.samsung.multiscreen.Player.ContentType.audio     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r7 = r7.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r7 = r4.equalsIgnoreCase(r7)     // Catch:{ Exception -> 0x02d0 }
                if (r7 == 0) goto L_0x02f1
                boolean r7 = r9.has(r5)     // Catch:{ Exception -> 0x02d0 }
                if (r7 == 0) goto L_0x0103
                java.lang.String r9 = r9.getString(r5)     // Catch:{ Exception -> 0x02d0 }
                r8.handlePlayerControlResponse(r9)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0103:
                boolean r5 = r9.has(r3)     // Catch:{ Exception -> 0x02d0 }
                if (r5 == 0) goto L_0x0112
                java.lang.String r9 = r9.getString(r3)     // Catch:{ Exception -> 0x02d0 }
                r8.handlePlayerInternalResponse(r9)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0112:
                boolean r3 = r9.has(r2)     // Catch:{ Exception -> 0x02d0 }
                if (r3 == 0) goto L_0x0121
                java.lang.String r9 = r9.getString(r2)     // Catch:{ Exception -> 0x02d0 }
                r8.handlePlayerQueueEventResponse(r9)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0121:
                boolean r2 = r9.has(r1)     // Catch:{ Exception -> 0x02d0 }
                if (r2 == 0) goto L_0x0136
                com.samsung.multiscreen.AudioPlayer r0 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r0 = r0.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = r9.getJSONObject(r1)     // Catch:{ Exception -> 0x02d0 }
                r0.onCurrentPlaying(r9, r4)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0136:
                boolean r1 = r9.has(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r1 == 0) goto L_0x02f1
                java.lang.String r9 = r9.getString(r0)     // Catch:{ Exception -> 0x02d0 }
                int r0 = java.lang.Integer.parseInt(r9)     // Catch:{ NumberFormatException -> 0x0165 }
                com.samsung.multiscreen.ErrorCode r1 = new com.samsung.multiscreen.ErrorCode     // Catch:{ NumberFormatException -> 0x0165 }
                r1.<init>(r0)     // Catch:{ NumberFormatException -> 0x0165 }
                com.samsung.multiscreen.AudioPlayer r0 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ NumberFormatException -> 0x0165 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r0 = r0.mAudioPlayerListener     // Catch:{ NumberFormatException -> 0x0165 }
                int r2 = r1.value()     // Catch:{ NumberFormatException -> 0x0165 }
                long r2 = (long) r2     // Catch:{ NumberFormatException -> 0x0165 }
                java.lang.String r4 = r1.name()     // Catch:{ NumberFormatException -> 0x0165 }
                java.lang.String r1 = r1.name()     // Catch:{ NumberFormatException -> 0x0165 }
                com.samsung.multiscreen.Error r1 = com.samsung.multiscreen.Error.create(r2, r4, r1)     // Catch:{ NumberFormatException -> 0x0165 }
                r0.onError(r1)     // Catch:{ NumberFormatException -> 0x0165 }
                goto L_0x02f1
            L_0x0165:
                com.samsung.multiscreen.AudioPlayer r0 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r0 = r0.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Error r9 = com.samsung.multiscreen.Error.create(r9)     // Catch:{ Exception -> 0x02d0 }
                r0.onError(r9)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0174:
                boolean r0 = r9.has(r5)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x0298
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.getControlStatus     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r0 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x023a
                org.json.JSONTokener r0 = new org.json.JSONTokener     // Catch:{ Exception -> 0x02d0 }
                r0.<init>(r9)     // Catch:{ Exception -> 0x02d0 }
                java.lang.Object r9 = r0.nextValue()     // Catch:{ Exception -> 0x02d0 }
                org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch:{ Exception -> 0x02d0 }
                r0 = 0
                java.lang.Boolean r1 = java.lang.Boolean.valueOf(r0)     // Catch:{ Exception -> 0x02d0 }
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r0)     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$RepeatMode r3 = com.samsung.multiscreen.Player.RepeatMode.repeatOff     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$PlayerControlStatus r4 = com.samsung.multiscreen.Player.PlayerControlStatus.volume     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r4 = r4.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r4 = r9.has(r4)     // Catch:{ Exception -> 0x02d0 }
                if (r4 == 0) goto L_0x01b6
                com.samsung.multiscreen.Player$PlayerControlStatus r0 = com.samsung.multiscreen.Player.PlayerControlStatus.volume     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                int r0 = r9.getInt(r0)     // Catch:{ Exception -> 0x02d0 }
            L_0x01b6:
                com.samsung.multiscreen.Player$PlayerControlStatus r4 = com.samsung.multiscreen.Player.PlayerControlStatus.mute     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r4 = r4.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r4 = r9.has(r4)     // Catch:{ Exception -> 0x02d0 }
                if (r4 == 0) goto L_0x01d0
                com.samsung.multiscreen.Player$PlayerControlStatus r1 = com.samsung.multiscreen.Player.PlayerControlStatus.mute     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r1 = r1.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r1 = r9.getBoolean(r1)     // Catch:{ Exception -> 0x02d0 }
                java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch:{ Exception -> 0x02d0 }
            L_0x01d0:
                com.samsung.multiscreen.Player$PlayerControlStatus r4 = com.samsung.multiscreen.Player.PlayerControlStatus.repeat     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r4 = r4.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r4 = r9.has(r4)     // Catch:{ Exception -> 0x02d0 }
                if (r4 == 0) goto L_0x0215
                com.samsung.multiscreen.Player$PlayerControlStatus r3 = com.samsung.multiscreen.Player.PlayerControlStatus.repeat     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r3 = r3.name()     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r3 = r9.getString(r3)     // Catch:{ Exception -> 0x02d0 }
                r4 = 0
                com.samsung.multiscreen.Player$RepeatMode r5 = com.samsung.multiscreen.Player.RepeatMode.repeatAll     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r5 = r5.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r5 = r3.equals(r5)     // Catch:{ Exception -> 0x02d0 }
                if (r5 == 0) goto L_0x01f6
                com.samsung.multiscreen.Player$RepeatMode r3 = com.samsung.multiscreen.Player.RepeatMode.repeatAll     // Catch:{ Exception -> 0x02d0 }
                goto L_0x0215
            L_0x01f6:
                com.samsung.multiscreen.Player$RepeatMode r5 = com.samsung.multiscreen.Player.RepeatMode.repeatSingle     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r5 = r5.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r5 = r3.equals(r5)     // Catch:{ Exception -> 0x02d0 }
                if (r5 == 0) goto L_0x0205
                com.samsung.multiscreen.Player$RepeatMode r3 = com.samsung.multiscreen.Player.RepeatMode.repeatSingle     // Catch:{ Exception -> 0x02d0 }
                goto L_0x0215
            L_0x0205:
                com.samsung.multiscreen.Player$RepeatMode r5 = com.samsung.multiscreen.Player.RepeatMode.repeatOff     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r5 = r5.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r3 = r3.equals(r5)     // Catch:{ Exception -> 0x02d0 }
                if (r3 == 0) goto L_0x0214
                com.samsung.multiscreen.Player$RepeatMode r3 = com.samsung.multiscreen.Player.RepeatMode.repeatOff     // Catch:{ Exception -> 0x02d0 }
                goto L_0x0215
            L_0x0214:
                r3 = r4
            L_0x0215:
                com.samsung.multiscreen.Player$PlayerControlStatus r4 = com.samsung.multiscreen.Player.PlayerControlStatus.shuffle     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r4 = r4.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r4 = r9.has(r4)     // Catch:{ Exception -> 0x02d0 }
                if (r4 == 0) goto L_0x022f
                com.samsung.multiscreen.Player$PlayerControlStatus r2 = com.samsung.multiscreen.Player.PlayerControlStatus.shuffle     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r2 = r2.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r9 = r9.getBoolean(r2)     // Catch:{ Exception -> 0x02d0 }
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r9)     // Catch:{ Exception -> 0x02d0 }
            L_0x022f:
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onControlStatus(r0, r1, r2, r3)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x023a:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.mute     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r0 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x0251
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onMute()     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0251:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.unMute     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r0 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x0268
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onUnMute()     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0268:
                com.samsung.multiscreen.Player$PlayerControlEvents r0 = com.samsung.multiscreen.Player.PlayerControlEvents.getVolume     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r0 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x02f1
                java.lang.String r0 = ":"
                int r0 = r9.lastIndexOf(r0)     // Catch:{ Exception -> 0x02d0 }
                int r0 = r0 + 1
                int r1 = r9.length()     // Catch:{ Exception -> 0x02d0 }
                int r1 = r1 + -2
                java.lang.String r9 = r9.substring(r0, r1)     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r9 = r9.trim()     // Catch:{ Exception -> 0x02d0 }
                int r9 = java.lang.Integer.parseInt(r9)     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer r0 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r0 = r0.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r0.onVolumeChange(r9)     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x0298:
                java.lang.String r0 = "appStatus"
                boolean r0 = r9.has(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x02f1
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.Player$PlayerApplicationStatusEvents r0 = com.samsung.multiscreen.Player.PlayerApplicationStatusEvents.suspend     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r0 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r0 == 0) goto L_0x02ba
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onApplicationSuspend()     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x02ba:
                com.samsung.multiscreen.Player$PlayerApplicationStatusEvents r0 = com.samsung.multiscreen.Player.PlayerApplicationStatusEvents.resume     // Catch:{ Exception -> 0x02d0 }
                java.lang.String r0 = r0.name()     // Catch:{ Exception -> 0x02d0 }
                boolean r9 = r9.contains(r0)     // Catch:{ Exception -> 0x02d0 }
                if (r9 == 0) goto L_0x02f1
                com.samsung.multiscreen.AudioPlayer r9 = com.samsung.multiscreen.AudioPlayer.this     // Catch:{ Exception -> 0x02d0 }
                com.samsung.multiscreen.AudioPlayer$OnAudioPlayerListener r9 = r9.mAudioPlayerListener     // Catch:{ Exception -> 0x02d0 }
                r9.onApplicationResume()     // Catch:{ Exception -> 0x02d0 }
                goto L_0x02f1
            L_0x02d0:
                r9 = move-exception
                com.samsung.multiscreen.AudioPlayer r0 = com.samsung.multiscreen.AudioPlayer.this
                boolean r0 = r0.isDebug()
                if (r0 == 0) goto L_0x02f1
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Error while parsing response : "
                r0.append(r1)
                java.lang.String r9 = r9.getMessage()
                r0.append(r9)
                java.lang.String r9 = r0.toString()
                android.util.Log.e(r6, r9)
            L_0x02f1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.AudioPlayer.OnAudioPlayerMessageListener.onMessage(com.samsung.multiscreen.Message):void");
        }

        private void handlePlayerControlResponse(String str) {
            try {
                if (str.contains(PlayerControlEvents.play.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onPlay();
                } else if (str.contains(PlayerControlEvents.pause.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onPause();
                } else if (str.contains(PlayerControlEvents.stop.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onStop();
                } else if (str.contains(PlayerControlEvents.next.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onNext();
                } else if (str.contains(PlayerControlEvents.previous.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onPrevious();
                } else if (str.contains(PlayerControlEvents.repeat.name())) {
                    if (str.contains(RepeatMode.repeatAll.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onRepeat(RepeatMode.repeatAll);
                    } else if (str.contains(RepeatMode.repeatSingle.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onRepeat(RepeatMode.repeatSingle);
                    } else if (str.contains(RepeatMode.repeatOff.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onRepeat(RepeatMode.repeatOff);
                    }
                } else if (str.contains(PlayerControlEvents.shuffle.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onShuffle(Boolean.valueOf(str.contains("true")));
                }
            } catch (Exception e) {
                if (AudioPlayer.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while parsing control response : ");
                    sb.append(e.getMessage());
                    Log.e(AudioPlayer.TAG, sb.toString());
                }
            }
        }

        private void handlePlayerInternalResponse(String str) {
            try {
                if (str.equalsIgnoreCase(AudioPlayerInternalEvents.bufferingstart.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onBufferingStart();
                } else if (str.equalsIgnoreCase(AudioPlayerInternalEvents.bufferingcomplete.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onBufferingComplete();
                } else {
                    String str2 = ":";
                    if (str.contains(AudioPlayerInternalEvents.bufferingprogress.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onBufferingProgress(Integer.parseInt(str.substring(str.indexOf(str2) + 1).trim()));
                    } else if (str.contains(AudioPlayerInternalEvents.currentplaytime.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onCurrentPlayTime(Integer.parseInt(str.substring(str.indexOf(str2) + 1).trim()));
                    } else if (str.contains(AudioPlayerInternalEvents.streamcompleted.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onStreamCompleted();
                    } else if (str.contains(AudioPlayerInternalEvents.totalduration.name())) {
                        AudioPlayer.this.mAudioPlayerListener.onStreamingStarted(Integer.parseInt(str.substring(str.indexOf(str2) + 1).trim()));
                    }
                }
            } catch (Exception e) {
                if (AudioPlayer.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while parsing Internal Event response : ");
                    sb.append(e.getMessage());
                    Log.e(AudioPlayer.TAG, sb.toString());
                }
            }
        }

        private void handlePlayerQueueEventResponse(String str) {
            String str2 = "data";
            String str3 = AudioPlayer.TAG;
            String str4 = "subEvent";
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(str4);
                jSONObject.remove(str4);
                if (string == null) {
                    if (AudioPlayer.this.isDebug()) {
                        Log.e(str3, "Sub-Event key missing from message.");
                    }
                    return;
                }
                if (string.equals(PlayerQueueSubEvents.enqueue.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onAddToList(jSONObject);
                } else if (string.equals(PlayerQueueSubEvents.dequeue.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onRemoveFromList(jSONObject);
                } else if (string.equals(PlayerQueueSubEvents.clear.name())) {
                    AudioPlayer.this.mAudioPlayerListener.onClearList();
                } else if (string.equals(PlayerQueueSubEvents.fetch.name()) && jSONObject.has(str2)) {
                    AudioPlayer.this.mAudioPlayerListener.onGetList(jSONObject.getJSONArray(str2));
                }
            } catch (Exception e) {
                if (AudioPlayer.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while parsing list Event response : ");
                    sb.append(e.getMessage());
                    Log.e(str3, sb.toString());
                }
            }
        }
    }

    AudioPlayer(Service service, Uri uri, String str) {
        super(service, uri, str);
    }

    public void playContent(Uri uri, Result<Boolean> result) {
        playContent(uri, null, null, null, result);
    }

    public void playContent(Uri uri, String str, String str2, Uri uri2, Result<Boolean> result) {
        JSONObject jSONObject = new JSONObject();
        String str3 = TAG;
        if (uri != null) {
            try {
                if (!uri.toString().isEmpty()) {
                    jSONObject.put("uri", uri);
                    if (str != null) {
                        jSONObject.put(AudioPlayerAttributes.title.name(), str);
                    }
                    if (str2 != null) {
                        jSONObject.put(AudioPlayerAttributes.albumName.name(), str2);
                    }
                    if (uri2 != null) {
                        jSONObject.put(AudioPlayerAttributes.albumArt.name(), uri2);
                    }
                    super.playContent(jSONObject, ContentType.audio, result);
                    return;
                }
            } catch (Exception unused) {
                ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_UNKNOWN");
                if (isDebug()) {
                    Log.e(str3, "Unable to create JSONObject!");
                }
                if (result != null) {
                    result.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
                }
            }
        }
        ErrorCode errorCode2 = new ErrorCode("PLAYER_ERROR_INVALID_URI");
        if (isDebug()) {
            Log.e(str3, "There's no media url to launch!");
        }
        if (result != null) {
            result.onError(Error.create((long) errorCode2.value(), errorCode2.name(), errorCode2.name()));
        }
    }

    public void seekTo(int i, TimeUnit timeUnit) {
        long convert = TimeUnit.SECONDS.convert((long) i, timeUnit);
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Send SeekTo : ");
            sb.append(convert);
            sb.append(" seconds");
            Log.d(TAG, sb.toString());
        }
        Application application = mApplication;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(PlayerControlEvents.seekTo.name());
        sb2.append(":");
        sb2.append(convert);
        application.publish("playerControl", sb2.toString());
    }

    public void repeat() {
        if (isDebug()) {
            Log.d(TAG, "Send repeat");
        }
        mApplication.publish("playerControl", PlayerControlEvents.repeat.name());
    }

    public void setRepeat(RepeatMode repeatMode) {
        if (isDebug()) {
            Log.d(TAG, "Send setRepeat");
        }
        Application application = mApplication;
        StringBuilder sb = new StringBuilder();
        sb.append(PlayerControlEvents.setRepeat.name());
        sb.append(":");
        sb.append(repeatMode.name());
        application.publish("playerControl", sb.toString());
    }

    public void shuffle() {
        if (isDebug()) {
            Log.d(TAG, "Send shuffle");
        }
        mApplication.publish("playerControl", PlayerControlEvents.shuffle.name());
    }

    public void setShuffle(boolean z) {
        if (isDebug()) {
            Log.d(TAG, "Send setShuffle");
        }
        Application application = mApplication;
        StringBuilder sb = new StringBuilder();
        sb.append(PlayerControlEvents.setShuffle.name());
        sb.append(":");
        sb.append(z);
        application.publish("playerControl", sb.toString());
    }

    public void getList() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.fetch.name());
            jSONObject.put("playerType", ContentType.audio.name());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("fetchQueue(): Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void clearList() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.clear.name());
            jSONObject.put("playerType", ContentType.audio.name());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("clearQueue(): Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void removeFromList(Uri uri) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("subEvent", PlayerQueueSubEvents.dequeue.name());
            jSONObject.put("playerType", ContentType.audio.name());
            jSONObject.put("uri", uri.toString());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("deQueue(): Error in parsing JSON object: ");
            sb.append(e.toString());
            Log.w(TAG, sb.toString());
        }
        mApplication.publish("playerQueueEvent", jSONObject);
    }

    public void addToList(Uri uri) {
        addToList(uri, null, null, null);
    }

    public void addToList(Uri uri, String str, String str2, Uri uri2) {
        HashMap hashMap = new HashMap();
        hashMap.put("uri", uri.toString());
        hashMap.put(AudioPlayerAttributes.title.name(), str);
        hashMap.put(AudioPlayerAttributes.albumName.name(), str2);
        hashMap.put(AudioPlayerAttributes.albumArt.name(), uri2.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashMap);
        addToList((List<Map<String, String>>) arrayList);
    }

    public void addToList(final List<Map<String, String>> list) {
        if (list == null || list.isEmpty()) {
            if (isDebug()) {
                Log.d(TAG, "enQueue(): audioList is NULL.");
            }
            return;
        }
        if (isConnected()) {
            getDMPStatus(new Result<DMPStatus>() {
                public void onSuccess(DMPStatus dMPStatus) {
                    String str = AudioPlayer.TAG;
                    if (dMPStatus == null) {
                        Log.d(str, "Error : Something went wrong with Node server!");
                        return;
                    }
                    if (dMPStatus.mDMPRunning.booleanValue() && dMPStatus.mRunning.booleanValue()) {
                        int i = 0;
                        while (i < list.size()) {
                            Map map = (Map) list.get(i);
                            String str2 = "uri";
                            if (map.containsKey(str2)) {
                                Uri parse = Uri.parse((String) map.get(str2));
                                String str3 = null;
                                Object obj = map.containsKey(AudioPlayerAttributes.title.name()) ? (String) map.get(AudioPlayerAttributes.title.name()) : null;
                                Object obj2 = map.containsKey(AudioPlayerAttributes.albumName.name()) ? (String) map.get(AudioPlayerAttributes.albumName.name()) : null;
                                Uri parse2 = map.containsKey(AudioPlayerAttributes.albumArt.name()) ? Uri.parse((String) map.get(AudioPlayerAttributes.albumArt.name())) : null;
                                if (map.containsKey(AudioPlayerAttributes.endTime.name())) {
                                    str3 = (String) map.get(map.get(AudioPlayerAttributes.endTime.name()));
                                }
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("subEvent", PlayerQueueSubEvents.enqueue.name());
                                    jSONObject.put("playerType", ContentType.audio.name());
                                    jSONObject.put(str2, parse.toString());
                                    jSONObject.put(AudioPlayerAttributes.title.name(), obj);
                                    jSONObject.put(AudioPlayerAttributes.albumName.name(), obj2);
                                    jSONObject.put(AudioPlayerAttributes.endTime.name(), str3);
                                    if (parse2 != null) {
                                        jSONObject.put(AudioPlayerAttributes.albumArt.name(), parse2.toString());
                                    }
                                } catch (Exception e) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("enQueue(): Error in parsing JSON object: ");
                                    sb.append(e.toString());
                                    Log.w(str, sb.toString());
                                }
                                Player.mApplication.publish("playerQueueEvent", jSONObject);
                                i++;
                            } else {
                                if (AudioPlayer.this.isDebug()) {
                                    Log.d(str, "enQueue(): ContentUrl can not be Optional.");
                                }
                                return;
                            }
                        }
                    } else if (AudioPlayer.this.isDebug()) {
                        Log.e(str, "enQueue() Error: DMP Un-Initialized!");
                    }
                }

                public void onError(Error error) {
                    if (AudioPlayer.this.isDebug()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("enQueue() Error: ");
                        sb.append(error.toString());
                        Log.e(AudioPlayer.TAG, sb.toString());
                    }
                }
            });
        } else if (this.mAudioPlayerListener != null) {
            ErrorCode errorCode = new ErrorCode("PLAYER_ERROR_PLAYER_NOT_LOADED");
            this.mAudioPlayerListener.onError(Error.create((long) errorCode.value(), errorCode.name(), errorCode.name()));
        }
    }

    public void addOnMessageListener(OnAudioPlayerListener onAudioPlayerListener) {
        this.mAudioPlayerListener = onAudioPlayerListener;
        mApplication.addOnMessageListener("playerNotice", new OnAudioPlayerMessageListener());
    }
}
