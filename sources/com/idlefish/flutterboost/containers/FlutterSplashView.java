package com.idlefish.flutterboost.containers;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.idlefish.flutterboost.Debuger;
import com.idlefish.flutterboost.NewFlutterBoost;
import com.idlefish.flutterboost.XFlutterView;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView.FlutterEngineAttachmentListener;
import io.flutter.embedding.android.SplashScreen;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;

public class FlutterSplashView extends FrameLayout {
    private static String TAG = "FlutterSplashView";
    @NonNull
    private final FlutterEngineAttachmentListener flutterEngineAttachmentListener;
    /* access modifiers changed from: private */
    @Nullable
    public XFlutterView flutterView;
    private boolean hasRendered;
    private FlutterEngine mFlutterEngine;
    @NonNull
    private final OnFirstFrameRenderedListener onFirstFrameRenderedListener;
    @NonNull
    private final Runnable onTransitionComplete;
    /* access modifiers changed from: private */
    @Nullable
    public String previousCompletedSplashIsolate;
    /* access modifiers changed from: private */
    @Nullable
    public SplashScreen splashScreen;
    @Nullable
    private Bundle splashScreenState;
    /* access modifiers changed from: private */
    @Nullable
    public View splashScreenView;
    /* access modifiers changed from: private */
    @Nullable
    public String transitioningIsolateId;

    public static class SavedState extends BaseSavedState {
        public static Creator CREATOR = new Creator() {
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        /* access modifiers changed from: private */
        public String previousCompletedSplashIsolate;
        /* access modifiers changed from: private */
        public Bundle splashScreenState;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.previousCompletedSplashIsolate = parcel.readString();
            this.splashScreenState = parcel.readBundle(getClass().getClassLoader());
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.previousCompletedSplashIsolate);
            parcel.writeBundle(this.splashScreenState);
        }
    }

    public FlutterSplashView(@NonNull Context context) {
        this(context, null, 0);
    }

    public FlutterSplashView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlutterSplashView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.hasRendered = false;
        this.flutterEngineAttachmentListener = new FlutterEngineAttachmentListener() {
            public void onFlutterEngineDetachedFromFlutterView() {
            }

            public void onFlutterEngineAttachedToFlutterView(@NonNull FlutterEngine flutterEngine) {
                FlutterSplashView.this.flutterView.removeFlutterEngineAttachmentListener(this);
            }
        };
        this.onFirstFrameRenderedListener = new OnFirstFrameRenderedListener() {
            public void onFirstFrameRendered() {
                if (FlutterSplashView.this.splashScreen != null) {
                    FlutterSplashView.this.transitionToFlutter();
                }
            }
        };
        this.onTransitionComplete = new Runnable() {
            public void run() {
                FlutterSplashView flutterSplashView = FlutterSplashView.this;
                flutterSplashView.removeView(flutterSplashView.splashScreenView);
                FlutterSplashView flutterSplashView2 = FlutterSplashView.this;
                flutterSplashView2.previousCompletedSplashIsolate = flutterSplashView2.transitioningIsolateId;
            }
        };
        setSaveEnabled(true);
        if (this.mFlutterEngine == null) {
            this.mFlutterEngine = NewFlutterBoost.instance().engineProvider();
        }
    }

    /* access modifiers changed from: protected */
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.previousCompletedSplashIsolate = this.previousCompletedSplashIsolate;
        SplashScreen splashScreen2 = this.splashScreen;
        savedState.splashScreenState = splashScreen2 != null ? splashScreen2.saveSplashScreenState() : null;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.previousCompletedSplashIsolate = savedState.previousCompletedSplashIsolate;
        this.splashScreenState = savedState.splashScreenState;
    }

    public void displayFlutterViewWithSplash(@NonNull XFlutterView xFlutterView, @Nullable SplashScreen splashScreen2) {
        XFlutterView xFlutterView2 = this.flutterView;
        if (xFlutterView2 != null) {
            xFlutterView2.removeOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
            removeView(this.flutterView);
        }
        View view = this.splashScreenView;
        if (view != null) {
            removeView(view);
        }
        this.flutterView = xFlutterView;
        addView(xFlutterView);
        this.splashScreen = splashScreen2;
        if (splashScreen2 != null) {
            this.splashScreenView = splashScreen2.createSplashView(getContext(), this.splashScreenState);
            this.splashScreenView.setBackgroundColor(-1);
            addView(this.splashScreenView);
            xFlutterView.addOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
        }
    }

    private boolean isSplashScreenNeededNow() {
        XFlutterView xFlutterView = this.flutterView;
        return xFlutterView != null && xFlutterView.isAttachedToFlutterEngine() && !this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
    }

    private boolean isSplashScreenTransitionNeededNow() {
        XFlutterView xFlutterView = this.flutterView;
        if (xFlutterView != null && xFlutterView.isAttachedToFlutterEngine()) {
            SplashScreen splashScreen2 = this.splashScreen;
            if (splashScreen2 != null && splashScreen2.doesSplashViewRememberItsTransition() && wasPreviousSplashTransitionInterrupted()) {
                return true;
            }
        }
        return false;
    }

    private boolean wasPreviousSplashTransitionInterrupted() {
        XFlutterView xFlutterView = this.flutterView;
        if (xFlutterView == null) {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterView is set.");
        } else if (xFlutterView.isAttachedToFlutterEngine()) {
            return this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
        } else {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
    }

    private boolean hasSplashCompleted() {
        XFlutterView xFlutterView = this.flutterView;
        if (xFlutterView == null) {
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterView is set.");
        } else if (xFlutterView.isAttachedToFlutterEngine()) {
            return this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId() != null && this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId().equals(this.previousCompletedSplashIsolate);
        } else {
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
    }

    /* access modifiers changed from: private */
    public void transitionToFlutter() {
        this.transitioningIsolateId = this.flutterView.getAttachedFlutterEngine().getDartExecutor().getIsolateServiceId();
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Transitioning splash screen to a Flutter UI. Isolate: ");
        sb.append(this.transitioningIsolateId);
        Log.v(str, sb.toString());
        this.splashScreen.transitionToFlutter(this.onTransitionComplete);
    }

    public void onAttach() {
        Debuger.log("BoostFlutterView onAttach");
        this.flutterView.attachToFlutterEngine(this.mFlutterEngine);
    }

    public void onDetach() {
        Debuger.log("BoostFlutterView onDetach");
        this.flutterView.detachFromFlutterEngine();
    }
}
