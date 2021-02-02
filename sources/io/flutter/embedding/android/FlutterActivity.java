package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.view.FlutterMain;

public class FlutterActivity extends Activity implements Host, LifecycleOwner {
    protected static final String DART_ENTRYPOINT_META_DATA_KEY = "io.flutter.Entrypoint";
    protected static final String DEFAULT_BACKGROUND_MODE = BackgroundMode.opaque.name();
    protected static final String DEFAULT_DART_ENTRYPOINT = "main";
    protected static final String DEFAULT_INITIAL_ROUTE = "/";
    protected static final String EXTRA_BACKGROUND_MODE = "background_mode";
    protected static final String EXTRA_CACHED_ENGINE_ID = "cached_engine_id";
    protected static final String EXTRA_DART_ENTRYPOINT = "dart_entrypoint";
    protected static final String EXTRA_DESTROY_ENGINE_WITH_ACTIVITY = "destroy_engine_with_activity";
    protected static final String EXTRA_INITIAL_ROUTE = "initial_route";
    protected static final String INITIAL_ROUTE_META_DATA_KEY = "io.flutter.InitialRoute";
    protected static final String NORMAL_THEME_META_DATA_KEY = "io.flutter.embedding.android.NormalTheme";
    protected static final String SPLASH_SCREEN_META_DATA_KEY = "io.flutter.embedding.android.SplashScreenDrawable";
    private static final String TAG = "FlutterActivity";
    private FlutterActivityAndFragmentDelegate delegate;
    @NonNull
    private LifecycleRegistry lifecycle = new LifecycleRegistry(this);

    public enum BackgroundMode {
        opaque,
        transparent
    }

    public static class CachedEngineIntentBuilder {
        private final Class<? extends FlutterActivity> activityClass;
        private String backgroundMode = FlutterActivity.DEFAULT_BACKGROUND_MODE;
        private final String cachedEngineId;
        private boolean destroyEngineWithActivity = false;

        protected CachedEngineIntentBuilder(@NonNull Class<? extends FlutterActivity> cls, @NonNull String str) {
            this.activityClass = cls;
            this.cachedEngineId = str;
        }

        public CachedEngineIntentBuilder destroyEngineWithActivity(boolean z) {
            this.destroyEngineWithActivity = z;
            return this;
        }

        @NonNull
        public CachedEngineIntentBuilder backgroundMode(@NonNull BackgroundMode backgroundMode2) {
            this.backgroundMode = backgroundMode2.name();
            return this;
        }

        @NonNull
        public Intent build(@NonNull Context context) {
            return new Intent(context, this.activityClass).putExtra(FlutterActivity.EXTRA_CACHED_ENGINE_ID, this.cachedEngineId).putExtra(FlutterActivity.EXTRA_DESTROY_ENGINE_WITH_ACTIVITY, this.destroyEngineWithActivity).putExtra(FlutterActivity.EXTRA_BACKGROUND_MODE, this.backgroundMode);
        }
    }

    public static class NewEngineIntentBuilder {
        private final Class<? extends FlutterActivity> activityClass;
        private String backgroundMode = FlutterActivity.DEFAULT_BACKGROUND_MODE;
        private String dartEntrypoint = "main";
        private String initialRoute = "/";

        protected NewEngineIntentBuilder(@NonNull Class<? extends FlutterActivity> cls) {
            this.activityClass = cls;
        }

        @NonNull
        public NewEngineIntentBuilder dartEntrypoint(@NonNull String str) {
            this.dartEntrypoint = str;
            return this;
        }

        @NonNull
        public NewEngineIntentBuilder initialRoute(@NonNull String str) {
            this.initialRoute = str;
            return this;
        }

        @NonNull
        public NewEngineIntentBuilder backgroundMode(@NonNull BackgroundMode backgroundMode2) {
            this.backgroundMode = backgroundMode2.name();
            return this;
        }

        @NonNull
        public Intent build(@NonNull Context context) {
            return new Intent(context, this.activityClass).putExtra(FlutterActivity.EXTRA_DART_ENTRYPOINT, this.dartEntrypoint).putExtra(FlutterActivity.EXTRA_INITIAL_ROUTE, this.initialRoute).putExtra(FlutterActivity.EXTRA_BACKGROUND_MODE, this.backgroundMode).putExtra(FlutterActivity.EXTRA_DESTROY_ENGINE_WITH_ACTIVITY, true);
        }
    }

    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    }

    @NonNull
    public Activity getActivity() {
        return this;
    }

    @NonNull
    public Context getContext() {
        return this;
    }

    public void onFirstFrameRendered() {
    }

    @Nullable
    public FlutterEngine provideFlutterEngine(@NonNull Context context) {
        return null;
    }

    public boolean shouldAttachEngineToActivity() {
        return true;
    }

    @NonNull
    public static Intent createDefaultIntent(@NonNull Context context) {
        return withNewEngine().build(context);
    }

    @NonNull
    public static NewEngineIntentBuilder withNewEngine() {
        return new NewEngineIntentBuilder(FlutterActivity.class);
    }

    public static CachedEngineIntentBuilder withCachedEngine(@NonNull String str) {
        return new CachedEngineIntentBuilder(FlutterActivity.class, str);
    }

    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        switchLaunchThemeForNormalTheme();
        super.onCreate(bundle);
        this.lifecycle.handleLifecycleEvent(Event.ON_CREATE);
        this.delegate = new FlutterActivityAndFragmentDelegate(this);
        this.delegate.onAttach(this);
        configureWindowForTransparency();
        setContentView(createFlutterView());
        configureStatusBarForFullscreenFlutterExperience();
    }

    private void switchLaunchThemeForNormalTheme() {
        String str = TAG;
        try {
            ActivityInfo activityInfo = getPackageManager().getActivityInfo(getComponentName(), 128);
            if (activityInfo.metaData != null) {
                int i = activityInfo.metaData.getInt(NORMAL_THEME_META_DATA_KEY, -1);
                if (i != -1) {
                    setTheme(i);
                    return;
                }
                return;
            }
            Log.d(str, "Using the launch theme as normal theme.");
        } catch (NameNotFoundException unused) {
            Log.e(str, "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme.");
        }
    }

    @Nullable
    public SplashScreen provideSplashScreen() {
        Drawable splashScreenFromManifest = getSplashScreenFromManifest();
        if (splashScreenFromManifest != null) {
            return new DrawableSplashScreen(splashScreenFromManifest);
        }
        return null;
    }

    @Nullable
    private Drawable getSplashScreenFromManifest() {
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), TsExtractor.TS_STREAM_TYPE_AC3).metaData;
            Integer valueOf = bundle != null ? Integer.valueOf(bundle.getInt(SPLASH_SCREEN_META_DATA_KEY)) : null;
            if (valueOf == null) {
                return null;
            }
            if (VERSION.SDK_INT > 21) {
                return getResources().getDrawable(valueOf.intValue(), getTheme());
            }
            return getResources().getDrawable(valueOf.intValue());
        } catch (NameNotFoundException unused) {
            return null;
        }
    }

    private void configureWindowForTransparency() {
        if (getBackgroundMode() == BackgroundMode.transparent) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().setFlags(512, 512);
        }
    }

    @NonNull
    private View createFlutterView() {
        return this.delegate.onCreateView(null, null, null);
    }

    private void configureStatusBarForFullscreenFlutterExperience() {
        if (VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(1073741824);
            window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.lifecycle.handleLifecycleEvent(Event.ON_START);
        this.delegate.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.lifecycle.handleLifecycleEvent(Event.ON_RESUME);
        this.delegate.onResume();
    }

    public void onPostResume() {
        super.onPostResume();
        this.delegate.onPostResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.delegate.onPause();
        this.lifecycle.handleLifecycleEvent(Event.ON_PAUSE);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.delegate.onStop();
        this.lifecycle.handleLifecycleEvent(Event.ON_STOP);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.delegate.onDestroyView();
        this.delegate.onDetach();
        this.lifecycle.handleLifecycleEvent(Event.ON_DESTROY);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        this.delegate.onActivityResult(i, i2, intent);
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(@NonNull Intent intent) {
        super.onNewIntent(intent);
        this.delegate.onNewIntent(intent);
    }

    public void onBackPressed() {
        this.delegate.onBackPressed();
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.delegate.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void onUserLeaveHint() {
        this.delegate.onUserLeaveHint();
    }

    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        this.delegate.onTrimMemory(i);
    }

    @NonNull
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    @NonNull
    public FlutterShellArgs getFlutterShellArgs() {
        return FlutterShellArgs.fromIntent(getIntent());
    }

    @Nullable
    public String getCachedEngineId() {
        return getIntent().getStringExtra(EXTRA_CACHED_ENGINE_ID);
    }

    public boolean shouldDestroyEngineWithHost() {
        return getIntent().getBooleanExtra(EXTRA_DESTROY_ENGINE_WITH_ACTIVITY, false);
    }

    @NonNull
    public String getDartEntrypointFunctionName() {
        String str = "main";
        Intent intent = getIntent();
        String str2 = EXTRA_DART_ENTRYPOINT;
        if (intent.hasExtra(str2)) {
            return getIntent().getStringExtra(str2);
        }
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), TsExtractor.TS_STREAM_TYPE_AC3).metaData;
            String string = bundle != null ? bundle.getString(DART_ENTRYPOINT_META_DATA_KEY) : null;
            if (string != null) {
                str = string;
            }
        } catch (NameNotFoundException unused) {
        }
        return str;
    }

    @NonNull
    public String getInitialRoute() {
        String str = "/";
        Intent intent = getIntent();
        String str2 = EXTRA_INITIAL_ROUTE;
        if (intent.hasExtra(str2)) {
            return getIntent().getStringExtra(str2);
        }
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), TsExtractor.TS_STREAM_TYPE_AC3).metaData;
            String string = bundle != null ? bundle.getString(INITIAL_ROUTE_META_DATA_KEY) : null;
            if (string != null) {
                str = string;
            }
        } catch (NameNotFoundException unused) {
        }
        return str;
    }

    @NonNull
    public String getAppBundlePath() {
        if (isDebuggable()) {
            if ("android.intent.action.RUN".equals(getIntent().getAction())) {
                String dataString = getIntent().getDataString();
                if (dataString != null) {
                    return dataString;
                }
            }
        }
        return FlutterMain.findAppBundlePath();
    }

    private boolean isDebuggable() {
        return (getApplicationInfo().flags & 2) != 0;
    }

    @NonNull
    public RenderMode getRenderMode() {
        return getBackgroundMode() == BackgroundMode.opaque ? RenderMode.surface : RenderMode.texture;
    }

    @NonNull
    public TransparencyMode getTransparencyMode() {
        return getBackgroundMode() == BackgroundMode.opaque ? TransparencyMode.opaque : TransparencyMode.transparent;
    }

    /* access modifiers changed from: protected */
    @NonNull
    public BackgroundMode getBackgroundMode() {
        Intent intent = getIntent();
        String str = EXTRA_BACKGROUND_MODE;
        if (intent.hasExtra(str)) {
            return BackgroundMode.valueOf(getIntent().getStringExtra(str));
        }
        return BackgroundMode.opaque;
    }

    /* access modifiers changed from: protected */
    @Nullable
    public FlutterEngine getFlutterEngine() {
        return this.delegate.getFlutterEngine();
    }

    @Nullable
    public PlatformPlugin providePlatformPlugin(@Nullable Activity activity, @NonNull FlutterEngine flutterEngine) {
        if (activity != null) {
            return new PlatformPlugin(getActivity(), flutterEngine.getPlatformChannel());
        }
        return null;
    }
}
