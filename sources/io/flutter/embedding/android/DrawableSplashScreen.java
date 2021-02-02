package io.flutter.embedding.android;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.android.SplashScreen.CC;

public final class DrawableSplashScreen implements SplashScreen {
    private final long crossfadeDurationInMillis;
    private final Drawable drawable;
    private final ScaleType scaleType;
    private DrawableSplashScreenView splashView;

    public static class DrawableSplashScreenView extends ImageView {
        public DrawableSplashScreenView(@NonNull Context context) {
            this(context, null, 0);
        }

        public DrawableSplashScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public DrawableSplashScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        public void setSplashDrawable(@Nullable Drawable drawable) {
            setSplashDrawable(drawable, ScaleType.FIT_XY);
        }

        public void setSplashDrawable(@Nullable Drawable drawable, @NonNull ScaleType scaleType) {
            setScaleType(scaleType);
            setImageDrawable(drawable);
        }
    }

    @SuppressLint({"NewApi"})
    public /* synthetic */ boolean doesSplashViewRememberItsTransition() {
        return CC.$default$doesSplashViewRememberItsTransition(this);
    }

    @SuppressLint({"NewApi"})
    @Nullable
    public /* synthetic */ Bundle saveSplashScreenState() {
        return CC.$default$saveSplashScreenState(this);
    }

    public DrawableSplashScreen(@NonNull Drawable drawable2) {
        this(drawable2, ScaleType.FIT_XY, 500);
    }

    public DrawableSplashScreen(@NonNull Drawable drawable2, @NonNull ScaleType scaleType2, long j) {
        this.drawable = drawable2;
        this.scaleType = scaleType2;
        this.crossfadeDurationInMillis = j;
    }

    @Nullable
    public View createSplashView(@NonNull Context context, @Nullable Bundle bundle) {
        this.splashView = new DrawableSplashScreenView(context);
        this.splashView.setSplashDrawable(this.drawable, this.scaleType);
        return this.splashView;
    }

    public void transitionToFlutter(@NonNull final Runnable runnable) {
        DrawableSplashScreenView drawableSplashScreenView = this.splashView;
        if (drawableSplashScreenView == null) {
            runnable.run();
        } else {
            drawableSplashScreenView.animate().alpha(0.0f).setDuration(this.crossfadeDurationInMillis).setListener(new AnimatorListener() {
                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }

                public void onAnimationCancel(Animator animator) {
                    runnable.run();
                }
            });
        }
    }
}
