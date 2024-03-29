package io.flutter.embedding.engine;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener;
import io.flutter.embedding.engine.dart.PlatformMessageHandler;
import io.flutter.embedding.engine.renderer.FlutterRenderer.RenderSurface;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.view.AccessibilityBridge.Action;
import io.flutter.view.FlutterCallbackInformation;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;

public class FlutterJNI {
    private static final String TAG = "FlutterJNI";
    @Nullable
    private static AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate;
    @Nullable
    private static String observatoryUri;
    private static float refreshRateFPS;
    @Nullable
    private AccessibilityDelegate accessibilityDelegate;
    @NonNull
    private final Set<EngineLifecycleListener> engineLifecycleListeners = new HashSet();
    @NonNull
    private final Set<OnFirstFrameRenderedListener> firstFrameListeners = new HashSet();
    @NonNull
    private final Looper mainLooper = Looper.getMainLooper();
    @Nullable
    private Long nativePlatformViewId;
    @Nullable
    private PlatformMessageHandler platformMessageHandler;
    @Nullable
    private RenderSurface renderSurface;

    public interface AccessibilityDelegate {
        void updateCustomAccessibilityActions(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr);

        void updateSemantics(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr);
    }

    public interface AsyncWaitForVsyncDelegate {
        void asyncWaitForVsync(long j);
    }

    private native long nativeAttach(@NonNull FlutterJNI flutterJNI, boolean z);

    private native void nativeDestroy(long j);

    private native void nativeDispatchEmptyPlatformMessage(long j, @NonNull String str, int i);

    private native void nativeDispatchPlatformMessage(long j, @NonNull String str, @Nullable ByteBuffer byteBuffer, int i, int i2);

    private native void nativeDispatchPointerDataPacket(long j, @NonNull ByteBuffer byteBuffer, int i);

    private native void nativeDispatchSemanticsAction(long j, int i, int i2, @Nullable ByteBuffer byteBuffer, int i3);

    private native Bitmap nativeGetBitmap(long j);

    @UiThread
    public static native boolean nativeGetIsSoftwareRenderingEnabled();

    public static native void nativeInit(@NonNull Context context, @NonNull String[] strArr, @Nullable String str, @NonNull String str2, @NonNull String str3);

    private native void nativeInvokePlatformMessageEmptyResponseCallback(long j, int i);

    private native void nativeInvokePlatformMessageResponseCallback(long j, int i, @Nullable ByteBuffer byteBuffer, int i2);

    @NonNull
    public static native FlutterCallbackInformation nativeLookupCallbackInformation(long j);

    private native void nativeMarkTextureFrameAvailable(long j, long j2);

    public static native void nativeOnVsync(long j, long j2, long j3);

    public static native void nativeRecordStartTimestamp(long j);

    private native void nativeRegisterTexture(long j, long j2, @NonNull SurfaceTexture surfaceTexture);

    private native void nativeRunBundleAndSnapshotFromLibrary(long j, @NonNull String str, @Nullable String str2, @Nullable String str3, @NonNull AssetManager assetManager);

    private native void nativeSetAccessibilityFeatures(long j, int i);

    private native void nativeSetSemanticsEnabled(long j, boolean z);

    private native void nativeSetViewportMetrics(long j, float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14);

    private native void nativeSurfaceChanged(long j, int i, int i2);

    private native void nativeSurfaceCreated(long j, @NonNull Surface surface);

    private native void nativeSurfaceDestroyed(long j);

    private native void nativeUnregisterTexture(long j, long j2);

    @Nullable
    public static String getObservatoryUri() {
        return observatoryUri;
    }

    public static void setRefreshRateFPS(float f) {
        refreshRateFPS = f;
    }

    public static void setAsyncWaitForVsyncDelegate(@Nullable AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate2) {
        asyncWaitForVsyncDelegate = asyncWaitForVsyncDelegate2;
    }

    private static void asyncWaitForVsync(long j) {
        AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate2 = asyncWaitForVsyncDelegate;
        if (asyncWaitForVsyncDelegate2 != null) {
            asyncWaitForVsyncDelegate2.asyncWaitForVsync(j);
            return;
        }
        throw new IllegalStateException("An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked.");
    }

    public boolean isAttached() {
        return this.nativePlatformViewId != null;
    }

    @UiThread
    public void attachToNative(boolean z) {
        ensureRunningOnMainThread();
        ensureNotAttachedToNative();
        this.nativePlatformViewId = Long.valueOf(nativeAttach(this, z));
    }

    @UiThread
    public void detachFromNativeAndReleaseResources() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDestroy(this.nativePlatformViewId.longValue());
        this.nativePlatformViewId = null;
    }

    private void ensureNotAttachedToNative() {
        if (this.nativePlatformViewId != null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is attached to native.");
        }
    }

    private void ensureAttachedToNative() {
        if (this.nativePlatformViewId == null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is not attached to native.");
        }
    }

    @UiThread
    public void setRenderSurface(@Nullable RenderSurface renderSurface2) {
        ensureRunningOnMainThread();
        this.renderSurface = renderSurface2;
    }

    @UiThread
    public void addOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener) {
        ensureRunningOnMainThread();
        this.firstFrameListeners.add(onFirstFrameRenderedListener);
    }

    @UiThread
    public void removeOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener) {
        ensureRunningOnMainThread();
        this.firstFrameListeners.remove(onFirstFrameRenderedListener);
    }

    @UiThread
    private void onFirstFrame() {
        ensureRunningOnMainThread();
        RenderSurface renderSurface2 = this.renderSurface;
        if (renderSurface2 != null) {
            renderSurface2.onFirstFrameRendered();
        }
        for (OnFirstFrameRenderedListener onFirstFrameRendered : this.firstFrameListeners) {
            onFirstFrameRendered.onFirstFrameRendered();
        }
    }

    @UiThread
    public void onSurfaceCreated(@NonNull Surface surface) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceCreated(this.nativePlatformViewId.longValue(), surface);
    }

    @UiThread
    public void onSurfaceChanged(int i, int i2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceChanged(this.nativePlatformViewId.longValue(), i, i2);
    }

    @UiThread
    public void onSurfaceDestroyed() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceDestroyed(this.nativePlatformViewId.longValue());
    }

    @UiThread
    public void setViewportMetrics(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        float f2 = f;
        int i15 = i;
        int i16 = i2;
        int i17 = i3;
        int i18 = i4;
        int i19 = i5;
        int i20 = i6;
        int i21 = i7;
        int i22 = i8;
        int i23 = i9;
        int i24 = i10;
        int i25 = i11;
        int i26 = i12;
        int i27 = i13;
        int i28 = i14;
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetViewportMetrics(this.nativePlatformViewId.longValue(), f2, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28);
    }

    @UiThread
    public void dispatchPointerDataPacket(@NonNull ByteBuffer byteBuffer, int i) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchPointerDataPacket(this.nativePlatformViewId.longValue(), byteBuffer, i);
    }

    @UiThread
    public void setAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate2) {
        ensureRunningOnMainThread();
        this.accessibilityDelegate = accessibilityDelegate2;
    }

    @UiThread
    private void updateSemantics(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        ensureRunningOnMainThread();
        AccessibilityDelegate accessibilityDelegate2 = this.accessibilityDelegate;
        if (accessibilityDelegate2 != null) {
            accessibilityDelegate2.updateSemantics(byteBuffer, strArr);
        }
    }

    @UiThread
    private void updateCustomAccessibilityActions(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        ensureRunningOnMainThread();
        AccessibilityDelegate accessibilityDelegate2 = this.accessibilityDelegate;
        if (accessibilityDelegate2 != null) {
            accessibilityDelegate2.updateCustomAccessibilityActions(byteBuffer, strArr);
        }
    }

    public void dispatchSemanticsAction(int i, @NonNull Action action) {
        dispatchSemanticsAction(i, action, null);
    }

    public void dispatchSemanticsAction(int i, @NonNull Action action, @Nullable Object obj) {
        ByteBuffer byteBuffer;
        int i2;
        ensureAttachedToNative();
        if (obj != null) {
            byteBuffer = StandardMessageCodec.INSTANCE.encodeMessage(obj);
            i2 = byteBuffer.position();
        } else {
            byteBuffer = null;
            i2 = 0;
        }
        dispatchSemanticsAction(i, action.value, byteBuffer, i2);
    }

    @UiThread
    public void dispatchSemanticsAction(int i, int i2, @Nullable ByteBuffer byteBuffer, int i3) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchSemanticsAction(this.nativePlatformViewId.longValue(), i, i2, byteBuffer, i3);
    }

    @UiThread
    public void setSemanticsEnabled(boolean z) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetSemanticsEnabled(this.nativePlatformViewId.longValue(), z);
    }

    @UiThread
    public void setAccessibilityFeatures(int i) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetAccessibilityFeatures(this.nativePlatformViewId.longValue(), i);
    }

    @UiThread
    public void registerTexture(long j, @NonNull SurfaceTexture surfaceTexture) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRegisterTexture(this.nativePlatformViewId.longValue(), j, surfaceTexture);
    }

    @UiThread
    public void markTextureFrameAvailable(long j) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeMarkTextureFrameAvailable(this.nativePlatformViewId.longValue(), j);
    }

    @UiThread
    public void unregisterTexture(long j) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeUnregisterTexture(this.nativePlatformViewId.longValue(), j);
    }

    @UiThread
    public void runBundleAndSnapshotFromLibrary(@NonNull String str, @Nullable String str2, @Nullable String str3, @NonNull AssetManager assetManager) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRunBundleAndSnapshotFromLibrary(this.nativePlatformViewId.longValue(), str, str2, str3, assetManager);
    }

    @UiThread
    public void setPlatformMessageHandler(@Nullable PlatformMessageHandler platformMessageHandler2) {
        ensureRunningOnMainThread();
        this.platformMessageHandler = platformMessageHandler2;
    }

    private void handlePlatformMessage(@NonNull String str, byte[] bArr, int i) {
        PlatformMessageHandler platformMessageHandler2 = this.platformMessageHandler;
        if (platformMessageHandler2 != null) {
            platformMessageHandler2.handleMessageFromDart(str, bArr, i);
        }
    }

    private void handlePlatformMessageResponse(int i, byte[] bArr) {
        PlatformMessageHandler platformMessageHandler2 = this.platformMessageHandler;
        if (platformMessageHandler2 != null) {
            platformMessageHandler2.handlePlatformMessageResponse(i, bArr);
        }
    }

    @UiThread
    public void dispatchEmptyPlatformMessage(@NonNull String str, int i) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchEmptyPlatformMessage(this.nativePlatformViewId.longValue(), str, i);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: ");
        sb.append(str);
        sb.append(". Response ID: ");
        sb.append(i);
        Log.w(TAG, sb.toString());
    }

    @UiThread
    public void dispatchPlatformMessage(@NonNull String str, @Nullable ByteBuffer byteBuffer, int i, int i2) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchPlatformMessage(this.nativePlatformViewId.longValue(), str, byteBuffer, i, i2);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: ");
        sb.append(str);
        sb.append(". Response ID: ");
        sb.append(i2);
        Log.w(TAG, sb.toString());
    }

    @UiThread
    public void invokePlatformMessageEmptyResponseCallback(int i) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeInvokePlatformMessageEmptyResponseCallback(this.nativePlatformViewId.longValue(), i);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: ");
        sb.append(i);
        Log.w(TAG, sb.toString());
    }

    @UiThread
    public void invokePlatformMessageResponseCallback(int i, @Nullable ByteBuffer byteBuffer, int i2) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeInvokePlatformMessageResponseCallback(this.nativePlatformViewId.longValue(), i, byteBuffer, i2);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: ");
        sb.append(i);
        Log.w(TAG, sb.toString());
    }

    @UiThread
    public void addEngineLifecycleListener(@NonNull EngineLifecycleListener engineLifecycleListener) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.add(engineLifecycleListener);
    }

    @UiThread
    public void removeEngineLifecycleListener(@NonNull EngineLifecycleListener engineLifecycleListener) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.remove(engineLifecycleListener);
    }

    private void onPreEngineRestart() {
        for (EngineLifecycleListener onPreEngineRestart : this.engineLifecycleListeners) {
            onPreEngineRestart.onPreEngineRestart();
        }
    }

    @UiThread
    public Bitmap getBitmap() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        return nativeGetBitmap(this.nativePlatformViewId.longValue());
    }

    private void ensureRunningOnMainThread() {
        if (Looper.myLooper() != this.mainLooper) {
            StringBuilder sb = new StringBuilder();
            sb.append("Methods marked with @UiThread must be executed on the main thread. Current thread: ");
            sb.append(Thread.currentThread().getName());
            throw new RuntimeException(sb.toString());
        }
    }
}
