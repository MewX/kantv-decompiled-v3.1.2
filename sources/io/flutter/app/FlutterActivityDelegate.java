package io.flutter.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.facade.FlutterFragment;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.util.Preconditions;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterRunArguments;
import io.flutter.view.FlutterView;
import io.flutter.view.FlutterView.FirstFrameListener;
import io.flutter.view.FlutterView.Provider;
import java.util.ArrayList;

public final class FlutterActivityDelegate implements FlutterActivityEvents, Provider, PluginRegistry {
    private static final String SPLASH_SCREEN_META_DATA_KEY = "io.flutter.app.android.SplashScreenUntilFirstFrame";
    private static final String TAG = "FlutterActivityDelegate";
    private static final LayoutParams matchParent = new LayoutParams(-1, -1);
    private final Activity activity;
    /* access modifiers changed from: private */
    public FlutterView flutterView;
    /* access modifiers changed from: private */
    public View launchView;
    private final ViewFactory viewFactory;

    public interface ViewFactory {
        FlutterNativeView createFlutterNativeView();

        FlutterView createFlutterView(Context context);

        boolean retainFlutterNativeView();
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public FlutterActivityDelegate(Activity activity2, ViewFactory viewFactory2) {
        this.activity = (Activity) Preconditions.checkNotNull(activity2);
        this.viewFactory = (ViewFactory) Preconditions.checkNotNull(viewFactory2);
    }

    public FlutterView getFlutterView() {
        return this.flutterView;
    }

    public boolean hasPlugin(String str) {
        return this.flutterView.getPluginRegistry().hasPlugin(str);
    }

    public <T> T valuePublishedByPlugin(String str) {
        return this.flutterView.getPluginRegistry().valuePublishedByPlugin(str);
    }

    public Registrar registrarFor(String str) {
        return this.flutterView.getPluginRegistry().registrarFor(str);
    }

    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        return this.flutterView.getPluginRegistry().onRequestPermissionsResult(i, strArr, iArr);
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        return this.flutterView.getPluginRegistry().onActivityResult(i, i2, intent);
    }

    public void onCreate(Bundle bundle) {
        if (VERSION.SDK_INT >= 21) {
            Window window = this.activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(1073741824);
            window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        }
        FlutterMain.ensureInitializationComplete(this.activity.getApplicationContext(), getArgsFromIntent(this.activity.getIntent()));
        this.flutterView = this.viewFactory.createFlutterView(this.activity);
        if (this.flutterView == null) {
            this.flutterView = new FlutterView(this.activity, null, this.viewFactory.createFlutterNativeView());
            this.flutterView.setLayoutParams(matchParent);
            this.activity.setContentView(this.flutterView);
            this.launchView = createLaunchView();
            if (this.launchView != null) {
                addLaunchView();
            }
        }
        if (!loadIntent(this.activity.getIntent())) {
            String findAppBundlePath = FlutterMain.findAppBundlePath();
            if (findAppBundlePath != null) {
                runBundle(findAppBundlePath);
            }
        }
    }

    public void onNewIntent(Intent intent) {
        if (!isDebuggable() || !loadIntent(intent)) {
            this.flutterView.getPluginRegistry().onNewIntent(intent);
        }
    }

    private boolean isDebuggable() {
        return (this.activity.getApplicationInfo().flags & 2) != 0;
    }

    public void onPause() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 != null) {
            flutterView2.onPause();
        }
    }

    public void onStart() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 != null) {
            flutterView2.onStart();
        }
    }

    public void onResume() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            ((FlutterApplication) application).setCurrentActivity(this.activity);
        }
    }

    public void onStop() {
        this.flutterView.onStop();
    }

    public void onPostResume() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 != null) {
            flutterView2.onPostResume();
        }
    }

    public void onDestroy() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 == null) {
            return;
        }
        if (flutterView2.getPluginRegistry().onViewDestroy(this.flutterView.getFlutterNativeView()) || this.viewFactory.retainFlutterNativeView()) {
            this.flutterView.detach();
        } else {
            this.flutterView.destroy();
        }
    }

    public boolean onBackPressed() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 == null) {
            return false;
        }
        flutterView2.popRoute();
        return true;
    }

    public void onUserLeaveHint() {
        this.flutterView.getPluginRegistry().onUserLeaveHint();
    }

    public void onTrimMemory(int i) {
        if (i == 10) {
            this.flutterView.onMemoryPressure();
        }
    }

    public void onLowMemory() {
        this.flutterView.onMemoryPressure();
    }

    private static String[] getArgsFromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_TRACE_STARTUP, false)) {
            arrayList.add(FlutterShellArgs.ARG_TRACE_STARTUP);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_START_PAUSED, false)) {
            arrayList.add(FlutterShellArgs.ARG_START_PAUSED);
        }
        String str = FlutterShellArgs.ARG_KEY_DISABLE_SERVICE_AUTH_CODES;
        boolean booleanExtra = intent.getBooleanExtra(str, false);
        String str2 = FlutterShellArgs.ARG_DISABLE_SERVICE_AUTH_CODES;
        if (booleanExtra) {
            arrayList.add(str2);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_USE_TEST_FONTS, false)) {
            arrayList.add(FlutterShellArgs.ARG_USE_TEST_FONTS);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_ENABLE_DART_PROFILING, false)) {
            arrayList.add(FlutterShellArgs.ARG_ENABLE_DART_PROFILING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_ENABLE_SOFTWARE_RENDERING, false)) {
            arrayList.add(FlutterShellArgs.ARG_ENABLE_SOFTWARE_RENDERING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_SKIA_DETERMINISTIC_RENDERING, false)) {
            arrayList.add(FlutterShellArgs.ARG_SKIA_DETERMINISTIC_RENDERING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_TRACE_SKIA, false)) {
            arrayList.add(FlutterShellArgs.ARG_TRACE_SKIA);
        }
        if (intent.getBooleanExtra("trace-systrace", false)) {
            arrayList.add("--trace-systrace");
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION, false)) {
            arrayList.add(FlutterShellArgs.ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_VERBOSE_LOGGING, false)) {
            arrayList.add(FlutterShellArgs.ARG_VERBOSE_LOGGING);
        }
        int intExtra = intent.getIntExtra(FlutterShellArgs.ARG_KEY_OBSERVATORY_PORT, 0);
        if (intExtra > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(FlutterShellArgs.ARG_OBSERVATORY_PORT);
            sb.append(Integer.toString(intExtra));
            arrayList.add(sb.toString());
        }
        if (intent.getBooleanExtra(str, false)) {
            arrayList.add(str2);
        }
        String str3 = "dart-flags";
        if (intent.hasExtra(str3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("--dart-flags=");
            sb2.append(intent.getStringExtra(str3));
            arrayList.add(sb2.toString());
        }
        if (!arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    private boolean loadIntent(Intent intent) {
        if (!"android.intent.action.RUN".equals(intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra(FlutterFragment.ARG_ROUTE);
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = FlutterMain.findAppBundlePath();
        }
        if (stringExtra != null) {
            this.flutterView.setInitialRoute(stringExtra);
        }
        runBundle(dataString);
        return true;
    }

    private void runBundle(String str) {
        if (!this.flutterView.getFlutterNativeView().isApplicationRunning()) {
            FlutterRunArguments flutterRunArguments = new FlutterRunArguments();
            flutterRunArguments.bundlePath = str;
            flutterRunArguments.entrypoint = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
            this.flutterView.runFromBundle(flutterRunArguments);
        }
    }

    private View createLaunchView() {
        if (!showSplashScreenUntilFirstFrame().booleanValue()) {
            return null;
        }
        Drawable launchScreenDrawableFromActivityTheme = getLaunchScreenDrawableFromActivityTheme();
        if (launchScreenDrawableFromActivityTheme == null) {
            return null;
        }
        View view = new View(this.activity);
        view.setLayoutParams(matchParent);
        view.setBackground(launchScreenDrawableFromActivityTheme);
        return view;
    }

    private Drawable getLaunchScreenDrawableFromActivityTheme() {
        TypedValue typedValue = new TypedValue();
        if (!this.activity.getTheme().resolveAttribute(16842836, typedValue, true) || typedValue.resourceId == 0) {
            return null;
        }
        try {
            return this.activity.getResources().getDrawable(typedValue.resourceId);
        } catch (NotFoundException unused) {
            Log.e(TAG, "Referenced launch screen windowBackground resource does not exist");
            return null;
        }
    }

    private Boolean showSplashScreenUntilFirstFrame() {
        try {
            Bundle bundle = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), TsExtractor.TS_STREAM_TYPE_AC3).metaData;
            return Boolean.valueOf(bundle != null && bundle.getBoolean(SPLASH_SCREEN_META_DATA_KEY));
        } catch (NameNotFoundException unused) {
            return Boolean.valueOf(false);
        }
    }

    private void addLaunchView() {
        View view = this.launchView;
        if (view != null) {
            this.activity.addContentView(view, matchParent);
            this.flutterView.addFirstFrameListener(new FirstFrameListener() {
                public void onFirstFrame() {
                    FlutterActivityDelegate.this.launchView.animate().alpha(0.0f).setListener(new AnimatorListenerAdapter() {
                        public void onAnimationEnd(Animator animator) {
                            ((ViewGroup) FlutterActivityDelegate.this.launchView.getParent()).removeView(FlutterActivityDelegate.this.launchView);
                            FlutterActivityDelegate.this.launchView = null;
                        }
                    });
                    FlutterActivityDelegate.this.flutterView.removeFirstFrameListener(this);
                }
            });
            this.activity.setTheme(16973833);
        }
    }
}
