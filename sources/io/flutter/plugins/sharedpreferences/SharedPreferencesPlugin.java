package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class SharedPreferencesPlugin implements FlutterPlugin {
    private static final String CHANNEL_NAME = "plugins.flutter.io/shared_preferences";
    private MethodChannel channel;

    public static void registerWith(Registrar registrar) {
        new SharedPreferencesPlugin().setupChannel(registrar.messenger(), registrar.context());
    }

    public void onAttachedToEngine(FlutterPluginBinding flutterPluginBinding) {
        setupChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), flutterPluginBinding.getApplicationContext());
    }

    public void onDetachedFromEngine(FlutterPluginBinding flutterPluginBinding) {
        teardownChannel();
    }

    private void setupChannel(BinaryMessenger binaryMessenger, Context context) {
        this.channel = new MethodChannel(binaryMessenger, CHANNEL_NAME);
        this.channel.setMethodCallHandler(new MethodCallHandlerImpl(context));
    }

    private void teardownChannel() {
        this.channel.setMethodCallHandler(null);
        this.channel = null;
    }
}
