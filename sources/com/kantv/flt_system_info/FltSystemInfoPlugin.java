package com.kantv.flt_system_info;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import java.util.HashMap;

public class FltSystemInfoPlugin implements MethodCallHandler, StreamHandler {
    private final String TAG = FltSystemInfoPlugin.class.getSimpleName();
    private Context mContext;
    private KeyBoardListener mKeyBoardListener;

    public static void registerWith(Registrar registrar) {
        FltSystemInfoPlugin fltSystemInfoPlugin = new FltSystemInfoPlugin(registrar.activity());
        new MethodChannel(registrar.messenger(), "flt_system_info").setMethodCallHandler(fltSystemInfoPlugin);
        new EventChannel(registrar.messenger(), "plugins/fltSystemInfo/event").setStreamHandler(fltSystemInfoPlugin);
    }

    FltSystemInfoPlugin(Context context) {
        this.mContext = context;
        this.mKeyBoardListener = new KeyBoardListener();
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        StringBuilder sb = new StringBuilder();
        sb.append("onMethodCall call:");
        sb.append(methodCall);
        sb.append(" result:");
        sb.append(result);
        Log.d("FltSystemInfoPlugin", sb.toString());
        if (methodCall.method.equals("getPlatformVersion")) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Android ");
            sb2.append(VERSION.RELEASE);
            result.success(sb2.toString());
            return;
        }
        result.notImplemented();
    }

    public void onListen(Object obj, EventSink eventSink) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onListen Object:");
        sb.append(obj);
        sb.append(" EventSink:");
        sb.append(eventSink.toString());
        sb.append(" ");
        sb.append(eventSink);
        Log.d(str, sb.toString());
        if (eventSink != null) {
            setMargin(eventSink);
        }
        KeyBoardListener keyBoardListener = this.mKeyBoardListener;
        if (keyBoardListener != null && eventSink != null && this.mContext != null) {
            keyBoardListener.setEvent(eventSink);
            ((Activity) this.mContext).getApplication().registerActivityLifecycleCallbacks(this.mKeyBoardListener);
        }
    }

    public void onCancel(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("onCancel Object:");
        sb.append(obj);
        sb.append(" EventSink:");
        sb.append(obj);
        Log.d("FltSystemInfoPlugin", sb.toString());
        Context context = this.mContext;
        if (context != null && this.mKeyBoardListener != null) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this.mKeyBoardListener);
            this.mKeyBoardListener.setEvent(null);
            this.mKeyBoardListener = null;
            this.mContext = null;
        }
    }

    private void setMargin(EventSink eventSink) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("top", Double.valueOf(getStatusBarHeight(this.mContext)));
        Double valueOf = Double.valueOf(0.0d);
        hashMap2.put("left", valueOf);
        hashMap2.put("bottom", valueOf);
        hashMap2.put(TtmlNode.RIGHT, valueOf);
        hashMap.put("event", "SetValues");
        hashMap.put("safeArea", hashMap2);
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("设置显示边界:");
        sb.append(hashMap);
        Log.d(str, sb.toString());
        eventSink.success(hashMap);
    }

    public static double getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        double dimensionPixelSize = (double) (identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 24);
        double d = (double) context.getResources().getDisplayMetrics().density;
        Double.isNaN(dimensionPixelSize);
        Double.isNaN(d);
        return dimensionPixelSize / d;
    }
}
