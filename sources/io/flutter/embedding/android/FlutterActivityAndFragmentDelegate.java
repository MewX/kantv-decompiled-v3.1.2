package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.dart.DartExecutor.DartEntrypoint;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.view.FlutterMain;
import java.util.Arrays;

final class FlutterActivityAndFragmentDelegate {
    private static final String TAG = "FlutterActivityAndFragmentDelegate";
    /* access modifiers changed from: private */
    @Nullable
    public FlutterEngine flutterEngine;
    @Nullable
    private FlutterSplashView flutterSplashView;
    /* access modifiers changed from: private */
    @Nullable
    public FlutterView flutterView;
    /* access modifiers changed from: private */
    @NonNull
    public Host host;
    private boolean isFlutterEngineFromHost;
    @NonNull
    private final OnFirstFrameRenderedListener onFirstFrameRenderedListener = new OnFirstFrameRenderedListener() {
        public void onFirstFrameRendered() {
            FlutterActivityAndFragmentDelegate.this.host.onFirstFrameRendered();
        }
    };
    @Nullable
    private PlatformPlugin platformPlugin;

    interface Host extends SplashScreenProvider, FlutterEngineProvider, FlutterEngineConfigurator {
        void configureFlutterEngine(@NonNull FlutterEngine flutterEngine);

        @Nullable
        Activity getActivity();

        @NonNull
        String getAppBundlePath();

        @Nullable
        String getCachedEngineId();

        @NonNull
        Context getContext();

        @NonNull
        String getDartEntrypointFunctionName();

        @NonNull
        FlutterShellArgs getFlutterShellArgs();

        @Nullable
        String getInitialRoute();

        @NonNull
        Lifecycle getLifecycle();

        @NonNull
        RenderMode getRenderMode();

        @NonNull
        TransparencyMode getTransparencyMode();

        void onFirstFrameRendered();

        @Nullable
        FlutterEngine provideFlutterEngine(@NonNull Context context);

        @Nullable
        PlatformPlugin providePlatformPlugin(@Nullable Activity activity, @NonNull FlutterEngine flutterEngine);

        @Nullable
        SplashScreen provideSplashScreen();

        boolean shouldAttachEngineToActivity();

        boolean shouldDestroyEngineWithHost();
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
    public void onAttach(@NonNull Context context) {
        ensureAlive();
        initializeFlutter(context);
        if (this.flutterEngine == null) {
            setupFlutterEngine();
        }
        Host host2 = this.host;
        this.platformPlugin = host2.providePlatformPlugin(host2.getActivity(), this.flutterEngine);
        if (this.host.shouldAttachEngineToActivity()) {
            Log.d(TAG, "Attaching FlutterEngine to the Activity that owns this Fragment.");
            this.flutterEngine.getActivityControlSurface().attachToActivity(this.host.getActivity(), this.host.getLifecycle());
        }
        this.host.configureFlutterEngine(this.flutterEngine);
    }

    private void initializeFlutter(@NonNull Context context) {
        FlutterMain.ensureInitializationComplete(context.getApplicationContext(), this.host.getFlutterShellArgs().toArray());
    }

    private void setupFlutterEngine() {
        String str = TAG;
        Log.d(str, "Setting up FlutterEngine.");
        String cachedEngineId = this.host.getCachedEngineId();
        if (cachedEngineId != null) {
            this.flutterEngine = FlutterEngineCache.getInstance().get(cachedEngineId);
            this.isFlutterEngineFromHost = true;
            if (this.flutterEngine == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("The requested cached FlutterEngine did not exist in the FlutterEngineCache: '");
                sb.append(cachedEngineId);
                sb.append("'");
                throw new IllegalStateException(sb.toString());
            }
            return;
        }
        Host host2 = this.host;
        this.flutterEngine = host2.provideFlutterEngine(host2.getContext());
        if (this.flutterEngine != null) {
            this.isFlutterEngineFromHost = true;
            return;
        }
        Log.d(str, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment.");
        this.flutterEngine = new FlutterEngine(this.host.getContext());
        this.isFlutterEngineFromHost = false;
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Log.v(TAG, "Creating FlutterView.");
        ensureAlive();
        this.flutterView = new FlutterView(this.host.getActivity(), this.host.getRenderMode(), this.host.getTransparencyMode());
        this.flutterView.addOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
        this.flutterSplashView = new FlutterSplashView(this.host.getContext());
        if (VERSION.SDK_INT >= 17) {
            this.flutterSplashView.setId(View.generateViewId());
        } else {
            this.flutterSplashView.setId(486947586);
        }
        this.flutterSplashView.displayFlutterViewWithSplash(this.flutterView, this.host.provideSplashScreen());
        return this.flutterSplashView;
    }

    /* access modifiers changed from: 0000 */
    public void onStart() {
        Log.v(TAG, "onStart()");
        ensureAlive();
        new Handler().post(new Runnable() {
            public void run() {
                Log.v(FlutterActivityAndFragmentDelegate.TAG, "Attaching FlutterEngine to FlutterView.");
                FlutterActivityAndFragmentDelegate.this.flutterView.attachToFlutterEngine(FlutterActivityAndFragmentDelegate.this.flutterEngine);
                FlutterActivityAndFragmentDelegate.this.doInitialFlutterViewRun();
            }
        });
    }

    /* access modifiers changed from: private */
    public void doInitialFlutterViewRun() {
        if (this.host.getCachedEngineId() == null && !this.flutterEngine.getDartExecutor().isExecutingDart()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Executing Dart entrypoint: ");
            sb.append(this.host.getDartEntrypointFunctionName());
            sb.append(", and sending initial route: ");
            sb.append(this.host.getInitialRoute());
            Log.d(TAG, sb.toString());
            if (this.host.getInitialRoute() != null) {
                this.flutterEngine.getNavigationChannel().setInitialRoute(this.host.getInitialRoute());
            }
            this.flutterEngine.getDartExecutor().executeDartEntrypoint(new DartEntrypoint(this.host.getAppBundlePath(), this.host.getDartEntrypointFunctionName()));
        }
    }

    /* access modifiers changed from: 0000 */
    public void onResume() {
        Log.v(TAG, "onResume()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsResumed();
    }

    /* access modifiers changed from: 0000 */
    public void onPostResume() {
        String str = TAG;
        Log.v(str, "onPostResume()");
        ensureAlive();
        if (this.flutterEngine != null) {
            PlatformPlugin platformPlugin2 = this.platformPlugin;
            if (platformPlugin2 != null) {
                platformPlugin2.updateSystemUiOverlays();
                return;
            }
            return;
        }
        Log.w(str, "onPostResume() invoked before FlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onPause() {
        Log.v(TAG, "onPause()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsInactive();
    }

    /* access modifiers changed from: 0000 */
    public void onStop() {
        Log.v(TAG, "onStop()");
        ensureAlive();
        this.flutterEngine.getLifecycleChannel().appIsPaused();
        this.flutterView.detachFromFlutterEngine();
    }

    /* access modifiers changed from: 0000 */
    public void onDestroyView() {
        Log.v(TAG, "onDestroyView()");
        ensureAlive();
        this.flutterView.removeOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
    }

    /* access modifiers changed from: 0000 */
    public void onDetach() {
        String str = TAG;
        Log.v(str, "onDetach()");
        ensureAlive();
        if (this.host.shouldAttachEngineToActivity()) {
            Log.d(str, "Detaching FlutterEngine from the Activity that owns this Fragment.");
            if (this.host.getActivity().isChangingConfigurations()) {
                this.flutterEngine.getActivityControlSurface().detachFromActivityForConfigChanges();
            } else {
                this.flutterEngine.getActivityControlSurface().detachFromActivity();
            }
        }
        PlatformPlugin platformPlugin2 = this.platformPlugin;
        if (platformPlugin2 != null) {
            platformPlugin2.destroy();
            this.platformPlugin = null;
        }
        if (this.host.shouldDestroyEngineWithHost()) {
            this.flutterEngine.destroy();
            if (this.host.getCachedEngineId() != null) {
                FlutterEngineCache.getInstance().remove(this.host.getCachedEngineId());
            }
            this.flutterEngine = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public void onBackPressed() {
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            Log.v(str, "Forwarding onBackPressed() to FlutterEngine.");
            this.flutterEngine.getNavigationChannel().popRoute();
            return;
        }
        Log.w(str, "Invoked onBackPressed() before FlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
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
        Log.w(str, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onNewIntent(@NonNull Intent intent) {
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            Log.v(str, "Forwarding onNewIntent() to FlutterEngine.");
            this.flutterEngine.getActivityControlSurface().onNewIntent(intent);
            return;
        }
        Log.w(str, "onNewIntent() invoked before FlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onActivityResult(int i, int i2, Intent intent) {
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Forwarding onActivityResult() to FlutterEngine:\nrequestCode: ");
            sb.append(i);
            sb.append("\nresultCode: ");
            sb.append(i2);
            sb.append("\ndata: ");
            sb.append(intent);
            Log.v(str, sb.toString());
            this.flutterEngine.getActivityControlSurface().onActivityResult(i, i2, intent);
            return;
        }
        Log.w(str, "onActivityResult() invoked before FlutterFragment was attached to an Activity.");
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
        Log.w(str, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity.");
    }

    /* access modifiers changed from: 0000 */
    public void onTrimMemory(int i) {
        ensureAlive();
        FlutterEngine flutterEngine2 = this.flutterEngine;
        String str = TAG;
        if (flutterEngine2 == null) {
            Log.w(str, "onTrimMemory() invoked before FlutterFragment was attached to an Activity.");
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
        ensureAlive();
        this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
    }

    private void ensureAlive() {
        if (this.host == null) {
            throw new IllegalStateException("Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate.");
        }
    }
}
