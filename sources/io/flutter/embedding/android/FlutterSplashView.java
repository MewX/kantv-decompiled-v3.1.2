package io.flutter.embedding.android;

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
import io.flutter.Log;
import io.flutter.embedding.android.FlutterView.FlutterEngineAttachmentListener;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.renderer.OnFirstFrameRenderedListener;

final class FlutterSplashView extends FrameLayout {
    private static String TAG = "FlutterSplashView";
    @NonNull
    private final FlutterEngineAttachmentListener flutterEngineAttachmentListener;
    /* access modifiers changed from: private */
    @Nullable
    public FlutterView flutterView;
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
        this.flutterEngineAttachmentListener = new FlutterEngineAttachmentListener() {
            public void onFlutterEngineDetachedFromFlutterView() {
            }

            public void onFlutterEngineAttachedToFlutterView(@NonNull FlutterEngine flutterEngine) {
                FlutterSplashView.this.flutterView.removeFlutterEngineAttachmentListener(this);
                FlutterSplashView flutterSplashView = FlutterSplashView.this;
                flutterSplashView.displayFlutterViewWithSplash(flutterSplashView.flutterView, FlutterSplashView.this.splashScreen);
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

    public void displayFlutterViewWithSplash(@NonNull FlutterView flutterView2, @Nullable SplashScreen splashScreen2) {
        FlutterView flutterView3 = this.flutterView;
        if (flutterView3 != null) {
            flutterView3.removeOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
            removeView(this.flutterView);
        }
        View view = this.splashScreenView;
        if (view != null) {
            removeView(view);
        }
        this.flutterView = flutterView2;
        addView(flutterView2);
        this.splashScreen = splashScreen2;
        if (splashScreen2 == null) {
            return;
        }
        if (isSplashScreenNeededNow()) {
            Log.v(TAG, "Showing splash screen UI.");
            this.splashScreenView = splashScreen2.createSplashView(getContext(), this.splashScreenState);
            addView(this.splashScreenView);
            flutterView2.addOnFirstFrameRenderedListener(this.onFirstFrameRenderedListener);
        } else if (isSplashScreenTransitionNeededNow()) {
            Log.v(TAG, "Showing an immediate splash transition to Flutter due to previously interrupted transition.");
            this.splashScreenView = splashScreen2.createSplashView(getContext(), this.splashScreenState);
            addView(this.splashScreenView);
            transitionToFlutter();
        } else if (!flutterView2.isAttachedToFlutterEngine()) {
            Log.v(TAG, "FlutterView is not yet attached to a FlutterEngine. Showing nothing until a FlutterEngine is attached.");
            flutterView2.addFlutterEngineAttachmentListener(this.flutterEngineAttachmentListener);
        }
    }

    private boolean isSplashScreenNeededNow() {
        FlutterView flutterView2 = this.flutterView;
        return flutterView2 != null && flutterView2.isAttachedToFlutterEngine() && !this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
    }

    private boolean isSplashScreenTransitionNeededNow() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 != null && flutterView2.isAttachedToFlutterEngine()) {
            SplashScreen splashScreen2 = this.splashScreen;
            if (splashScreen2 != null && splashScreen2.doesSplashViewRememberItsTransition() && wasPreviousSplashTransitionInterrupted()) {
                return true;
            }
        }
        return false;
    }

    private boolean wasPreviousSplashTransitionInterrupted() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 == null) {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterView is set.");
        } else if (flutterView2.isAttachedToFlutterEngine()) {
            return this.flutterView.hasRenderedFirstFrame() && !hasSplashCompleted();
        } else {
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
    }

    private boolean hasSplashCompleted() {
        FlutterView flutterView2 = this.flutterView;
        if (flutterView2 == null) {
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterView is set.");
        } else if (flutterView2.isAttachedToFlutterEngine()) {
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
}
