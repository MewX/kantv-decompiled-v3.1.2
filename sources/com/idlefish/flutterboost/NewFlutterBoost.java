package com.idlefish.flutterboost;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.exoplayer2.offline.DownloadService;
import com.idlefish.flutterboost.interfaces.IContainerManager;
import com.idlefish.flutterboost.interfaces.IFlutterViewContainer;
import com.idlefish.flutterboost.interfaces.INativeRouter;
import com.kantv.ui.config.Definition.UserPreference;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.dart.DartExecutor.DartEntrypoint;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.view.FlutterMain;
import java.util.HashMap;
import java.util.Map;

public class NewFlutterBoost {
    static NewFlutterBoost sInstance;
    /* access modifiers changed from: private */
    public Activity mCurrentActiveActivity;
    private FlutterEngine mEngine;
    private FlutterViewContainerManager mManager;
    /* access modifiers changed from: private */
    public Platform mPlatform;
    private PluginRegistry mRegistry;

    public interface BoostLifecycleListener {
        void onEngineCreated();

        void onEngineDestroy();

        void onPluginsRegistered();
    }

    public static class ConfigBuilder {
        public static int ANY_ACTIVITY_CREATED = 1;
        public static int APP_EXit = 0;
        public static int All_FLUTTER_ACTIVITY_DESTROY = 1;
        public static final String DEFAULT_DART_ENTRYPOINT = "main";
        public static final String DEFAULT_INITIAL_ROUTE = "/";
        public static int FLUTTER_ACTIVITY_CREATED = 2;
        public static int IMMEDIATELY;
        private String dartEntrypoint = DEFAULT_DART_ENTRYPOINT;
        /* access modifiers changed from: private */
        public String initialRoute = "/";
        /* access modifiers changed from: private */
        public boolean isDebug = false;
        private BoostLifecycleListener lifecycleListener;
        /* access modifiers changed from: private */
        public Application mApp;
        /* access modifiers changed from: private */
        public RenderMode renderMode = RenderMode.texture;
        /* access modifiers changed from: private */
        public INativeRouter router = null;
        /* access modifiers changed from: private */
        public int whenEngineDestory = APP_EXit;
        /* access modifiers changed from: private */
        public int whenEngineStart = ANY_ACTIVITY_CREATED;

        public ConfigBuilder(Application application, INativeRouter iNativeRouter) {
            this.router = iNativeRouter;
            this.mApp = application;
        }

        public ConfigBuilder renderMode(RenderMode renderMode2) {
            this.renderMode = renderMode2;
            return this;
        }

        public ConfigBuilder dartEntrypoint(@NonNull String str) {
            this.dartEntrypoint = str;
            return this;
        }

        public ConfigBuilder initialRoute(@NonNull String str) {
            this.initialRoute = str;
            return this;
        }

        public ConfigBuilder isDebug(boolean z) {
            this.isDebug = z;
            return this;
        }

        public ConfigBuilder whenEngineStart(int i) {
            this.whenEngineStart = i;
            return this;
        }

        public ConfigBuilder whenEngineDestory(int i) {
            this.whenEngineDestory = i;
            return this;
        }

        public ConfigBuilder lifecycleListener(BoostLifecycleListener boostLifecycleListener) {
            this.lifecycleListener = boostLifecycleListener;
            return this;
        }

        public Platform build() {
            AnonymousClass1 r0 = new Platform() {
                public Application getApplication() {
                    return ConfigBuilder.this.mApp;
                }

                public boolean isDebug() {
                    return ConfigBuilder.this.isDebug;
                }

                public String initialRoute() {
                    return ConfigBuilder.this.initialRoute;
                }

                public void openContainer(Context context, String str, Map<String, Object> map, int i, Map<String, Object> map2) {
                    ConfigBuilder.this.router.openContainer(context, str, map, i, map2);
                }

                public int whenEngineStart() {
                    return ConfigBuilder.this.whenEngineStart;
                }

                public int whenEngineDestroy() {
                    return ConfigBuilder.this.whenEngineDestory;
                }

                public RenderMode renderMode() {
                    return ConfigBuilder.this.renderMode;
                }
            };
            r0.lifecycleListener = this.lifecycleListener;
            return r0;
        }
    }

    public static NewFlutterBoost instance() {
        if (sInstance == null) {
            sInstance = new NewFlutterBoost();
        }
        return sInstance;
    }

    public void init(Platform platform) {
        this.mPlatform = platform;
        this.mManager = new FlutterViewContainerManager();
        platform.getApplication().registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacks() {
            public void onActivityPaused(Activity activity) {
            }

            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            public void onActivityCreated(Activity activity, Bundle bundle) {
                String str = "xxxxx";
                Log.e("bbbb1", str);
                NewFlutterBoost.this.mCurrentActiveActivity = activity;
                if (NewFlutterBoost.this.mPlatform.whenEngineStart() == ConfigBuilder.ANY_ACTIVITY_CREATED) {
                    Log.e("bbbb2", str);
                    NewFlutterBoost.this.doInitialFlutter();
                }
            }

            public void onActivityStarted(Activity activity) {
                if (NewFlutterBoost.this.mCurrentActiveActivity == null) {
                    Debuger.log("Application entry foreground");
                    if (NewFlutterBoost.this.createEngine() != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("type", DownloadService.KEY_FOREGROUND);
                        NewFlutterBoost.this.channel().sendEvent("lifecycle", hashMap);
                    }
                }
                NewFlutterBoost.this.mCurrentActiveActivity = activity;
            }

            public void onActivityResumed(Activity activity) {
                NewFlutterBoost.this.mCurrentActiveActivity = activity;
            }

            public void onActivityStopped(Activity activity) {
                if (NewFlutterBoost.this.mCurrentActiveActivity == activity) {
                    Debuger.log("Application entry background");
                    if (NewFlutterBoost.this.createEngine() != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("type", UserPreference.BACKGROUND);
                        NewFlutterBoost.this.channel().sendEvent("lifecycle", hashMap);
                    }
                    NewFlutterBoost.this.mCurrentActiveActivity = null;
                }
            }

            public void onActivityDestroyed(Activity activity) {
                if (NewFlutterBoost.this.mCurrentActiveActivity == activity) {
                    Debuger.log("Application entry background");
                    if (NewFlutterBoost.this.createEngine() != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("type", UserPreference.BACKGROUND);
                        NewFlutterBoost.this.channel().sendEvent("lifecycle", hashMap);
                    }
                    NewFlutterBoost.this.mCurrentActiveActivity = null;
                }
            }
        });
        if (this.mPlatform.whenEngineStart() == ConfigBuilder.IMMEDIATELY) {
            doInitialFlutter();
        }
    }

    public void doInitialFlutter() {
        if (this.mEngine == null) {
            FlutterEngine createEngine = createEngine();
            if (this.mPlatform.lifecycleListener != null) {
                this.mPlatform.lifecycleListener.onEngineCreated();
            }
            if (!createEngine.getDartExecutor().isExecutingDart()) {
                if (this.mPlatform.initialRoute() != null) {
                    createEngine.getNavigationChannel().setInitialRoute(this.mPlatform.initialRoute());
                }
                createEngine.getDartExecutor().executeDartEntrypoint(new DartEntrypoint(FlutterMain.findAppBundlePath(), ConfigBuilder.DEFAULT_DART_ENTRYPOINT));
                this.mRegistry = new BoostPluginRegistry(createEngine());
                registerPlugins();
            }
        }
    }

    public IContainerManager containerManager() {
        return sInstance.mManager;
    }

    public Platform platform() {
        return sInstance.mPlatform;
    }

    public FlutterBoostPlugin channel() {
        return FlutterBoostPlugin.singleton();
    }

    public Activity currentActivity() {
        return sInstance.mCurrentActiveActivity;
    }

    public IFlutterViewContainer findContainerById(String str) {
        return this.mManager.findContainerById(str);
    }

    public PluginRegistry getPluginRegistry() {
        return this.mRegistry;
    }

    /* access modifiers changed from: private */
    public FlutterEngine createEngine() {
        if (this.mEngine == null) {
            FlutterMain.startInitialization(this.mPlatform.getApplication());
            FlutterMain.ensureInitializationComplete(this.mPlatform.getApplication().getApplicationContext(), new FlutterShellArgs(new String[0]).toArray());
            this.mEngine = new FlutterEngine(this.mPlatform.getApplication().getApplicationContext());
        }
        return this.mEngine;
    }

    private void registerPlugins() {
        try {
            Class.forName("io.flutter.plugins.GeneratedPluginRegistrant").getDeclaredMethod("registerWith", new Class[]{PluginRegistry.class}).invoke(null, new Object[]{this.mRegistry});
            if (this.mPlatform.lifecycleListener != null) {
                this.mPlatform.lifecycleListener.onPluginsRegistered();
            }
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public FlutterEngine engineProvider() {
        return this.mEngine;
    }

    public void boostDestroy() {
        FlutterEngine flutterEngine = this.mEngine;
        if (flutterEngine != null) {
            flutterEngine.destroy();
        }
        if (this.mPlatform.lifecycleListener != null) {
            this.mPlatform.lifecycleListener.onEngineDestroy();
        }
        this.mEngine = null;
        this.mRegistry = null;
        this.mCurrentActiveActivity = null;
    }
}
