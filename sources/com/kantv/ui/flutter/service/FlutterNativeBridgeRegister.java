package com.kantv.ui.flutter.service;

import com.kantv.ui.flutter.handlers.FlutterNativeBridge_flutterCallNative;

public class FlutterNativeBridgeRegister {
    public static void register() {
        FlutterNativeBridge.register();
        FlutterNativeBridge_flutterCallNative.register();
    }
}
