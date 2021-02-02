package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewCreationRequest;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewResizeRequest;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewTouch;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.view.AccessibilityBridge;
import io.flutter.view.TextureRegistry;
import io.flutter.view.TextureRegistry.SurfaceTextureEntry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PlatformViewsController implements PlatformViewsAccessibilityDelegate {
    private static final int MINIMAL_SDK = 20;
    private static final String TAG = "PlatformViewsController";
    /* access modifiers changed from: private */
    public final AccessibilityEventsDelegate accessibilityEventsDelegate = new AccessibilityEventsDelegate();
    private final PlatformViewsHandler channelHandler = new PlatformViewsHandler() {
        @TargetApi(17)
        public long createPlatformView(@NonNull PlatformViewCreationRequest platformViewCreationRequest) {
            ensureValidAndroidVersion();
            if (!PlatformViewsController.validateDirection(platformViewCreationRequest.direction)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to create a view with unknown direction value: ");
                sb.append(platformViewCreationRequest.direction);
                sb.append("(view id: ");
                sb.append(platformViewCreationRequest.viewId);
                sb.append(")");
                throw new IllegalStateException(sb.toString());
            } else if (!PlatformViewsController.this.vdControllers.containsKey(Integer.valueOf(platformViewCreationRequest.viewId))) {
                PlatformViewFactory factory = PlatformViewsController.this.registry.getFactory(platformViewCreationRequest.viewType);
                if (factory != null) {
                    Object obj = null;
                    if (platformViewCreationRequest.params != null) {
                        obj = factory.getCreateArgsCodec().decodeMessage(platformViewCreationRequest.params);
                    }
                    Object obj2 = obj;
                    int access$300 = PlatformViewsController.this.toPhysicalPixels(platformViewCreationRequest.logicalWidth);
                    int access$3002 = PlatformViewsController.this.toPhysicalPixels(platformViewCreationRequest.logicalHeight);
                    PlatformViewsController.this.validateVirtualDisplayDimensions(access$300, access$3002);
                    SurfaceTextureEntry createSurfaceTexture = PlatformViewsController.this.textureRegistry.createSurfaceTexture();
                    VirtualDisplayController create = VirtualDisplayController.create(PlatformViewsController.this.context, PlatformViewsController.this.accessibilityEventsDelegate, factory, createSurfaceTexture, access$300, access$3002, platformViewCreationRequest.viewId, obj2, new OnFocusChangeListener(platformViewCreationRequest) {
                        private final /* synthetic */ PlatformViewCreationRequest f$1;

                        {
                            this.f$1 = r2;
                        }

                        public final void onFocusChange(View view, boolean z) {
                            AnonymousClass1.this.lambda$createPlatformView$0$PlatformViewsController$1(this.f$1, view, z);
                        }
                    });
                    if (create != null) {
                        PlatformViewsController.this.vdControllers.put(Integer.valueOf(platformViewCreationRequest.viewId), create);
                        View view = create.getView();
                        view.setLayoutDirection(platformViewCreationRequest.direction);
                        PlatformViewsController.this.contextToPlatformView.put(view.getContext(), view);
                        return createSurfaceTexture.id();
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed creating virtual display for a ");
                    sb2.append(platformViewCreationRequest.viewType);
                    sb2.append(" with id: ");
                    sb2.append(platformViewCreationRequest.viewId);
                    throw new IllegalStateException(sb2.toString());
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Trying to create a platform view of unregistered type: ");
                sb3.append(platformViewCreationRequest.viewType);
                throw new IllegalStateException(sb3.toString());
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Trying to create an already created platform view, view id: ");
                sb4.append(platformViewCreationRequest.viewId);
                throw new IllegalStateException(sb4.toString());
            }
        }

        public /* synthetic */ void lambda$createPlatformView$0$PlatformViewsController$1(PlatformViewCreationRequest platformViewCreationRequest, View view, boolean z) {
            if (z) {
                PlatformViewsController.this.platformViewsChannel.invokeViewFocused(platformViewCreationRequest.viewId);
            }
        }

        public void disposePlatformView(int i) {
            ensureValidAndroidVersion();
            VirtualDisplayController virtualDisplayController = (VirtualDisplayController) PlatformViewsController.this.vdControllers.get(Integer.valueOf(i));
            if (virtualDisplayController != null) {
                if (PlatformViewsController.this.textInputPlugin != null) {
                    PlatformViewsController.this.textInputPlugin.clearPlatformViewClient(i);
                }
                PlatformViewsController.this.contextToPlatformView.remove(virtualDisplayController.getView().getContext());
                virtualDisplayController.dispose();
                PlatformViewsController.this.vdControllers.remove(Integer.valueOf(i));
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Trying to dispose a platform view with unknown id: ");
            sb.append(i);
            throw new IllegalStateException(sb.toString());
        }

        public void resizePlatformView(@NonNull PlatformViewResizeRequest platformViewResizeRequest, @NonNull final Runnable runnable) {
            ensureValidAndroidVersion();
            final VirtualDisplayController virtualDisplayController = (VirtualDisplayController) PlatformViewsController.this.vdControllers.get(Integer.valueOf(platformViewResizeRequest.viewId));
            if (virtualDisplayController != null) {
                int access$300 = PlatformViewsController.this.toPhysicalPixels(platformViewResizeRequest.newLogicalWidth);
                int access$3002 = PlatformViewsController.this.toPhysicalPixels(platformViewResizeRequest.newLogicalHeight);
                PlatformViewsController.this.validateVirtualDisplayDimensions(access$300, access$3002);
                PlatformViewsController.this.lockInputConnection(virtualDisplayController);
                virtualDisplayController.resize(access$300, access$3002, new Runnable() {
                    public void run() {
                        PlatformViewsController.this.unlockInputConnection(virtualDisplayController);
                        runnable.run();
                    }
                });
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Trying to resize a platform view with unknown id: ");
            sb.append(platformViewResizeRequest.viewId);
            throw new IllegalStateException(sb.toString());
        }

        public void onTouch(@NonNull PlatformViewTouch platformViewTouch) {
            PlatformViewTouch platformViewTouch2 = platformViewTouch;
            ensureValidAndroidVersion();
            PointerProperties[] pointerPropertiesArr = (PointerProperties[]) PlatformViewsController.parsePointerPropertiesList(platformViewTouch2.rawPointerPropertiesList).toArray(new PointerProperties[platformViewTouch2.pointerCount]);
            PointerCoords[] pointerCoordsArr = (PointerCoords[]) PlatformViewsController.parsePointerCoordsList(platformViewTouch2.rawPointerCoords, PlatformViewsController.this.context.getResources().getDisplayMetrics().density).toArray(new PointerCoords[platformViewTouch2.pointerCount]);
            if (PlatformViewsController.this.vdControllers.containsKey(Integer.valueOf(platformViewTouch2.viewId))) {
                View view = ((VirtualDisplayController) PlatformViewsController.this.vdControllers.get(Integer.valueOf(platformViewTouch2.viewId))).getView();
                long longValue = platformViewTouch2.downTime.longValue();
                long longValue2 = platformViewTouch2.eventTime.longValue();
                int i = platformViewTouch2.action;
                int i2 = platformViewTouch2.pointerCount;
                int i3 = platformViewTouch2.metaState;
                int i4 = platformViewTouch2.buttonState;
                float f = platformViewTouch2.xPrecision;
                float f2 = platformViewTouch2.yPrecision;
                int i5 = platformViewTouch2.deviceId;
                int i6 = platformViewTouch2.edgeFlags;
                View view2 = view;
                int i7 = platformViewTouch2.source;
                view2.dispatchTouchEvent(MotionEvent.obtain(longValue, longValue2, i, i2, pointerPropertiesArr, pointerCoordsArr, i3, i4, f, f2, i5, i6, i7, platformViewTouch2.flags));
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Sending touch to an unknown view with id: ");
            sb.append(platformViewTouch2.viewId);
            throw new IllegalStateException(sb.toString());
        }

        @TargetApi(17)
        public void setDirection(int i, int i2) {
            ensureValidAndroidVersion();
            if (PlatformViewsController.validateDirection(i2)) {
                View view = ((VirtualDisplayController) PlatformViewsController.this.vdControllers.get(Integer.valueOf(i))).getView();
                if (view != null) {
                    view.setLayoutDirection(i2);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Sending touch to an unknown view with id: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Trying to set unknown direction value: ");
            sb2.append(i2);
            sb2.append("(view id: ");
            sb2.append(i);
            sb2.append(")");
            throw new IllegalStateException(sb2.toString());
        }

        public void clearFocus(int i) {
            ((VirtualDisplayController) PlatformViewsController.this.vdControllers.get(Integer.valueOf(i))).getView().clearFocus();
        }

        private void ensureValidAndroidVersion() {
            if (VERSION.SDK_INT < 20) {
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to use platform views with API ");
                sb.append(VERSION.SDK_INT);
                sb.append(", required API level is: ");
                sb.append(20);
                Log.e(PlatformViewsController.TAG, sb.toString());
                throw new IllegalStateException("An attempt was made to use platform views on a version of Android that platform views does not support.");
            }
        }
    };
    /* access modifiers changed from: private */
    public Context context;
    /* access modifiers changed from: private */
    public final HashMap<Context, View> contextToPlatformView = new HashMap<>();
    /* access modifiers changed from: private */
    public PlatformViewsChannel platformViewsChannel;
    /* access modifiers changed from: private */
    public final PlatformViewRegistryImpl registry = new PlatformViewRegistryImpl();
    /* access modifiers changed from: private */
    public TextInputPlugin textInputPlugin;
    /* access modifiers changed from: private */
    public TextureRegistry textureRegistry;
    /* access modifiers changed from: private */
    public final HashMap<Integer, VirtualDisplayController> vdControllers = new HashMap<>();

    /* access modifiers changed from: private */
    public static boolean validateDirection(int i) {
        return i == 0 || i == 1;
    }

    public void attach(Context context2, TextureRegistry textureRegistry2, @NonNull DartExecutor dartExecutor) {
        if (this.context == null) {
            this.context = context2;
            this.textureRegistry = textureRegistry2;
            this.platformViewsChannel = new PlatformViewsChannel(dartExecutor);
            this.platformViewsChannel.setPlatformViewsHandler(this.channelHandler);
            return;
        }
        throw new AssertionError("A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached.");
    }

    @UiThread
    public void detach() {
        this.platformViewsChannel.setPlatformViewsHandler(null);
        this.platformViewsChannel = null;
        this.context = null;
        this.textureRegistry = null;
    }

    public void attachAccessibilityBridge(AccessibilityBridge accessibilityBridge) {
        this.accessibilityEventsDelegate.setAccessibilityBridge(accessibilityBridge);
    }

    public void detachAccessibiltyBridge() {
        this.accessibilityEventsDelegate.setAccessibilityBridge(null);
    }

    public void attachTextInputPlugin(TextInputPlugin textInputPlugin2) {
        this.textInputPlugin = textInputPlugin2;
    }

    public void detachTextInputPlugin() {
        this.textInputPlugin = null;
    }

    public boolean checkInputConnectionProxy(View view) {
        if (!this.contextToPlatformView.containsKey(view.getContext())) {
            return false;
        }
        View view2 = (View) this.contextToPlatformView.get(view.getContext());
        if (view2 == view) {
            return true;
        }
        return view2.checkInputConnectionProxy(view);
    }

    public PlatformViewRegistry getRegistry() {
        return this.registry;
    }

    public void onFlutterViewDestroyed() {
        flushAllViews();
    }

    public void onPreEngineRestart() {
        flushAllViews();
    }

    public View getPlatformViewById(Integer num) {
        VirtualDisplayController virtualDisplayController = (VirtualDisplayController) this.vdControllers.get(num);
        if (virtualDisplayController == null) {
            return null;
        }
        return virtualDisplayController.getView();
    }

    /* access modifiers changed from: private */
    public void lockInputConnection(@NonNull VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin2 = this.textInputPlugin;
        if (textInputPlugin2 != null) {
            textInputPlugin2.lockPlatformViewInputConnection();
            virtualDisplayController.onInputConnectionLocked();
        }
    }

    /* access modifiers changed from: private */
    public void unlockInputConnection(@NonNull VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin2 = this.textInputPlugin;
        if (textInputPlugin2 != null) {
            textInputPlugin2.unlockPlatformViewInputConnection();
            virtualDisplayController.onInputConnectionUnlocked();
        }
    }

    /* access modifiers changed from: private */
    public static List<PointerProperties> parsePointerPropertiesList(Object obj) {
        List<Object> list = (List) obj;
        ArrayList arrayList = new ArrayList();
        for (Object parsePointerProperties : list) {
            arrayList.add(parsePointerProperties(parsePointerProperties));
        }
        return arrayList;
    }

    private static PointerProperties parsePointerProperties(Object obj) {
        List list = (List) obj;
        PointerProperties pointerProperties = new PointerProperties();
        pointerProperties.id = ((Integer) list.get(0)).intValue();
        pointerProperties.toolType = ((Integer) list.get(1)).intValue();
        return pointerProperties;
    }

    /* access modifiers changed from: private */
    public static List<PointerCoords> parsePointerCoordsList(Object obj, float f) {
        List<Object> list = (List) obj;
        ArrayList arrayList = new ArrayList();
        for (Object parsePointerCoords : list) {
            arrayList.add(parsePointerCoords(parsePointerCoords, f));
        }
        return arrayList;
    }

    private static PointerCoords parsePointerCoords(Object obj, float f) {
        List list = (List) obj;
        PointerCoords pointerCoords = new PointerCoords();
        pointerCoords.orientation = (float) ((Double) list.get(0)).doubleValue();
        pointerCoords.pressure = (float) ((Double) list.get(1)).doubleValue();
        pointerCoords.size = (float) ((Double) list.get(2)).doubleValue();
        pointerCoords.toolMajor = ((float) ((Double) list.get(3)).doubleValue()) * f;
        pointerCoords.toolMinor = ((float) ((Double) list.get(4)).doubleValue()) * f;
        pointerCoords.touchMajor = ((float) ((Double) list.get(5)).doubleValue()) * f;
        pointerCoords.touchMinor = ((float) ((Double) list.get(6)).doubleValue()) * f;
        pointerCoords.x = ((float) ((Double) list.get(7)).doubleValue()) * f;
        pointerCoords.y = ((float) ((Double) list.get(8)).doubleValue()) * f;
        return pointerCoords;
    }

    /* access modifiers changed from: private */
    public void validateVirtualDisplayDimensions(int i, int i2) {
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        if (i2 > displayMetrics.heightPixels || i > displayMetrics.widthPixels) {
            StringBuilder sb = new StringBuilder();
            sb.append("Creating a virtual display of size: [");
            sb.append(i);
            String str = ", ";
            sb.append(str);
            sb.append(i2);
            sb.append("] may result in problems(https://github.com/flutter/flutter/issues/2897).It is larger than the device screen size: [");
            sb.append(displayMetrics.widthPixels);
            sb.append(str);
            sb.append(displayMetrics.heightPixels);
            sb.append("].");
            Log.w(TAG, sb.toString());
        }
    }

    /* access modifiers changed from: private */
    public int toPhysicalPixels(double d) {
        double d2 = (double) this.context.getResources().getDisplayMetrics().density;
        Double.isNaN(d2);
        return (int) Math.round(d * d2);
    }

    private void flushAllViews() {
        for (VirtualDisplayController dispose : this.vdControllers.values()) {
            dispose.dispose();
        }
        this.vdControllers.clear();
    }
}
