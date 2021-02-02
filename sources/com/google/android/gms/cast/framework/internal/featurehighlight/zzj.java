package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzev;

final class zzj {
    private final Rect zzki = new Rect();
    private final int zzkj;
    private final int zzkk;
    private final int zzkl;
    private final int zzkm;
    private final zza zzkn;

    zzj(zza zza) {
        this.zzkn = (zza) zzev.checkNotNull(zza);
        Resources resources = zza.getResources();
        this.zzkj = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzkk = resources.getDimensionPixelOffset(R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.zzkl = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.zzkm = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    /* access modifiers changed from: 0000 */
    public final void zza(Rect rect, Rect rect2) {
        View zzar = this.zzkn.zzar();
        boolean z = false;
        if (rect.isEmpty() || rect2.isEmpty()) {
            zzar.layout(0, 0, 0, 0);
        } else {
            int centerY = rect.centerY();
            int centerX = rect.centerX();
            if (centerY < rect2.centerY()) {
                z = true;
            }
            int max = Math.max(this.zzkj * 2, rect.height()) / 2;
            int i = centerY + max;
            int i2 = this.zzkk;
            int i3 = i + i2;
            if (z) {
                zza(zzar, rect2.width(), rect2.bottom - i3);
                int zza = zza(zzar, rect2.left, rect2.right, zzar.getMeasuredWidth(), centerX);
                zzar.layout(zza, i3, zzar.getMeasuredWidth() + zza, zzar.getMeasuredHeight() + i3);
            } else {
                int i4 = (centerY - max) - i2;
                zza(zzar, rect2.width(), i4 - rect2.top);
                int zza2 = zza(zzar, rect2.left, rect2.right, zzar.getMeasuredWidth(), centerX);
                zzar.layout(zza2, i4 - zzar.getMeasuredHeight(), zzar.getMeasuredWidth() + zza2, i4);
            }
        }
        this.zzki.set(zzar.getLeft(), zzar.getTop(), zzar.getRight(), zzar.getBottom());
        this.zzkn.zzas().zzb(rect, this.zzki);
        this.zzkn.zzat().zza(rect);
    }

    private final int zza(View view, int i, int i2, int i3, int i4) {
        int i5;
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int i6 = i3 / 2;
        if (i4 - i <= i2 - i4) {
            i5 = (i4 - i6) + this.zzkm;
        } else {
            i5 = (i4 - i6) - this.zzkm;
        }
        if (i5 - marginLayoutParams.leftMargin < i) {
            return i + marginLayoutParams.leftMargin;
        }
        return (i5 + i3) + marginLayoutParams.rightMargin > i2 ? (i2 - i3) - marginLayoutParams.rightMargin : i5;
    }

    private final void zza(View view, int i, int i2) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(MeasureSpec.makeMeasureSpec(Math.min((i - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.zzkl), 1073741824), MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
    }
}
