package com.idlefish.flutterboost.containers;

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
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.idlefish.flutterboost.NewFlutterBoost;
import com.idlefish.flutterboost.XFlutterView;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity.SerializableMap;
import io.flutter.embedding.android.FlutterEngineConfigurator;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.android.SplashScreen;
import io.flutter.embedding.android.SplashScreenProvider;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.HashMap;
import java.util.Map;

public class NewFlutterFragment extends Fragment implements Host {
    protected static final String ARG_APP_BUNDLE_PATH = "app_bundle_path";
    protected static final String ARG_CACHED_ENGINE_ID = "cached_engine_id";
    protected static final String ARG_DART_ENTRYPOINT = "dart_entrypoint";
    protected static final String ARG_DESTROY_ENGINE_WITH_FRAGMENT = "destroy_engine_with_fragment";
    protected static final String ARG_FLUTTERVIEW_RENDER_MODE = "flutterview_render_mode";
    protected static final String ARG_FLUTTERVIEW_TRANSPARENCY_MODE = "flutterview_transparency_mode";
    protected static final String ARG_FLUTTER_INITIALIZATION_ARGS = "initialization_args";
    protected static final String ARG_INITIAL_ROUTE = "initial_route";
    protected static final String ARG_SHOULD_ATTACH_ENGINE_TO_ACTIVITY = "should_attach_engine_to_activity";
    protected static final String EXTRA_PARAMS = "params";
    protected static final String EXTRA_URL = "url";
    private static final String TAG = "NewFlutterFragment";
    private FlutterActivityAndFragmentDelegate delegate;

    @interface ActivityCallThrough {
    }

    public static class NewEngineFragmentBuilder {
        private final Class<? extends NewFlutterFragment> fragmentClass;
        private Map params;
        private RenderMode renderMode;
        private FlutterShellArgs shellArgs;
        private boolean shouldAttachEngineToActivity;
        private TransparencyMode transparencyMode;
        private String url;

        public NewEngineFragmentBuilder() {
            this.shellArgs = null;
            this.renderMode = RenderMode.surface;
            this.transparencyMode = TransparencyMode.transparent;
            this.shouldAttachEngineToActivity = true;
            this.url = "";
            this.params = new HashMap();
            this.fragmentClass = NewFlutterFragment.class;
        }

        public NewEngineFragmentBuilder(@NonNull Class<? extends NewFlutterFragment> cls) {
            this.shellArgs = null;
            this.renderMode = RenderMode.surface;
            this.transparencyMode = TransparencyMode.transparent;
            this.shouldAttachEngineToActivity = true;
            this.url = "";
            this.params = new HashMap();
            this.fragmentClass = cls;
        }

        @NonNull
        public NewEngineFragmentBuilder flutterShellArgs(@NonNull FlutterShellArgs flutterShellArgs) {
            this.shellArgs = flutterShellArgs;
            return this;
        }

        @NonNull
        public NewEngineFragmentBuilder renderMode(@NonNull RenderMode renderMode2) {
            this.renderMode = renderMode2;
            return this;
        }

        public NewEngineFragmentBuilder url(@NonNull String str) {
            this.url = str;
            return this;
        }

        public NewEngineFragmentBuilder params(@NonNull Map map) {
            this.params = map;
            return this;
        }

        @NonNull
        public NewEngineFragmentBuilder transparencyMode(@NonNull TransparencyMode transparencyMode2) {
            this.transparencyMode = transparencyMode2;
            return this;
        }

        /* access modifiers changed from: protected */
        @NonNull
        public Bundle createArgs() {
            Bundle bundle = new Bundle();
            FlutterShellArgs flutterShellArgs = this.shellArgs;
            if (flutterShellArgs != null) {
                bundle.putStringArray(NewFlutterFragment.ARG_FLUTTER_INITIALIZATION_ARGS, flutterShellArgs.toArray());
            }
            SerializableMap serializableMap = new SerializableMap();
            serializableMap.setMap(this.params);
            bundle.putString("url", this.url);
            bundle.putSerializable(NewFlutterFragment.EXTRA_PARAMS, serializableMap);
            RenderMode renderMode2 = this.renderMode;
            if (renderMode2 == null) {
                renderMode2 = RenderMode.surface;
            }
            bundle.putString(NewFlutterFragment.ARG_FLUTTERVIEW_RENDER_MODE, renderMode2.name());
            TransparencyMode transparencyMode2 = this.transparencyMode;
            if (transparencyMode2 == null) {
                transparencyMode2 = TransparencyMode.transparent;
            }
            bundle.putString(NewFlutterFragment.ARG_FLUTTERVIEW_TRANSPARENCY_MODE, transparencyMode2.name());
            bundle.putBoolean(NewFlutterFragment.ARG_DESTROY_ENGINE_WITH_FRAGMENT, true);
            return bundle;
        }

        @NonNull
        public <T extends NewFlutterFragment> T build() {
            try {
                T t = (NewFlutterFragment) this.fragmentClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (t != null) {
                    t.setArguments(createArgs());
                    return t;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("The NewFlutterFragment subclass sent in the constructor (");
                sb.append(this.fragmentClass.getCanonicalName());
                sb.append(") does not match the expected return type.");
                throw new RuntimeException(sb.toString());
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not instantiate NewFlutterFragment subclass (");
                sb2.append(this.fragmentClass.getName());
                sb2.append(")");
                throw new RuntimeException(sb2.toString(), e);
            }
        }
    }

    public boolean shouldAttachEngineToActivity() {
        return true;
    }

    @Nullable
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return super.getActivity();
    }

    @NonNull
    public static NewFlutterFragment createDefault() {
        return new NewEngineFragmentBuilder().build();
    }

    @NonNull
    public static NewEngineFragmentBuilder withNewEngine() {
        return new NewEngineFragmentBuilder();
    }

    /* access modifiers changed from: protected */
    public XFlutterView getFlutterView() {
        return this.delegate.getFlutterView();
    }

    public NewFlutterFragment() {
        setArguments(new Bundle());
    }

    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.delegate = new FlutterActivityAndFragmentDelegate(this);
        this.delegate.onAttach(context);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.delegate.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onStart() {
        super.onStart();
        this.delegate.onStart();
    }

    public void onResume() {
        super.onResume();
        this.delegate.onResume();
    }

    @ActivityCallThrough
    public void onPostResume() {
        this.delegate.onPostResume();
    }

    public void onPause() {
        super.onPause();
        this.delegate.onPause();
    }

    public void onStop() {
        super.onStop();
        this.delegate.onStop();
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.delegate.onDestroyView();
    }

    public void onDetach() {
        super.onDetach();
        this.delegate.onDetach();
        this.delegate.release();
        this.delegate = null;
    }

    @ActivityCallThrough
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.delegate.onRequestPermissionsResult(i, strArr, iArr);
    }

    @ActivityCallThrough
    public void onNewIntent(@NonNull Intent intent) {
        this.delegate.onNewIntent(intent);
    }

    @ActivityCallThrough
    public void onBackPressed() {
        this.delegate.onBackPressed();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        this.delegate.onActivityResult(i, i2, intent);
    }

    @ActivityCallThrough
    public void onUserLeaveHint() {
        this.delegate.onUserLeaveHint();
    }

    @ActivityCallThrough
    public void onTrimMemory(int i) {
        this.delegate.onTrimMemory(i);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.delegate.onLowMemory();
    }

    @NonNull
    private Context getContextCompat() {
        if (VERSION.SDK_INT >= 23) {
            return getContext();
        }
        return getActivity();
    }

    @NonNull
    public FlutterShellArgs getFlutterShellArgs() {
        String[] stringArray = getArguments().getStringArray(ARG_FLUTTER_INITIALIZATION_ARGS);
        if (stringArray == null) {
            stringArray = new String[0];
        }
        return new FlutterShellArgs(stringArray);
    }

    @NonNull
    public RenderMode getRenderMode() {
        return RenderMode.valueOf(getArguments().getString(ARG_FLUTTERVIEW_RENDER_MODE, RenderMode.surface.name()));
    }

    @NonNull
    public TransparencyMode getTransparencyMode() {
        return TransparencyMode.valueOf(getArguments().getString(ARG_FLUTTERVIEW_TRANSPARENCY_MODE, TransparencyMode.transparent.name()));
    }

    @Nullable
    public SplashScreen provideSplashScreen() {
        FragmentActivity activity = getActivity();
        if (activity instanceof SplashScreenProvider) {
            return ((SplashScreenProvider) activity).provideSplashScreen();
        }
        return null;
    }

    @Nullable
    public FlutterEngine provideFlutterEngine(@NonNull Context context) {
        return NewFlutterBoost.instance().engineProvider();
    }

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

    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        FragmentActivity activity = getActivity();
        if (activity instanceof FlutterEngineConfigurator) {
            ((FlutterEngineConfigurator) activity).configureFlutterEngine(flutterEngine);
        }
    }

    public String getContainerUrl() {
        return getArguments().getString("url");
    }

    public Map getContainerUrlParams() {
        return ((SerializableMap) getArguments().getSerializable(EXTRA_PARAMS)).getMap();
    }
}
