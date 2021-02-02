package com.idlefish.flutterboost;

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

public class BoostPluginRegistry implements PluginRegistry {
    private static final String TAG = "ShimPluginRegistry";
    private final FlutterEngine flutterEngine;
    private final Map<String, Object> pluginMap = new HashMap();
    private final BoostRegistrarAggregate shimRegistrarAggregate;

    public static class BoostRegistrarAggregate implements FlutterPlugin, ActivityAware {
        private ActivityPluginBinding activityPluginBinding;
        private FlutterPluginBinding flutterPluginBinding;
        private final Set<BoostRegistrar> shimRegistrars;

        public ActivityPluginBinding getActivityPluginBinding() {
            return this.activityPluginBinding;
        }

        private BoostRegistrarAggregate() {
            this.shimRegistrars = new HashSet();
        }

        public void addPlugin(BoostRegistrar boostRegistrar) {
            this.shimRegistrars.add(boostRegistrar);
            FlutterPluginBinding flutterPluginBinding2 = this.flutterPluginBinding;
            if (flutterPluginBinding2 != null) {
                boostRegistrar.onAttachedToEngine(flutterPluginBinding2);
            }
            ActivityPluginBinding activityPluginBinding2 = this.activityPluginBinding;
            if (activityPluginBinding2 != null) {
                boostRegistrar.onAttachedToActivity(activityPluginBinding2);
            }
        }

        public void onAttachedToEngine(FlutterPluginBinding flutterPluginBinding2) {
            this.flutterPluginBinding = flutterPluginBinding2;
            for (BoostRegistrar onAttachedToEngine : this.shimRegistrars) {
                onAttachedToEngine.onAttachedToEngine(flutterPluginBinding2);
            }
        }

        public void onDetachedFromEngine(FlutterPluginBinding flutterPluginBinding2) {
            for (BoostRegistrar onDetachedFromEngine : this.shimRegistrars) {
                onDetachedFromEngine.onDetachedFromEngine(flutterPluginBinding2);
            }
            this.flutterPluginBinding = null;
        }

        public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding2) {
            this.activityPluginBinding = activityPluginBinding2;
            for (BoostRegistrar onAttachedToActivity : this.shimRegistrars) {
                onAttachedToActivity.onAttachedToActivity(activityPluginBinding2);
            }
        }

        public void onDetachedFromActivityForConfigChanges() {
            for (BoostRegistrar onDetachedFromActivity : this.shimRegistrars) {
                onDetachedFromActivity.onDetachedFromActivity();
            }
            this.activityPluginBinding = null;
        }

        public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding2) {
            for (BoostRegistrar onReattachedToActivityForConfigChanges : this.shimRegistrars) {
                onReattachedToActivityForConfigChanges.onReattachedToActivityForConfigChanges(activityPluginBinding2);
            }
        }

        public void onDetachedFromActivity() {
            for (BoostRegistrar onDetachedFromActivity : this.shimRegistrars) {
                onDetachedFromActivity.onDetachedFromActivity();
            }
        }
    }

    public BoostRegistrarAggregate getRegistrarAggregate() {
        return this.shimRegistrarAggregate;
    }

    public BoostPluginRegistry(FlutterEngine flutterEngine2) {
        this.flutterEngine = flutterEngine2;
        this.shimRegistrarAggregate = new BoostRegistrarAggregate();
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
            BoostRegistrar boostRegistrar = new BoostRegistrar(str, this.pluginMap);
            this.shimRegistrarAggregate.addPlugin(boostRegistrar);
            return boostRegistrar;
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

    public Object valuePublishedByPlugin(String str) {
        return this.pluginMap.get(str);
    }
}
