package io.flutter.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener;
import io.flutter.plugin.common.PluginRegistry.NewIntentListener;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener;
import io.flutter.plugin.common.PluginRegistry.UserLeaveHintListener;
import io.flutter.plugin.common.PluginRegistry.ViewDestroyListener;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterView;
import io.flutter.view.TextureRegistry;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class FlutterPluginRegistry implements PluginRegistry, RequestPermissionsResultListener, ActivityResultListener, NewIntentListener, UserLeaveHintListener, ViewDestroyListener {
    private static final String TAG = "FlutterPluginRegistry";
    /* access modifiers changed from: private */
    public Activity mActivity;
    /* access modifiers changed from: private */
    public final List<ActivityResultListener> mActivityResultListeners = new ArrayList(0);
    /* access modifiers changed from: private */
    public Context mAppContext;
    /* access modifiers changed from: private */
    public FlutterView mFlutterView;
    /* access modifiers changed from: private */
    public FlutterNativeView mNativeView;
    /* access modifiers changed from: private */
    public final List<NewIntentListener> mNewIntentListeners = new ArrayList(0);
    /* access modifiers changed from: private */
    public final PlatformViewsController mPlatformViewsController;
    /* access modifiers changed from: private */
    public final Map<String, Object> mPluginMap = new LinkedHashMap(0);
    /* access modifiers changed from: private */
    public final List<RequestPermissionsResultListener> mRequestPermissionsResultListeners = new ArrayList(0);
    /* access modifiers changed from: private */
    public final List<UserLeaveHintListener> mUserLeaveHintListeners = new ArrayList(0);
    /* access modifiers changed from: private */
    public final List<ViewDestroyListener> mViewDestroyListeners = new ArrayList(0);

    private class FlutterRegistrar implements Registrar {
        private final String pluginKey;

        FlutterRegistrar(String str) {
            this.pluginKey = str;
        }

        public Activity activity() {
            return FlutterPluginRegistry.this.mActivity;
        }

        public Context context() {
            return FlutterPluginRegistry.this.mAppContext;
        }

        public Context activeContext() {
            return FlutterPluginRegistry.this.mActivity != null ? FlutterPluginRegistry.this.mActivity : FlutterPluginRegistry.this.mAppContext;
        }

        public BinaryMessenger messenger() {
            return FlutterPluginRegistry.this.mNativeView;
        }

        public TextureRegistry textures() {
            return FlutterPluginRegistry.this.mFlutterView;
        }

        public PlatformViewRegistry platformViewRegistry() {
            return FlutterPluginRegistry.this.mPlatformViewsController.getRegistry();
        }

        public FlutterView view() {
            return FlutterPluginRegistry.this.mFlutterView;
        }

        public String lookupKeyForAsset(String str) {
            return FlutterMain.getLookupKeyForAsset(str);
        }

        public String lookupKeyForAsset(String str, String str2) {
            return FlutterMain.getLookupKeyForAsset(str, str2);
        }

        public Registrar publish(Object obj) {
            FlutterPluginRegistry.this.mPluginMap.put(this.pluginKey, obj);
            return this;
        }

        public Registrar addRequestPermissionsResultListener(RequestPermissionsResultListener requestPermissionsResultListener) {
            FlutterPluginRegistry.this.mRequestPermissionsResultListeners.add(requestPermissionsResultListener);
            return this;
        }

        public Registrar addActivityResultListener(ActivityResultListener activityResultListener) {
            FlutterPluginRegistry.this.mActivityResultListeners.add(activityResultListener);
            return this;
        }

        public Registrar addNewIntentListener(NewIntentListener newIntentListener) {
            FlutterPluginRegistry.this.mNewIntentListeners.add(newIntentListener);
            return this;
        }

        public Registrar addUserLeaveHintListener(UserLeaveHintListener userLeaveHintListener) {
            FlutterPluginRegistry.this.mUserLeaveHintListeners.add(userLeaveHintListener);
            return this;
        }

        public Registrar addViewDestroyListener(ViewDestroyListener viewDestroyListener) {
            FlutterPluginRegistry.this.mViewDestroyListeners.add(viewDestroyListener);
            return this;
        }
    }

    public FlutterPluginRegistry(FlutterNativeView flutterNativeView, Context context) {
        this.mNativeView = flutterNativeView;
        this.mAppContext = context;
        this.mPlatformViewsController = new PlatformViewsController();
    }

    public FlutterPluginRegistry(FlutterEngine flutterEngine, Context context) {
        this.mAppContext = context;
        this.mPlatformViewsController = new PlatformViewsController();
    }

    public boolean hasPlugin(String str) {
        return this.mPluginMap.containsKey(str);
    }

    public <T> T valuePublishedByPlugin(String str) {
        return this.mPluginMap.get(str);
    }

    public Registrar registrarFor(String str) {
        if (!this.mPluginMap.containsKey(str)) {
            this.mPluginMap.put(str, null);
            return new FlutterRegistrar(str);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Plugin key ");
        sb.append(str);
        sb.append(" is already in use");
        throw new IllegalStateException(sb.toString());
    }

    public void attach(FlutterView flutterView, Activity activity) {
        this.mFlutterView = flutterView;
        this.mActivity = activity;
        this.mPlatformViewsController.attach(activity, flutterView, flutterView.getDartExecutor());
    }

    public void detach() {
        this.mPlatformViewsController.detach();
        this.mPlatformViewsController.onFlutterViewDestroyed();
        this.mFlutterView = null;
        this.mActivity = null;
    }

    public void onPreEngineRestart() {
        this.mPlatformViewsController.onPreEngineRestart();
    }

    public PlatformViewsController getPlatformViewsController() {
        return this.mPlatformViewsController;
    }

    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        for (RequestPermissionsResultListener onRequestPermissionsResult : this.mRequestPermissionsResultListeners) {
            if (onRequestPermissionsResult.onRequestPermissionsResult(i, strArr, iArr)) {
                return true;
            }
        }
        return false;
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        for (ActivityResultListener onActivityResult : this.mActivityResultListeners) {
            if (onActivityResult.onActivityResult(i, i2, intent)) {
                return true;
            }
        }
        return false;
    }

    public boolean onNewIntent(Intent intent) {
        for (NewIntentListener onNewIntent : this.mNewIntentListeners) {
            if (onNewIntent.onNewIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    public void onUserLeaveHint() {
        for (UserLeaveHintListener onUserLeaveHint : this.mUserLeaveHintListeners) {
            onUserLeaveHint.onUserLeaveHint();
        }
    }

    public boolean onViewDestroy(FlutterNativeView flutterNativeView) {
        boolean z = false;
        for (ViewDestroyListener onViewDestroy : this.mViewDestroyListeners) {
            if (onViewDestroy.onViewDestroy(flutterNativeView)) {
                z = true;
            }
        }
        return z;
    }

    public void destroy() {
        this.mPlatformViewsController.onFlutterViewDestroyed();
    }
}
