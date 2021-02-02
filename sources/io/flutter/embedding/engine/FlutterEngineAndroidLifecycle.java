package io.flutter.embedding.engine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;

final class FlutterEngineAndroidLifecycle extends LifecycleRegistry {
    private static final String TAG = "FlutterEngineAndroidLifecycle";
    @Nullable
    private Lifecycle backingLifecycle;
    @NonNull
    private final LifecycleObserver forwardingObserver = new DefaultLifecycleObserver() {
        public void onCreate(@NonNull LifecycleOwner lifecycleOwner) {
        }

        public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        }

        public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
            FlutterEngineAndroidLifecycle.this.handleLifecycleEvent(Event.ON_START);
        }

        public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
            FlutterEngineAndroidLifecycle.this.handleLifecycleEvent(Event.ON_RESUME);
        }

        public void onPause(@NonNull LifecycleOwner lifecycleOwner) {
            FlutterEngineAndroidLifecycle.this.handleLifecycleEvent(Event.ON_PAUSE);
        }

        public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
            FlutterEngineAndroidLifecycle.this.handleLifecycleEvent(Event.ON_STOP);
        }
    };
    private boolean isDestroyed = false;

    FlutterEngineAndroidLifecycle(@NonNull LifecycleOwner lifecycleOwner) {
        super(lifecycleOwner);
    }

    public void setBackingLifecycle(@Nullable Lifecycle lifecycle) {
        ensureNotDestroyed();
        Lifecycle lifecycle2 = this.backingLifecycle;
        if (lifecycle2 != null) {
            lifecycle2.removeObserver(this.forwardingObserver);
        }
        handleLifecycleEvent(Event.ON_STOP);
        this.backingLifecycle = lifecycle;
        if (this.backingLifecycle != null) {
            lifecycle.addObserver(this.forwardingObserver);
        }
    }

    public void handleLifecycleEvent(@NonNull Event event) {
        ensureNotDestroyed();
        super.handleLifecycleEvent(event);
    }

    public void destroy() {
        ensureNotDestroyed();
        setBackingLifecycle(null);
        markState(State.DESTROYED);
        this.isDestroyed = true;
    }

    private void ensureNotDestroyed() {
        if (this.isDestroyed) {
            throw new IllegalStateException("Tried to invoke a method on a destroyed FlutterEngineAndroidLifecycle.");
        }
    }
}
