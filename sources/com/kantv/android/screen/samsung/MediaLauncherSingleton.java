package com.kantv.android.screen.samsung;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.kantv.android.screen.R;
import com.samsung.multiscreen.AudioPlayer;
import com.samsung.multiscreen.AudioPlayer.OnAudioPlayerListener;
import com.samsung.multiscreen.Channel.OnConnectListener;
import com.samsung.multiscreen.Channel.OnDisconnectListener;
import com.samsung.multiscreen.Channel.OnErrorListener;
import com.samsung.multiscreen.Client;
import com.samsung.multiscreen.Error;
import com.samsung.multiscreen.PhotoPlayer;
import com.samsung.multiscreen.PhotoPlayer.OnPhotoPlayerListener;
import com.samsung.multiscreen.Player.RepeatMode;
import com.samsung.multiscreen.Result;
import com.samsung.multiscreen.Service;
import com.samsung.multiscreen.VideoPlayer;
import com.samsung.multiscreen.VideoPlayer.OnVideoPlayerListener;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class MediaLauncherSingleton extends View {
    static final String AUDIO_ALBUM_ART = "albumArt";
    static final String AUDIO_ALBUM_NAME = "albumName";
    static final String TAG = "MediaLauncherSingleton";
    static final String TITLE = "title";
    static final String URL = "uri";
    static final String VIDEO_THUMBNAIL_URL = "thumbnailUrl";
    private static AudioPlayer mAudioPlayer;
    private static MediaLauncherSingleton mInstance;
    private static PhotoPlayer mPhotoPlayer;
    private static VideoPlayer mVideoPlayer;
    private Boolean mFirstPlayerLaunch = Boolean.valueOf(false);
    /* access modifiers changed from: private */
    public PlayerType mPlayerType;
    /* access modifiers changed from: private */
    public Service mService = null;

    protected enum PlayerType {
        AUDIO,
        VIDEO,
        PHOTO,
        STANDBY
    }

    private MediaLauncherSingleton(Context context) {
        super(context);
    }

    /* access modifiers changed from: private */
    public void initMediaPlayer() {
        String string = getContext().getResources().getString(R.string.app_name);
        mVideoPlayer = this.mService.createVideoPlayer(string);
        mAudioPlayer = this.mService.createAudioPlayer(string);
        mPhotoPlayer = this.mService.createPhotoPlayer(string);
        mVideoPlayer.setDebug(true);
        mAudioPlayer.setDebug(true);
        mPhotoPlayer.setDebug(true);
        mVideoPlayer.addOnMessageListener(new OnVideoPlayerListener() {
            public void onBufferingStart() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onBufferingStart V");
            }

            public void onBufferingComplete() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onBufferingComplete V");
            }

            public void onBufferingProgress(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onBufferingProgress V: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onCurrentPlayTime(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onCurrentPlayTime V: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onStreamingStarted(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onStreamingStarted V: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onStreamCompleted() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onStreamCompleted V");
            }

            public void onPlay() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlay V");
            }

            public void onPause() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPause V");
            }

            public void onStop() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onStop V");
            }

            public void onForward() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onForward V");
            }

            public void onRewind() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onRewind V");
            }

            public void onMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onMute V");
            }

            public void onUnMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onUnMute V");
            }

            public void onNext() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onNext V");
            }

            public void onPrevious() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPrevious V");
            }

            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onError V: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                Context context = MediaLauncherSingleton.this.getContext();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error: ");
                sb2.append(error.getMessage());
                Toast.makeText(context, sb2.toString(), 0).show();
            }

            public void onAddToList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onAddToList V: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onRemoveFromList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onRemoveFromList V: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onClearList() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onClearList V");
            }

            public void onGetList(JSONArray jSONArray) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onGetList V: ");
                sb.append(jSONArray.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onCurrentPlaying(JSONObject jSONObject, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onCurrentPlaying V: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onRepeat(RepeatMode repeatMode) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onRepeat V: ");
                sb.append(repeatMode.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onControlStatus(int i, Boolean bool, RepeatMode repeatMode) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onControlStatus V: vol: ");
                sb.append(i);
                sb.append(", mute: ");
                sb.append(bool);
                sb.append(", repeat: ");
                sb.append(repeatMode.name());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onVolumeChange(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onVolumeChange V: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onPlayerInitialized() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerInitialized V");
            }

            public void onPlayerChange(String str) {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerChange V");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationResume() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationResume V");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationSuspend() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationSuspend V");
            }
        });
        mAudioPlayer.addOnMessageListener(new OnAudioPlayerListener() {
            public void onBufferingStart() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onBufferingStart A");
            }

            public void onBufferingComplete() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onBufferingComplete A");
            }

            public void onBufferingProgress(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onBufferingProgress A: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onCurrentPlayTime(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onCurrentPlayTime A: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onStreamingStarted(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onStreamingStarted A: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onStreamCompleted() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onStreamCompleted A");
            }

            public void onPlay() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlay A");
            }

            public void onPause() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPause A");
            }

            public void onStop() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onStop A");
            }

            public void onMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onMute A");
            }

            public void onUnMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onUnMute A");
            }

            public void onNext() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onNext A");
            }

            public void onPrevious() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPrevious A");
            }

            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onError A: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                Context context = MediaLauncherSingleton.this.getContext();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error: ");
                sb2.append(error.getMessage());
                Toast.makeText(context, sb2.toString(), 0).show();
            }

            public void onAddToList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onEnqueue A: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onRemoveFromList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onDequeue A: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onClearList() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onQueueClear A");
            }

            public void onGetList(JSONArray jSONArray) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onQueueFetch A: ");
                sb.append(jSONArray.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onCurrentPlaying(JSONObject jSONObject, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onCurrentPlaying A: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onShuffle(Boolean bool) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onShuffle A: ");
                sb.append(bool.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onRepeat(RepeatMode repeatMode) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onRepeat A : ");
                sb.append(repeatMode.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onControlStatus(int i, Boolean bool, Boolean bool2, RepeatMode repeatMode) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onControlStatus A: vol: ");
                sb.append(i);
                sb.append(", mute: ");
                sb.append(bool);
                sb.append(", shuffle: ");
                sb.append(bool2);
                sb.append(", repeat: ");
                sb.append(repeatMode.name());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onVolumeChange(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onVolumeChange A: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onPlayerInitialized() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerInitialized A");
            }

            public void onPlayerChange(String str) {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerChange A");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationResume() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationResume A");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationSuspend() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationSuspend A");
            }
        });
        mPhotoPlayer.addOnMessageListener(new OnPhotoPlayerListener() {
            public void onPlay() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlay P");
            }

            public void onPause() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPause P");
            }

            public void onStop() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onStop P");
            }

            public void onMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onMute P");
            }

            public void onUnMute() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onUnMute P");
            }

            public void onNext() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onNext P");
            }

            public void onPrevious() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPrevious P");
            }

            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onError P: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                Context context = MediaLauncherSingleton.this.getContext();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error: ");
                sb2.append(error.getMessage());
                Toast.makeText(context, sb2.toString(), 0).show();
            }

            public void onAddToList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onEnqueue P: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onRemoveFromList(JSONObject jSONObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onDequeue P: ");
                sb.append(jSONObject.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onClearList() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onQueueClear P");
            }

            public void onGetList(JSONArray jSONArray) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onQueueFetch P: ");
                sb.append(jSONArray.toString());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onCurrentPlaying(JSONObject jSONObject, String str) {
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onControlStatus(int i, Boolean bool) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onControlStatus P: vol: ");
                sb.append(i);
                sb.append(", mute: ");
                sb.append(bool);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onVolumeChange(int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("PlayerNotice: onVolumeChange P: ");
                sb.append(i);
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }

            public void onPlayerInitialized() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerInitialized P");
            }

            public void onPlayerChange(String str) {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onPlayerChange P");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationResume() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationResume P");
                MediaLauncherSingleton.this.getControlStatus();
            }

            public void onApplicationSuspend() {
                Log.v(MediaLauncherSingleton.TAG, "PlayerNotice: onApplicationSuspend P");
            }
        });
    }

    public static MediaLauncherSingleton getInstance(Context context) {
        if (mInstance == null) {
            mInstance = new MediaLauncherSingleton(context);
        }
        return mInstance;
    }

    public void setService(final Service service) {
        service.isDMPSupported(new Result<Boolean>() {
            public void onSuccess(Boolean bool) {
                if (bool.booleanValue()) {
                    MediaLauncherSingleton.this.mService = service;
                    MediaLauncherSingleton.this.initMediaPlayer();
                    CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.CONNECTED);
                    return;
                }
                Toast.makeText(MediaLauncherSingleton.this.getContext(), "DMP NOT supported by TV!", 0).show();
                CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
            }

            public void onError(Error error) {
                Context context = MediaLauncherSingleton.this.getContext();
                StringBuilder sb = new StringBuilder();
                sb.append("Error: ");
                sb.append(error.getMessage());
                Toast.makeText(context, sb.toString(), 0).show();
                CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
            }
        });
    }

    /* access modifiers changed from: private */
    public void resetService() {
        this.mService = null;
        CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
    }

    /* access modifiers changed from: 0000 */
    public Boolean isConnected() {
        if (this.mPlayerType == PlayerType.VIDEO) {
            return Boolean.valueOf(mVideoPlayer.isConnected());
        }
        if (this.mPlayerType == PlayerType.AUDIO) {
            return Boolean.valueOf(mAudioPlayer.isConnected());
        }
        if (this.mPlayerType == PlayerType.PHOTO) {
            return Boolean.valueOf(mPhotoPlayer.isConnected());
        }
        if (this.mPlayerType == PlayerType.STANDBY) {
            return Boolean.valueOf(mAudioPlayer.isConnected());
        }
        return Boolean.valueOf(false);
    }

    public void disconnect() {
        this.mFirstPlayerLaunch = Boolean.valueOf(false);
        if (getContext() == null) {
            CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
            return;
        }
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.disconnect(true, new Result<Client>() {
                public void onError(Error error) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("disconnect(): Error: ");
                    sb.append(error);
                    Log.v(MediaLauncherSingleton.TAG, sb.toString());
                }

                public void onSuccess(Client client) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("disconnect(): Success: ");
                    sb.append(client);
                    Log.v(MediaLauncherSingleton.TAG, sb.toString());
                    CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void playContent(String str, String str2, String str3, String str4) {
        AudioPlayer audioPlayer = mAudioPlayer;
        String str5 = TAG;
        if (audioPlayer == null || this.mService == null) {
            Log.v(str5, "playContent(): un-initialized mAudioPlayer.");
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Playing Content: ");
            sb.append(str);
            Log.v(str5, sb.toString());
            mAudioPlayer.playContent(Uri.parse(str), str2, str3, Uri.parse(str4), new Result<Boolean>() {
                public void onSuccess(Boolean bool) {
                    Log.v(MediaLauncherSingleton.TAG, "playContent(): onSuccess.");
                    if (MediaLauncherSingleton.this.mPlayerType != PlayerType.AUDIO) {
                        MediaLauncherSingleton.this.mPlayerType;
                        PlayerType playerType = PlayerType.STANDBY;
                        MediaLauncherSingleton.this.mPlayerType = PlayerType.AUDIO;
                    }
                }

                public void onError(Error error) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("playContent(): onError: ");
                    sb.append(error.getMessage());
                    Log.v(MediaLauncherSingleton.TAG, sb.toString());
                    Toast.makeText(MediaLauncherSingleton.this.getContext(), "Error in Launching Content!", 0).show();
                }
            });
        }
        mAudioPlayer.setOnConnectListener(new OnConnectListener() {
            public void onConnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnConnectListener() called!");
            }
        });
        mAudioPlayer.setOnDisconnectListener(new OnDisconnectListener() {
            public void onDisconnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnDisconnectListener() called!");
                MediaLauncherSingleton.this.resetService();
            }
        });
        mAudioPlayer.setOnErrorListener(new OnErrorListener() {
            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("setOnErrorListener() called: Error: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void playContent(String str, String str2) {
        PhotoPlayer photoPlayer = mPhotoPlayer;
        if (photoPlayer == null || this.mService == null) {
            Log.v(TAG, "playContent(): un-initialized mPhotoPlayer.");
        } else {
            photoPlayer.playContent(Uri.parse(str), str2, new Result<Boolean>() {
                public void onSuccess(Boolean bool) {
                    Log.v(MediaLauncherSingleton.TAG, "playContent(): onSuccess.");
                    if (MediaLauncherSingleton.this.mPlayerType != PlayerType.PHOTO) {
                        MediaLauncherSingleton.this.mPlayerType;
                        PlayerType playerType = PlayerType.STANDBY;
                        MediaLauncherSingleton.this.mPlayerType = PlayerType.PHOTO;
                    }
                }

                public void onError(Error error) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("playContent(): onError: ");
                    sb.append(error.getMessage());
                    Log.v(MediaLauncherSingleton.TAG, sb.toString());
                    Toast.makeText(MediaLauncherSingleton.this.getContext(), "Error in Launching Content!", 0).show();
                }
            });
        }
        mPhotoPlayer.setOnConnectListener(new OnConnectListener() {
            public void onConnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnConnectListener() called!");
            }
        });
        mPhotoPlayer.setOnDisconnectListener(new OnDisconnectListener() {
            public void onDisconnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnDisconnectListener() called!");
                MediaLauncherSingleton.this.resetService();
            }
        });
        mPhotoPlayer.setOnErrorListener(new OnErrorListener() {
            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("setOnErrorListener() called: Error: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }
        });
    }

    public void playContent(String str, String str2, String str3) {
        if (mVideoPlayer == null || this.mService == null) {
            Toast.makeText(getContext(), "playContent(): un-initialized mVideoPlayer.", 0).show();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Playing Content: ");
        sb.append(str);
        Log.v(TAG, sb.toString());
        mVideoPlayer.playContent(Uri.parse(str), str2, Uri.parse(str3), new Result<Boolean>() {
            public void onSuccess(Boolean bool) {
                if (MediaLauncherSingleton.this.mPlayerType != PlayerType.VIDEO) {
                    MediaLauncherSingleton.this.mPlayerType;
                    PlayerType playerType = PlayerType.STANDBY;
                    MediaLauncherSingleton.this.mPlayerType = PlayerType.VIDEO;
                }
            }

            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("playContent(): onError: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
                Context context = MediaLauncherSingleton.this.getContext();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error in Launching Content!onError: ");
                sb2.append(error.getMessage());
                Toast.makeText(context, sb2.toString(), 0).show();
            }
        });
        mVideoPlayer.setOnConnectListener(new OnConnectListener() {
            public void onConnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnConnectListener() called!");
            }
        });
        mVideoPlayer.setOnDisconnectListener(new OnDisconnectListener() {
            public void onDisconnect(Client client) {
                Log.v(MediaLauncherSingleton.TAG, "setOnDisconnectListener() called!");
                MediaLauncherSingleton.this.resetService();
            }
        });
        mVideoPlayer.setOnErrorListener(new OnErrorListener() {
            public void onError(Error error) {
                StringBuilder sb = new StringBuilder();
                sb.append("setOnErrorListener() called: Error: ");
                sb.append(error.getMessage());
                Log.v(MediaLauncherSingleton.TAG, sb.toString());
            }
        });
    }

    public void play() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            PhotoPlayer photoPlayer = mPhotoPlayer;
            if (photoPlayer != null) {
                photoPlayer.play();
            }
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            VideoPlayer videoPlayer = mVideoPlayer;
            if (videoPlayer != null) {
                videoPlayer.play();
            }
        } else {
            AudioPlayer audioPlayer = mAudioPlayer;
            if (audioPlayer != null) {
                audioPlayer.play();
            }
        }
    }

    public void pause() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            PhotoPlayer photoPlayer = mPhotoPlayer;
            if (photoPlayer != null) {
                photoPlayer.pause();
            }
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            VideoPlayer videoPlayer = mVideoPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
            }
        } else {
            AudioPlayer audioPlayer = mAudioPlayer;
            if (audioPlayer != null) {
                audioPlayer.pause();
            }
        }
    }

    public void stop() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.stop();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.stop();
        } else {
            mAudioPlayer.stop();
        }
    }

    /* access modifiers changed from: 0000 */
    public void forward() {
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.forward();
        }
    }

    /* access modifiers changed from: 0000 */
    public void rewind() {
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.rewind();
        }
    }

    /* access modifiers changed from: 0000 */
    public void mute() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.mute();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.mute();
        } else {
            mAudioPlayer.mute();
        }
    }

    /* access modifiers changed from: 0000 */
    public void unmute() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.unMute();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.unMute();
        } else {
            mAudioPlayer.unMute();
        }
    }

    /* access modifiers changed from: 0000 */
    public void enqueue(Uri uri, String str, Uri uri2) {
        mVideoPlayer.addToList(uri, str, uri2);
    }

    /* access modifiers changed from: 0000 */
    public void enqueue(Uri uri, String str, String str2, Uri uri2) {
        mAudioPlayer.addToList(uri, str, str2, uri2);
    }

    /* access modifiers changed from: 0000 */
    public void enqueue(Uri uri, String str) {
        mPhotoPlayer.addToList(uri, str);
    }

    /* access modifiers changed from: 0000 */
    public void enqueue(List<Map<String, String>> list, PlayerType playerType) {
        if (playerType == PlayerType.VIDEO) {
            mVideoPlayer.addToList(list);
        } else if (playerType == PlayerType.AUDIO) {
            mAudioPlayer.addToList(list);
        } else if (playerType == PlayerType.PHOTO) {
            mPhotoPlayer.addToList(list);
        }
    }

    /* access modifiers changed from: 0000 */
    public void dequeue(Uri uri) {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.removeFromList(uri);
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.removeFromList(uri);
        } else {
            mAudioPlayer.removeFromList(uri);
        }
    }

    /* access modifiers changed from: 0000 */
    public void fetchQueue() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.getList();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.getList();
        } else {
            mAudioPlayer.getList();
        }
    }

    /* access modifiers changed from: 0000 */
    public void clearQueue() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.clearList();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.clearList();
        } else {
            mAudioPlayer.clearList();
        }
    }

    /* access modifiers changed from: 0000 */
    public void repeatQueue() {
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.repeat();
        } else {
            mAudioPlayer.repeat();
        }
    }

    /* access modifiers changed from: 0000 */
    public void shuffleQueue() {
        if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.shuffle();
        }
    }

    public void seekTo(int i) {
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.seekTo(i, TimeUnit.MILLISECONDS);
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.seekTo(i, TimeUnit.MILLISECONDS);
        }
    }

    /* access modifiers changed from: 0000 */
    public void getControlStatus() {
        PlayerType playerType = this.mPlayerType;
        PlayerType playerType2 = PlayerType.PHOTO;
        String str = TAG;
        if (playerType == playerType2) {
            Log.d(str, "getControlStatus called for photoPlayer");
            mPhotoPlayer.getControlStatus();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            Log.d(str, "getControlStatus called for videoPlayer");
            mVideoPlayer.getControlStatus();
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            Log.d(str, "getControlStatus called for audioPlayer");
            mAudioPlayer.getControlStatus();
        }
    }

    /* access modifiers changed from: 0000 */
    public void setVolume(int i) {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.setVolume(i);
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.setVolume(i);
        } else {
            mAudioPlayer.setVolume(i);
        }
    }

    /* access modifiers changed from: 0000 */
    public void volumeUp() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.volumeUp();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.volumeUp();
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.volumeUp();
        }
    }

    /* access modifiers changed from: 0000 */
    public void volumeDown() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.volumeDown();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.volumeDown();
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.volumeDown();
        }
    }

    /* access modifiers changed from: 0000 */
    public void next() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.next();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.next();
        } else {
            mAudioPlayer.next();
        }
    }

    /* access modifiers changed from: 0000 */
    public void setRepeat(RepeatMode repeatMode) {
        if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.setRepeat(repeatMode);
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.setRepeat(repeatMode);
        }
    }

    /* access modifiers changed from: 0000 */
    public void setShuffle(Boolean bool) {
        if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.setShuffle(bool.booleanValue());
        }
    }

    /* access modifiers changed from: 0000 */
    public void previous() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.previous();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.previous();
        } else {
            mAudioPlayer.previous();
        }
    }

    /* access modifiers changed from: 0000 */
    public void resumeApplicationInForeground() {
        if (this.mPlayerType == PlayerType.PHOTO) {
            mPhotoPlayer.resumeApplicationInForeground();
        } else if (this.mPlayerType == PlayerType.VIDEO) {
            mVideoPlayer.resumeApplicationInForeground();
        } else if (this.mPlayerType == PlayerType.AUDIO) {
            mAudioPlayer.resumeApplicationInForeground();
        }
    }
}
