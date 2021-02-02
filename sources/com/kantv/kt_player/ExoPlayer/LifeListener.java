package com.kantv.kt_player.ExoPlayer;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.util.Log;

public class LifeListener implements ActivityLifecycleCallbacks {
    private String TAG = "LifeListener";
    private Activity mCurrentActivity;

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    LifeListener(Activity activity) {
        this.mCurrentActivity = activity;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.mCurrentActivity = activity;
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onActivityCreated ");
        sb.append(activity);
        Log.d(str, sb.toString());
    }

    public void onActivityResumed(Activity activity) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onActivityResumed ");
        sb.append(activity);
        Log.d(str, sb.toString());
        this.mCurrentActivity = activity;
    }

    public Activity getCurrentActivity() {
        return this.mCurrentActivity;
    }
}
