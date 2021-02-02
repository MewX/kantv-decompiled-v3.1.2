package io.flutter.embedding.engine.plugins.shim;

import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ShimPluginRegistry implements PluginRegistry {
    private static final String TAG = "ShimPluginRegistry";
    private final FlutterEngine flutterEngine;
    private final Map<String, Object> pluginMap = new HashMap();
    private final ShimRegistrarAggregate shimRegistrarAggregate;

    private static class ShimRegistrarAggregate implements FlutterPlugin, ActivityAware {
        private ActivityPluginBinding activityPluginBinding;
        private FlutterPluginBinding flutterPluginBinding;
        private final Set<ShimRegistrar> shimRegistrars;

        private ShimRegistrarAggregate() {
            this.shimRegistrars = new HashSet();
        }

        public void addPlugin(@NonNull ShimRegistrar shimRegistrar) {
            this.shimRegistrars.add(shimRegistrar);
            FlutterPluginBinding flutterPluginBinding2 = this.flutterPluginBinding;
            if (flutterPluginBinding2 != null) {
                shimRegistrar.onAttachedToEngine(flutterPluginBinding2);
            }
            ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
            if (activityPluginBinding2 != null) {
                shimRegistrar.onAttachedToActivity(activityPluginBinding2);
            }
        }

        public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding2) {
            this.flutterPluginBinding = flutterPluginBinding2;
            for (ShimRegistrar onAttachedToEngine : this.shimRegistrars) {
                onAttachedToEngine.onAttachedToEngine(flutterPluginBinding2);
            }
        }

        public void onDetachedFromEngine(@NonNull FlutterPluginBinding flutterPluginBinding2) {
            for (ShimRegistrar onDetachedFromEngine : this.shimRegistrars) {
                onDetachedFromEngine.onDetachedFromEngine(flutterPluginBinding2);
            }
            this.flutterPluginBinding = null;
        }

        public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding2) {
            this.activityPluginBinding = activityPluginBinding2;
            for (ShimRegistrar onAttachedToActivity : this.shimRegistrars) {
                onAttachedToActivity.onAttachedToActivity(activityPluginBinding2);
            }
        }

        public void onDetachedFromActivityForConfigChanges() {
            for (ShimRegistrar onDetachedFromActivity : this.shimRegistrars) {
                onDetachedFromActivity.onDetachedFromActivity();
            }
            this.activityPluginBinding = null;
        }

        public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding2) {
            for (ShimRegistrar onReattachedToActivityForConfigChanges : this.shimRegistrars) {
                onReattachedToActivityForConfigChanges.onReattachedToActivityForConfigChanges(activityPluginBinding2);
            }
        }

        public void onDetachedFromActivity() {
            for (ShimRegistrar onDetachedFromActivity : this.shimRegistrars) {
                onDetachedFromActivity.onDetachedFromActivity();
            }
        }
    }

    public ShimPluginRegistry(@NonNull FlutterEngine flutterEngine2) {
        this.flutterEngine = flutterEngine2;
        this.shimRegistrarAggregate = new ShimRegistrarAggregate();
        this.flutterEngine.getPlugins().add((FlutterPlugin) this.shimRegistrarAggregate);
    }

    public Registrar registrarFor(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Creating plugin Registrar for '");
        sb.append(str);
        sb.append("'");
        Log.v(TAG, sb.toString());
        if (!this.pluginMap.containsKey(str)) {
            this.pluginMap.put(str, null);
            ShimRegistrar shimRegistrar = new ShimRegistrar(str, this.pluginMap);
            this.shimRegistrarAggregate.addPlugin(shimRegistrar);
            return shimRegistrar;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Plugin key ");
        sb2.append(str);
        sb2.append(" is already in use");
        throw new IllegalStateException(sb2.toString());
    }

    public boolean hasPlugin(String str) {
        return this.pluginMap.containsKey(str);
    }

    public <T> T valuePublishedByPlugin(String str) {
        return this.pluginMap.get(str);
    }
}
