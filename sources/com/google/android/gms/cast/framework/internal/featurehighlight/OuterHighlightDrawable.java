package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzes;
import com.google.android.gms.internal.cast.zzeu;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

class OuterHighlightDrawable extends Drawable {
    private float centerX;
    private float centerY;
    private final Paint zzjc = new Paint();
    private float zzjd;
    private final Rect zzjh = new Rect();
    private float zzkf = 1.0f;
    private final Rect zzki = new Rect();
    private final int zzko;
    private final int zzkp;
    private final int zzkq;
    private float zzkr = 0.0f;
    private float zzks = 0.0f;
    private int zzkt = IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE;

    public OuterHighlightDrawable(Context context) {
        if (PlatformVersion.isAtLeastLollipop()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16843827, typedValue, true);
            setColor(ColorUtils.setAlphaComponent(typedValue.data, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE));
        } else {
            setColor(context.getResources().getColor(R.color.cast_libraries_material_featurehighlight_outer_highlight_default_color));
        }
        this.zzjc.setAntiAlias(true);
        this.zzjc.setStyle(Style.FILL);
        Resources resources = context.getResources();
        this.zzko = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_threshold);
        this.zzkp = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_horizontal_offset);
        this.zzkq = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_outer_padding);
    }

    public int getOpacity() {
        return -3;
    }

    public void draw(Canvas canvas) {
        canvas.drawCircle(this.centerX + this.zzkr, this.centerY + this.zzks, this.zzjd * this.zzkf, this.zzjc);
    }

    public void setAlpha(int i) {
        this.zzjc.setAlpha(i);
        invalidateSelf();
    }

    public int getAlpha() {
        return this.zzjc.getAlpha();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.zzjc.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @ColorInt
    public final int getColor() {
        return this.zzjc.getColor();
    }

    public final void setColor(@ColorInt int i) {
        this.zzjc.setColor(i);
        this.zzkt = this.zzjc.getAlpha();
        invalidateSelf();
    }

    public final void zzb(Rect rect, Rect rect2) {
        float f;
        this.zzjh.set(rect);
        this.zzki.set(rect2);
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        Rect bounds = getBounds();
        if (Math.min(exactCenterY - ((float) bounds.top), ((float) bounds.bottom) - exactCenterY) < ((float) this.zzko)) {
            this.centerX = exactCenterX;
            this.centerY = exactCenterY;
        } else {
            if (exactCenterX <= bounds.exactCenterX()) {
                f = rect2.exactCenterX() + ((float) this.zzkp);
            } else {
                f = rect2.exactCenterX() - ((float) this.zzkp);
            }
            this.centerX = f;
            this.centerY = rect2.exactCenterY();
        }
        this.zzjd = ((float) this.zzkq) + Math.max(zza(this.centerX, this.centerY, rect), zza(this.centerX, this.centerY, rect2));
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.zzkf = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationX(float f) {
        this.zzkr = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationY(float f) {
        this.zzks = f;
        invalidateSelf();
    }

    public final float getCenterX() {
        return this.centerX;
    }

    public final float getCenterY() {
        return this.centerY;
    }

    public final boolean zzb(float f, float f2) {
        return zzeu.zza(f, f2, this.centerX, this.centerY) < this.zzjd;
    }

    private static float zza(float f, float f2, Rect rect) {
        float f3 = (float) rect.left;
        float f4 = (float) rect.top;
        float f5 = (float) rect.right;
        float f6 = (float) rect.bottom;
        float zza = zzeu.zza(f, f2, f3, f4);
        float zza2 = zzeu.zza(f, f2, f5, f4);
        float zza3 = zzeu.zza(f, f2, f5, f6);
        float zza4 = zzeu.zza(f, f2, f3, f6);
        if (zza > zza2 && zza > zza3 && zza > zza4) {
            zza4 = zza;
        } else if (zza2 > zza3 && zza2 > zza4) {
            zza4 = zza2;
        } else if (zza3 > zza4) {
            zza4 = zza3;
        }
        return (float) Math.ceil((double) zza4);
    }

    public final Animator zzc(float f, float f2) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("scale", new float[]{0.0f, 1.0f}), PropertyValuesHolder.ofFloat("translationX", new float[]{f, 0.0f}), PropertyValuesHolder.ofFloat("translationY", new float[]{f2, 0.0f}), PropertyValuesHolder.ofInt("alpha", new int[]{0, this.zzkt})});
        ofPropertyValuesHolder.setInterpolator(zzes.zzdw());
        return ofPropertyValuesHolder.setDuration(350);
    }
}
