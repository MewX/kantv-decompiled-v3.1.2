package io.flutter.embedding.engine.plugins.service;

import android.app.Service;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.service.ServiceAware.OnModeChangeListener;

public interface ServicePluginBinding {
    void addOnModeChangeListener(@NonNull OnModeChangeListener onModeChangeListener);

    @NonNull
    Service getService();

    void removeOnModeChangeListener(@NonNull OnModeChangeListener onModeChangeListener);
}
