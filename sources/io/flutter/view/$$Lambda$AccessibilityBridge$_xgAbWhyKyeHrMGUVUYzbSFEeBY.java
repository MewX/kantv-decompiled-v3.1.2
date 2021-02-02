package io.flutter.view;

import io.flutter.util.Predicate;

/* renamed from: io.flutter.view.-$$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY reason: invalid class name */
/* compiled from: lambda */
public final /* synthetic */ class $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY implements Predicate {
    public static final /* synthetic */ $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY INSTANCE = new $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY();

    private /* synthetic */ $$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY() {
    }

    public final boolean test(Object obj) {
        return ((SemanticsNode) obj).hasFlag(Flag.HAS_IMPLICIT_SCROLLING);
    }
}
