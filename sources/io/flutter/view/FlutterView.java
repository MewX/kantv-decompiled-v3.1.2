package io.flutter.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.LocaleList;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import io.flutter.app.FlutterPluginRegistry;
import io.flutter.embedding.android.AndroidKeyProcessor;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel;
import io.flutter.embedding.engine.systemchannels.KeyEventChannel;
import io.flutter.embedding.engine.systemchannels.LifecycleChannel;
import io.flutter.embedding.engine.systemchannels.LocalizationChannel;
import io.flutter.embedding.engine.systemchannels.NavigationChannel;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.embedding.engine.systemchannels.SettingsChannel;
import io.flutter.embedding.engine.systemchannels.SettingsChannel.PlatformBrightness;
import io.flutter.embedding.engine.systemchannels.SystemChannel;
import io.flutter.plugin.common.ActivityLifecycleListener;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.view.AccessibilityBridge.OnAccessibilityChangeListener;
import io.flutter.view.TextureRegistry.SurfaceTextureEntry;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class FlutterView extends SurfaceView implements BinaryMessenger, TextureRegistry {
    private static final String TAG = "FlutterView";
    private final AndroidKeyProcessor androidKeyProcessor;
    private final AndroidTouchProcessor androidTouchProcessor;
    private final DartExecutor dartExecutor;
    private boolean didRenderFirstFrame;
    private final FlutterRenderer flutterRenderer;
    private final KeyEventChannel keyEventChannel;
    private final LifecycleChannel lifecycleChannel;
    private final LocalizationChannel localizationChannel;
    private AccessibilityBridge mAccessibilityNodeProvider;
    private final List<ActivityLifecycleListener> mActivityLifecycleListeners;
    private final List<FirstFrameListener> mFirstFrameListeners;
    private final InputMethodManager mImm;
    private boolean mIsSoftwareRenderingEnabled;
    private final ViewportMetrics mMetrics;
    /* access modifiers changed from: private */
    public FlutterNativeView mNativeView;
    private final Callback mSurfaceCallback;
    private final TextInputPlugin mTextInputPlugin;
    private final NavigationChannel navigationChannel;
    private final AtomicLong nextTextureId;
    private final OnAccessibilityChangeListener onAccessibilityChangeListener;
    private final PlatformChannel platformChannel;
    private final SettingsChannel settingsChannel;
    private final SystemChannel systemChannel;

    public interface FirstFrameListener {
        void onFirstFrame();
    }

    public interface Provider {
        FlutterView getFlutterView();
    }

    final class SurfaceTextureRegistryEntry implements SurfaceTextureEntry {
        /* access modifiers changed from: private */
        public final long id;
        private OnFrameAvailableListener onFrameListener = new OnFrameAvailableListener() {
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (!SurfaceTextureRegistryEntry.this.released && FlutterView.this.mNativeView != null) {
                    FlutterView.this.mNativeView.getFlutterJNI().markTextureFrameAvailable(SurfaceTextureRegistryEntry.this.id);
                }
            }
        };
        /* access modifiers changed from: private */
        public boolean released;
        private final SurfaceTexture surfaceTexture;

        SurfaceTextureRegistryEntry(long j, SurfaceTexture surfaceTexture2) {
            this.id = j;
            this.surfaceTexture = surfaceTexture2;
            if (VERSION.SDK_INT >= 21) {
                this.surfaceTexture.setOnFrameAvailableListener(this.onFrameListener, new Handler());
            } else {
                this.surfaceTexture.setOnFrameAvailableListener(this.onFrameListener);
            }
        }

        public SurfaceTexture surfaceTexture() {
            return this.surfaceTexture;
        }

        public long id() {
            return this.id;
        }

        public void release() {
            if (!this.released) {
                this.released = true;
                this.surfaceTexture.setOnFrameAvailableListener(null);
                this.surfaceTexture.release();
                FlutterView.this.mNativeView.getFlutterJNI().unregisterTexture(this.id);
            }
        }
    }

    static final class ViewportMetrics {
        float devicePixelRatio = 1.0f;
        int physicalHeight = 0;
        int physicalPaddingBottom = 0;
        int physicalPaddingLeft = 0;
        int physicalPaddingRight = 0;
        int physicalPaddingTop = 0;
        int physicalViewInsetBottom = 0;
        int physicalViewInsetLeft = 0;
        int physicalViewInsetRight = 0;
        int physicalViewInsetTop = 0;
        int physicalWidth = 0;
        int systemGestureInsetBottom = 0;
        int systemGestureInsetLeft = 0;
        int systemGestureInsetRight = 0;
        int systemGestureInsetTop = 0;

        ViewportMetrics() {
        }
    }

    enum ZeroSides {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    private void postRun() {
    }

    public FlutterView(Context context) {
        this(context, null);
    }

    public FlutterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null);
    }

    public FlutterView(Context context, AttributeSet attributeSet, FlutterNativeView flutterNativeView) {
        super(context, attributeSet);
        this.nextTextureId = new AtomicLong(0);
        this.mIsSoftwareRenderingEnabled = false;
        this.didRenderFirstFrame = false;
        this.onAccessibilityChangeListener = new OnAccessibilityChangeListener() {
            public void onAccessibilityChanged(boolean z, boolean z2) {
                FlutterView.this.resetWillNotDraw(z, z2);
            }
        };
        Activity activity = getActivity(getContext());
        if (activity != null) {
            if (flutterNativeView == null) {
                this.mNativeView = new FlutterNativeView(activity.getApplicationContext());
            } else {
                this.mNativeView = flutterNativeView;
            }
            this.dartExecutor = this.mNativeView.getDartExecutor();
            this.flutterRenderer = new FlutterRenderer(this.mNativeView.getFlutterJNI());
            this.mIsSoftwareRenderingEnabled = FlutterJNI.nativeGetIsSoftwareRenderingEnabled();
            this.mMetrics = new ViewportMetrics();
            this.mMetrics.devicePixelRatio = context.getResources().getDisplayMetrics().density;
            setFocusable(true);
            setFocusableInTouchMode(true);
            this.mNativeView.attachViewAndActivity(this, activity);
            this.mSurfaceCallback = new Callback() {
                public void surfaceCreated(SurfaceHolder surfaceHolder) {
                    FlutterView.this.assertAttached();
                    FlutterView.this.mNativeView.getFlutterJNI().onSurfaceCreated(surfaceHolder.getSurface());
                }

                public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                    FlutterView.this.assertAttached();
                    FlutterView.this.mNativeView.getFlutterJNI().onSurfaceChanged(i2, i3);
                }

                public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                    FlutterView.this.assertAttached();
                    FlutterView.this.mNativeView.getFlutterJNI().onSurfaceDestroyed();
                }
            };
            getHolder().addCallback(this.mSurfaceCallback);
            this.mActivityLifecycleListeners = new ArrayList();
            this.mFirstFrameListeners = new ArrayList();
            this.navigationChannel = new NavigationChannel(this.dartExecutor);
            this.keyEventChannel = new KeyEventChannel(this.dartExecutor);
            this.lifecycleChannel = new LifecycleChannel(this.dartExecutor);
            this.localizationChannel = new LocalizationChannel(this.dartExecutor);
            this.platformChannel = new PlatformChannel(this.dartExecutor);
            this.systemChannel = new SystemChannel(this.dartExecutor);
            this.settingsChannel = new SettingsChannel(this.dartExecutor);
            final PlatformPlugin platformPlugin = new PlatformPlugin(activity, this.platformChannel);
            addActivityLifecycleListener(new ActivityLifecycleListener() {
                public void onPostResume() {
                    platformPlugin.updateSystemUiOverlays();
                }
            });
            this.mImm = (InputMethodManager) getContext().getSystemService("input_method");
            this.mTextInputPlugin = new TextInputPlugin(this, this.dartExecutor, this.mNativeView.getPluginRegistry().getPlatformViewsController());
            this.androidKeyProcessor = new AndroidKeyProcessor(this.keyEventChannel, this.mTextInputPlugin);
            this.androidTouchProcessor = new AndroidTouchProcessor(this.flutterRenderer);
            this.mNativeView.getPluginRegistry().getPlatformViewsController().attachTextInputPlugin(this.mTextInputPlugin);
            sendLocalesToDart(getResources().getConfiguration());
            sendUserPlatformSettingsToDart();
            return;
        }
        throw new IllegalArgumentException("Bad context");
    }

    private static Activity getActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return getActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @NonNull
    public DartExecutor getDartExecutor() {
        return this.dartExecutor;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isAttached()) {
            return super.onKeyUp(i, keyEvent);
        }
        this.androidKeyProcessor.onKeyUp(keyEvent);
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isAttached()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.androidKeyProcessor.onKeyDown(keyEvent);
        return super.onKeyDown(i, keyEvent);
    }

    public FlutterNativeView getFlutterNativeView() {
        return this.mNativeView;
    }

    public FlutterPluginRegistry getPluginRegistry() {
        return this.mNativeView.getPluginRegistry();
    }

    public String getLookupKeyForAsset(String str) {
        return FlutterMain.getLookupKeyForAsset(str);
    }

    public String getLookupKeyForAsset(String str, String str2) {
        return FlutterMain.getLookupKeyForAsset(str, str2);
    }

    public void addActivityLifecycleListener(ActivityLifecycleListener activityLifecycleListener) {
        this.mActivityLifecycleListeners.add(activityLifecycleListener);
    }

    public void onStart() {
        this.lifecycleChannel.appIsInactive();
    }

    public void onPause() {
        this.lifecycleChannel.appIsInactive();
    }

    public void onPostResume() {
        for (ActivityLifecycleListener onPostResume : this.mActivityLifecycleListeners) {
            onPostResume.onPostResume();
        }
        this.lifecycleChannel.appIsResumed();
    }

    public void onStop() {
        this.lifecycleChannel.appIsPaused();
    }

    public void onMemoryPressure() {
        this.systemChannel.sendMemoryPressureWarning();
    }

    public boolean hasRenderedFirstFrame() {
        return this.didRenderFirstFrame;
    }

    public void addFirstFrameListener(FirstFrameListener firstFrameListener) {
        this.mFirstFrameListeners.add(firstFrameListener);
    }

    public void removeFirstFrameListener(FirstFrameListener firstFrameListener) {
        this.mFirstFrameListeners.remove(firstFrameListener);
    }

    @Deprecated
    public void enableTransparentBackground() {
        Log.w(TAG, "Warning: FlutterView is set on top of the window. Accessibility highlights will not be visible in the Flutter UI. https://github.com/flutter/flutter/issues/37025");
        setZOrderOnTop(true);
        getHolder().setFormat(-2);
    }

    public void disableTransparentBackground() {
        setZOrderOnTop(false);
        getHolder().setFormat(-1);
    }

    public void setInitialRoute(String str) {
        this.navigationChannel.setInitialRoute(str);
    }

    public void pushRoute(String str) {
        this.navigationChannel.pushRoute(str);
    }

    public void popRoute() {
        this.navigationChannel.popRoute();
    }

    private void sendUserPlatformSettingsToDart() {
        this.settingsChannel.startMessage().setTextScaleFactor(getResources().getConfiguration().fontScale).setUse24HourFormat(DateFormat.is24HourFormat(getContext())).setPlatformBrightness((getResources().getConfiguration().uiMode & 48) == 32 ? PlatformBrightness.dark : PlatformBrightness.light).send();
    }

    private void sendLocalesToDart(Configuration configuration) {
        ArrayList arrayList = new ArrayList();
        if (VERSION.SDK_INT >= 24) {
            LocaleList locales = configuration.getLocales();
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(locales.get(i));
            }
        } else {
            arrayList.add(configuration.locale);
        }
        this.localizationChannel.sendLocales(arrayList);
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        sendLocalesToDart(configuration);
        sendUserPlatformSettingsToDart();
    }

    /* access modifiers changed from: 0000 */
    public float getDevicePixelRatio() {
        return this.mMetrics.devicePixelRatio;
    }

    public FlutterNativeView detach() {
        if (!isAttached()) {
            return null;
        }
        getHolder().removeCallback(this.mSurfaceCallback);
        this.mNativeView.detachFromFlutterView();
        FlutterNativeView flutterNativeView = this.mNativeView;
        this.mNativeView = null;
        return flutterNativeView;
    }

    public void destroy() {
        if (isAttached()) {
            getHolder().removeCallback(this.mSurfaceCallback);
            this.mNativeView.destroy();
            this.mNativeView = null;
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.mTextInputPlugin.createInputConnection(this, editorInfo);
    }

    public boolean checkInputConnectionProxy(View view) {
        return this.mNativeView.getPluginRegistry().getPlatformViewsController().checkInputConnectionProxy(view);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isAttached()) {
            return super.onTouchEvent(motionEvent);
        }
        if (VERSION.SDK_INT >= 21) {
            requestUnbufferedDispatch(motionEvent);
        }
        return this.androidTouchProcessor.onTouchEvent(motionEvent);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (!isAttached()) {
            return super.onHoverEvent(motionEvent);
        }
        return this.mAccessibilityNodeProvider.onAccessibilityHoverEvent(motionEvent);
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (isAttached() && this.androidTouchProcessor.onGenericMotionEvent(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        ViewportMetrics viewportMetrics = this.mMetrics;
        viewportMetrics.physicalWidth = i;
        viewportMetrics.physicalHeight = i2;
        updateViewportMetrics();
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* access modifiers changed from: 0000 */
    public ZeroSides calculateShouldZeroSides() {
        Activity activity = (Activity) getContext();
        int i = activity.getResources().getConfiguration().orientation;
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (i == 2) {
            if (rotation == 1) {
                return ZeroSides.RIGHT;
            }
            if (rotation == 3) {
                return VERSION.SDK_INT >= 23 ? ZeroSides.LEFT : ZeroSides.RIGHT;
            } else if (rotation == 0 || rotation == 2) {
                return ZeroSides.BOTH;
            }
        }
        return ZeroSides.NONE;
    }

    /* access modifiers changed from: 0000 */
    @RequiresApi(20)
    @TargetApi(20)
    public int calculateBottomKeyboardInset(WindowInsets windowInsets) {
        double systemWindowInsetBottom = (double) windowInsets.getSystemWindowInsetBottom();
        double height = (double) getRootView().getHeight();
        Double.isNaN(height);
        if (systemWindowInsetBottom < height * 0.18d) {
            return 0;
        }
        return windowInsets.getSystemWindowInsetBottom();
    }

    @RequiresApi(20)
    @SuppressLint({"InlinedApi", "NewApi"})
    @TargetApi(20)
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        boolean z = true;
        boolean z2 = (getWindowSystemUiVisibility() & 4) != 0;
        if ((getWindowSystemUiVisibility() & 2) == 0) {
            z = false;
        }
        ZeroSides zeroSides = ZeroSides.NONE;
        if (z) {
            zeroSides = calculateShouldZeroSides();
        }
        this.mMetrics.physicalPaddingTop = z2 ? 0 : windowInsets.getSystemWindowInsetTop();
        this.mMetrics.physicalPaddingRight = (zeroSides == ZeroSides.RIGHT || zeroSides == ZeroSides.BOTH) ? 0 : windowInsets.getSystemWindowInsetRight();
        ViewportMetrics viewportMetrics = this.mMetrics;
        viewportMetrics.physicalPaddingBottom = 0;
        viewportMetrics.physicalPaddingLeft = (zeroSides == ZeroSides.LEFT || zeroSides == ZeroSides.BOTH) ? 0 : windowInsets.getSystemWindowInsetLeft();
        ViewportMetrics viewportMetrics2 = this.mMetrics;
        viewportMetrics2.physicalViewInsetTop = 0;
        viewportMetrics2.physicalViewInsetRight = 0;
        viewportMetrics2.physicalViewInsetBottom = z ? calculateBottomKeyboardInset(windowInsets) : windowInsets.getSystemWindowInsetBottom();
        this.mMetrics.physicalViewInsetLeft = 0;
        if (VERSION.SDK_INT >= 29) {
            Insets systemGestureInsets = windowInsets.getSystemGestureInsets();
            this.mMetrics.systemGestureInsetTop = systemGestureInsets.top;
            this.mMetrics.systemGestureInsetRight = systemGestureInsets.right;
            this.mMetrics.systemGestureInsetBottom = systemGestureInsets.bottom;
            this.mMetrics.systemGestureInsetLeft = systemGestureInsets.left;
        }
        updateViewportMetrics();
        return super.onApplyWindowInsets(windowInsets);
    }

    /* access modifiers changed from: protected */
    public boolean fitSystemWindows(Rect rect) {
        if (VERSION.SDK_INT > 19) {
            return super.fitSystemWindows(rect);
        }
        this.mMetrics.physicalPaddingTop = rect.top;
        this.mMetrics.physicalPaddingRight = rect.right;
        ViewportMetrics viewportMetrics = this.mMetrics;
        viewportMetrics.physicalPaddingBottom = 0;
        viewportMetrics.physicalPaddingLeft = rect.left;
        ViewportMetrics viewportMetrics2 = this.mMetrics;
        viewportMetrics2.physicalViewInsetTop = 0;
        viewportMetrics2.physicalViewInsetRight = 0;
        viewportMetrics2.physicalViewInsetBottom = rect.bottom;
        this.mMetrics.physicalViewInsetLeft = 0;
        updateViewportMetrics();
        return true;
    }

    private boolean isAttached() {
        FlutterNativeView flutterNativeView = this.mNativeView;
        return flutterNativeView != null && flutterNativeView.isAttached();
    }

    /* access modifiers changed from: 0000 */
    public void assertAttached() {
        if (!isAttached()) {
            throw new AssertionError("Platform view is not attached");
        }
    }

    private void preRun() {
        resetAccessibilityTree();
    }

    /* access modifiers changed from: 0000 */
    public void resetAccessibilityTree() {
        AccessibilityBridge accessibilityBridge = this.mAccessibilityNodeProvider;
        if (accessibilityBridge != null) {
            accessibilityBridge.reset();
        }
    }

    public void runFromBundle(FlutterRunArguments flutterRunArguments) {
        assertAttached();
        preRun();
        this.mNativeView.runFromBundle(flutterRunArguments);
        postRun();
    }

    public Bitmap getBitmap() {
        assertAttached();
        return this.mNativeView.getFlutterJNI().getBitmap();
    }

    private void updateViewportMetrics() {
        if (isAttached()) {
            this.mNativeView.getFlutterJNI().setViewportMetrics(this.mMetrics.devicePixelRatio, this.mMetrics.physicalWidth, this.mMetrics.physicalHeight, this.mMetrics.physicalPaddingTop, this.mMetrics.physicalPaddingRight, this.mMetrics.physicalPaddingBottom, this.mMetrics.physicalPaddingLeft, this.mMetrics.physicalViewInsetTop, this.mMetrics.physicalViewInsetRight, this.mMetrics.physicalViewInsetBottom, this.mMetrics.physicalViewInsetLeft, this.mMetrics.systemGestureInsetTop, this.mMetrics.systemGestureInsetRight, this.mMetrics.systemGestureInsetBottom, this.mMetrics.systemGestureInsetLeft);
        }
    }

    public void updateSemantics(ByteBuffer byteBuffer, String[] strArr) {
        try {
            if (this.mAccessibilityNodeProvider != null) {
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                this.mAccessibilityNodeProvider.updateSemantics(byteBuffer, strArr);
            }
        } catch (Exception e) {
            Log.e(TAG, "Uncaught exception while updating semantics", e);
        }
    }

    public void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr) {
        try {
            if (this.mAccessibilityNodeProvider != null) {
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                this.mAccessibilityNodeProvider.updateCustomAccessibilityActions(byteBuffer, strArr);
            }
        } catch (Exception e) {
            Log.e(TAG, "Uncaught exception while updating local context actions", e);
        }
    }

    public void onFirstFrame() {
        this.didRenderFirstFrame = true;
        for (FirstFrameListener onFirstFrame : new ArrayList(this.mFirstFrameListeners)) {
            onFirstFrame.onFirstFrame();
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AccessibilityBridge accessibilityBridge = new AccessibilityBridge(this, new AccessibilityChannel(this.dartExecutor, getFlutterNativeView().getFlutterJNI()), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), getPluginRegistry().getPlatformViewsController());
        this.mAccessibilityNodeProvider = accessibilityBridge;
        this.mAccessibilityNodeProvider.setOnAccessibilityChangeListener(this.onAccessibilityChangeListener);
        resetWillNotDraw(this.mAccessibilityNodeProvider.isAccessibilityEnabled(), this.mAccessibilityNodeProvider.isTouchExplorationEnabled());
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAccessibilityNodeProvider.release();
        this.mAccessibilityNodeProvider = null;
    }

    /* access modifiers changed from: private */
    public void resetWillNotDraw(boolean z, boolean z2) {
        boolean z3 = false;
        if (!this.mIsSoftwareRenderingEnabled) {
            if (!z && !z2) {
                z3 = true;
            }
            setWillNotDraw(z3);
            return;
        }
        setWillNotDraw(false);
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        AccessibilityBridge accessibilityBridge = this.mAccessibilityNodeProvider;
        if (accessibilityBridge == null || !accessibilityBridge.isAccessibilityEnabled()) {
            return null;
        }
        return this.mAccessibilityNodeProvider;
    }

    @UiThread
    public void send(String str, ByteBuffer byteBuffer) {
        send(str, byteBuffer, null);
    }

    @UiThread
    public void send(String str, ByteBuffer byteBuffer, BinaryReply binaryReply) {
        if (!isAttached()) {
            StringBuilder sb = new StringBuilder();
            sb.append("FlutterView.send called on a detached view, channel=");
            sb.append(str);
            Log.d(TAG, sb.toString());
            return;
        }
        this.mNativeView.send(str, byteBuffer, binaryReply);
    }

    @UiThread
    public void setMessageHandler(String str, BinaryMessageHandler binaryMessageHandler) {
        this.mNativeView.setMessageHandler(str, binaryMessageHandler);
    }

    public SurfaceTextureEntry createSurfaceTexture() {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.detachFromGLContext();
        SurfaceTextureRegistryEntry surfaceTextureRegistryEntry = new SurfaceTextureRegistryEntry(this.nextTextureId.getAndIncrement(), surfaceTexture);
        this.mNativeView.getFlutterJNI().registerTexture(surfaceTextureRegistryEntry.id(), surfaceTexture);
        return surfaceTextureRegistryEntry;
    }
}
