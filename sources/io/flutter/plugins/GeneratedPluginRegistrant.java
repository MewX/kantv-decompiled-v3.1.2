package io.flutter.plugins;

import com.example.flutter_drag_scale.FlutterDragScalePlugin;
import com.idlefish.flutterboost.FlutterBoostPlugin;
import com.kantv.flt_system_info.FltSystemInfoPlugin;
import com.kantv.flt_tencent_im.FltTencentImPlugin;
import com.kantv.kt_player.KtPlayerPlugin;
import fleamarket.taobao.com.xservicekit.XserviceKitPlugin;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.connectivity.ConnectivityPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;

public final class GeneratedPluginRegistrant {
    public static void registerWith(PluginRegistry pluginRegistry) {
        if (!alreadyRegisteredWith(pluginRegistry)) {
            ConnectivityPlugin.registerWith(pluginRegistry.registrarFor("io.flutter.plugins.connectivity.ConnectivityPlugin"));
            FltSystemInfoPlugin.registerWith(pluginRegistry.registrarFor("com.kantv.flt_system_info.FltSystemInfoPlugin"));
            FltTencentImPlugin.registerWith(pluginRegistry.registrarFor("com.kantv.flt_tencent_im.FltTencentImPlugin"));
            FlutterBoostPlugin.registerWith(pluginRegistry.registrarFor("com.idlefish.flutterboost.FlutterBoostPlugin"));
            FlutterDragScalePlugin.registerWith(pluginRegistry.registrarFor("com.example.flutter_drag_scale.FlutterDragScalePlugin"));
            KtPlayerPlugin.registerWith(pluginRegistry.registrarFor("com.kantv.kt_player.KtPlayerPlugin"));
            PathProviderPlugin.registerWith(pluginRegistry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
            SharedPreferencesPlugin.registerWith(pluginRegistry.registrarFor("io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"));
            VideoPlayerPlugin.registerWith(pluginRegistry.registrarFor("io.flutter.plugins.videoplayer.VideoPlayerPlugin"));
            XserviceKitPlugin.registerWith(pluginRegistry.registrarFor("fleamarket.taobao.com.xservicekit.XserviceKitPlugin"));
        }
    }

    private static boolean alreadyRegisteredWith(PluginRegistry pluginRegistry) {
        String canonicalName = GeneratedPluginRegistrant.class.getCanonicalName();
        if (pluginRegistry.hasPlugin(canonicalName)) {
            return true;
        }
        pluginRegistry.registrarFor(canonicalName);
        return false;
    }
}
