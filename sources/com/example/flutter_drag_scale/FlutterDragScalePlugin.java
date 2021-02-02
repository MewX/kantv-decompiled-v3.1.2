package com.example.flutter_drag_scale;

import android.os.Build.VERSION;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class FlutterDragScalePlugin implements MethodCallHandler {
    public static void registerWith(Registrar registrar) {
        new MethodChannel(registrar.messenger(), "flutter_drag_scale").setMethodCallHandler(new FlutterDragScalePlugin());
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        if (methodCall.method.equals("getPlatformVersion")) {
            StringBuilder sb = new StringBuilder();
            sb.append("Android ");
            sb.append(VERSION.RELEASE);
            result.success(sb.toString());
            return;
        }
        result.notImplemented();
    }
}
