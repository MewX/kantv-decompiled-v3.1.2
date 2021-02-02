package io.flutter.embedding.engine;

import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import io.flutter.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityControlSurface;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverAware;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverControlSurface;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverPluginBinding;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderAware;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderControlSurface;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderPluginBinding;
import io.flutter.embedding.engine.plugins.service.ServiceAware;
import io.flutter.embedding.engine.plugins.service.ServiceAware.OnModeChangeListener;
import io.flutter.embedding.engine.plugins.service.ServiceControlSurface;
import io.flutter.embedding.engine.plugins.service.ServicePluginBinding;
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener;
import io.flutter.plugin.common.PluginRegistry.NewIntentListener;
import io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener;
import io.flutter.plugin.common.PluginRegistry.UserLeaveHintListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class FlutterEnginePluginRegistry implements PluginRegistry, ActivityControlSurface, ServiceControlSurface, BroadcastReceiverControlSurface, ContentProviderControlSurface {
    private static final String TAG = "FlutterEnginePluginRegistry";
    @Nullable
    private Activity activity;
    @NonNull
    private final Map<Class<? extends FlutterPlugin>, ActivityAware> activityAwarePlugins = new HashMap();
    @Nullable
    private FlutterEngineActivityPluginBinding activityPluginBinding;
    @Nullable
    private BroadcastReceiver broadcastReceiver;
    @NonNull
    private final Map<Class<? extends FlutterPlugin>, BroadcastReceiverAware> broadcastReceiverAwarePlugins = new HashMap();
    @Nullable
    private FlutterEngineBroadcastReceiverPluginBinding broadcastReceiverPluginBinding;
    @Nullable
    private ContentProvider contentProvider;
    @NonNull
    private final Map<Class<? extends FlutterPlugin>, ContentProviderAware> contentProviderAwarePlugins = new HashMap();
    @Nullable
    private FlutterEngineContentProviderPluginBinding contentProviderPluginBinding;
    @NonNull
    private final FlutterEngineAndroidLifecycle flutterEngineAndroidLifecycle;
    private boolean isWaitingForActivityReattachment = false;
    @NonNull
    private final FlutterPluginBinding pluginBinding;
    @NonNull
    private final Map<Class<? extends FlutterPlugin>, FlutterPlugin> plugins = new HashMap();
    @Nullable
    private Service service;
    @NonNull
    private final Map<Class<? extends FlutterPlugin>, ServiceAware> serviceAwarePlugins = new HashMap();
    @Nullable
    private FlutterEngineServicePluginBinding servicePluginBinding;

    private static class FlutterEngineActivityPluginBinding implements ActivityPluginBinding {
        @NonNull
        private final Activity activity;
        @NonNull
        private final Set<ActivityResultListener> onActivityResultListeners = new HashSet();
        @NonNull
        private final Set<NewIntentListener> onNewIntentListeners = new HashSet();
        @NonNull
        private final Set<RequestPermissionsResultListener> onRequestPermissionsResultListeners = new HashSet();
        @NonNull
        private final Set<UserLeaveHintListener> onUserLeaveHintListeners = new HashSet();

        public FlutterEngineActivityPluginBinding(@NonNull Activity activity2) {
            this.activity = activity2;
        }

        @NonNull
        public Activity getActivity() {
            return this.activity;
        }

        public void addRequestPermissionsResultListener(@NonNull RequestPermissionsResultListener requestPermissionsResultListener) {
            this.onRequestPermissionsResultListeners.add(requestPermissionsResultListener);
        }

        public void removeRequestPermissionsResultListener(@NonNull RequestPermissionsResultListener requestPermissionsResultListener) {
            this.onRequestPermissionsResultListeners.remove(requestPermissionsResultListener);
        }

        /* access modifiers changed from: 0000 */
        public boolean onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
            Iterator it = this.onRequestPermissionsResultListeners.iterator();
            while (true) {
                boolean z = false;
                while (true) {
                    if (!it.hasNext()) {
                        return z;
                    }
                    if (((RequestPermissionsResultListener) it.next()).onRequestPermissionsResult(i, strArr, iArr) || z) {
                        z = true;
                    }
                }
            }
        }

        public void addActivityResultListener(@NonNull ActivityResultListener activityResultListener) {
            this.onActivityResultListeners.add(activityResultListener);
        }

        public void removeActivityResultListener(@NonNull ActivityResultListener activityResultListener) {
            this.onActivityResultListeners.remove(activityResultListener);
        }

        /* access modifiers changed from: 0000 */
        public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
            Iterator it = this.onActivityResultListeners.iterator();
            while (true) {
                boolean z = false;
                while (true) {
                    if (!it.hasNext()) {
                        return z;
                    }
                    if (((ActivityResultListener) it.next()).onActivityResult(i, i2, intent) || z) {
                        z = true;
                    }
                }
            }
        }

        public void addOnNewIntentListener(@NonNull NewIntentListener newIntentListener) {
            this.onNewIntentListeners.add(newIntentListener);
        }

        public void removeOnNewIntentListener(@NonNull NewIntentListener newIntentListener) {
            this.onNewIntentListeners.remove(newIntentListener);
        }

        /* access modifiers changed from: 0000 */
        public void onNewIntent(@Nullable Intent intent) {
            for (NewIntentListener onNewIntent : this.onNewIntentListeners) {
                onNewIntent.onNewIntent(intent);
            }
        }

        public void addOnUserLeaveHintListener(@NonNull UserLeaveHintListener userLeaveHintListener) {
            this.onUserLeaveHintListeners.add(userLeaveHintListener);
        }

        public void removeOnUserLeaveHintListener(@NonNull UserLeaveHintListener userLeaveHintListener) {
            this.onUserLeaveHintListeners.remove(userLeaveHintListener);
        }

        /* access modifiers changed from: 0000 */
        public void onUserLeaveHint() {
            for (UserLeaveHintListener onUserLeaveHint : this.onUserLeaveHintListeners) {
                onUserLeaveHint.onUserLeaveHint();
            }
        }
    }

    private static class FlutterEngineBroadcastReceiverPluginBinding implements BroadcastReceiverPluginBinding {
        @NonNull
        private final BroadcastReceiver broadcastReceiver;

        FlutterEngineBroadcastReceiverPluginBinding(@NonNull BroadcastReceiver broadcastReceiver2) {
            this.broadcastReceiver = broadcastReceiver2;
        }

        @NonNull
        public BroadcastReceiver getBroadcastReceiver() {
            return this.broadcastReceiver;
        }
    }

    private static class FlutterEngineContentProviderPluginBinding implements ContentProviderPluginBinding {
        @NonNull
        private final ContentProvider contentProvider;

        FlutterEngineContentProviderPluginBinding(@NonNull ContentProvider contentProvider2) {
            this.contentProvider = contentProvider2;
        }

        @NonNull
        public ContentProvider getContentProvider() {
            return this.contentProvider;
        }
    }

    private static class FlutterEngineServicePluginBinding implements ServicePluginBinding {
        @NonNull
        private final Set<OnModeChangeListener> onModeChangeListeners = new HashSet();
        @NonNull
        private final Service service;

        FlutterEngineServicePluginBinding(@NonNull Service service2) {
            this.service = service2;
        }

        @NonNull
        public Service getService() {
            return this.service;
        }

        public void addOnModeChangeListener(@NonNull OnModeChangeListener onModeChangeListener) {
            this.onModeChangeListeners.add(onModeChangeListener);
        }

        public void removeOnModeChangeListener(@NonNull OnModeChangeListener onModeChangeListener) {
            this.onModeChangeListeners.remove(onModeChangeListener);
        }

        /* access modifiers changed from: 0000 */
        public void onMoveToForeground() {
            for (OnModeChangeListener onMoveToForeground : this.onModeChangeListeners) {
                onMoveToForeground.onMoveToForeground();
            }
        }

        /* access modifiers changed from: 0000 */
        public void onMoveToBackground() {
            for (OnModeChangeListener onMoveToBackground : this.onModeChangeListeners) {
                onMoveToBackground.onMoveToBackground();
            }
        }
    }

    FlutterEnginePluginRegistry(@NonNull Context context, @NonNull FlutterEngine flutterEngine, @NonNull FlutterEngineAndroidLifecycle flutterEngineAndroidLifecycle2) {
        this.flutterEngineAndroidLifecycle = flutterEngineAndroidLifecycle2;
        this.pluginBinding = new FlutterPluginBinding(context, flutterEngine, flutterEngineAndroidLifecycle2);
    }

    public void destroy() {
        Log.d(TAG, "Destroying.");
        detachFromAndroidComponent();
        this.flutterEngineAndroidLifecycle.destroy();
        removeAll();
    }

    public void add(@NonNull FlutterPlugin flutterPlugin) {
        StringBuilder sb = new StringBuilder();
        sb.append("Adding plugin: ");
        sb.append(flutterPlugin);
        Log.v(TAG, sb.toString());
        this.plugins.put(flutterPlugin.getClass(), flutterPlugin);
        flutterPlugin.onAttachedToEngine(this.pluginBinding);
        if (flutterPlugin instanceof ActivityAware) {
            ActivityAware activityAware = (ActivityAware) flutterPlugin;
            this.activityAwarePlugins.put(flutterPlugin.getClass(), activityAware);
            if (isAttachedToActivity()) {
                activityAware.onAttachedToActivity(this.activityPluginBinding);
            }
        }
        if (flutterPlugin instanceof ServiceAware) {
            ServiceAware serviceAware = (ServiceAware) flutterPlugin;
            this.serviceAwarePlugins.put(flutterPlugin.getClass(), serviceAware);
            if (isAttachedToService()) {
                serviceAware.onAttachedToService(this.servicePluginBinding);
            }
        }
        if (flutterPlugin instanceof BroadcastReceiverAware) {
            BroadcastReceiverAware broadcastReceiverAware = (BroadcastReceiverAware) flutterPlugin;
            this.broadcastReceiverAwarePlugins.put(flutterPlugin.getClass(), broadcastReceiverAware);
            if (isAttachedToBroadcastReceiver()) {
                broadcastReceiverAware.onAttachedToBroadcastReceiver(this.broadcastReceiverPluginBinding);
            }
        }
        if (flutterPlugin instanceof ContentProviderAware) {
            ContentProviderAware contentProviderAware = (ContentProviderAware) flutterPlugin;
            this.contentProviderAwarePlugins.put(flutterPlugin.getClass(), contentProviderAware);
            if (isAttachedToContentProvider()) {
                contentProviderAware.onAttachedToContentProvider(this.contentProviderPluginBinding);
            }
        }
    }

    public void add(@NonNull Set<FlutterPlugin> set) {
        for (FlutterPlugin add : set) {
            add(add);
        }
    }

    public boolean has(@NonNull Class<? extends FlutterPlugin> cls) {
        return this.plugins.containsKey(cls);
    }

    public FlutterPlugin get(@NonNull Class<? extends FlutterPlugin> cls) {
        return (FlutterPlugin) this.plugins.get(cls);
    }

    public void remove(@NonNull Class<? extends FlutterPlugin> cls) {
        FlutterPlugin flutterPlugin = (FlutterPlugin) this.plugins.get(cls);
        if (flutterPlugin != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Removing plugin: ");
            sb.append(flutterPlugin);
            Log.v(TAG, sb.toString());
            if (flutterPlugin instanceof ActivityAware) {
                if (isAttachedToActivity()) {
                    ((ActivityAware) flutterPlugin).onDetachedFromActivity();
                }
                this.activityAwarePlugins.remove(cls);
            }
            if (flutterPlugin instanceof ServiceAware) {
                if (isAttachedToService()) {
                    ((ServiceAware) flutterPlugin).onDetachedFromService();
                }
                this.serviceAwarePlugins.remove(cls);
            }
            if (flutterPlugin instanceof BroadcastReceiverAware) {
                if (isAttachedToBroadcastReceiver()) {
                    ((BroadcastReceiverAware) flutterPlugin).onDetachedFromBroadcastReceiver();
                }
                this.broadcastReceiverAwarePlugins.remove(cls);
            }
            if (flutterPlugin instanceof ContentProviderAware) {
                if (isAttachedToContentProvider()) {
                    ((ContentProviderAware) flutterPlugin).onDetachedFromContentProvider();
                }
                this.contentProviderAwarePlugins.remove(cls);
            }
            flutterPlugin.onDetachedFromEngine(this.pluginBinding);
            this.plugins.remove(cls);
        }
    }

    public void remove(@NonNull Set<Class<? extends FlutterPlugin>> set) {
        for (Class remove : set) {
            remove(remove);
        }
    }

    public void removeAll() {
        remove((Set<Class<? extends FlutterPlugin>>) new HashSet<Class<? extends FlutterPlugin>>(this.plugins.keySet()));
        this.plugins.clear();
    }

    private void detachFromAndroidComponent() {
        if (isAttachedToActivity()) {
            detachFromActivity();
        } else if (isAttachedToService()) {
            detachFromService();
        } else if (isAttachedToBroadcastReceiver()) {
            detachFromBroadcastReceiver();
        } else if (isAttachedToContentProvider()) {
            detachFromContentProvider();
        }
    }

    private boolean isAttachedToActivity() {
        return this.activity != null;
    }

    public void attachToActivity(@NonNull Activity activity2, @NonNull Lifecycle lifecycle) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to an Activity: ");
        sb.append(activity2);
        sb.append(".");
        sb.append(this.isWaitingForActivityReattachment ? " This is after a config change." : "");
        Log.v(TAG, sb.toString());
        detachFromAndroidComponent();
        this.activity = activity2;
        this.activityPluginBinding = new FlutterEngineActivityPluginBinding(activity2);
        this.flutterEngineAndroidLifecycle.setBackingLifecycle(lifecycle);
        this.pluginBinding.getFlutterEngine().getPlatformViewsController().attach(activity2, this.pluginBinding.getFlutterEngine().getRenderer(), this.pluginBinding.getFlutterEngine().getDartExecutor());
        for (ActivityAware activityAware : this.activityAwarePlugins.values()) {
            if (this.isWaitingForActivityReattachment) {
                activityAware.onReattachedToActivityForConfigChanges(this.activityPluginBinding);
            } else {
                activityAware.onAttachedToActivity(this.activityPluginBinding);
            }
        }
        this.isWaitingForActivityReattachment = false;
    }

    public void detachFromActivityForConfigChanges() {
        boolean isAttachedToActivity = isAttachedToActivity();
        String str = TAG;
        if (isAttachedToActivity) {
            StringBuilder sb = new StringBuilder();
            sb.append("Detaching from an Activity for config changes: ");
            sb.append(this.activity);
            Log.v(str, sb.toString());
            this.isWaitingForActivityReattachment = true;
            for (ActivityAware onDetachedFromActivityForConfigChanges : this.activityAwarePlugins.values()) {
                onDetachedFromActivityForConfigChanges.onDetachedFromActivityForConfigChanges();
            }
            this.pluginBinding.getFlutterEngine().getPlatformViewsController().detach();
            this.flutterEngineAndroidLifecycle.setBackingLifecycle(null);
            this.activity = null;
            this.activityPluginBinding = null;
            return;
        }
        Log.e(str, "Attempted to detach plugins from an Activity when no Activity was attached.");
    }

    public void detachFromActivity() {
        boolean isAttachedToActivity = isAttachedToActivity();
        String str = TAG;
        if (isAttachedToActivity) {
            StringBuilder sb = new StringBuilder();
            sb.append("Detaching from an Activity: ");
            sb.append(this.activity);
            Log.v(str, sb.toString());
            for (ActivityAware onDetachedFromActivity : this.activityAwarePlugins.values()) {
                onDetachedFromActivity.onDetachedFromActivity();
            }
            this.pluginBinding.getFlutterEngine().getPlatformViewsController().detach();
            this.flutterEngineAndroidLifecycle.setBackingLifecycle(null);
            this.activity = null;
            this.activityPluginBinding = null;
            return;
        }
        Log.e(str, "Attempted to detach plugins from an Activity when no Activity was attached.");
    }

    public boolean onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        String str = TAG;
        Log.v(str, "Forwarding onRequestPermissionsResult() to plugins.");
        if (isAttachedToActivity()) {
            return this.activityPluginBinding.onRequestPermissionsResult(i, strArr, iArr);
        }
        Log.e(str, "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached.");
        return false;
    }

    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        String str = TAG;
        Log.v(str, "Forwarding onActivityResult() to plugins.");
        if (isAttachedToActivity()) {
            return this.activityPluginBinding.onActivityResult(i, i2, intent);
        }
        Log.e(str, "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached.");
        return false;
    }

    public void onNewIntent(@NonNull Intent intent) {
        String str = TAG;
        Log.v(str, "Forwarding onNewIntent() to plugins.");
        if (isAttachedToActivity()) {
            this.activityPluginBinding.onNewIntent(intent);
        } else {
            Log.e(str, "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached.");
        }
    }

    public void onUserLeaveHint() {
        String str = TAG;
        Log.v(str, "Forwarding onUserLeaveHint() to plugins.");
        if (isAttachedToActivity()) {
            this.activityPluginBinding.onUserLeaveHint();
        } else {
            Log.e(str, "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached.");
        }
    }

    private boolean isAttachedToService() {
        return this.service != null;
    }

    public void attachToService(@NonNull Service service2, @NonNull Lifecycle lifecycle, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to a Service: ");
        sb.append(service2);
        Log.v(TAG, sb.toString());
        detachFromAndroidComponent();
        this.service = service2;
        this.servicePluginBinding = new FlutterEngineServicePluginBinding(service2);
        this.flutterEngineAndroidLifecycle.setBackingLifecycle(lifecycle);
        for (ServiceAware onAttachedToService : this.serviceAwarePlugins.values()) {
            onAttachedToService.onAttachedToService(this.servicePluginBinding);
        }
    }

    public void detachFromService() {
        boolean isAttachedToService = isAttachedToService();
        String str = TAG;
        if (isAttachedToService) {
            StringBuilder sb = new StringBuilder();
            sb.append("Detaching from a Service: ");
            sb.append(this.service);
            Log.v(str, sb.toString());
            for (ServiceAware onDetachedFromService : this.serviceAwarePlugins.values()) {
                onDetachedFromService.onDetachedFromService();
            }
            this.flutterEngineAndroidLifecycle.setBackingLifecycle(null);
            this.service = null;
            this.servicePluginBinding = null;
            return;
        }
        Log.e(str, "Attempted to detach plugins from a Service when no Service was attached.");
    }

    public void onMoveToForeground() {
        if (isAttachedToService()) {
            Log.v(TAG, "Attached Service moved to foreground.");
            this.servicePluginBinding.onMoveToForeground();
        }
    }

    public void onMoveToBackground() {
        if (isAttachedToService()) {
            Log.v(TAG, "Attached Service moved to background.");
            this.servicePluginBinding.onMoveToBackground();
        }
    }

    private boolean isAttachedToBroadcastReceiver() {
        return this.broadcastReceiver != null;
    }

    public void attachToBroadcastReceiver(@NonNull BroadcastReceiver broadcastReceiver2, @NonNull Lifecycle lifecycle) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to BroadcastReceiver: ");
        sb.append(broadcastReceiver2);
        Log.v(TAG, sb.toString());
        detachFromAndroidComponent();
        this.broadcastReceiver = broadcastReceiver2;
        this.broadcastReceiverPluginBinding = new FlutterEngineBroadcastReceiverPluginBinding(broadcastReceiver2);
        for (BroadcastReceiverAware onAttachedToBroadcastReceiver : this.broadcastReceiverAwarePlugins.values()) {
            onAttachedToBroadcastReceiver.onAttachedToBroadcastReceiver(this.broadcastReceiverPluginBinding);
        }
    }

    public void detachFromBroadcastReceiver() {
        boolean isAttachedToBroadcastReceiver = isAttachedToBroadcastReceiver();
        String str = TAG;
        if (isAttachedToBroadcastReceiver) {
            StringBuilder sb = new StringBuilder();
            sb.append("Detaching from BroadcastReceiver: ");
            sb.append(this.broadcastReceiver);
            Log.v(str, sb.toString());
            for (BroadcastReceiverAware onDetachedFromBroadcastReceiver : this.broadcastReceiverAwarePlugins.values()) {
                onDetachedFromBroadcastReceiver.onDetachedFromBroadcastReceiver();
            }
            return;
        }
        Log.e(str, "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached.");
    }

    private boolean isAttachedToContentProvider() {
        return this.contentProvider != null;
    }

    public void attachToContentProvider(@NonNull ContentProvider contentProvider2, @NonNull Lifecycle lifecycle) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to ContentProvider: ");
        sb.append(contentProvider2);
        Log.v(TAG, sb.toString());
        detachFromAndroidComponent();
        this.contentProvider = contentProvider2;
        this.contentProviderPluginBinding = new FlutterEngineContentProviderPluginBinding(contentProvider2);
        for (ContentProviderAware onAttachedToContentProvider : this.contentProviderAwarePlugins.values()) {
            onAttachedToContentProvider.onAttachedToContentProvider(this.contentProviderPluginBinding);
        }
    }

    public void detachFromContentProvider() {
        boolean isAttachedToContentProvider = isAttachedToContentProvider();
        String str = TAG;
        if (isAttachedToContentProvider) {
            StringBuilder sb = new StringBuilder();
            sb.append("Detaching from ContentProvider: ");
            sb.append(this.contentProvider);
            Log.v(str, sb.toString());
            for (ContentProviderAware onDetachedFromContentProvider : this.contentProviderAwarePlugins.values()) {
                onDetachedFromContentProvider.onDetachedFromContentProvider();
            }
            return;
        }
        Log.e(str, "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached.");
    }
}
