package io.flutter.embedding.engine.renderer;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.TextureRegistry;
import io.flutter.view.TextureRegistry.SurfaceTextureEntry;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicLong;

@TargetApi(16)
public class FlutterRenderer implements TextureRegistry {
    private static final String TAG = "FlutterRenderer";
    private final FlutterJNI flutterJNI;
    /* access modifiers changed from: private */
    public boolean hasRenderedFirstFrame = false;
    private final AtomicLong nextTextureId = new AtomicLong(0);
    private final OnFirstFrameRenderedListener onFirstFrameRenderedListener = new OnFirstFrameRenderedListener() {
        public void onFirstFrameRendered() {
            FlutterRenderer.this.hasRenderedFirstFrame = true;
        }
    };
    private RenderSurface renderSurface;

    public interface RenderSurface {
        void addOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener);

        void attachToRenderer(@NonNull FlutterRenderer flutterRenderer);

        void detachFromRenderer();

        void onFirstFrameRendered();

        void removeOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener);
    }

    final class SurfaceTextureRegistryEntry implements SurfaceTextureEntry {
        /* access modifiers changed from: private */
        public final long id;
        private OnFrameAvailableListener onFrameListener = new OnFrameAvailableListener() {
            public void onFrameAvailable(@NonNull SurfaceTexture surfaceTexture) {
                if (!SurfaceTextureRegistryEntry.this.released) {
                    FlutterRenderer.this.markTextureFrameAvailable(SurfaceTextureRegistryEntry.this.id);
                }
            }
        };
        /* access modifiers changed from: private */
        public boolean released;
        @NonNull
        private final SurfaceTexture surfaceTexture;

        SurfaceTextureRegistryEntry(long j, @NonNull SurfaceTexture surfaceTexture2) {
            this.id = j;
            this.surfaceTexture = surfaceTexture2;
            if (VERSION.SDK_INT >= 21) {
                this.surfaceTexture.setOnFrameAvailableListener(this.onFrameListener, new Handler());
            } else {
                this.surfaceTexture.setOnFrameAvailableListener(this.onFrameListener);
            }
        }

        @NonNull
        public SurfaceTexture surfaceTexture() {
            return this.surfaceTexture;
        }

        public long id() {
            return this.id;
        }

        public void release() {
            if (!this.released) {
                StringBuilder sb = new StringBuilder();
                sb.append("Releasing a SurfaceTexture (");
                sb.append(this.id);
                sb.append(").");
                Log.v(FlutterRenderer.TAG, sb.toString());
                this.surfaceTexture.release();
                FlutterRenderer.this.unregisterTexture(this.id);
                this.released = true;
            }
        }
    }

    public static final class ViewportMetrics {
        public float devicePixelRatio = 1.0f;
        public int height = 0;
        public int paddingBottom = 0;
        public int paddingLeft = 0;
        public int paddingRight = 0;
        public int paddingTop = 0;
        public int systemGestureInsetBottom = 0;
        public int systemGestureInsetLeft = 0;
        public int systemGestureInsetRight = 0;
        public int systemGestureInsetTop = 0;
        public int viewInsetBottom = 0;
        public int viewInsetLeft = 0;
        public int viewInsetRight = 0;
        public int viewInsetTop = 0;
        public int width = 0;
    }

    public FlutterRenderer(@NonNull FlutterJNI flutterJNI2) {
        this.flutterJNI = flutterJNI2;
        this.flutterJNI.addOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
    }

    public boolean isAttachedTo(@NonNull RenderSurface renderSurface2) {
        return this.renderSurface == renderSurface2;
    }

    public void attachToRenderSurface(@NonNull RenderSurface renderSurface2) {
        String str = TAG;
        Log.v(str, "Attaching to RenderSurface.");
        if (this.renderSurface != null) {
            Log.v(str, "Already attached to a RenderSurface. Detaching from old one and attaching to new one.");
            detachFromRenderSurface();
        }
        this.renderSurface = renderSurface2;
        this.renderSurface.attachToRenderer(this);
        this.flutterJNI.setRenderSurface(renderSurface2);
    }

    public void detachFromRenderSurface() {
        Log.v(TAG, "Detaching from RenderSurface.");
        RenderSurface renderSurface2 = this.renderSurface;
        if (renderSurface2 != null) {
            renderSurface2.detachFromRenderer();
            this.renderSurface = null;
            surfaceDestroyed();
            this.flutterJNI.setRenderSurface(null);
        }
    }

    public boolean hasRenderedFirstFrame() {
        return this.hasRenderedFirstFrame;
    }

    public void addOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener2) {
        this.flutterJNI.addOnFirstFrameRenderedListener(onFirstFrameRenderedListener2);
        if (this.hasRenderedFirstFrame) {
            onFirstFrameRenderedListener2.onFirstFrameRendered();
        }
    }

    public void removeOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener2) {
        this.flutterJNI.removeOnFirstFrameRenderedListener(onFirstFrameRenderedListener2);
    }

    @TargetApi(16)
    public SurfaceTextureEntry createSurfaceTexture() {
        String str = TAG;
        Log.v(str, "Creating a SurfaceTexture.");
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.detachFromGLContext();
        SurfaceTextureRegistryEntry surfaceTextureRegistryEntry = new SurfaceTextureRegistryEntry(this.nextTextureId.getAndIncrement(), surfaceTexture);
        StringBuilder sb = new StringBuilder();
        sb.append("New SurfaceTexture ID: ");
        sb.append(surfaceTextureRegistryEntry.id());
        Log.v(str, sb.toString());
        registerTexture(surfaceTextureRegistryEntry.id(), surfaceTexture);
        return surfaceTextureRegistryEntry;
    }

    public void surfaceCreated(@NonNull Surface surface) {
        this.flutterJNI.onSurfaceCreated(surface);
    }

    public void surfaceChanged(int i, int i2) {
        this.flutterJNI.onSurfaceChanged(i, i2);
    }

    public void surfaceDestroyed() {
        this.flutterJNI.onSurfaceDestroyed();
    }

    public void setViewportMetrics(@NonNull ViewportMetrics viewportMetrics) {
        ViewportMetrics viewportMetrics2 = viewportMetrics;
        StringBuilder sb = new StringBuilder();
        sb.append("Setting viewport metrics\nSize: ");
        sb.append(viewportMetrics2.width);
        sb.append(" x ");
        sb.append(viewportMetrics2.height);
        sb.append("\nPadding - L: ");
        sb.append(viewportMetrics2.paddingLeft);
        String str = ", T: ";
        sb.append(str);
        sb.append(viewportMetrics2.paddingTop);
        String str2 = ", R: ";
        sb.append(str2);
        sb.append(viewportMetrics2.paddingRight);
        String str3 = ", B: ";
        sb.append(str3);
        sb.append(viewportMetrics2.paddingBottom);
        sb.append("\nInsets - L: ");
        sb.append(viewportMetrics2.viewInsetLeft);
        sb.append(str);
        sb.append(viewportMetrics2.viewInsetTop);
        sb.append(str2);
        sb.append(viewportMetrics2.viewInsetRight);
        sb.append(str3);
        sb.append(viewportMetrics2.viewInsetBottom);
        sb.append("\nSystem Gesture Insets - L: ");
        sb.append(viewportMetrics2.systemGestureInsetLeft);
        sb.append(str);
        sb.append(viewportMetrics2.systemGestureInsetTop);
        sb.append(str2);
        sb.append(viewportMetrics2.systemGestureInsetRight);
        sb.append(str3);
        sb.append(viewportMetrics2.viewInsetBottom);
        Log.v(TAG, sb.toString());
        this.flutterJNI.setViewportMetrics(viewportMetrics2.devicePixelRatio, viewportMetrics2.width, viewportMetrics2.height, viewportMetrics2.paddingTop, viewportMetrics2.paddingRight, viewportMetrics2.paddingBottom, viewportMetrics2.paddingLeft, viewportMetrics2.viewInsetTop, viewportMetrics2.viewInsetRight, viewportMetrics2.viewInsetBottom, viewportMetrics2.viewInsetLeft, viewportMetrics2.systemGestureInsetTop, viewportMetrics2.systemGestureInsetRight, viewportMetrics2.systemGestureInsetBottom, viewportMetrics2.systemGestureInsetLeft);
    }

    public Bitmap getBitmap() {
        return this.flutterJNI.getBitmap();
    }

    public void dispatchPointerDataPacket(@NonNull ByteBuffer byteBuffer, int i) {
        this.flutterJNI.dispatchPointerDataPacket(byteBuffer, i);
    }

    private void registerTexture(long j, @NonNull SurfaceTexture surfaceTexture) {
        this.flutterJNI.registerTexture(j, surfaceTexture);
    }

    /* access modifiers changed from: private */
    public void markTextureFrameAvailable(long j) {
        this.flutterJNI.markTextureFrameAvailable(j);
    }

    /* access modifiers changed from: private */
    public void unregisterTexture(long j) {
        this.flutterJNI.unregisterTexture(j);
    }

    public boolean isSoftwareRenderingEnabled() {
        return FlutterJNI.nativeGetIsSoftwareRenderingEnabled();
    }

    public void setAccessibilityFeatures(int i) {
        this.flutterJNI.setAccessibilityFeatures(i);
    }

    public void setSemanticsEnabled(boolean z) {
        this.flutterJNI.setSemanticsEnabled(z);
    }

    public void dispatchSemanticsAction(int i, int i2, @Nullable ByteBuffer byteBuffer, int i3) {
        this.flutterJNI.dispatchSemanticsAction(i, i2, byteBuffer, i3);
    }
}
