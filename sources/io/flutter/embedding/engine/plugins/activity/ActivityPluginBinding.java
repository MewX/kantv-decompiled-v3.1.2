package io.flutter.embedding.engine.plugins.activity;

import android.app.Activity;
import androidx.annotation.NonNull;
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener;
import io.flutter.plugin.common.PluginRegistry.NewIntentListener;
import io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener;
import io.flutter.plugin.common.PluginRegistry.UserLeaveHintListener;

public interface ActivityPluginBinding {
    void addActivityResultListener(@NonNull ActivityResultListener activityResultListener);

    void addOnNewIntentListener(@NonNull NewIntentListener newIntentListener);

    void addOnUserLeaveHintListener(@NonNull UserLeaveHintListener userLeaveHintListener);

    void addRequestPermissionsResultListener(@NonNull RequestPermissionsResultListener requestPermissionsResultListener);

    @NonNull
    Activity getActivity();

    void removeActivityResultListener(@NonNull ActivityResultListener activityResultListener);

    void removeOnNewIntentListener(@NonNull NewIntentListener newIntentListener);

    void removeOnUserLeaveHintListener(@NonNull UserLeaveHintListener userLeaveHintListener);

    void removeRequestPermissionsResultListener(@NonNull RequestPermissionsResultListener requestPermissionsResultListener);
}
