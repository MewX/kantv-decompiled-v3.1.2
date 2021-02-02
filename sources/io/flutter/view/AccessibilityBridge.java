package io.flutter.view;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.Uri;
import android.opengl.Matrix;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings.Global;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener;
import android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel.AccessibilityMessageHandler;
import io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate;
import io.flutter.util.Predicate;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AccessibilityBridge extends AccessibilityNodeProvider {
    private static final int ACTION_SHOW_ON_SCREEN = 16908342;
    private static int FIRST_RESOURCE_ID = 267386881;
    private static final int MIN_ENGINE_GENERATED_NODE_ID = 65536;
    private static final int ROOT_NODE_ID = 0;
    private static final float SCROLL_EXTENT_FOR_INFINITY = 100000.0f;
    private static final float SCROLL_POSITION_CAP_FOR_INFINITY = 70000.0f;
    private static final String TAG = "AccessibilityBridge";
    /* access modifiers changed from: private */
    @NonNull
    public final AccessibilityChannel accessibilityChannel;
    /* access modifiers changed from: private */
    public int accessibilityFeatureFlags = 0;
    @Nullable
    private SemanticsNode accessibilityFocusedSemanticsNode;
    /* access modifiers changed from: private */
    @NonNull
    public final AccessibilityManager accessibilityManager;
    /* access modifiers changed from: private */
    public final AccessibilityMessageHandler accessibilityMessageHandler = new AccessibilityMessageHandler() {
        public void announce(@NonNull String str) {
            AccessibilityBridge.this.rootAccessibilityView.announceForAccessibility(str);
        }

        public void onTap(int i) {
            AccessibilityBridge.this.sendAccessibilityEvent(i, 1);
        }

        public void onLongPress(int i) {
            AccessibilityBridge.this.sendAccessibilityEvent(i, 2);
        }

        public void onTooltip(@NonNull String str) {
            AccessibilityEvent access$200 = AccessibilityBridge.this.obtainAccessibilityEvent(0, 32);
            access$200.getText().add(str);
            AccessibilityBridge.this.sendAccessibilityEvent(access$200);
        }

        public void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            AccessibilityBridge.this.updateCustomAccessibilityActions(byteBuffer, strArr);
        }

        public void updateSemantics(ByteBuffer byteBuffer, String[] strArr) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            AccessibilityBridge.this.updateSemantics(byteBuffer, strArr);
        }
    };
    private final AccessibilityStateChangeListener accessibilityStateChangeListener = new AccessibilityStateChangeListener() {
        public void onAccessibilityStateChanged(boolean z) {
            if (z) {
                AccessibilityBridge.this.accessibilityChannel.setAccessibilityMessageHandler(AccessibilityBridge.this.accessibilityMessageHandler);
                AccessibilityBridge.this.accessibilityChannel.onAndroidAccessibilityEnabled();
            } else {
                AccessibilityBridge.this.accessibilityChannel.setAccessibilityMessageHandler(null);
                AccessibilityBridge.this.accessibilityChannel.onAndroidAccessibilityDisabled();
            }
            if (AccessibilityBridge.this.onAccessibilityChangeListener != null) {
                AccessibilityBridge.this.onAccessibilityChangeListener.onAccessibilityChanged(z, AccessibilityBridge.this.accessibilityManager.isTouchExplorationEnabled());
            }
        }
    };
    @NonNull
    private final AccessibilityViewEmbedder accessibilityViewEmbedder;
    private final ContentObserver animationScaleObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean z) {
            onChange(z, null);
        }

        public void onChange(boolean z, Uri uri) {
            String str;
            if (VERSION.SDK_INT < 17) {
                str = null;
            } else {
                str = Global.getString(AccessibilityBridge.this.contentResolver, "transition_animation_scale");
            }
            if (str != null && str.equals("0")) {
                AccessibilityBridge accessibilityBridge = AccessibilityBridge.this;
                accessibilityBridge.accessibilityFeatureFlags = accessibilityBridge.accessibilityFeatureFlags | AccessibilityFeature.DISABLE_ANIMATIONS.value;
            } else {
                AccessibilityBridge accessibilityBridge2 = AccessibilityBridge.this;
                accessibilityBridge2.accessibilityFeatureFlags = accessibilityBridge2.accessibilityFeatureFlags & (AccessibilityFeature.DISABLE_ANIMATIONS.value ^ -1);
            }
            AccessibilityBridge.this.sendLatestAccessibilityFlagsToFlutter();
        }
    };
    /* access modifiers changed from: private */
    @NonNull
    public final ContentResolver contentResolver;
    @NonNull
    private final Map<Integer, CustomAccessibilityAction> customAccessibilityActions = new HashMap();
    private Integer embeddedAccessibilityFocusedNodeId;
    private Integer embeddedInputFocusedNodeId;
    @NonNull
    private final List<Integer> flutterNavigationStack = new ArrayList();
    @NonNull
    private final Map<Integer, SemanticsNode> flutterSemanticsTree = new HashMap();
    @Nullable
    private SemanticsNode hoveredObject;
    @Nullable
    private SemanticsNode inputFocusedSemanticsNode;
    @NonNull
    private Integer lastLeftFrameInset = Integer.valueOf(0);
    /* access modifiers changed from: private */
    @Nullable
    public OnAccessibilityChangeListener onAccessibilityChangeListener;
    @NonNull
    private final PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate;
    private int previousRouteId = 0;
    /* access modifiers changed from: private */
    @NonNull
    public final View rootAccessibilityView;
    @RequiresApi(19)
    @TargetApi(19)
    private final TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    private enum AccessibilityFeature {
        ACCESSIBLE_NAVIGATION(1),
        INVERT_COLORS(2),
        DISABLE_ANIMATIONS(4);
        
        final int value;

        private AccessibilityFeature(int i) {
            this.value = i;
        }
    }

    public enum Action {
        TAP(1),
        LONG_PRESS(2),
        SCROLL_LEFT(4),
        SCROLL_RIGHT(8),
        SCROLL_UP(16),
        SCROLL_DOWN(32),
        INCREASE(64),
        DECREASE(128),
        SHOW_ON_SCREEN(256),
        MOVE_CURSOR_FORWARD_BY_CHARACTER(512),
        MOVE_CURSOR_BACKWARD_BY_CHARACTER(1024),
        SET_SELECTION(2048),
        COPY(4096),
        CUT(8192),
        PASTE(16384),
        DID_GAIN_ACCESSIBILITY_FOCUS(32768),
        DID_LOSE_ACCESSIBILITY_FOCUS(65536),
        CUSTOM_ACTION(131072),
        DISMISS(262144),
        MOVE_CURSOR_FORWARD_BY_WORD(524288),
        MOVE_CURSOR_BACKWARD_BY_WORD(1048576);
        
        public final int value;

        private Action(int i) {
            this.value = i;
        }
    }

    private static class CustomAccessibilityAction {
        /* access modifiers changed from: private */
        public String hint;
        /* access modifiers changed from: private */
        public int id = -1;
        /* access modifiers changed from: private */
        public String label;
        /* access modifiers changed from: private */
        public int overrideId = -1;
        /* access modifiers changed from: private */
        public int resourceId = -1;

        CustomAccessibilityAction() {
        }
    }

    private enum Flag {
        HAS_CHECKED_STATE(1),
        IS_CHECKED(2),
        IS_SELECTED(4),
        IS_BUTTON(8),
        IS_TEXT_FIELD(16),
        IS_FOCUSED(32),
        HAS_ENABLED_STATE(64),
        IS_ENABLED(128),
        IS_IN_MUTUALLY_EXCLUSIVE_GROUP(256),
        IS_HEADER(512),
        IS_OBSCURED(1024),
        SCOPES_ROUTE(2048),
        NAMES_ROUTE(4096),
        IS_HIDDEN(8192),
        IS_IMAGE(16384),
        IS_LIVE_REGION(32768),
        HAS_TOGGLED_STATE(65536),
        IS_TOGGLED(131072),
        HAS_IMPLICIT_SCROLLING(262144),
        IS_READ_ONLY(1048576);
        
        final int value;

        private Flag(int i) {
            this.value = i;
        }
    }

    public interface OnAccessibilityChangeListener {
        void onAccessibilityChanged(boolean z, boolean z2);
    }

    private static class SemanticsNode {
        final AccessibilityBridge accessibilityBridge;
        private int actions;
        private float bottom;
        /* access modifiers changed from: private */
        public List<SemanticsNode> childrenInHitTestOrder = new ArrayList();
        /* access modifiers changed from: private */
        public List<SemanticsNode> childrenInTraversalOrder = new ArrayList();
        /* access modifiers changed from: private */
        public List<CustomAccessibilityAction> customAccessibilityActions;
        /* access modifiers changed from: private */
        public String decreasedValue;
        private int flags;
        /* access modifiers changed from: private */
        public boolean globalGeometryDirty = true;
        private Rect globalRect;
        private float[] globalTransform;
        /* access modifiers changed from: private */
        public boolean hadPreviousConfig = false;
        private String hint;
        /* access modifiers changed from: private */
        public int id = -1;
        /* access modifiers changed from: private */
        public String increasedValue;
        private float[] inverseTransform;
        /* access modifiers changed from: private */
        public boolean inverseTransformDirty = true;
        /* access modifiers changed from: private */
        public String label;
        private float left;
        /* access modifiers changed from: private */
        public CustomAccessibilityAction onLongPressOverride;
        /* access modifiers changed from: private */
        public CustomAccessibilityAction onTapOverride;
        /* access modifiers changed from: private */
        public SemanticsNode parent;
        /* access modifiers changed from: private */
        public int platformViewId;
        private int previousActions;
        private int previousFlags;
        /* access modifiers changed from: private */
        public String previousLabel;
        private float previousScrollExtentMax;
        private float previousScrollExtentMin;
        private float previousScrollPosition;
        /* access modifiers changed from: private */
        public int previousTextSelectionBase;
        /* access modifiers changed from: private */
        public int previousTextSelectionExtent;
        /* access modifiers changed from: private */
        public String previousValue;
        private float right;
        /* access modifiers changed from: private */
        public int scrollChildren;
        /* access modifiers changed from: private */
        public float scrollExtentMax;
        /* access modifiers changed from: private */
        public float scrollExtentMin;
        /* access modifiers changed from: private */
        public int scrollIndex;
        /* access modifiers changed from: private */
        public float scrollPosition;
        private TextDirection textDirection;
        /* access modifiers changed from: private */
        public int textSelectionBase;
        /* access modifiers changed from: private */
        public int textSelectionExtent;
        private float top;
        private float[] transform;
        /* access modifiers changed from: private */
        public String value;

        private void log(@NonNull String str, boolean z) {
        }

        /* access modifiers changed from: private */
        public static boolean nullableHasAncestor(SemanticsNode semanticsNode, Predicate<SemanticsNode> predicate) {
            return (semanticsNode == null || semanticsNode.getAncestor(predicate) == null) ? false : true;
        }

        SemanticsNode(@NonNull AccessibilityBridge accessibilityBridge2) {
            this.accessibilityBridge = accessibilityBridge2;
        }

        private SemanticsNode getAncestor(Predicate<SemanticsNode> predicate) {
            for (SemanticsNode semanticsNode = this.parent; semanticsNode != null; semanticsNode = semanticsNode.parent) {
                if (predicate.test(semanticsNode)) {
                    return semanticsNode;
                }
            }
            return null;
        }

        /* access modifiers changed from: private */
        public boolean hasAction(@NonNull Action action) {
            return (action.value & this.actions) != 0;
        }

        /* access modifiers changed from: private */
        public boolean hadAction(@NonNull Action action) {
            return (action.value & this.previousActions) != 0;
        }

        /* access modifiers changed from: private */
        public boolean hasFlag(@NonNull Flag flag) {
            return (flag.value & this.flags) != 0;
        }

        /* access modifiers changed from: private */
        public boolean hadFlag(@NonNull Flag flag) {
            return (flag.value & this.previousFlags) != 0;
        }

        /* access modifiers changed from: private */
        public boolean didScroll() {
            return !Float.isNaN(this.scrollPosition) && !Float.isNaN(this.previousScrollPosition) && this.previousScrollPosition != this.scrollPosition;
        }

        /* access modifiers changed from: private */
        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0016, code lost:
            if (r0.equals(r2) != false) goto L_0x0019;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean didChangeLabel() {
            /*
                r3 = this;
                java.lang.String r0 = r3.label
                r1 = 0
                if (r0 != 0) goto L_0x000a
                java.lang.String r0 = r3.previousLabel
                if (r0 != 0) goto L_0x000a
                return r1
            L_0x000a:
                java.lang.String r0 = r3.label
                if (r0 == 0) goto L_0x0018
                java.lang.String r2 = r3.previousLabel
                if (r2 == 0) goto L_0x0018
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L_0x0019
            L_0x0018:
                r1 = 1
            L_0x0019:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.view.AccessibilityBridge.SemanticsNode.didChangeLabel():boolean");
        }

        /* access modifiers changed from: private */
        public void updateWith(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            this.hadPreviousConfig = true;
            this.previousValue = this.value;
            this.previousLabel = this.label;
            this.previousFlags = this.flags;
            this.previousActions = this.actions;
            this.previousTextSelectionBase = this.textSelectionBase;
            this.previousTextSelectionExtent = this.textSelectionExtent;
            this.previousScrollPosition = this.scrollPosition;
            this.previousScrollExtentMax = this.scrollExtentMax;
            this.previousScrollExtentMin = this.scrollExtentMin;
            this.flags = byteBuffer.getInt();
            this.actions = byteBuffer.getInt();
            this.textSelectionBase = byteBuffer.getInt();
            this.textSelectionExtent = byteBuffer.getInt();
            this.platformViewId = byteBuffer.getInt();
            this.scrollChildren = byteBuffer.getInt();
            this.scrollIndex = byteBuffer.getInt();
            this.scrollPosition = byteBuffer.getFloat();
            this.scrollExtentMax = byteBuffer.getFloat();
            this.scrollExtentMin = byteBuffer.getFloat();
            int i = byteBuffer.getInt();
            if (i == -1) {
                str = null;
            } else {
                str = strArr[i];
            }
            this.label = str;
            int i2 = byteBuffer.getInt();
            if (i2 == -1) {
                str2 = null;
            } else {
                str2 = strArr[i2];
            }
            this.value = str2;
            int i3 = byteBuffer.getInt();
            if (i3 == -1) {
                str3 = null;
            } else {
                str3 = strArr[i3];
            }
            this.increasedValue = str3;
            int i4 = byteBuffer.getInt();
            if (i4 == -1) {
                str4 = null;
            } else {
                str4 = strArr[i4];
            }
            this.decreasedValue = str4;
            int i5 = byteBuffer.getInt();
            if (i5 == -1) {
                str5 = null;
            } else {
                str5 = strArr[i5];
            }
            this.hint = str5;
            this.textDirection = TextDirection.fromInt(byteBuffer.getInt());
            this.left = byteBuffer.getFloat();
            this.top = byteBuffer.getFloat();
            this.right = byteBuffer.getFloat();
            this.bottom = byteBuffer.getFloat();
            if (this.transform == null) {
                this.transform = new float[16];
            }
            for (int i6 = 0; i6 < 16; i6++) {
                this.transform[i6] = byteBuffer.getFloat();
            }
            this.inverseTransformDirty = true;
            this.globalGeometryDirty = true;
            int i7 = byteBuffer.getInt();
            this.childrenInTraversalOrder.clear();
            this.childrenInHitTestOrder.clear();
            for (int i8 = 0; i8 < i7; i8++) {
                SemanticsNode access$5800 = this.accessibilityBridge.getOrCreateSemanticsNode(byteBuffer.getInt());
                access$5800.parent = this;
                this.childrenInTraversalOrder.add(access$5800);
            }
            for (int i9 = 0; i9 < i7; i9++) {
                SemanticsNode access$58002 = this.accessibilityBridge.getOrCreateSemanticsNode(byteBuffer.getInt());
                access$58002.parent = this;
                this.childrenInHitTestOrder.add(access$58002);
            }
            int i10 = byteBuffer.getInt();
            if (i10 == 0) {
                this.customAccessibilityActions = null;
                return;
            }
            List<CustomAccessibilityAction> list = this.customAccessibilityActions;
            if (list == null) {
                this.customAccessibilityActions = new ArrayList(i10);
            } else {
                list.clear();
            }
            for (int i11 = 0; i11 < i10; i11++) {
                CustomAccessibilityAction access$5900 = this.accessibilityBridge.getOrCreateAccessibilityAction(byteBuffer.getInt());
                if (access$5900.overrideId == Action.TAP.value) {
                    this.onTapOverride = access$5900;
                } else if (access$5900.overrideId == Action.LONG_PRESS.value) {
                    this.onLongPressOverride = access$5900;
                } else {
                    this.customAccessibilityActions.add(access$5900);
                }
                this.customAccessibilityActions.add(access$5900);
            }
        }

        private void ensureInverseTransform() {
            if (this.inverseTransformDirty) {
                this.inverseTransformDirty = false;
                if (this.inverseTransform == null) {
                    this.inverseTransform = new float[16];
                }
                if (!Matrix.invertM(this.inverseTransform, 0, this.transform, 0)) {
                    Arrays.fill(this.inverseTransform, 0.0f);
                }
            }
        }

        /* access modifiers changed from: private */
        public Rect getGlobalRect() {
            return this.globalRect;
        }

        /* access modifiers changed from: private */
        public SemanticsNode hitTest(float[] fArr) {
            float f = fArr[3];
            float f2 = fArr[0] / f;
            float f3 = fArr[1] / f;
            if (f2 < this.left || f2 >= this.right || f3 < this.top || f3 >= this.bottom) {
                return null;
            }
            float[] fArr2 = new float[4];
            for (SemanticsNode semanticsNode : this.childrenInHitTestOrder) {
                if (!semanticsNode.hasFlag(Flag.IS_HIDDEN)) {
                    semanticsNode.ensureInverseTransform();
                    Matrix.multiplyMV(fArr2, 0, semanticsNode.inverseTransform, 0, fArr, 0);
                    SemanticsNode hitTest = semanticsNode.hitTest(fArr2);
                    if (hitTest != null) {
                        return hitTest;
                    }
                }
            }
            return this;
        }

        /* access modifiers changed from: private */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0044, code lost:
            if (r0.isEmpty() == false) goto L_0x0046;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean isFocusable() {
            /*
                r3 = this;
                io.flutter.view.AccessibilityBridge$Flag r0 = io.flutter.view.AccessibilityBridge.Flag.SCOPES_ROUTE
                boolean r0 = r3.hasFlag(r0)
                r1 = 0
                if (r0 == 0) goto L_0x000a
                return r1
            L_0x000a:
                io.flutter.view.AccessibilityBridge$Action r0 = io.flutter.view.AccessibilityBridge.Action.SCROLL_RIGHT
                int r0 = r0.value
                io.flutter.view.AccessibilityBridge$Action r2 = io.flutter.view.AccessibilityBridge.Action.SCROLL_LEFT
                int r2 = r2.value
                r0 = r0 | r2
                io.flutter.view.AccessibilityBridge$Action r2 = io.flutter.view.AccessibilityBridge.Action.SCROLL_UP
                int r2 = r2.value
                r0 = r0 | r2
                io.flutter.view.AccessibilityBridge$Action r2 = io.flutter.view.AccessibilityBridge.Action.SCROLL_DOWN
                int r2 = r2.value
                r0 = r0 | r2
                int r2 = r3.actions
                r0 = r0 ^ -1
                r0 = r0 & r2
                if (r0 != 0) goto L_0x0046
                int r0 = r3.flags
                if (r0 != 0) goto L_0x0046
                java.lang.String r0 = r3.label
                if (r0 == 0) goto L_0x0032
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x0046
            L_0x0032:
                java.lang.String r0 = r3.value
                if (r0 == 0) goto L_0x003c
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x0046
            L_0x003c:
                java.lang.String r0 = r3.hint
                if (r0 == 0) goto L_0x0047
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L_0x0047
            L_0x0046:
                r1 = 1
            L_0x0047:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.view.AccessibilityBridge.SemanticsNode.isFocusable():boolean");
        }

        /* access modifiers changed from: private */
        public void collectRoutes(List<SemanticsNode> list) {
            if (hasFlag(Flag.SCOPES_ROUTE)) {
                list.add(this);
            }
            for (SemanticsNode collectRoutes : this.childrenInTraversalOrder) {
                collectRoutes.collectRoutes(list);
            }
        }

        /* access modifiers changed from: private */
        public String getRouteName() {
            if (hasFlag(Flag.NAMES_ROUTE)) {
                String str = this.label;
                if (str != null && !str.isEmpty()) {
                    return this.label;
                }
            }
            for (SemanticsNode routeName : this.childrenInTraversalOrder) {
                String routeName2 = routeName.getRouteName();
                if (routeName2 != null && !routeName2.isEmpty()) {
                    return routeName2;
                }
            }
            return null;
        }

        /* access modifiers changed from: private */
        public void updateRecursively(float[] fArr, Set<SemanticsNode> set, boolean z) {
            set.add(this);
            if (this.globalGeometryDirty) {
                z = true;
            }
            if (z) {
                if (this.globalTransform == null) {
                    this.globalTransform = new float[16];
                }
                Matrix.multiplyMM(this.globalTransform, 0, fArr, 0, this.transform, 0);
                float[] fArr2 = new float[4];
                fArr2[2] = 0.0f;
                fArr2[3] = 1.0f;
                float[] fArr3 = new float[4];
                float[] fArr4 = new float[4];
                float[] fArr5 = new float[4];
                float[] fArr6 = new float[4];
                fArr2[0] = this.left;
                fArr2[1] = this.top;
                transformPoint(fArr3, this.globalTransform, fArr2);
                fArr2[0] = this.right;
                fArr2[1] = this.top;
                transformPoint(fArr4, this.globalTransform, fArr2);
                fArr2[0] = this.right;
                fArr2[1] = this.bottom;
                transformPoint(fArr5, this.globalTransform, fArr2);
                fArr2[0] = this.left;
                fArr2[1] = this.bottom;
                transformPoint(fArr6, this.globalTransform, fArr2);
                if (this.globalRect == null) {
                    this.globalRect = new Rect();
                }
                this.globalRect.set(Math.round(min(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(min(fArr3[1], fArr4[1], fArr5[1], fArr6[1])), Math.round(max(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(max(fArr3[1], fArr4[1], fArr5[1], fArr6[1])));
                this.globalGeometryDirty = false;
            }
            for (SemanticsNode updateRecursively : this.childrenInTraversalOrder) {
                updateRecursively.updateRecursively(this.globalTransform, set, z);
            }
        }

        private void transformPoint(float[] fArr, float[] fArr2, float[] fArr3) {
            Matrix.multiplyMV(fArr, 0, fArr2, 0, fArr3, 0);
            float f = fArr[3];
            fArr[0] = fArr[0] / f;
            fArr[1] = fArr[1] / f;
            fArr[2] = fArr[2] / f;
            fArr[3] = 0.0f;
        }

        private float min(float f, float f2, float f3, float f4) {
            return Math.min(f, Math.min(f2, Math.min(f3, f4)));
        }

        private float max(float f, float f2, float f3, float f4) {
            return Math.max(f, Math.max(f2, Math.max(f3, f4)));
        }

        /* access modifiers changed from: private */
        public String getValueLabelHint() {
            String[] strArr;
            StringBuilder sb = new StringBuilder();
            for (String str : new String[]{this.value, this.label, this.hint}) {
                if (str != null && str.length() > 0) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(str);
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
            return null;
        }
    }

    private enum TextDirection {
        UNKNOWN,
        LTR,
        RTL;

        public static TextDirection fromInt(int i) {
            if (i == 1) {
                return RTL;
            }
            if (i != 2) {
                return UNKNOWN;
            }
            return LTR;
        }
    }

    static /* synthetic */ boolean lambda$shouldSetCollectionInfo$0(SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        return semanticsNode2 == semanticsNode;
    }

    public AccessibilityBridge(@NonNull View view, @NonNull AccessibilityChannel accessibilityChannel2, @NonNull final AccessibilityManager accessibilityManager2, @NonNull ContentResolver contentResolver2, PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate2) {
        this.rootAccessibilityView = view;
        this.accessibilityChannel = accessibilityChannel2;
        this.accessibilityManager = accessibilityManager2;
        this.contentResolver = contentResolver2;
        this.platformViewsAccessibilityDelegate = platformViewsAccessibilityDelegate2;
        this.accessibilityStateChangeListener.onAccessibilityStateChanged(accessibilityManager2.isEnabled());
        this.accessibilityManager.addAccessibilityStateChangeListener(this.accessibilityStateChangeListener);
        if (VERSION.SDK_INT >= 19) {
            this.touchExplorationStateChangeListener = new TouchExplorationStateChangeListener() {
                public void onTouchExplorationStateChanged(boolean z) {
                    if (z) {
                        AccessibilityBridge accessibilityBridge = AccessibilityBridge.this;
                        accessibilityBridge.accessibilityFeatureFlags = accessibilityBridge.accessibilityFeatureFlags | AccessibilityFeature.ACCESSIBLE_NAVIGATION.value;
                    } else {
                        AccessibilityBridge.this.onTouchExplorationExit();
                        AccessibilityBridge accessibilityBridge2 = AccessibilityBridge.this;
                        accessibilityBridge2.accessibilityFeatureFlags = accessibilityBridge2.accessibilityFeatureFlags & (AccessibilityFeature.ACCESSIBLE_NAVIGATION.value ^ -1);
                    }
                    AccessibilityBridge.this.sendLatestAccessibilityFlagsToFlutter();
                    if (AccessibilityBridge.this.onAccessibilityChangeListener != null) {
                        AccessibilityBridge.this.onAccessibilityChangeListener.onAccessibilityChanged(accessibilityManager2.isEnabled(), z);
                    }
                }
            };
            this.touchExplorationStateChangeListener.onTouchExplorationStateChanged(accessibilityManager2.isTouchExplorationEnabled());
            this.accessibilityManager.addTouchExplorationStateChangeListener(this.touchExplorationStateChangeListener);
        } else {
            this.touchExplorationStateChangeListener = null;
        }
        if (VERSION.SDK_INT >= 17) {
            this.animationScaleObserver.onChange(false);
            this.contentResolver.registerContentObserver(Global.getUriFor("transition_animation_scale"), false, this.animationScaleObserver);
        }
        if (platformViewsAccessibilityDelegate2 != null) {
            platformViewsAccessibilityDelegate2.attachAccessibilityBridge(this);
        }
        this.accessibilityViewEmbedder = new AccessibilityViewEmbedder(view, 65536);
    }

    public void release() {
        PlatformViewsAccessibilityDelegate platformViewsAccessibilityDelegate2 = this.platformViewsAccessibilityDelegate;
        if (platformViewsAccessibilityDelegate2 != null) {
            platformViewsAccessibilityDelegate2.detachAccessibiltyBridge();
        }
        setOnAccessibilityChangeListener(null);
        this.accessibilityManager.removeAccessibilityStateChangeListener(this.accessibilityStateChangeListener);
        if (VERSION.SDK_INT >= 19) {
            this.accessibilityManager.removeTouchExplorationStateChangeListener(this.touchExplorationStateChangeListener);
        }
        this.contentResolver.unregisterContentObserver(this.animationScaleObserver);
    }

    public boolean isAccessibilityEnabled() {
        return this.accessibilityManager.isEnabled();
    }

    public boolean isTouchExplorationEnabled() {
        return this.accessibilityManager.isTouchExplorationEnabled();
    }

    public void setOnAccessibilityChangeListener(@Nullable OnAccessibilityChangeListener onAccessibilityChangeListener2) {
        this.onAccessibilityChangeListener = onAccessibilityChangeListener2;
    }

    /* access modifiers changed from: private */
    public void sendLatestAccessibilityFlagsToFlutter() {
        this.accessibilityChannel.setAccessibilityFeatures(this.accessibilityFeatureFlags);
    }

    private boolean shouldSetCollectionInfo(SemanticsNode semanticsNode) {
        return semanticsNode.scrollChildren > 0 && (SemanticsNode.nullableHasAncestor(this.accessibilityFocusedSemanticsNode, new Predicate(semanticsNode) {
            private final /* synthetic */ SemanticsNode f$0;

            public final 
/*
Method generation error in method: io.flutter.view.-$$Lambda$AccessibilityBridge$JBDpWWlF54eN0gel8Jn1hY7yOmE.test(java.lang.Object):null, dex: classes2.dex
            java.lang.NullPointerException
            	at jadx.core.codegen.ClassGen.useType(ClassGen.java:442)
            	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:109)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:311)
            	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:661)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:595)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:773)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:713)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:95)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:469)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	at jadx.core.codegen.InsnGen.inlineMethod(InsnGen.java:896)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:669)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.ConditionGen.wrap(ConditionGen.java:95)
            	at jadx.core.codegen.ConditionGen.addCompare(ConditionGen.java:117)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:57)
            	at jadx.core.codegen.ConditionGen.wrap(ConditionGen.java:84)
            	at jadx.core.codegen.ConditionGen.addAndOr(ConditionGen.java:151)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:70)
            	at jadx.core.codegen.ConditionGen.wrap(ConditionGen.java:84)
            	at jadx.core.codegen.ConditionGen.addAndOr(ConditionGen.java:151)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:70)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:46)
            	at jadx.core.codegen.InsnGen.makeTernary(InsnGen.java:910)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:465)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:303)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
            	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
            	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:76)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:32)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:20)
            	at jadx.core.ProcessClass.process(ProcessClass.java:36)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
            
*/
        }) || !SemanticsNode.nullableHasAncestor(this.accessibilityFocusedSemanticsNode, $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY.INSTANCE));
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        int i2;
        if (i >= 65536) {
            return this.accessibilityViewEmbedder.createAccessibilityNodeInfo(i);
        }
        boolean z = false;
        if (i == -1) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.rootAccessibilityView);
            this.rootAccessibilityView.onInitializeAccessibilityNodeInfo(obtain);
            if (this.flutterSemanticsTree.containsKey(Integer.valueOf(0))) {
                obtain.addChild(this.rootAccessibilityView, 0);
            }
            return obtain;
        }
        SemanticsNode semanticsNode = (SemanticsNode) this.flutterSemanticsTree.get(Integer.valueOf(i));
        if (semanticsNode == null) {
            return null;
        }
        if (semanticsNode.platformViewId != -1) {
            return this.accessibilityViewEmbedder.getRootNode(this.platformViewsAccessibilityDelegate.getPlatformViewById(Integer.valueOf(semanticsNode.platformViewId)), semanticsNode.id, semanticsNode.getGlobalRect());
        }
        AccessibilityNodeInfo obtain2 = AccessibilityNodeInfo.obtain(this.rootAccessibilityView, i);
        if (VERSION.SDK_INT >= 18) {
            obtain2.setViewIdResourceName("");
        }
        obtain2.setPackageName(this.rootAccessibilityView.getContext().getPackageName());
        obtain2.setClassName("android.view.View");
        obtain2.setSource(this.rootAccessibilityView, i);
        obtain2.setFocusable(semanticsNode.isFocusable());
        SemanticsNode semanticsNode2 = this.inputFocusedSemanticsNode;
        if (semanticsNode2 != null) {
            obtain2.setFocused(semanticsNode2.id == i);
        }
        SemanticsNode semanticsNode3 = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode3 != null) {
            obtain2.setAccessibilityFocused(semanticsNode3.id == i);
        }
        if (semanticsNode.hasFlag(Flag.IS_TEXT_FIELD)) {
            obtain2.setPassword(semanticsNode.hasFlag(Flag.IS_OBSCURED));
            if (!semanticsNode.hasFlag(Flag.IS_READ_ONLY)) {
                obtain2.setClassName("android.widget.EditText");
            }
            if (VERSION.SDK_INT >= 18) {
                obtain2.setEditable(!semanticsNode.hasFlag(Flag.IS_READ_ONLY));
                if (!(semanticsNode.textSelectionBase == -1 || semanticsNode.textSelectionExtent == -1)) {
                    obtain2.setTextSelection(semanticsNode.textSelectionBase, semanticsNode.textSelectionExtent);
                }
                if (VERSION.SDK_INT > 18) {
                    SemanticsNode semanticsNode4 = this.accessibilityFocusedSemanticsNode;
                    if (semanticsNode4 != null && semanticsNode4.id == i) {
                        obtain2.setLiveRegion(1);
                    }
                }
            }
            if (semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
                obtain2.addAction(256);
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
                obtain2.addAction(512);
                i2 |= 1;
            }
            if (semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_WORD)) {
                obtain2.addAction(256);
                i2 |= 2;
            }
            if (semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_WORD)) {
                obtain2.addAction(512);
                i2 |= 2;
            }
            obtain2.setMovementGranularities(i2);
        }
        if (VERSION.SDK_INT > 18) {
            if (semanticsNode.hasAction(Action.SET_SELECTION)) {
                obtain2.addAction(131072);
            }
            if (semanticsNode.hasAction(Action.COPY)) {
                obtain2.addAction(16384);
            }
            if (semanticsNode.hasAction(Action.CUT)) {
                obtain2.addAction(65536);
            }
            if (semanticsNode.hasAction(Action.PASTE)) {
                obtain2.addAction(32768);
            }
        }
        if (semanticsNode.hasFlag(Flag.IS_BUTTON)) {
            obtain2.setClassName("android.widget.Button");
        }
        if (semanticsNode.hasFlag(Flag.IS_IMAGE)) {
            obtain2.setClassName("android.widget.ImageView");
        }
        if (VERSION.SDK_INT > 18 && semanticsNode.hasAction(Action.DISMISS)) {
            obtain2.setDismissable(true);
            obtain2.addAction(1048576);
        }
        if (semanticsNode.parent != null) {
            obtain2.setParent(this.rootAccessibilityView, semanticsNode.parent.id);
        } else {
            obtain2.setParent(this.rootAccessibilityView);
        }
        Rect access$1500 = semanticsNode.getGlobalRect();
        if (semanticsNode.parent != null) {
            Rect access$15002 = semanticsNode.parent.getGlobalRect();
            Rect rect = new Rect(access$1500);
            rect.offset(-access$15002.left, -access$15002.top);
            obtain2.setBoundsInParent(rect);
        } else {
            obtain2.setBoundsInParent(access$1500);
        }
        obtain2.setBoundsInScreen(access$1500);
        obtain2.setVisibleToUser(true);
        obtain2.setEnabled(!semanticsNode.hasFlag(Flag.HAS_ENABLED_STATE) || semanticsNode.hasFlag(Flag.IS_ENABLED));
        if (semanticsNode.hasAction(Action.TAP)) {
            if (VERSION.SDK_INT < 21 || semanticsNode.onTapOverride == null) {
                obtain2.addAction(16);
                obtain2.setClickable(true);
            } else {
                obtain2.addAction(new AccessibilityAction(16, semanticsNode.onTapOverride.hint));
                obtain2.setClickable(true);
            }
        }
        if (semanticsNode.hasAction(Action.LONG_PRESS)) {
            if (VERSION.SDK_INT < 21 || semanticsNode.onLongPressOverride == null) {
                obtain2.addAction(32);
                obtain2.setLongClickable(true);
            } else {
                obtain2.addAction(new AccessibilityAction(32, semanticsNode.onLongPressOverride.hint));
                obtain2.setLongClickable(true);
            }
        }
        if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_UP) || semanticsNode.hasAction(Action.SCROLL_RIGHT) || semanticsNode.hasAction(Action.SCROLL_DOWN)) {
            obtain2.setScrollable(true);
            if (semanticsNode.hasFlag(Flag.HAS_IMPLICIT_SCROLLING)) {
                if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_RIGHT)) {
                    if (VERSION.SDK_INT <= 19 || !shouldSetCollectionInfo(semanticsNode)) {
                        obtain2.setClassName("android.widget.HorizontalScrollView");
                    } else {
                        obtain2.setCollectionInfo(CollectionInfo.obtain(0, semanticsNode.scrollChildren, false));
                    }
                } else if (VERSION.SDK_INT <= 18 || !shouldSetCollectionInfo(semanticsNode)) {
                    obtain2.setClassName("android.widget.ScrollView");
                } else {
                    obtain2.setCollectionInfo(CollectionInfo.obtain(semanticsNode.scrollChildren, 0, false));
                }
            }
            if (semanticsNode.hasAction(Action.SCROLL_LEFT) || semanticsNode.hasAction(Action.SCROLL_UP)) {
                obtain2.addAction(4096);
            }
            if (semanticsNode.hasAction(Action.SCROLL_RIGHT) || semanticsNode.hasAction(Action.SCROLL_DOWN)) {
                obtain2.addAction(8192);
            }
        }
        if (semanticsNode.hasAction(Action.INCREASE) || semanticsNode.hasAction(Action.DECREASE)) {
            obtain2.setClassName("android.widget.SeekBar");
            if (semanticsNode.hasAction(Action.INCREASE)) {
                obtain2.addAction(4096);
            }
            if (semanticsNode.hasAction(Action.DECREASE)) {
                obtain2.addAction(8192);
            }
        }
        if (semanticsNode.hasFlag(Flag.IS_LIVE_REGION) && VERSION.SDK_INT > 18) {
            obtain2.setLiveRegion(1);
        }
        boolean access$1800 = semanticsNode.hasFlag(Flag.HAS_CHECKED_STATE);
        boolean access$18002 = semanticsNode.hasFlag(Flag.HAS_TOGGLED_STATE);
        if (access$1800 || access$18002) {
            z = true;
        }
        obtain2.setCheckable(z);
        if (access$1800) {
            obtain2.setChecked(semanticsNode.hasFlag(Flag.IS_CHECKED));
            obtain2.setContentDescription(semanticsNode.getValueLabelHint());
            if (semanticsNode.hasFlag(Flag.IS_IN_MUTUALLY_EXCLUSIVE_GROUP)) {
                obtain2.setClassName("android.widget.RadioButton");
            } else {
                obtain2.setClassName("android.widget.CheckBox");
            }
        } else if (access$18002) {
            obtain2.setChecked(semanticsNode.hasFlag(Flag.IS_TOGGLED));
            obtain2.setClassName("android.widget.Switch");
            obtain2.setContentDescription(semanticsNode.getValueLabelHint());
        } else {
            obtain2.setText(semanticsNode.getValueLabelHint());
        }
        obtain2.setSelected(semanticsNode.hasFlag(Flag.IS_SELECTED));
        SemanticsNode semanticsNode5 = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode5 == null || semanticsNode5.id != i) {
            obtain2.addAction(64);
        } else {
            obtain2.addAction(128);
        }
        if (VERSION.SDK_INT >= 21 && semanticsNode.customAccessibilityActions != null) {
            for (CustomAccessibilityAction customAccessibilityAction : semanticsNode.customAccessibilityActions) {
                obtain2.addAction(new AccessibilityAction(customAccessibilityAction.resourceId, customAccessibilityAction.label));
            }
        }
        for (SemanticsNode semanticsNode6 : semanticsNode.childrenInTraversalOrder) {
            if (!semanticsNode6.hasFlag(Flag.IS_HIDDEN)) {
                obtain2.addChild(this.rootAccessibilityView, semanticsNode6.id);
            }
        }
        return obtain2;
    }

    public boolean performAction(int i, int i2, @Nullable Bundle bundle) {
        if (i >= 65536) {
            boolean performAction = this.accessibilityViewEmbedder.performAction(i, i2, bundle);
            if (performAction && i2 == 128) {
                this.embeddedAccessibilityFocusedNodeId = null;
            }
            return performAction;
        }
        SemanticsNode semanticsNode = (SemanticsNode) this.flutterSemanticsTree.get(Integer.valueOf(i));
        boolean z = false;
        if (semanticsNode == null) {
            return false;
        }
        switch (i2) {
            case 16:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.TAP);
                return true;
            case 32:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.LONG_PRESS);
                return true;
            case 64:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DID_GAIN_ACCESSIBILITY_FOCUS);
                sendAccessibilityEvent(i, 32768);
                if (this.accessibilityFocusedSemanticsNode == null) {
                    this.rootAccessibilityView.invalidate();
                }
                this.accessibilityFocusedSemanticsNode = semanticsNode;
                if (semanticsNode.hasAction(Action.INCREASE) || semanticsNode.hasAction(Action.DECREASE)) {
                    sendAccessibilityEvent(i, 4);
                }
                return true;
            case 128:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DID_LOSE_ACCESSIBILITY_FOCUS);
                sendAccessibilityEvent(i, 65536);
                this.accessibilityFocusedSemanticsNode = null;
                this.embeddedAccessibilityFocusedNodeId = null;
                return true;
            case 256:
                if (VERSION.SDK_INT < 18) {
                    return false;
                }
                return performCursorMoveAction(semanticsNode, i, bundle, true);
            case 512:
                if (VERSION.SDK_INT < 18) {
                    return false;
                }
                return performCursorMoveAction(semanticsNode, i, bundle, false);
            case 4096:
                if (semanticsNode.hasAction(Action.SCROLL_UP)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_UP);
                } else if (semanticsNode.hasAction(Action.SCROLL_LEFT)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_LEFT);
                } else if (!semanticsNode.hasAction(Action.INCREASE)) {
                    return false;
                } else {
                    semanticsNode.value = semanticsNode.increasedValue;
                    sendAccessibilityEvent(i, 4);
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.INCREASE);
                }
                return true;
            case 8192:
                if (semanticsNode.hasAction(Action.SCROLL_DOWN)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_DOWN);
                } else if (semanticsNode.hasAction(Action.SCROLL_RIGHT)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.SCROLL_RIGHT);
                } else if (!semanticsNode.hasAction(Action.DECREASE)) {
                    return false;
                } else {
                    semanticsNode.value = semanticsNode.decreasedValue;
                    sendAccessibilityEvent(i, 4);
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.DECREASE);
                }
                return true;
            case 16384:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.COPY);
                return true;
            case 32768:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.PASTE);
                return true;
            case 65536:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.CUT);
                return true;
            case 131072:
                if (VERSION.SDK_INT < 18) {
                    return false;
                }
                HashMap hashMap = new HashMap();
                String str = AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_END_INT;
                String str2 = AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_START_INT;
                if (bundle != null && bundle.containsKey(str2) && bundle.containsKey(str)) {
                    z = true;
                }
                String str3 = TtmlNode.ATTR_TTS_EXTENT;
                String str4 = "base";
                if (z) {
                    hashMap.put(str4, Integer.valueOf(bundle.getInt(str2)));
                    hashMap.put(str3, Integer.valueOf(bundle.getInt(str)));
                } else {
                    hashMap.put(str4, Integer.valueOf(semanticsNode.textSelectionExtent));
                    hashMap.put(str3, Integer.valueOf(semanticsNode.textSelectionExtent));
                }
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.SET_SELECTION, hashMap);
                return true;
            case 1048576:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.DISMISS);
                return true;
            case ACTION_SHOW_ON_SCREEN /*16908342*/:
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.SHOW_ON_SCREEN);
                return true;
            default:
                CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) this.customAccessibilityActions.get(Integer.valueOf(i2 - FIRST_RESOURCE_ID));
                if (customAccessibilityAction == null) {
                    return false;
                }
                this.accessibilityChannel.dispatchSemanticsAction(i, Action.CUSTOM_ACTION, Integer.valueOf(customAccessibilityAction.id));
                return true;
        }
    }

    @RequiresApi(18)
    @TargetApi(18)
    private boolean performCursorMoveAction(@NonNull SemanticsNode semanticsNode, int i, @NonNull Bundle bundle, boolean z) {
        int i2 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT);
        boolean z2 = bundle.getBoolean(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN);
        if (i2 != 1) {
            if (i2 == 2) {
                if (z && semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_WORD)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_FORWARD_BY_WORD, Boolean.valueOf(z2));
                    return true;
                } else if (!z && semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_WORD)) {
                    this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_BACKWARD_BY_WORD, Boolean.valueOf(z2));
                    return true;
                }
            }
        } else if (z && semanticsNode.hasAction(Action.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
            this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_FORWARD_BY_CHARACTER, Boolean.valueOf(z2));
            return true;
        } else if (!z && semanticsNode.hasAction(Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
            this.accessibilityChannel.dispatchSemanticsAction(i, Action.MOVE_CURSOR_BACKWARD_BY_CHARACTER, Boolean.valueOf(z2));
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0004, code lost:
        if (r2 != 2) goto L_0x003b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.accessibility.AccessibilityNodeInfo findFocus(int r2) {
        /*
            r1 = this;
            r0 = 1
            if (r2 == r0) goto L_0x0007
            r0 = 2
            if (r2 == r0) goto L_0x0021
            goto L_0x003b
        L_0x0007:
            io.flutter.view.AccessibilityBridge$SemanticsNode r2 = r1.inputFocusedSemanticsNode
            if (r2 == 0) goto L_0x0014
            int r2 = r2.id
            android.view.accessibility.AccessibilityNodeInfo r2 = r1.createAccessibilityNodeInfo(r2)
            return r2
        L_0x0014:
            java.lang.Integer r2 = r1.embeddedInputFocusedNodeId
            if (r2 == 0) goto L_0x0021
            int r2 = r2.intValue()
            android.view.accessibility.AccessibilityNodeInfo r2 = r1.createAccessibilityNodeInfo(r2)
            return r2
        L_0x0021:
            io.flutter.view.AccessibilityBridge$SemanticsNode r2 = r1.accessibilityFocusedSemanticsNode
            if (r2 == 0) goto L_0x002e
            int r2 = r2.id
            android.view.accessibility.AccessibilityNodeInfo r2 = r1.createAccessibilityNodeInfo(r2)
            return r2
        L_0x002e:
            java.lang.Integer r2 = r1.embeddedAccessibilityFocusedNodeId
            if (r2 == 0) goto L_0x003b
            int r2 = r2.intValue()
            android.view.accessibility.AccessibilityNodeInfo r2 = r1.createAccessibilityNodeInfo(r2)
            return r2
        L_0x003b:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.view.AccessibilityBridge.findFocus(int):android.view.accessibility.AccessibilityNodeInfo");
    }

    private SemanticsNode getRootSemanticsNode() {
        return (SemanticsNode) this.flutterSemanticsTree.get(Integer.valueOf(0));
    }

    /* access modifiers changed from: private */
    public SemanticsNode getOrCreateSemanticsNode(int i) {
        SemanticsNode semanticsNode = (SemanticsNode) this.flutterSemanticsTree.get(Integer.valueOf(i));
        if (semanticsNode != null) {
            return semanticsNode;
        }
        SemanticsNode semanticsNode2 = new SemanticsNode(this);
        semanticsNode2.id = i;
        this.flutterSemanticsTree.put(Integer.valueOf(i), semanticsNode2);
        return semanticsNode2;
    }

    /* access modifiers changed from: private */
    public CustomAccessibilityAction getOrCreateAccessibilityAction(int i) {
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) this.customAccessibilityActions.get(Integer.valueOf(i));
        if (customAccessibilityAction != null) {
            return customAccessibilityAction;
        }
        CustomAccessibilityAction customAccessibilityAction2 = new CustomAccessibilityAction();
        customAccessibilityAction2.id = i;
        customAccessibilityAction2.resourceId = FIRST_RESOURCE_ID + i;
        this.customAccessibilityActions.put(Integer.valueOf(i), customAccessibilityAction2);
        return customAccessibilityAction2;
    }

    public boolean onAccessibilityHoverEvent(MotionEvent motionEvent) {
        if (!this.accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        SemanticsNode access$3500 = getRootSemanticsNode().hitTest(new float[]{motionEvent.getX(), motionEvent.getY(), 0.0f, 1.0f});
        if (access$3500.platformViewId != -1) {
            return this.accessibilityViewEmbedder.onAccessibilityHoverEvent(access$3500.id, motionEvent);
        }
        if (motionEvent.getAction() == 9 || motionEvent.getAction() == 7) {
            handleTouchExploration(motionEvent.getX(), motionEvent.getY());
        } else if (motionEvent.getAction() == 10) {
            onTouchExplorationExit();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("unexpected accessibility hover event: ");
            sb.append(motionEvent);
            Log.d("flutter", sb.toString());
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void onTouchExplorationExit() {
        SemanticsNode semanticsNode = this.hoveredObject;
        if (semanticsNode != null) {
            sendAccessibilityEvent(semanticsNode.id, 256);
            this.hoveredObject = null;
        }
    }

    private void handleTouchExploration(float f, float f2) {
        if (!this.flutterSemanticsTree.isEmpty()) {
            SemanticsNode access$3500 = getRootSemanticsNode().hitTest(new float[]{f, f2, 0.0f, 1.0f});
            if (access$3500 != this.hoveredObject) {
                if (access$3500 != null) {
                    sendAccessibilityEvent(access$3500.id, 128);
                }
                SemanticsNode semanticsNode = this.hoveredObject;
                if (semanticsNode != null) {
                    sendAccessibilityEvent(semanticsNode.id, 256);
                }
                this.hoveredObject = access$3500;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void updateCustomAccessibilityActions(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        String str;
        while (byteBuffer.hasRemaining()) {
            CustomAccessibilityAction orCreateAccessibilityAction = getOrCreateAccessibilityAction(byteBuffer.getInt());
            orCreateAccessibilityAction.overrideId = byteBuffer.getInt();
            int i = byteBuffer.getInt();
            String str2 = null;
            if (i == -1) {
                str = null;
            } else {
                str = strArr[i];
            }
            orCreateAccessibilityAction.label = str;
            int i2 = byteBuffer.getInt();
            if (i2 != -1) {
                str2 = strArr[i2];
            }
            orCreateAccessibilityAction.hint = str2;
        }
    }

    /* access modifiers changed from: 0000 */
    public void updateSemantics(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        float f;
        float f2;
        ArrayList arrayList = new ArrayList();
        while (byteBuffer.hasRemaining()) {
            SemanticsNode orCreateSemanticsNode = getOrCreateSemanticsNode(byteBuffer.getInt());
            orCreateSemanticsNode.updateWith(byteBuffer, strArr);
            if (!orCreateSemanticsNode.hasFlag(Flag.IS_HIDDEN)) {
                if (orCreateSemanticsNode.hasFlag(Flag.IS_FOCUSED)) {
                    this.inputFocusedSemanticsNode = orCreateSemanticsNode;
                }
                if (orCreateSemanticsNode.hadPreviousConfig) {
                    arrayList.add(orCreateSemanticsNode);
                }
            }
        }
        HashSet hashSet = new HashSet();
        SemanticsNode rootSemanticsNode = getRootSemanticsNode();
        ArrayList<SemanticsNode> arrayList2 = new ArrayList<>();
        if (rootSemanticsNode != null) {
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            if (VERSION.SDK_INT >= 23) {
                WindowInsets rootWindowInsets = this.rootAccessibilityView.getRootWindowInsets();
                if (rootWindowInsets != null) {
                    if (!this.lastLeftFrameInset.equals(Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft()))) {
                        rootSemanticsNode.globalGeometryDirty = true;
                        rootSemanticsNode.inverseTransformDirty = true;
                    }
                    this.lastLeftFrameInset = Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft());
                    Matrix.translateM(fArr, 0, (float) this.lastLeftFrameInset.intValue(), 0.0f, 0.0f);
                }
            }
            rootSemanticsNode.updateRecursively(fArr, hashSet, false);
            rootSemanticsNode.collectRoutes(arrayList2);
        }
        SemanticsNode semanticsNode = null;
        for (SemanticsNode semanticsNode2 : arrayList2) {
            if (!this.flutterNavigationStack.contains(Integer.valueOf(semanticsNode2.id))) {
                semanticsNode = semanticsNode2;
            }
        }
        if (semanticsNode == null && arrayList2.size() > 0) {
            semanticsNode = (SemanticsNode) arrayList2.get(arrayList2.size() - 1);
        }
        if (!(semanticsNode == null || semanticsNode.id == this.previousRouteId)) {
            this.previousRouteId = semanticsNode.id;
            createAndSendWindowChangeEvent(semanticsNode);
        }
        this.flutterNavigationStack.clear();
        for (SemanticsNode access$1600 : arrayList2) {
            this.flutterNavigationStack.add(Integer.valueOf(access$1600.id));
        }
        Iterator it = this.flutterSemanticsTree.entrySet().iterator();
        while (it.hasNext()) {
            SemanticsNode semanticsNode3 = (SemanticsNode) ((Entry) it.next()).getValue();
            if (!hashSet.contains(semanticsNode3)) {
                willRemoveSemanticsNode(semanticsNode3);
                it.remove();
            }
        }
        sendAccessibilityEvent(0, 2048);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            SemanticsNode semanticsNode4 = (SemanticsNode) it2.next();
            if (semanticsNode4.didScroll()) {
                AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(semanticsNode4.id, 4096);
                float access$4400 = semanticsNode4.scrollPosition;
                float access$4500 = semanticsNode4.scrollExtentMax;
                if (Float.isInfinite(semanticsNode4.scrollExtentMax)) {
                    if (access$4400 > SCROLL_POSITION_CAP_FOR_INFINITY) {
                        access$4400 = SCROLL_POSITION_CAP_FOR_INFINITY;
                    }
                    access$4500 = SCROLL_EXTENT_FOR_INFINITY;
                }
                if (Float.isInfinite(semanticsNode4.scrollExtentMin)) {
                    f = access$4500 + SCROLL_EXTENT_FOR_INFINITY;
                    if (access$4400 < -70000.0f) {
                        access$4400 = -70000.0f;
                    }
                    f2 = access$4400 + SCROLL_EXTENT_FOR_INFINITY;
                } else {
                    f = access$4500 - semanticsNode4.scrollExtentMin;
                    f2 = access$4400 - semanticsNode4.scrollExtentMin;
                }
                if (semanticsNode4.hadAction(Action.SCROLL_UP) || semanticsNode4.hadAction(Action.SCROLL_DOWN)) {
                    obtainAccessibilityEvent.setScrollY((int) f2);
                    obtainAccessibilityEvent.setMaxScrollY((int) f);
                } else if (semanticsNode4.hadAction(Action.SCROLL_LEFT) || semanticsNode4.hadAction(Action.SCROLL_RIGHT)) {
                    obtainAccessibilityEvent.setScrollX((int) f2);
                    obtainAccessibilityEvent.setMaxScrollX((int) f);
                }
                if (semanticsNode4.scrollChildren > 0) {
                    obtainAccessibilityEvent.setItemCount(semanticsNode4.scrollChildren);
                    obtainAccessibilityEvent.setFromIndex(semanticsNode4.scrollIndex);
                    int i = 0;
                    for (SemanticsNode access$1800 : semanticsNode4.childrenInHitTestOrder) {
                        if (!access$1800.hasFlag(Flag.IS_HIDDEN)) {
                            i++;
                        }
                    }
                    obtainAccessibilityEvent.setToIndex((semanticsNode4.scrollIndex + i) - 1);
                }
                sendAccessibilityEvent(obtainAccessibilityEvent);
            }
            String str = "";
            if (semanticsNode4.hasFlag(Flag.IS_LIVE_REGION)) {
                if (!(semanticsNode4.label == null ? str : semanticsNode4.label).equals(semanticsNode4.previousLabel == null ? str : semanticsNode4.label) || !semanticsNode4.hadFlag(Flag.IS_LIVE_REGION)) {
                    sendAccessibilityEvent(semanticsNode4.id, 2048);
                }
            } else if (semanticsNode4.hasFlag(Flag.IS_TEXT_FIELD) && semanticsNode4.didChangeLabel()) {
                SemanticsNode semanticsNode5 = this.inputFocusedSemanticsNode;
                if (semanticsNode5 != null && semanticsNode5.id == semanticsNode4.id) {
                    sendAccessibilityEvent(semanticsNode4.id, 2048);
                }
            }
            SemanticsNode semanticsNode6 = this.accessibilityFocusedSemanticsNode;
            if (semanticsNode6 != null && semanticsNode6.id == semanticsNode4.id && !semanticsNode4.hadFlag(Flag.IS_SELECTED) && semanticsNode4.hasFlag(Flag.IS_SELECTED)) {
                AccessibilityEvent obtainAccessibilityEvent2 = obtainAccessibilityEvent(semanticsNode4.id, 4);
                obtainAccessibilityEvent2.getText().add(semanticsNode4.label);
                sendAccessibilityEvent(obtainAccessibilityEvent2);
            }
            SemanticsNode semanticsNode7 = this.inputFocusedSemanticsNode;
            if (semanticsNode7 != null && semanticsNode7.id == semanticsNode4.id && semanticsNode4.hadFlag(Flag.IS_TEXT_FIELD) && semanticsNode4.hasFlag(Flag.IS_TEXT_FIELD)) {
                SemanticsNode semanticsNode8 = this.accessibilityFocusedSemanticsNode;
                if (semanticsNode8 == null || semanticsNode8.id == this.inputFocusedSemanticsNode.id) {
                    String access$5400 = semanticsNode4.previousValue != null ? semanticsNode4.previousValue : str;
                    if (semanticsNode4.value != null) {
                        str = semanticsNode4.value;
                    }
                    AccessibilityEvent createTextChangedEvent = createTextChangedEvent(semanticsNode4.id, access$5400, str);
                    if (createTextChangedEvent != null) {
                        sendAccessibilityEvent(createTextChangedEvent);
                    }
                    if (semanticsNode4.previousTextSelectionBase != semanticsNode4.textSelectionBase || semanticsNode4.previousTextSelectionExtent != semanticsNode4.textSelectionExtent) {
                        AccessibilityEvent obtainAccessibilityEvent3 = obtainAccessibilityEvent(semanticsNode4.id, 8192);
                        obtainAccessibilityEvent3.getText().add(str);
                        obtainAccessibilityEvent3.setFromIndex(semanticsNode4.textSelectionBase);
                        obtainAccessibilityEvent3.setToIndex(semanticsNode4.textSelectionExtent);
                        obtainAccessibilityEvent3.setItemCount(str.length());
                        sendAccessibilityEvent(obtainAccessibilityEvent3);
                    }
                }
            }
        }
    }

    private AccessibilityEvent createTextChangedEvent(int i, String str, String str2) {
        AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(i, 16);
        obtainAccessibilityEvent.setBeforeText(str);
        obtainAccessibilityEvent.getText().add(str2);
        int i2 = 0;
        while (i2 < str.length() && i2 < str2.length() && str.charAt(i2) == str2.charAt(i2)) {
            i2++;
        }
        if (i2 >= str.length() && i2 >= str2.length()) {
            return null;
        }
        obtainAccessibilityEvent.setFromIndex(i2);
        int length = str.length() - 1;
        int length2 = str2.length() - 1;
        while (length >= i2 && length2 >= i2 && str.charAt(length) == str2.charAt(length2)) {
            length--;
            length2--;
        }
        obtainAccessibilityEvent.setRemovedCount((length - i2) + 1);
        obtainAccessibilityEvent.setAddedCount((length2 - i2) + 1);
        return obtainAccessibilityEvent;
    }

    /* access modifiers changed from: private */
    public void sendAccessibilityEvent(int i, int i2) {
        if (this.accessibilityManager.isEnabled()) {
            if (i == 0) {
                this.rootAccessibilityView.sendAccessibilityEvent(i2);
            } else {
                sendAccessibilityEvent(obtainAccessibilityEvent(i, i2));
            }
        }
    }

    /* access modifiers changed from: private */
    public void sendAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        if (this.accessibilityManager.isEnabled()) {
            this.rootAccessibilityView.getParent().requestSendAccessibilityEvent(this.rootAccessibilityView, accessibilityEvent);
        }
    }

    private void createAndSendWindowChangeEvent(@NonNull SemanticsNode semanticsNode) {
        AccessibilityEvent obtainAccessibilityEvent = obtainAccessibilityEvent(semanticsNode.id, 32);
        obtainAccessibilityEvent.getText().add(semanticsNode.getRouteName());
        sendAccessibilityEvent(obtainAccessibilityEvent);
    }

    /* access modifiers changed from: private */
    public AccessibilityEvent obtainAccessibilityEvent(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        obtain.setPackageName(this.rootAccessibilityView.getContext().getPackageName());
        obtain.setSource(this.rootAccessibilityView, i);
        return obtain;
    }

    private void willRemoveSemanticsNode(SemanticsNode semanticsNode) {
        semanticsNode.parent = null;
        SemanticsNode semanticsNode2 = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode2 == semanticsNode) {
            sendAccessibilityEvent(semanticsNode2.id, 65536);
            this.accessibilityFocusedSemanticsNode = null;
        }
        if (this.inputFocusedSemanticsNode == semanticsNode) {
            this.inputFocusedSemanticsNode = null;
        }
        if (this.hoveredObject == semanticsNode) {
            this.hoveredObject = null;
        }
    }

    public void reset() {
        this.flutterSemanticsTree.clear();
        SemanticsNode semanticsNode = this.accessibilityFocusedSemanticsNode;
        if (semanticsNode != null) {
            sendAccessibilityEvent(semanticsNode.id, 65536);
        }
        this.accessibilityFocusedSemanticsNode = null;
        this.hoveredObject = null;
        sendAccessibilityEvent(0, 2048);
    }

    public boolean externalViewRequestSendAccessibilityEvent(View view, View view2, AccessibilityEvent accessibilityEvent) {
        if (!this.accessibilityViewEmbedder.requestSendAccessibilityEvent(view, view2, accessibilityEvent)) {
            return false;
        }
        Integer recordFlutterId = this.accessibilityViewEmbedder.getRecordFlutterId(view, accessibilityEvent);
        if (recordFlutterId == null) {
            return false;
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 8) {
            this.embeddedInputFocusedNodeId = recordFlutterId;
            this.inputFocusedSemanticsNode = null;
        } else if (eventType == 128) {
            this.hoveredObject = null;
        } else if (eventType == 32768) {
            this.embeddedAccessibilityFocusedNodeId = recordFlutterId;
            this.accessibilityFocusedSemanticsNode = null;
        } else if (eventType == 65536) {
            this.embeddedInputFocusedNodeId = null;
            this.embeddedAccessibilityFocusedNodeId = null;
        }
        return true;
    }
}
