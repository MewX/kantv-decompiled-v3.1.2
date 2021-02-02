package com.kantv.kt_player;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.kantv.android.screen.androidupnpdemo.entity.TestEvent;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.PluginRegistry.ViewDestroyListener;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.view.FlutterNativeView;
import java.util.Map;
import org.greenrobot.eventbus.EventBus;

public class KtPlatformViewFactory extends PlatformViewFactory {
    public static final String ACTIVITY_PAUSE = "onActivityPaused";
    public static final String ACTIVITY_RESUME = "onActivityResume";
    /* access modifiers changed from: private */
    public Activity mActivity;
    /* access modifiers changed from: private */
    public final Context mContext;
    /* access modifiers changed from: private */
    public final LifeListener mLifeListener;
    private final BinaryMessenger messenger;

    public class LifeListener implements ActivityLifecycleCallbacks {
        private String TAG = "LifeListener";

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }

        public LifeListener() {
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
            KtPlatformViewFactory.this.mActivity = activity;
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
            KtPlatformViewFactory.this.mActivity = activity;
            TestEvent testEvent = new TestEvent();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onActivityResume@");
            sb2.append(activity.getLocalClassName());
            testEvent.message = sb2.toString();
            EventBus.getDefault().post(testEvent);
        }

        public void onActivityPaused(Activity activity) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onActivityPaused ");
            sb.append(activity);
            Log.d(str, sb.toString());
            TestEvent testEvent = new TestEvent();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onActivityPaused@");
            sb2.append(activity.getLocalClassName());
            testEvent.message = sb2.toString();
            EventBus.getDefault().post(testEvent);
        }
    }

    public KtPlatformViewFactory(Registrar registrar) {
        super(StandardMessageCodec.INSTANCE);
        this.messenger = registrar.messenger();
        this.mContext = registrar.context();
        if (this.mContext instanceof Application) {
            this.mLifeListener = new LifeListener();
            ((Application) this.mContext).registerActivityLifecycleCallbacks(this.mLifeListener);
            registrar.addViewDestroyListener(new ViewDestroyListener() {
                public boolean onViewDestroy(FlutterNativeView flutterNativeView) {
                    Log.d(KtPlatformView.TAG, "onViewDestroy");
                    if (KtPlatformViewFactory.this.mContext != null) {
                        ((Application) KtPlatformViewFactory.this.mContext).unregisterActivityLifecycleCallbacks(KtPlatformViewFactory.this.mLifeListener);
                    }
                    return false;
                }
            });
            return;
        }
        throw new RuntimeException("必须在Application 注册KtPlayer插件");
    }

    public PlatformView create(Context context, int i, Object obj) {
        Map map = (Map) obj;
        StringBuilder sb = new StringBuilder();
        sb.append("create  ");
        sb.append(this.mContext);
        sb.append(" ");
        sb.append(this.mActivity);
        Log.d(KtPlatformView.TAG, sb.toString());
        KtPlatformView ktPlatformView = new KtPlatformView(context, this.messenger, i, map, this.mActivity);
        return ktPlatformView;
    }
}
