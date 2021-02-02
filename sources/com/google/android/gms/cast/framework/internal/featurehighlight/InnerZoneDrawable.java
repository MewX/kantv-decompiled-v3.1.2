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
import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzes;

class InnerZoneDrawable extends Drawable {
    private float centerX;
    private float centerY;
    private final Paint zzjc = new Paint();
    private float zzjd;
    private final Rect zzjh = new Rect();
    private final Paint zzkc = new Paint();
    private final int zzkd;
    private final int zzke;
    private float zzkf = 1.0f;
    private float zzkg;
    private float zzkh;

    public InnerZoneDrawable(Context context) {
        Resources resources = context.getResources();
        this.zzkd = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzke = resources.getInteger(R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        this.zzjc.setAntiAlias(true);
        this.zzjc.setStyle(Style.FILL);
        this.zzkc.setAntiAlias(true);
        this.zzkc.setStyle(Style.FILL);
        this.zzjc.setColor(-1);
        this.zzkc.setColor(-1);
        invalidateSelf();
    }

    public int getOpacity() {
        return -3;
    }

    public void draw(Canvas canvas) {
        float f = this.zzkh;
        if (f > 0.0f) {
            float f2 = this.zzjd * this.zzkg;
            this.zzkc.setAlpha((int) (((float) this.zzke) * f));
            canvas.drawCircle(this.centerX, this.centerY, f2, this.zzkc);
        }
        canvas.drawCircle(this.centerX, this.centerY, this.zzjd * this.zzkf, this.zzjc);
    }

    public void setAlpha(int i) {
        this.zzjc.setAlpha(i);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.zzjc.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.zzkf = f;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f) {
        this.zzkg = f;
        invalidateSelf();
    }

    @Keep
    public void setPulseAlpha(float f) {
        this.zzkh = f;
        invalidateSelf();
    }

    public final void zza(Rect rect) {
        this.zzjh.set(rect);
        this.centerX = this.zzjh.exactCenterX();
        this.centerY = this.zzjh.exactCenterY();
        this.zzjd = Math.max((float) this.zzkd, Math.max(((float) this.zzjh.width()) / 2.0f, ((float) this.zzjh.height()) / 2.0f));
        invalidateSelf();
    }

    public final Animator zzav() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("scale", new float[]{0.0f}), PropertyValuesHolder.ofInt("alpha", new int[]{0}), PropertyValuesHolder.ofFloat("pulseScale", new float[]{0.0f}), PropertyValuesHolder.ofFloat("pulseAlpha", new float[]{0.0f})});
        ofPropertyValuesHolder.setInterpolator(zzes.zzdx());
        return ofPropertyValuesHolder.setDuration(200);
    }
}
