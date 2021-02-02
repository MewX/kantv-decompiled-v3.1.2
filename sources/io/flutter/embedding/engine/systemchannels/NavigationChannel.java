package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;

public class NavigationChannel {
    private static final String TAG = "NavigationChannel";
    @NonNull
    public final MethodChannel channel;

    public NavigationChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/navigation", JSONMethodCodec.INSTANCE);
    }

    public void setInitialRoute(@NonNull String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Sending message to set initial route to '");
        sb.append(str);
        sb.append("'");
        Log.v(TAG, sb.toString());
        this.channel.invokeMethod("setInitialRoute", str);
    }

    public void pushRoute(@NonNull String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Sending message to push route '");
        sb.append(str);
        sb.append("'");
        Log.v(TAG, sb.toString());
        this.channel.invokeMethod("pushRoute", str);
    }

    public void popRoute() {
        Log.v(TAG, "Sending message to pop route.");
        this.channel.invokeMethod("popRoute", null);
    }

    public void setMethodCallHandler(@Nullable MethodCallHandler methodCallHandler) {
        this.channel.setMethodCallHandler(methodCallHandler);
    }
}
