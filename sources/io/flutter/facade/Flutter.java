package io.flutter.facade;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterRunArguments;
import io.flutter.view.FlutterView;

public final class Flutter {
    private Flutter() {
    }

    public static void startInitialization(@NonNull Context context) {
        FlutterMain.startInitialization(context);
    }

    @NonNull
    public static FlutterFragment createFragment(String str) {
        FlutterFragment flutterFragment = new FlutterFragment();
        Bundle bundle = new Bundle();
        bundle.putString(FlutterFragment.ARG_ROUTE, str);
        flutterFragment.setArguments(bundle);
        return flutterFragment;
    }

    @NonNull
    public static FlutterView createView(@NonNull final Activity activity, @NonNull Lifecycle lifecycle, String str) {
        FlutterMain.startInitialization(activity.getApplicationContext());
        FlutterMain.ensureInitializationComplete(activity.getApplicationContext(), null);
        final AnonymousClass1 r2 = new FlutterView(activity, null, new FlutterNativeView(activity)) {
            private final BasicMessageChannel<String> lifecycleMessages = new BasicMessageChannel<>(this, "flutter/lifecycle", StringCodec.INSTANCE);

            public void onFirstFrame() {
                super.onFirstFrame();
                setAlpha(1.0f);
            }

            public void onPostResume() {
                this.lifecycleMessages.send("AppLifecycleState.resumed");
            }
        };
        if (str != null) {
            r2.setInitialRoute(str);
        }
        lifecycle.addObserver(new LifecycleObserver() {
            @OnLifecycleEvent(Event.ON_CREATE)
            public void onCreate() {
                FlutterRunArguments flutterRunArguments = new FlutterRunArguments();
                flutterRunArguments.bundlePath = FlutterMain.findAppBundlePath(activity.getApplicationContext());
                flutterRunArguments.entrypoint = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
                r2.runFromBundle(flutterRunArguments);
                GeneratedPluginRegistrant.registerWith(r2.getPluginRegistry());
            }

            @OnLifecycleEvent(Event.ON_START)
            public void onStart() {
                r2.onStart();
            }

            @OnLifecycleEvent(Event.ON_RESUME)
            public void onResume() {
                r2.onPostResume();
            }

            @OnLifecycleEvent(Event.ON_PAUSE)
            public void onPause() {
                r2.onPause();
            }

            @OnLifecycleEvent(Event.ON_STOP)
            public void onStop() {
                r2.onStop();
            }

            @OnLifecycleEvent(Event.ON_DESTROY)
            public void onDestroy() {
                r2.destroy();
            }
        });
        r2.setAlpha(0.0f);
        return r2;
    }
}
