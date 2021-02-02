package com.kantv.kt_player;

import io.flutter.plugin.common.PluginRegistry.Registrar;

public class KtPlayerPlugin {
    public static Registrar registrar;

    public static void registerWith(Registrar registrar2) {
        registrar2.platformViewRegistry().registerViewFactory("plugins/kt_player", new KtPlatformViewFactory(registrar2));
    }
}
