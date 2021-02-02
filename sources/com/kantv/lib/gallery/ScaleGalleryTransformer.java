package com.kantv.lib.gallery;

import android.view.View;
import androidx.viewpager.widget.ViewPager.PageTransformer;

public class ScaleGalleryTransformer implements PageTransformer {
    private static final float MIN_ALPHA = 0.5f;
    private static final float MIN_SCALE = 0.85f;

    public void transformPage(View view, float f) {
        if (f >= -1.0f || f <= 1.0f) {
            float height = (float) view.getHeight();
            float width = (float) view.getWidth();
            float max = Math.max(MIN_SCALE, 1.0f - Math.abs(f));
            float f2 = 1.0f - max;
            float f3 = (height * f2) / 2.0f;
            float f4 = (f2 * width) / 2.0f;
            view.setPivotY(height * MIN_ALPHA);
            view.setPivotX(width * MIN_ALPHA);
            if (f < 0.0f) {
                view.setTranslationX(f4 - (f3 / 2.0f));
            } else {
                view.setTranslationX((-f4) + (f3 / 2.0f));
            }
            view.setScaleX(max);
            view.setScaleY(max);
        }
    }
}
