package com.kantv.flt_system_info;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import io.flutter.plugin.common.EventChannel.EventSink;
import java.util.HashMap;

public class KeyBoardListener implements ActivityLifecycleCallbacks, OnGlobalLayoutListener {
    private final String TAG = FltSystemInfoPlugin.class.getSimpleName();
    private EventSink eventSink;
    private boolean isShowKeyBoard;
    private Activity mCurrentActivity;

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public void setEvent(EventSink eventSink2) {
        this.eventSink = eventSink2;
    }

    public void onActivityResumed(Activity activity) {
        if (activity != null) {
            this.mCurrentActivity = activity;
            setOnKeyBoardListener(activity);
        }
    }

    public void onActivityPaused(Activity activity) {
        if (activity != null) {
            removeOnKeyBoardListener(activity);
        }
    }

    private void setOnKeyBoardListener(Activity activity) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setOnKeyBoardListener:");
        sb.append(activity);
        Log.d(str, sb.toString());
        activity.getWindow().getDecorView().findViewById(16908290).getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    private void removeOnKeyBoardListener(Activity activity) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("removeOnKeyBoardListener:");
        sb.append(activity);
        Log.d(str, sb.toString());
        activity.getWindow().getDecorView().findViewById(16908290).getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    public void onGlobalLayout() {
        Activity activity = this.mCurrentActivity;
        if (activity != null) {
            View findViewById = activity.getWindow().getDecorView().findViewById(16908290);
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onGlobalLayout ");
            sb.append(this.mCurrentActivity);
            Log.d(str, sb.toString());
            Rect rect = new Rect();
            findViewById.getWindowVisibleDisplayFrame(rect);
            int bottom = findViewById.getBottom() - rect.bottom;
            String str2 = "value";
            String str3 = "KeyboardWillChangeBottom";
            String str4 = "event";
            if (bottom > findViewById.getBottom() / 3) {
                DisplayMetrics displayMetrics = findViewById.getResources().getDisplayMetrics();
                String str5 = this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("键盘弹出:");
                sb2.append(bottom);
                Log.d(str5, sb2.toString());
                HashMap hashMap = new HashMap();
                hashMap.put(str4, str3);
                double d = (double) bottom;
                double d2 = (double) displayMetrics.density;
                Double.isNaN(d);
                Double.isNaN(d2);
                hashMap.put(str2, Double.valueOf(d / d2));
                this.eventSink.success(hashMap);
                this.isShowKeyBoard = true;
            } else if (this.isShowKeyBoard) {
                this.isShowKeyBoard = false;
                HashMap hashMap2 = new HashMap();
                hashMap2.put(str4, str3);
                hashMap2.put(str2, Double.valueOf(0.0d));
                this.eventSink.success(hashMap2);
                String str6 = this.TAG;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("键盘收起:");
                sb3.append(bottom);
                Log.d(str6, sb3.toString());
            }
        }
    }
}
