package com.kantv.kt_player;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.kantv.kt_player.ExoPlayer.ExoPlayView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformView.CC;
import java.util.Map;

public class KtPlatformView implements PlatformView, MethodCallHandler {
    public static final String TAG = "NewBoostFlutterActivity";
    private final Activity mActivity;
    private ExoPlayView mExoPlayView;

    @SuppressLint({"NewApi"})
    public /* synthetic */ void onInputConnectionLocked() {
        CC.$default$onInputConnectionLocked(this);
    }

    @SuppressLint({"NewApi"})
    public /* synthetic */ void onInputConnectionUnlocked() {
        CC.$default$onInputConnectionUnlocked(this);
    }

    public KtPlatformView(Context context, BinaryMessenger binaryMessenger, int i, Map<String, Object> map, Activity activity) {
        this.mActivity = activity;
        StringBuilder sb = new StringBuilder();
        sb.append("KtPlatformView ");
        sb.append(activity);
        sb.append(" ");
        sb.append(context);
        Log.d(TAG, sb.toString());
        this.mExoPlayView = new ExoPlayView(activity);
        this.mExoPlayView.setDefaultConfig();
        this.mExoPlayView.initVideo();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("plugins/kt_player/method_");
        sb2.append(i);
        new MethodChannel(binaryMessenger, sb2.toString()).setMethodCallHandler(this);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("plugins/kt_player/event_");
        sb3.append(i);
        new EventChannel(binaryMessenger, sb3.toString()).setStreamHandler(this.mExoPlayView);
    }

    public View getView() {
        return this.mExoPlayView;
    }

    public void dispose() {
        ExoPlayView exoPlayView = this.mExoPlayView;
        if (exoPlayView != null) {
            exoPlayView.release();
            this.mExoPlayView = null;
        }
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        String str = TAG;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("onMethodCall ");
            sb.append(methodCall.method);
            sb.append(" args:");
            sb.append(methodCall.arguments);
            Log.e(str, sb.toString());
            if (methodCall.method.equals("getPlatformVersion")) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Android ");
                sb2.append(VERSION.RELEASE);
                result.success(sb2.toString());
            } else if (methodCall.method.equals("setIsLive")) {
                this.mExoPlayView.setIsLive(((Boolean) methodCall.arguments).booleanValue());
                result.success(Boolean.valueOf(true));
            } else if (methodCall.method.equals("setShowMoreBtn")) {
                result.success(Boolean.valueOf(true));
            } else if (methodCall.method.equals("setShowBarrageBtn")) {
                result.success(Boolean.valueOf(true));
            } else if (methodCall.method.equals("setShowBarrageSendBtn")) {
                result.success(Boolean.valueOf(true));
            } else {
                String str2 = "url";
                if (methodCall.method.equals("play")) {
                    Map map = (Map) methodCall.arguments;
                    this.mExoPlayView.setSeekOnStart(0);
                    this.mExoPlayView.setUp((String) map.get(str2), true, this.mExoPlayView.getTitle());
                    this.mExoPlayView.startPlayLogic();
                    result.success(Boolean.valueOf(true));
                } else if (methodCall.method.equals("resume")) {
                    this.mExoPlayView.onVideoResume();
                    result.success(Boolean.valueOf(true));
                } else if (methodCall.method.equals("pause")) {
                    this.mExoPlayView.onVideoPause();
                    result.success(Boolean.valueOf(true));
                } else if (methodCall.method.equals("setTitle")) {
                    this.mExoPlayView.setTitle((String) methodCall.arguments);
                    result.success(Boolean.valueOf(true));
                } else if (methodCall.method.equals("joint_play")) {
                    Map map2 = (Map) methodCall.arguments;
                    this.mExoPlayView.setSeekOnStart(0);
                    this.mExoPlayView.setUp((String) map2.get(str2), true, this.mExoPlayView.getTitle());
                    this.mExoPlayView.startPlayLogic();
                    result.success(Boolean.valueOf(true));
                } else if (methodCall.method.equals("dispose")) {
                    if (this.mExoPlayView != null) {
                        this.mExoPlayView.release();
                        this.mExoPlayView = null;
                    }
                } else if (methodCall.method.equals("showMsg")) {
                    Toast.makeText(this.mActivity, (String) ((Map) methodCall.arguments).get("msg"), 1).show();
                    result.success(Boolean.valueOf(true));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
