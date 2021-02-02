package com.idlefish.flutterboost;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener;
import io.flutter.plugin.common.PluginRegistry.NewIntentListener;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener;
import io.flutter.plugin.common.PluginRegistry.UserLeaveHintListener;
import io.flutter.plugin.common.PluginRegistry.ViewDestroyListener;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterView;
import io.flutter.view.TextureRegistry;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

class BoostRegistrar implements Registrar, FlutterPlugin, ActivityAware {
    private static final String TAG = "ShimRegistrar";
    private ActivityPluginBinding activityPluginBinding;
    private final Set<ActivityResultListener> activityResultListeners = new HashSet();
    private final Map<String, Object> globalRegistrarMap;
    private final Set<NewIntentListener> newIntentListeners = new HashSet();
    private FlutterPluginBinding pluginBinding;
    private final String pluginId;
    private final Set<RequestPermissionsResultListener> requestPermissionsResultListeners = new HashSet();
    private final Set<UserLeaveHintListener> userLeaveHintListeners = new HashSet();
    private final Set<ViewDestroyListener> viewDestroyListeners = new HashSet();

    public BoostRegistrar(@NonNull String str, @NonNull Map<String, Object> map) {
        this.pluginId = str;
        this.globalRegistrarMap = map;
    }

    public Activity activity() {
        ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
        if (activityPluginBinding2 != null) {
            return activityPluginBinding2.getActivity();
        }
        if (NewFlutterBoost.instance().currentActivity() != null) {
            return NewFlutterBoost.instance().currentActivity();
        }
        return null;
    }

    public Context context() {
        FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getApplicationContext();
        }
        return null;
    }

    public Context activeContext() {
        return this.activityPluginBinding == null ? context() : activity();
    }

    public BinaryMessenger messenger() {
        FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getFlutterEngine().getDartExecutor();
        }
        return null;
    }

    public TextureRegistry textures() {
        FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getFlutterEngine().getRenderer();
        }
        return null;
    }

    public PlatformViewRegistry platformViewRegistry() {
        FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getFlutterEngine().getPlatformViewsController().getRegistry();
        }
        return null;
    }

    public FlutterView view() {
        throw new UnsupportedOperationException("The new embedding does not support the old FlutterView.");
    }

    public String lookupKeyForAsset(String str) {
        return FlutterMain.getLookupKeyForAsset(str);
    }

    public String lookupKeyForAsset(String str, String str2) {
        return FlutterMain.getLookupKeyForAsset(str, str2);
    }

    public Registrar publish(Object obj) {
        this.globalRegistrarMap.put(this.pluginId, obj);
        return this;
    }

    public Registrar addRequestPermissionsResultListener(RequestPermissionsResultListener requestPermissionsResultListener) {
        this.requestPermissionsResultListeners.add(requestPermissionsResultListener);
        ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
        if (activityPluginBinding2 != null) {
            activityPluginBinding2.addRequestPermissionsResultListener(requestPermissionsResultListener);
        }
        return this;
    }

    public Registrar addActivityResultListener(ActivityResultListener activityResultListener) {
        this.activityResultListeners.add(activityResultListener);
        ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
        if (activityPluginBinding2 != null) {
            activityPluginBinding2.addActivityResultListener(activityResultListener);
        }
        return this;
    }

    public Registrar addNewIntentListener(NewIntentListener newIntentListener) {
        this.newIntentListeners.add(newIntentListener);
        ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
        if (activityPluginBinding2 != null) {
            activityPluginBinding2.addOnNewIntentListener(newIntentListener);
        }
        return this;
    }

    public Registrar addUserLeaveHintListener(UserLeaveHintListener userLeaveHintListener) {
        this.userLeaveHintListeners.add(userLeaveHintListener);
        ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
        if (activityPluginBinding2 != null) {
            activityPluginBinding2.addOnUserLeaveHintListener(userLeaveHintListener);
        }
        return this;
    }

    @NonNull
    public Registrar addViewDestroyListener(@NonNull ViewDestroyListener viewDestroyListener) {
        this.viewDestroyListeners.add(viewDestroyListener);
        return this;
    }

    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        Log.v(TAG, "Attached to FlutterEngine.");
        this.pluginBinding = flutterPluginBinding;
    }

    public void onDetachedFromEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        Log.v(TAG, "Detached from FlutterEngine.");
        for (ViewDestroyListener onViewDestroy : this.viewDestroyListeners) {
            onViewDestroy.onViewDestroy(null);
        }
        this.pluginBinding = null;
    }

    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding2) {
        Log.v(TAG, "Attached to an Activity.");
        this.activityPluginBinding = activityPluginBinding2;
        addExistingListenersToActivityPluginBinding();
    }

    public void onDetachedFromActivityForConfigChanges() {
        Log.v(TAG, "Detached from an Activity for config changes.");
        this.activityPluginBinding = null;
    }

    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding2) {
        Log.v(TAG, "Reconnected to an Activity after config changes.");
        this.activityPluginBinding = activityPluginBinding2;
        addExistingListenersToActivityPluginBinding();
    }

    public void onDetachedFromActivity() {
        Log.v(TAG, "Detached from an Activity.");
        this.activityPluginBinding = null;
    }

    private void addExistingListenersToActivityPluginBinding() {
        for (RequestPermissionsResultListener addRequestPermissionsResultListener : this.requestPermissionsResultListeners) {
            this.activityPluginBinding.addRequestPermissionsResultListener(addRequestPermissionsResultListener);
        }
        for (ActivityResultListener addActivityResultListener : this.activityResultListeners) {
            this.activityPluginBinding.addActivityResultListener(addActivityResultListener);
        }
        for (NewIntentListener addOnNewIntentListener : this.newIntentListeners) {
            this.activityPluginBinding.addOnNewIntentListener(addOnNewIntentListener);
        }
        for (UserLeaveHintListener addOnUserLeaveHintListener : this.userLeaveHintListeners) {
            this.activityPluginBinding.addOnUserLeaveHintListener(addOnUserLeaveHintListener);
        }
    }
}
