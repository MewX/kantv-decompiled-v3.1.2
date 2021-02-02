package com.idlefish.flutterboost.containers;

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
import android.widget.ImageView.ScaleType;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.idlefish.flutterboost.NewFlutterBoost;
import com.idlefish.flutterboost.XFlutterView;
import io.flutter.Log;
import io.flutter.embedding.android.DrawableSplashScreen;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.android.SplashScreen;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.plugin.platform.PlatformPlugin;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class NewBoostFlutterActivity extends Activity implements Host, LifecycleOwner {
    protected static final String DEFAULT_BACKGROUND_MODE = BackgroundMode.opaque.name();
    protected static final String EXTRA_BACKGROUND_MODE = "background_mode";
    protected static final String EXTRA_DART_ENTRYPOINT = "dart_entrypoint";
    protected static final String EXTRA_DESTROY_ENGINE_WITH_ACTIVITY = "destroy_engine_with_activity";
    protected static final String EXTRA_PARAMS = "params";
    protected static final String EXTRA_URL = "url";
    protected static final String NORMAL_THEME_META_DATA_KEY = "io.flutter.embedding.android.NormalTheme";
    protected static final String SPLASH_SCREEN_META_DATA_KEY = "io.flutter.embedding.android.SplashScreenDrawable";
    private static final String TAG = "NewBoostFlutterActivity";
    private FlutterActivityAndFragmentDelegate delegate;
    @NonNull
    private LifecycleRegistry lifecycle = new LifecycleRegistry(this);

    public enum BackgroundMode {
        opaque,
        transparent
    }

    public static class NewEngineIntentBuilder {
        private final Class<? extends NewBoostFlutterActivity> activityClass;
        private String backgroundMode = NewBoostFlutterActivity.DEFAULT_BACKGROUND_MODE;
        private Map params = new HashMap();
        private String url = "";

        protected NewEngineIntentBuilder(@NonNull Class<? extends NewBoostFlutterActivity> cls) {
            this.activityClass = cls;
        }

        public NewEngineIntentBuilder url(@NonNull String str) {
            this.url = str;
            return this;
        }

        public NewEngineIntentBuilder params(@NonNull Map map) {
            this.params = map;
            return this;
        }

        public NewEngineIntentBuilder backgroundMode(@NonNull BackgroundMode backgroundMode2) {
            this.backgroundMode = backgroundMode2.name();
            return this;
        }

        public Intent build(@NonNull Context context) {
            SerializableMap serializableMap = new SerializableMap();
            serializableMap.setMap(this.params);
            return new Intent(context, this.activityClass).putExtra(NewBoostFlutterActivity.EXTRA_BACKGROUND_MODE, this.backgroundMode).putExtra(NewBoostFlutterActivity.EXTRA_DESTROY_ENGINE_WITH_ACTIVITY, false).putExtra("url", this.url).putExtra(NewBoostFlutterActivity.EXTRA_PARAMS, serializableMap);
        }
    }

    public static class SerializableMap implements Serializable {
        private Map<String, Object> map;

        public Map<String, Object> getMap() {
            return this.map;
        }

        public void setMap(Map<String, Object> map2) {
            this.map = map2;
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

    public boolean shouldAttachEngineToActivity() {
        return true;
    }

    public static Intent createDefaultIntent(@NonNull Context context) {
        return withNewEngine().build(context);
    }

    public static NewEngineIntentBuilder withNewEngine() {
        return new NewEngineIntentBuilder(NewBoostFlutterActivity.class);
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
        String str = "NewBoostFlutterActivity";
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
            return new DrawableSplashScreen(splashScreenFromManifest, ScaleType.CENTER, 500);
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
            window.setStatusBarColor(0);
            window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        }
    }

    /* access modifiers changed from: protected */
    public XFlutterView getFlutterView() {
        return this.delegate.getFlutterView();
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
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.delegate.onDestroyView();
        this.delegate.onDetach();
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

    @Nullable
    public FlutterEngine provideFlutterEngine(@NonNull Context context) {
        return NewFlutterBoost.instance().engineProvider();
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

    public String getContainerUrl() {
        String str = "url";
        return getIntent().hasExtra(str) ? getIntent().getStringExtra(str) : "";
    }

    public Map getContainerUrlParams() {
        Intent intent = getIntent();
        String str = EXTRA_PARAMS;
        if (intent.hasExtra(str)) {
            return ((SerializableMap) getIntent().getSerializableExtra(str)).getMap();
        }
        return new HashMap();
    }
}
