package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.app.Presentation;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

@TargetApi(17)
class SingleViewPresentation extends Presentation {
    private final AccessibilityEventsDelegate accessibilityEventsDelegate;
    private FrameLayout container;
    private Object createParams;
    private final OnFocusChangeListener focusChangeListener;
    private AccessibilityDelegatingFrameLayout rootView;
    private boolean startFocused = false;
    private PresentationState state;
    private final PlatformViewFactory viewFactory;
    private int viewId;

    private static class AccessibilityDelegatingFrameLayout extends FrameLayout {
        private final AccessibilityEventsDelegate accessibilityEventsDelegate;
        private final View embeddedView;

        public AccessibilityDelegatingFrameLayout(Context context, AccessibilityEventsDelegate accessibilityEventsDelegate2, View view) {
            super(context);
            this.accessibilityEventsDelegate = accessibilityEventsDelegate2;
            this.embeddedView = view;
        }

        public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.accessibilityEventsDelegate.requestSendAccessibilityEvent(this.embeddedView, view, accessibilityEvent);
        }
    }

    static class FakeWindowViewGroup extends ViewGroup {
        private final Rect childRect = new Rect();
        private final Rect viewBounds = new Rect();

        public FakeWindowViewGroup(Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                this.viewBounds.set(i, i2, i3, i4);
                Gravity.apply(layoutParams.gravity, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), this.viewBounds, layoutParams.x, layoutParams.y, this.childRect);
                childAt.layout(this.childRect.left, this.childRect.top, this.childRect.right, this.childRect.bottom);
            }
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i, int i2) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                getChildAt(i3).measure(atMost(i), atMost(i2));
            }
            super.onMeasure(i, i2);
        }

        private static int atMost(int i) {
            return MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i), Integer.MIN_VALUE);
        }
    }

    static class PresentationContext extends ContextWrapper {
        private WindowManager windowManager;
        private final WindowManagerHandler windowManagerHandler;

        PresentationContext(Context context, WindowManagerHandler windowManagerHandler2) {
            super(context);
            this.windowManagerHandler = windowManagerHandler2;
        }

        public Object getSystemService(String str) {
            if ("window".equals(str)) {
                return getWindowManager();
            }
            return super.getSystemService(str);
        }

        private WindowManager getWindowManager() {
            if (this.windowManager == null) {
                this.windowManager = this.windowManagerHandler.getWindowManager();
            }
            return this.windowManager;
        }
    }

    static class PresentationState {
        /* access modifiers changed from: private */
        public FakeWindowViewGroup fakeWindowViewGroup;
        /* access modifiers changed from: private */
        public PlatformView platformView;
        /* access modifiers changed from: private */
        public WindowManagerHandler windowManagerHandler;

        PresentationState() {
        }
    }

    static class WindowManagerHandler implements InvocationHandler {
        private static final String TAG = "PlatformViewsController";
        private final WindowManager delegate;
        FakeWindowViewGroup fakeWindowRootView;

        WindowManagerHandler(WindowManager windowManager, FakeWindowViewGroup fakeWindowViewGroup) {
            this.delegate = windowManager;
            this.fakeWindowRootView = fakeWindowViewGroup;
        }

        public WindowManager getWindowManager() {
            return (WindowManager) Proxy.newProxyInstance(WindowManager.class.getClassLoader(), new Class[]{WindowManager.class}, this);
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object invoke(java.lang.Object r5, java.lang.reflect.Method r6, java.lang.Object[] r7) throws java.lang.Throwable {
            /*
                r4 = this;
                java.lang.String r5 = r6.getName()
                int r0 = r5.hashCode()
                r1 = 3
                r2 = 2
                r3 = 1
                switch(r0) {
                    case -1148522778: goto L_0x002d;
                    case 542766184: goto L_0x0023;
                    case 931413976: goto L_0x0019;
                    case 1098630473: goto L_0x000f;
                    default: goto L_0x000e;
                }
            L_0x000e:
                goto L_0x0037
            L_0x000f:
                java.lang.String r0 = "removeView"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L_0x0037
                r5 = 1
                goto L_0x0038
            L_0x0019:
                java.lang.String r0 = "updateViewLayout"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L_0x0037
                r5 = 3
                goto L_0x0038
            L_0x0023:
                java.lang.String r0 = "removeViewImmediate"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L_0x0037
                r5 = 2
                goto L_0x0038
            L_0x002d:
                java.lang.String r0 = "addView"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L_0x0037
                r5 = 0
                goto L_0x0038
            L_0x0037:
                r5 = -1
            L_0x0038:
                r0 = 0
                if (r5 == 0) goto L_0x005a
                if (r5 == r3) goto L_0x0056
                if (r5 == r2) goto L_0x0052
                if (r5 == r1) goto L_0x004e
                android.view.WindowManager r5 = r4.delegate     // Catch:{ InvocationTargetException -> 0x0048 }
                java.lang.Object r5 = r6.invoke(r5, r7)     // Catch:{ InvocationTargetException -> 0x0048 }
                return r5
            L_0x0048:
                r5 = move-exception
                java.lang.Throwable r5 = r5.getCause()
                throw r5
            L_0x004e:
                r4.updateViewLayout(r7)
                return r0
            L_0x0052:
                r4.removeViewImmediate(r7)
                return r0
            L_0x0056:
                r4.removeView(r7)
                return r0
            L_0x005a:
                r4.addView(r7)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.platform.SingleViewPresentation.WindowManagerHandler.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
        }

        private void addView(Object[] objArr) {
            FakeWindowViewGroup fakeWindowViewGroup = this.fakeWindowRootView;
            if (fakeWindowViewGroup == null) {
                Log.w(TAG, "Embedded view called addView while detached from presentation");
            } else {
                fakeWindowViewGroup.addView(objArr[0], objArr[1]);
            }
        }

        private void removeView(Object[] objArr) {
            FakeWindowViewGroup fakeWindowViewGroup = this.fakeWindowRootView;
            if (fakeWindowViewGroup == null) {
                Log.w(TAG, "Embedded view called removeView while detached from presentation");
            } else {
                fakeWindowViewGroup.removeView(objArr[0]);
            }
        }

        private void removeViewImmediate(Object[] objArr) {
            if (this.fakeWindowRootView == null) {
                Log.w(TAG, "Embedded view called removeViewImmediate while detached from presentation");
                return;
            }
            View view = objArr[0];
            view.clearAnimation();
            this.fakeWindowRootView.removeView(view);
        }

        private void updateViewLayout(Object[] objArr) {
            FakeWindowViewGroup fakeWindowViewGroup = this.fakeWindowRootView;
            if (fakeWindowViewGroup == null) {
                Log.w(TAG, "Embedded view called updateViewLayout while detached from presentation");
            } else {
                fakeWindowViewGroup.updateViewLayout(objArr[0], objArr[1]);
            }
        }
    }

    public SingleViewPresentation(Context context, Display display, PlatformViewFactory platformViewFactory, AccessibilityEventsDelegate accessibilityEventsDelegate2, int i, Object obj, OnFocusChangeListener onFocusChangeListener) {
        super(context, display);
        this.viewFactory = platformViewFactory;
        this.accessibilityEventsDelegate = accessibilityEventsDelegate2;
        this.viewId = i;
        this.createParams = obj;
        this.focusChangeListener = onFocusChangeListener;
        this.state = new PresentationState();
        getWindow().setFlags(8, 8);
    }

    public SingleViewPresentation(Context context, Display display, AccessibilityEventsDelegate accessibilityEventsDelegate2, PresentationState presentationState, OnFocusChangeListener onFocusChangeListener, boolean z) {
        super(context, display);
        this.accessibilityEventsDelegate = accessibilityEventsDelegate2;
        this.viewFactory = null;
        this.state = presentationState;
        this.focusChangeListener = onFocusChangeListener;
        getWindow().setFlags(8, 8);
        this.startFocused = z;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        if (this.state.fakeWindowViewGroup == null) {
            this.state.fakeWindowViewGroup = new FakeWindowViewGroup(getContext());
        }
        if (this.state.windowManagerHandler == null) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            PresentationState presentationState = this.state;
            presentationState.windowManagerHandler = new WindowManagerHandler(windowManager, presentationState.fakeWindowViewGroup);
        }
        this.container = new FrameLayout(getContext());
        PresentationContext presentationContext = new PresentationContext(getContext(), this.state.windowManagerHandler);
        if (this.state.platformView == null) {
            this.state.platformView = this.viewFactory.create(presentationContext, this.viewId, this.createParams);
        }
        View view = this.state.platformView.getView();
        this.container.addView(view);
        this.rootView = new AccessibilityDelegatingFrameLayout(getContext(), this.accessibilityEventsDelegate, view);
        this.rootView.addView(this.container);
        this.rootView.addView(this.state.fakeWindowViewGroup);
        view.setOnFocusChangeListener(this.focusChangeListener);
        this.rootView.setFocusableInTouchMode(true);
        if (this.startFocused) {
            view.requestFocus();
        } else {
            this.rootView.requestFocus();
        }
        setContentView(this.rootView);
    }

    public PresentationState detachState() {
        this.container.removeAllViews();
        this.rootView.removeAllViews();
        return this.state;
    }

    public PlatformView getView() {
        if (this.state.platformView == null) {
            return null;
        }
        return this.state.platformView;
    }
}
