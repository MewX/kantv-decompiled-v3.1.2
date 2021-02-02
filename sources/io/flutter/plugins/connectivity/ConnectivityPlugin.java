package io.flutter.plugins.connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class ConnectivityPlugin implements FlutterPlugin {
    private EventChannel eventChannel;
    private MethodChannel methodChannel;

    public static void registerWith(Registrar registrar) {
        new ConnectivityPlugin().setupChannels(registrar.messenger(), registrar.context());
    }

    public void onAttachedToEngine(FlutterPluginBinding flutterPluginBinding) {
        setupChannels(flutterPluginBinding.getFlutterEngine().getDartExecutor(), flutterPluginBinding.getApplicationContext());
    }

    public void onDetachedFromEngine(FlutterPluginBinding flutterPluginBinding) {
        teardownChannels();
    }

    private void setupChannels(BinaryMessenger binaryMessenger, Context context) {
        this.methodChannel = new MethodChannel(binaryMessenger, "plugins.flutter.io/connectivity");
        this.eventChannel = new EventChannel(binaryMessenger, "plugins.flutter.io/connectivity_status");
        Connectivity connectivity = new Connectivity((ConnectivityManager) context.getSystemService("connectivity"), (WifiManager) context.getSystemService("wifi"));
        ConnectivityMethodChannelHandler connectivityMethodChannelHandler = new ConnectivityMethodChannelHandler(connectivity);
        ConnectivityBroadcastReceiver connectivityBroadcastReceiver = new ConnectivityBroadcastReceiver(context, connectivity);
        this.methodChannel.setMethodCallHandler(connectivityMethodChannelHandler);
        this.eventChannel.setStreamHandler(connectivityBroadcastReceiver);
    }

    private void teardownChannels() {
        this.methodChannel.setMethodCallHandler(null);
        this.eventChannel.setStreamHandler(null);
        this.methodChannel = null;
        this.eventChannel = null;
    }
}
