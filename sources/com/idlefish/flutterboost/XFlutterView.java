package com.idlefish.flutterboost;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.LocaleList;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.android.FlutterSurfaceView;
import io.flutter.embedding.android.FlutterTextureView;
import io.flutter.embedding.android.FlutterView.FlutterEngineAttachmentListener;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.embedding.android.FlutterView.TransparencyMode;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.FlutterRenderer.RenderSurface;
import io.flutter.embedding.engine.renderer.FlutterRenderer.ViewportMetrics;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.view.AccessibilityBridge;
import io.flutter.view.AccessibilityBridge.OnAccessibilityChangeListener;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class XFlutterView extends FrameLayout {
    private static final String TAG = "FlutterView";
    @Nullable
    private AccessibilityBridge accessibilityBridge;
    @Nullable
    private XAndroidKeyProcessor androidKeyProcessor;
    @Nullable
    private AndroidTouchProcessor androidTouchProcessor;
    /* access modifiers changed from: private */
    public boolean didRenderFirstFrame;
    @Nullable
    private FlutterEngine flutterEngine;
    @NonNull
    private final Set<FlutterEngineAttachmentListener> flutterEngineAttachmentListeners;
    private boolean hasAddFirstFrameRenderedListener;
    private final OnAccessibilityChangeListener onAccessibilityChangeListener;
    private final OnFirstFrameRenderedListener onFirstFrameRenderedListener;
    /* access modifiers changed from: private */
    public final Set<OnFirstFrameRenderedListener> onFirstFrameRenderedListeners;
    @NonNull
    private RenderMode renderMode;
    @Nullable
    private RenderSurface renderSurface;
    @Nullable
    private XTextInputPlugin textInputPlugin;
    @Nullable
    private TransparencyMode transparencyMode;
    private final ViewportMetrics viewportMetrics;

    /* renamed from: com.idlefish.flutterboost.XFlutterView$3 reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$android$FlutterView$RenderMode = new int[RenderMode.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                io.flutter.embedding.android.FlutterView$RenderMode[] r0 = io.flutter.embedding.android.FlutterView.RenderMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$io$flutter$embedding$android$FlutterView$RenderMode = r0
                int[] r0 = $SwitchMap$io$flutter$embedding$android$FlutterView$RenderMode     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.flutter.embedding.android.FlutterView$RenderMode r1 = io.flutter.embedding.android.FlutterView.RenderMode.surface     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$io$flutter$embedding$android$FlutterView$RenderMode     // Catch:{ NoSuchFieldError -> 0x001f }
                io.flutter.embedding.android.FlutterView$RenderMode r1 = io.flutter.embedding.android.FlutterView.RenderMode.texture     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.idlefish.flutterboost.XFlutterView.AnonymousClass3.<clinit>():void");
        }
    }

    public XFlutterView(@NonNull Context context) {
        this(context, null, null, null);
    }

    public XFlutterView(@NonNull Context context, @NonNull RenderMode renderMode2) {
        this(context, null, renderMode2, null);
    }

    public XFlutterView(@NonNull Context context, @NonNull TransparencyMode transparencyMode2) {
        this(context, null, RenderMode.surface, transparencyMode2);
    }

    public XFlutterView(@NonNull Context context, @NonNull RenderMode renderMode2, @NonNull TransparencyMode transparencyMode2) {
        this(context, null, renderMode2, transparencyMode2);
    }

    public XFlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, null, null);
    }

    private XFlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet, @Nullable RenderMode renderMode2, @Nullable TransparencyMode transparencyMode2) {
        super(context, attributeSet);
        this.onFirstFrameRenderedListeners = new HashSet();
        this.flutterEngineAttachmentListeners = new HashSet();
        this.hasAddFirstFrameRenderedListener = false;
        this.viewportMetrics = new ViewportMetrics();
        this.onAccessibilityChangeListener = new OnAccessibilityChangeListener() {
            public void onAccessibilityChanged(boolean z, boolean z2) {
                XFlutterView.this.resetWillNotDraw(z, z2);
            }
        };
        this.onFirstFrameRenderedListener = new OnFirstFrameRenderedListener() {
            public void onFirstFrameRendered() {
                XFlutterView.this.didRenderFirstFrame = true;
                for (OnFirstFrameRenderedListener onFirstFrameRendered : XFlutterView.this.onFirstFrameRenderedListeners) {
                    onFirstFrameRendered.onFirstFrameRendered();
                }
            }
        };
        if (renderMode2 == null) {
            renderMode2 = RenderMode.surface;
        }
        this.renderMode = renderMode2;
        if (transparencyMode2 == null) {
            transparencyMode2 = TransparencyMode.opaque;
        }
        this.transparencyMode = transparencyMode2;
        init();
    }

    private void init() {
        String str = TAG;
        Log.v(str, "Initializing FlutterView");
        int i = AnonymousClass3.$SwitchMap$io$flutter$embedding$android$FlutterView$RenderMode[this.renderMode.ordinal()];
        if (i == 1) {
            Log.v(str, "Internally using a FlutterSurfaceView.");
            FlutterSurfaceView flutterSurfaceView = new FlutterSurfaceView(getContext(), this.transparencyMode == TransparencyMode.transparent);
            this.renderSurface = flutterSurfaceView;
            addView(flutterSurfaceView);
        } else if (i == 2) {
            Log.v(str, "Internally using a FlutterTextureView.");
            FlutterTextureView flutterTextureView = new FlutterTextureView(getContext());
            this.renderSurface = flutterTextureView;
            addView(flutterTextureView);
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public boolean hasRenderedFirstFrame() {
        return this.didRenderFirstFrame;
    }

    public void addOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener2) {
        this.onFirstFrameRenderedListeners.add(onFirstFrameRenderedListener2);
    }

    public void removeOnFirstFrameRenderedListener(@NonNull OnFirstFrameRenderedListener onFirstFrameRenderedListener2) {
        this.onFirstFrameRenderedListeners.remove(onFirstFrameRenderedListener2);
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        String str = TAG;
        Log.v(str, "Configuration changed. Sending locales and user settings to Flutter.");
        try {
            sendLocalesToFlutter(configuration);
            sendUserSettingsToFlutter();
        } catch (Throwable unused) {
            Log.e(str, "onConfigurationChanged error ");
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        StringBuilder sb = new StringBuilder();
        sb.append("Size changed. Sending Flutter new viewport metrics. FlutterView was ");
        sb.append(i3);
        String str = " x ";
        sb.append(str);
        sb.append(i4);
        sb.append(", it is now ");
        sb.append(i);
        sb.append(str);
        sb.append(i2);
        Log.v(TAG, sb.toString());
        ViewportMetrics viewportMetrics2 = this.viewportMetrics;
        viewportMetrics2.width = i;
        viewportMetrics2.height = i2;
        sendViewportMetricsToFlutter();
    }

    @RequiresApi(20)
    @SuppressLint({"InlinedApi", "NewApi"})
    @TargetApi(20)
    @NonNull
    public final WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        WindowInsets onApplyWindowInsets = super.onApplyWindowInsets(windowInsets);
        this.viewportMetrics.paddingTop = windowInsets.getSystemWindowInsetTop();
        this.viewportMetrics.paddingRight = windowInsets.getSystemWindowInsetRight();
        ViewportMetrics viewportMetrics2 = this.viewportMetrics;
        viewportMetrics2.paddingBottom = 0;
        viewportMetrics2.paddingLeft = windowInsets.getSystemWindowInsetLeft();
        ViewportMetrics viewportMetrics3 = this.viewportMetrics;
        viewportMetrics3.viewInsetTop = 0;
        viewportMetrics3.viewInsetRight = 0;
        viewportMetrics3.viewInsetBottom = windowInsets.getSystemWindowInsetBottom();
        this.viewportMetrics.viewInsetLeft = 0;
        StringBuilder sb = new StringBuilder();
        sb.append("Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: ");
        sb.append(this.viewportMetrics.paddingTop);
        String str = ", Left: ";
        sb.append(str);
        sb.append(this.viewportMetrics.paddingLeft);
        String str2 = ", Right: ";
        sb.append(str2);
        sb.append(this.viewportMetrics.paddingRight);
        sb.append("\nKeyboard insets: Bottom: ");
        sb.append(this.viewportMetrics.viewInsetBottom);
        sb.append(str);
        sb.append(this.viewportMetrics.viewInsetLeft);
        sb.append(str2);
        sb.append(this.viewportMetrics.viewInsetRight);
        sb.append("System Gesture Insets - Left: ");
        sb.append(this.viewportMetrics.systemGestureInsetLeft);
        sb.append(", Top: ");
        sb.append(this.viewportMetrics.systemGestureInsetTop);
        sb.append(str2);
        sb.append(this.viewportMetrics.systemGestureInsetRight);
        sb.append(", Bottom: ");
        sb.append(this.viewportMetrics.viewInsetBottom);
        Log.v(TAG, sb.toString());
        sendViewportMetricsToFlutter();
        return onApplyWindowInsets;
    }

    /* access modifiers changed from: protected */
    public boolean fitSystemWindows(@NonNull Rect rect) {
        if (VERSION.SDK_INT > 19) {
            return super.fitSystemWindows(rect);
        }
        this.viewportMetrics.paddingTop = rect.top;
        this.viewportMetrics.paddingRight = rect.right;
        ViewportMetrics viewportMetrics2 = this.viewportMetrics;
        viewportMetrics2.paddingBottom = 0;
        viewportMetrics2.paddingLeft = rect.left;
        ViewportMetrics viewportMetrics3 = this.viewportMetrics;
        viewportMetrics3.viewInsetTop = 0;
        viewportMetrics3.viewInsetRight = 0;
        viewportMetrics3.viewInsetBottom = rect.bottom;
        this.viewportMetrics.viewInsetLeft = 0;
        StringBuilder sb = new StringBuilder();
        sb.append("Updating window insets (fitSystemWindows()):\nStatus bar insets: Top: ");
        sb.append(this.viewportMetrics.paddingTop);
        String str = ", Left: ";
        sb.append(str);
        sb.append(this.viewportMetrics.paddingLeft);
        String str2 = ", Right: ";
        sb.append(str2);
        sb.append(this.viewportMetrics.paddingRight);
        sb.append("\nKeyboard insets: Bottom: ");
        sb.append(this.viewportMetrics.viewInsetBottom);
        sb.append(str);
        sb.append(this.viewportMetrics.viewInsetLeft);
        sb.append(str2);
        sb.append(this.viewportMetrics.viewInsetRight);
        Log.v(TAG, sb.toString());
        sendViewportMetricsToFlutter();
        return true;
    }

    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        if (!isAttachedToFlutterEngine()) {
            return super.onCreateInputConnection(editorInfo);
        }
        return this.textInputPlugin.createInputConnection(this, editorInfo);
    }

    public boolean checkInputConnectionProxy(View view) {
        FlutterEngine flutterEngine2 = this.flutterEngine;
        if (flutterEngine2 != null) {
            return flutterEngine2.getPlatformViewsController().checkInputConnectionProxy(view);
        }
        return super.checkInputConnectionProxy(view);
    }

    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onKeyUp(i, keyEvent);
        }
        this.androidKeyProcessor.onKeyUp(keyEvent);
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.androidKeyProcessor.onKeyDown(keyEvent);
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onTouchEvent(motionEvent);
        }
        if (VERSION.SDK_INT >= 21) {
            requestUnbufferedDispatch(motionEvent);
        }
        return this.androidTouchProcessor.onTouchEvent(motionEvent);
    }

    public boolean onGenericMotionEvent(@NonNull MotionEvent motionEvent) {
        if (isAttachedToFlutterEngine() && this.androidTouchProcessor.onGenericMotionEvent(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onHoverEvent(motionEvent);
        }
        return this.accessibilityBridge.onAccessibilityHoverEvent(motionEvent);
    }

    @Nullable
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        AccessibilityBridge accessibilityBridge2 = this.accessibilityBridge;
        if (accessibilityBridge2 == null || !accessibilityBridge2.isAccessibilityEnabled()) {
            return null;
        }
        return this.accessibilityBridge;
    }

    /* access modifiers changed from: private */
    public void resetWillNotDraw(boolean z, boolean z2) {
        boolean z3 = false;
        if (!this.flutterEngine.getRenderer().isSoftwareRenderingEnabled()) {
            if (!z && !z2) {
                z3 = true;
            }
            setWillNotDraw(z3);
            return;
        }
        setWillNotDraw(false);
    }

    public void attachToFlutterEngine(@NonNull FlutterEngine flutterEngine2) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to a FlutterEngine: ");
        sb.append(flutterEngine2);
        String sb2 = sb.toString();
        String str = TAG;
        Log.d(str, sb2);
        if (isAttachedToFlutterEngine()) {
            if (flutterEngine2 == this.flutterEngine) {
                Log.d(str, "Already attached to this engine. Doing nothing.");
                return;
            } else {
                Log.d(str, "Currently attached to a different engine. Detaching and then attaching to new engine.");
                detachFromFlutterEngine();
            }
        }
        requestFocus();
        this.flutterEngine = flutterEngine2;
        FlutterRenderer renderer = this.flutterEngine.getRenderer();
        this.didRenderFirstFrame = renderer.hasRenderedFirstFrame();
        if (!this.hasAddFirstFrameRenderedListener) {
            renderer.addOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
            this.hasAddFirstFrameRenderedListener = true;
        }
        renderer.attachToRenderSurface(this.renderSurface);
        if (this.textInputPlugin == null) {
            this.textInputPlugin = new XTextInputPlugin(this, flutterEngine2.getTextInputChannel(), this.flutterEngine.getPlatformViewsController());
        }
        this.textInputPlugin.setTextInputMethodHandler();
        this.textInputPlugin.getInputMethodManager().restartInput(this);
        this.androidKeyProcessor = new XAndroidKeyProcessor(this.flutterEngine.getKeyEventChannel(), this.textInputPlugin);
        this.androidTouchProcessor = new AndroidTouchProcessor(this.flutterEngine.getRenderer());
        AccessibilityBridge accessibilityBridge2 = new AccessibilityBridge(this, flutterEngine2.getAccessibilityChannel(), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), this.flutterEngine.getPlatformViewsController());
        this.accessibilityBridge = accessibilityBridge2;
        this.accessibilityBridge.setOnAccessibilityChangeListener(this.onAccessibilityChangeListener);
        resetWillNotDraw(this.accessibilityBridge.isAccessibilityEnabled(), this.accessibilityBridge.isTouchExplorationEnabled());
        this.flutterEngine.getPlatformViewsController().attachAccessibilityBridge(this.accessibilityBridge);
        this.textInputPlugin.getInputMethodManager().restartInput(this);
        sendUserSettingsToFlutter();
        sendLocalesToFlutter(getResources().getConfiguration());
        sendViewportMetricsToFlutter();
        for (FlutterEngineAttachmentListener onFlutterEngineAttachedToFlutterView : this.flutterEngineAttachmentListeners) {
            onFlutterEngineAttachedToFlutterView.onFlutterEngineAttachedToFlutterView(flutterEngine2);
        }
    }

    public void detachFromFlutterEngine() {
        StringBuilder sb = new StringBuilder();
        sb.append("Detaching from a FlutterEngine: ");
        sb.append(this.flutterEngine);
        String sb2 = sb.toString();
        String str = TAG;
        Log.d(str, sb2);
        if (!isAttachedToFlutterEngine()) {
            Log.d(str, "Not attached to an engine. Doing nothing.");
            return;
        }
        for (FlutterEngineAttachmentListener onFlutterEngineDetachedFromFlutterView : this.flutterEngineAttachmentListeners) {
            onFlutterEngineDetachedFromFlutterView.onFlutterEngineDetachedFromFlutterView();
        }
        this.flutterEngine.getPlatformViewsController().detachAccessibiltyBridge();
        this.accessibilityBridge.release();
        this.accessibilityBridge = null;
        FlutterRenderer renderer = this.flutterEngine.getRenderer();
        renderer.removeOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
        renderer.detachFromRenderSurface();
        this.flutterEngine = null;
    }

    public void release() {
        this.textInputPlugin.release();
    }

    public void resolveMemoryLeaks() {
        Field[] declaredFields;
        try {
            for (Field field : TextInputPlugin.class.getDeclaredFields()) {
                System.out.println(field.isAccessible());
                field.setAccessible(true);
                if (field.get(this.textInputPlugin) instanceof TextInputChannel) {
                    PrintStream printStream = System.out;
                    StringBuilder sb = new StringBuilder();
                    sb.append("xxxxxx:");
                    sb.append(field.getName());
                    printStream.println(sb.toString());
                    ((TextInputChannel) field.get(this.textInputPlugin)).setTextInputMethodHandler(null);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @VisibleForTesting
    public boolean isAttachedToFlutterEngine() {
        return this.flutterEngine != null;
    }

    @VisibleForTesting
    @Nullable
    public FlutterEngine getAttachedFlutterEngine() {
        return this.flutterEngine;
    }

    @VisibleForTesting
    public void addFlutterEngineAttachmentListener(@NonNull FlutterEngineAttachmentListener flutterEngineAttachmentListener) {
        this.flutterEngineAttachmentListeners.add(flutterEngineAttachmentListener);
    }

    @VisibleForTesting
    public void removeFlutterEngineAttachmentListener(@NonNull FlutterEngineAttachmentListener flutterEngineAttachmentListener) {
        this.flutterEngineAttachmentListeners.remove(flutterEngineAttachmentListener);
    }

    private void sendLocalesToFlutter(@NonNull Configuration configuration) {
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
        FlutterEngine flutterEngine2 = this.flutterEngine;
        if (flutterEngine2 != null && flutterEngine2.getLocalizationChannel() != null) {
            this.flutterEngine.getLocalizationChannel().sendLocales(arrayList);
        }
    }

    private void sendUserSettingsToFlutter() {
        FlutterEngine flutterEngine2 = this.flutterEngine;
        if (flutterEngine2 != null && flutterEngine2.getSettingsChannel() != null) {
            this.flutterEngine.getSettingsChannel().startMessage().setTextScaleFactor(getResources().getConfiguration().fontScale).setUse24HourFormat(DateFormat.is24HourFormat(getContext())).send();
        }
    }

    private void sendViewportMetricsToFlutter() {
        if (!isAttachedToFlutterEngine()) {
            Log.w(TAG, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine.");
            return;
        }
        this.viewportMetrics.devicePixelRatio = getResources().getDisplayMetrics().density;
        this.flutterEngine.getRenderer().setViewportMetrics(this.viewportMetrics);
    }
}
