package io.flutter.embedding.android;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.Log;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.FlutterRenderer.RenderSurface;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;
import java.util.HashSet;
import java.util.Set;

public class FlutterTextureView extends TextureView implements RenderSurface {
    private static final String TAG = "FlutterTextureView";
    @Nullable
    private FlutterRenderer flutterRenderer;
    /* access modifiers changed from: private */
    public boolean isAttachedToFlutterRenderer;
    /* access modifiers changed from: private */
    public boolean isSurfaceAvailableForRendering;
    @NonNull
    private Set<OnFirstFrameRenderedListener> onFirstFrameRenderedListeners;
    private final SurfaceTextureListener surfaceTextureListener;

    public FlutterTextureView(@NonNull Context context) {
        this(context, null);
    }

    public FlutterTextureView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSurfaceAvailableForRendering = false;
        this.isAttachedToFlutterRenderer = false;
        this.onFirstFrameRenderedListeners = new HashSet();
        this.surfaceTextureListener = new SurfaceTextureListener() {
            public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
            }

            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                Log.v(FlutterTextureView.TAG, "SurfaceTextureListener.onSurfaceTextureAvailable()");
                FlutterTextureView.this.isSurfaceAvailableForRendering = true;
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.connectSurfaceToRenderer();
                }
            }

            public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i, int i2) {
                Log.v(FlutterTextureView.TAG, "SurfaceTextureListener.onSurfaceTextureSizeChanged()");
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.changeSurfaceSize(i, i2);
                }
            }

            public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
                Log.v(FlutterTextureView.TAG, "SurfaceTextureListener.onSurfaceTextureDestroyed()");
                FlutterTextureView.this.isSurfaceAvailableForRendering = false;
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.disconnectSurfaceFromRenderer();
                }
                return true;
            }
        };
        init();
    }

    private void init() {
        setSurfaceTextureListener(this.surfaceTextureListener);
    }

    public void attachToRenderer(@NonNull FlutterRenderer flutterRenderer2) {
        String str = TAG;
        Log.v(str, "Attaching to FlutterRenderer.");
        if (this.flutterRenderer != null) {
            Log.v(str, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one.");
            this.flutterRenderer.detachFromRenderSurface();
        }
        this.flutterRenderer = flutterRenderer2;
        this.isAttachedToFlutterRenderer = true;
        if (this.isSurfaceAvailableForRendering) {
            Log.v(str, "Surface is available for rendering. Connecting FlutterRenderer to Android surface.");
            connectSurfaceToRenderer();
        }
    }

    public void detachFromRenderer() {
        FlutterRenderer flutterRenderer2 = this.flutterRenderer;
        String str = TAG;
        if (flutterRenderer2 != null) {
            if (getWindowToken() != null) {
                Log.v(str, "Disconnecting FlutterRenderer from Android surface.");
                disconnectSurfaceFromRenderer();
            }
            this.flutterRenderer = null;
            this.isAttachedToFlutterRenderer = false;
            return;
        }
        Log.w(str, "detachFromRenderer() invoked when no FlutterRenderer was attached.");
    }

    /* access modifiers changed from: private */
    public void connectSurfaceToRenderer() {
        if (this.flutterRenderer == null || getSurfaceTexture() == null) {
            throw new IllegalStateException("connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null.");
        }
        this.flutterRenderer.surfaceCreated(new Surface(getSurfaceTexture()));
    }

    /* access modifiers changed from: private */
    public void changeSurfaceSize(int i, int i2) {
        if (this.flutterRenderer != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Notifying FlutterRenderer that Android surface size has changed to ");
            sb.append(i);
            sb.append(" x ");
            sb.append(i2);
            Log.v(TAG, sb.toString());
            this.flutterRenderer.surfaceChanged(i, i2);
            return;
        }
        throw new IllegalStateException("changeSurfaceSize() should only be called when flutterRenderer is non-null.");
    }

    /* access modifiers changed from: private */
    public void disconnectSurfaceFromRenderer() {
        FlutterRenderer flutterRenderer2 = this.flutterRenderer;
        if (flutterRenderer2 != null) {
            flutterRenderer2.surfaceDestroyed();
            return;
        }
        throw new IllegalStateException("disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null.");
    }

    public void addOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener) {
        this.onFirstFrameRenderedListeners.add(onFirstFrameRenderedListener);
    }

    public void removeOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener) {
        this.onFirstFrameRenderedListeners.remove(onFirstFrameRenderedListener);
    }

    public void onFirstFrameRendered() {
        Log.v(TAG, "onFirstFrameRendered()");
        for (OnFirstFrameRenderedListener onFirstFrameRendered : this.onFirstFrameRenderedListeners) {
            onFirstFrameRendered.onFirstFrameRendered();
        }
    }
}
