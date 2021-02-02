package com.idlefish.flutterboost.containers;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.idlefish.flutterboost.BoostPluginRegistry;
import com.idlefish.flutterboost.NewFlutterBoost;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.idlefish.flutterboost.Utils;
import com.idlefish.flutterboost.XFlutterView;
import com.idlefish.flutterboost.interfaces.IFlutterViewContainer;
import com.idlefish.flutterboost.interfaces.IOperateSyncer;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterEngineConfigurator;
import io.flutter.embedding.android.FlutterEngineProvider;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.android.SplashScreen;
import io.flutter.embedding.android.SplashScreenProvider;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class FlutterActivityAndFragmentDelegate implements IFlutterViewContainer {
    private static final String TAG = "FlutterActivityAndFragmentDelegate";
    @Nullable
    private FlutterEngine flutterEngine;
    @Nullable
    private FlutterSplashView flutterSplashView;
    @Nullable
    private XFlutterView flutterView;
    @NonNull
    private Host host;
    private boolean isFlutterEngineFromHost;
    protected IOperateSyncer mSyncer;
    @Nullable
    private PlatformPlugin platformPlugin;

    interface Host extends SplashScreenProvider, FlutterEngineProvider, FlutterEngineConfigurator {
        void configureFlutterEngine(@NonNull FlutterEngine flutterEngine);

        @Nullable
        Activity getActivity();

        String getContainerUrl();

        Map getContainerUrlParams();

        @NonNull
        Context getContext();

        @NonNull
        FlutterShellArgs getFlutterShellArgs();

        @NonNull
        Lifecycle getLifecycle();

        @NonNull
        RenderMode getRenderMode();

        @NonNull
        TransparencyMode getTransparencyMode();

        @Nullable
        FlutterEngine provideFlutterEngine(@NonNull Context context);

        @Nullable
        PlatformPlugin providePlatformPlugin(@Nullable Activity activity, @NonNull FlutterEngine flutterEngine);

        @Nullable
        SplashScreen provideSplashScreen();

        boolean shouldAttachEngineToActivity();
    }

    public void onContainerHidden() {
    }

    public void onContainerShown() {
    }

    FlutterActivityAndFragmentDelegate(@NonNull Host host2) {
        this.host = host2;
    }

    /* access modifiers changed from: 0000 */
    public void release() {
        this.host = null;
        this.flutterEngine = null;
        this.flutterView = null;
        this.platformPlugin = null;
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public FlutterEngine getFlutterEngine() {
        return this.flutterEngine;
    }

    /* access modifiers changed from: 0000 */
    public XFlutterView getFlutterView() {
        return this.flutterView;
    }

    /* access modifiers changed from: 0000 */
    public void onAttach(@NonNull Context context) {
        ensureAlive();
        if (NewFlutterBoost.instance().platform().whenEngineStart() == ConfigBuilder.FLUTTER_ACTIVITY_CREATED) {
            NewFlutterBoost.instance().doInitialFlutter();
        }
        if (this.flutterEngine == null) {
            setupFlutterEngine();
        }
        Host host2 = this.host;
        this.platformPlugin = host2.providePlatformPlugin(host2.getActivity(), this.flutterEngine);
        this.host.configureFlutterEngine(this.flutterEngine);
    }

    private void setupFlutterEngine() {
        String str = TAG;
        Log.d(str, "Setting up FlutterEngine.");
        Host host2 = this.host;
        this.flutterEngine = host2.provideFlutterEngine(host2.getContext());
        if (this.flutterEngine != null) {
            this.isFlutterEngineFromHost = true;
            return;
        }
        Log.d(str, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this NewFlutterFragment.");
        this.isFlutterEngineFromHost = false;
    }

    /* access modifiers changed from: 0000 */
    @SuppressLint({"ResourceType"})
    @NonNull
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Log.v(TAG, "Creating FlutterView.");
        this.flutterEngine.getActivityControlSurface().attachToActivity(this.host.getActivity(), this.host.getLifecycle());
        this.mSyncer = NewFlutterBoost.instance().containerManager().generateSyncer(this);
        ensureAlive();
        this.flutterView = new XFlutterView(this.host.getActivity(), NewFlutterBoost.instance().platform().renderMode(), this.host.getTransparencyMode());
        this.flutterSplashView = new FlutterSplashView(this.host.getContext());
        if (VERSION.SDK_INT >= 17) {
            this.flutterSplashView.setId(View.generateViewId());
        } else {
            this.flutterSplashView.setId(486947586);
        }
        this.flutterSplashView.displayFlutterViewWithSplash(this.flutterView, this.host.provideSplashScreen());
        this.mSyncer.onCreate();
        return this.flutterSplashView;
    }

    /* access modifiers changed from: 0000 */
    public void onStart() {
        Log.v(TAG, "onStart()");
        ensureAlive();
    }

    /* access modifiers changed from: 0000 */
    public void onResume() {
        this.mSyncer.onAppear();
        Log.v(TAG, "onResume()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsResumed();
        ActivityPluginBinding activityPluginBinding = ((BoostPluginRegistry) NewFlutterBoost.instance().getPluginRegistry()).getRegistrarAggregate().getActivityPluginBinding();
        if (activityPluginBinding != null && activityPluginBinding.getActivity() != this.host.getActivity()) {
            this.flutterEngine.getActivityControlSurface().attachToActivity(this.host.getActivity(), this.host.getLifecycle());
        }
    }

    /* access modifiers changed from: 0000 */
    public void onPostResume() {
        Log.v(TAG, "onPostResume()");
        ensureAlive();
        Utils.setStatusBarLightMode(this.host.getActivity(), true);
    }

    /* access modifiers changed from: 0000 */
    public void onPause() {
        Log.v(TAG, "onPause()");
        ensureAlive();
        this.mSyncer.onDisappear();
        this.flutterEngine.getLifecycleChannel().appIsInactive();
    }

    /* access modifiers changed from: 0000 */
    public void onStop() {
        Log.v(TAG, "onStop()");
        ensureAlive();
    }

    /* access modifiers changed from: 0000 */
    public void onDestroyView() {
        Log.v(TAG, "onDestroyView()");
        this.mSyncer.onDestroy();
        ensureAlive();
        BoostPluginRegistry boostPluginRegistry = (BoostPluginRegistry) NewFlutterBoost.instance().getPluginRegistry();
        ActivityPluginBinding activityPluginBinding = boostPluginRegistry.getRegistrarAggregate().getActivityPluginBinding();
        if (activityPluginBinding != null && activityPluginBinding.getActivity() == this.host.getActivity()) {
            boostPluginRegistry.getRegistrarAggregate().onDetachedFromActivityForConfigChanges();
            this.flutterEngine.getActivityControlSurface().detachFromActivityForConfigChanges();
        }
        this.flutterView.release();
    }

    /* access modifiers changed from: 0000 */
    public void onDetach() {
        Log.v(TAG, "onDetach()");
        ensureAlive();
        PlatformPlugin platformPlugin2 = this.platformPlugin;
        if (platformPlugin2 != null) {
            platformPlugin2.destroy();
            this.platformPlugin = null;
        }
        Utils.fixInputMethodManagerLeak(this.host.getActivity());
    }

    /* access modifiers changed from: 0000 */
    public void onBackPressed() {
        this.mSyncer.onBackPressed();
        ensureAlive();
    }

    /* access modifiers changed from: 0000 */
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.mSyncer.onRequestPermissionsResult(i, strArr, iArr);
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: ");
            sb.append(i);
            sb.append("\npermissions: ");
            sb.append(Arrays.toString(strArr));
            sb.append("\ngrantResults: ");
            sb.append(Arrays.toString(iArr));
            Log.v(str, sb.toString());
            this.flutterEngine.getActivityControlSurface().onRequestPermissionsResult(i, strArr, iArr);
            return;
        }
        Log.w(str, "onRequestPermissionResult() invoked before NewFlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onNewIntent(@NonNull Intent intent) {
        this.mSyncer.onNewIntent(intent);
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            Log.v(str, "Forwarding onNewIntent() to FlutterEngine.");
            this.flutterEngine.getActivityControlSurface().onNewIntent(intent);
            return;
        }
        Log.w(str, "onNewIntent() invoked before NewFlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0051  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActivityResult(int r4, int r5, android.content.Intent r6) {
        /*
            r3 = this;
            com.idlefish.flutterboost.interfaces.IOperateSyncer r0 = r3.mSyncer
            r0.onActivityResult(r4, r5, r6)
            if (r6 == 0) goto L_0x0014
            java.lang.String r0 = "_flutter_result_"
            java.io.Serializable r0 = r6.getSerializableExtra(r0)
            boolean r1 = r0 instanceof java.util.Map
            if (r1 == 0) goto L_0x0014
            java.util.Map r0 = (java.util.Map) r0
            goto L_0x0015
        L_0x0014:
            r0 = 0
        L_0x0015:
            com.idlefish.flutterboost.interfaces.IOperateSyncer r1 = r3.mSyncer
            r1.onContainerResult(r4, r5, r0)
            r3.ensureAlive()
            io.flutter.embedding.engine.FlutterEngine r0 = r3.flutterEngine
            java.lang.String r1 = "FlutterActivityAndFragmentDelegate"
            if (r0 == 0) goto L_0x0051
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "
            r0.append(r2)
            r0.append(r4)
            java.lang.String r2 = "\nresultCode: "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r2 = "\ndata: "
            r0.append(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            io.flutter.Log.v(r1, r0)
            io.flutter.embedding.engine.FlutterEngine r0 = r3.flutterEngine
            io.flutter.embedding.engine.plugins.activity.ActivityControlSurface r0 = r0.getActivityControlSurface()
            r0.onActivityResult(r4, r5, r6)
            goto L_0x0056
        L_0x0051:
            java.lang.String r4 = "onActivityResult() invoked before NewFlutterFragment was attached to an Activity."
            io.flutter.Log.w(r1, r4)
        L_0x0056:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.idlefish.flutterboost.containers.FlutterActivityAndFragmentDelegate.onActivityResult(int, int, android.content.Intent):void");
    }

    /* access modifiers changed from: 0000 */
    public void onUserLeaveHint() {
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            Log.v(str, "Forwarding onUserLeaveHint() to FlutterEngine.");
            this.flutterEngine.getActivityControlSurface().onUserLeaveHint();
            return;
        }
        Log.w(str, "onUserLeaveHint() invoked before NewFlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onTrimMemory(int i) {
        this.mSyncer.onTrimMemory(i);
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 == null) {
            Log.w(str, "onTrimMemory() invoked before NewFlutterFragment was attached to an Activity.");
        } else if (i == 10) {
            StringBuilder sb = new StringBuilder();
            sb.append("Forwarding onTrimMemory() to FlutterEngine. Level: ");
            sb.append(i);
            Log.v(str, sb.toString());
            this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
        }
    }

    /* access modifiers changed from: 0000 */
    public void onLowMemory() {
        Log.v(TAG, "Forwarding onLowMemory() to FlutterEngine.");
        this.mSyncer.onLowMemory();
        ensureAlive();
        this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
    }

    private void ensureAlive() {
        if (this.host == null) {
            throw new IllegalStateException("Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate.");
        }
    }

    public Activity getContextActivity() {
        return this.host.getActivity();
    }

    public FlutterSplashView getBoostFlutterView() {
        return this.flutterSplashView;
    }

    public void finishContainer(Map<String, Object> map) {
        if (map != null) {
            setBoostResult(this.host.getActivity(), new HashMap(map));
            this.host.getActivity().finish();
            return;
        }
        this.host.getActivity().finish();
    }

    public void setBoostResult(Activity activity, HashMap hashMap) {
        Intent intent = new Intent();
        if (hashMap != null) {
            intent.putExtra(IFlutterViewContainer.RESULT_KEY, hashMap);
        }
        activity.setResult(-1, intent);
    }

    public String getContainerUrl() {
        return this.host.getContainerUrl();
    }

    public Map getContainerUrlParams() {
        return this.host.getContainerUrlParams();
    }
}
