package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;

public class LifecycleChannel {
    private static final String TAG = "LifecycleChannel";
    @NonNull
    public final BasicMessageChannel<String> channel;

    public LifecycleChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, "flutter/lifecycle", StringCodec.INSTANCE);
    }

    public void appIsInactive() {
        Log.v(TAG, "Sending AppLifecycleState.inactive message.");
        this.channel.send("AppLifecycleState.inactive");
    }

    public void appIsResumed() {
        Log.v(TAG, "Sending AppLifecycleState.resumed message.");
        this.channel.send("AppLifecycleState.resumed");
    }

    public void appIsPaused() {
        Log.v(TAG, "Sending AppLifecycleState.paused message.");
        this.channel.send("AppLifecycleState.paused");
    }
}
