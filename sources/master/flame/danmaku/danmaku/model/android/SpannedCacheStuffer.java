package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout.Alignment;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.lang.ref.SoftReference;
import master.flame.danmaku.danmaku.model.BaseDanmaku;

public class SpannedCacheStuffer extends SimpleTextCacheStuffer {
    public void measure(BaseDanmaku baseDanmaku, TextPaint textPaint, boolean z) {
        if (baseDanmaku.text instanceof Spanned) {
            CharSequence charSequence = baseDanmaku.text;
            if (charSequence != null) {
                StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, (int) Math.ceil((double) StaticLayout.getDesiredWidth(baseDanmaku.text, textPaint)), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                baseDanmaku.paintWidth = (float) staticLayout.getWidth();
                baseDanmaku.paintHeight = (float) staticLayout.getHeight();
                baseDanmaku.obj = new SoftReference(staticLayout);
                return;
            }
        }
        super.measure(baseDanmaku, textPaint, z);
    }

    public void drawStroke(BaseDanmaku baseDanmaku, String str, Canvas canvas, float f, float f2, Paint paint) {
        if (baseDanmaku.obj == null) {
            super.drawStroke(baseDanmaku, str, canvas, f, f2, paint);
        }
    }

    public void drawText(BaseDanmaku baseDanmaku, String str, Canvas canvas, float f, float f2, TextPaint textPaint, boolean z) {
        BaseDanmaku baseDanmaku2 = baseDanmaku;
        Canvas canvas2 = canvas;
        float f3 = f;
        if (baseDanmaku2.obj == null) {
            super.drawText(baseDanmaku, str, canvas, f, f2, textPaint, z);
            return;
        }
        StaticLayout staticLayout = (StaticLayout) ((SoftReference) baseDanmaku2.obj).get();
        boolean z2 = true;
        boolean z3 = (baseDanmaku2.requestFlags & 1) != 0;
        boolean z4 = (baseDanmaku2.requestFlags & 2) != 0;
        if (z4 || staticLayout == null) {
            if (z4) {
                baseDanmaku2.requestFlags &= -3;
            }
            CharSequence charSequence = baseDanmaku2.text;
            if (charSequence != null) {
                if (z3) {
                    staticLayout = new StaticLayout(charSequence, textPaint, (int) Math.ceil((double) StaticLayout.getDesiredWidth(baseDanmaku2.text, textPaint)), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    baseDanmaku2.paintWidth = (float) staticLayout.getWidth();
                    baseDanmaku2.paintHeight = (float) staticLayout.getHeight();
                    baseDanmaku2.requestFlags &= -2;
                } else {
                    TextPaint textPaint2 = textPaint;
                    staticLayout = new StaticLayout(charSequence, textPaint, (int) baseDanmaku2.paintWidth, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                }
                baseDanmaku2.obj = new SoftReference(staticLayout);
            }
        }
        TextPaint textPaint3 = textPaint;
        if (f3 == 0.0f || f2 == 0.0f) {
            z2 = false;
        } else {
            canvas.save();
            canvas2.translate(f3, f2 + textPaint.ascent());
        }
        staticLayout.draw(canvas2);
        if (z2) {
            canvas.restore();
        }
    }

    public void clearCaches() {
        super.clearCaches();
        System.gc();
    }

    public void clearCache(BaseDanmaku baseDanmaku) {
        super.clearCache(baseDanmaku);
        if (baseDanmaku.obj instanceof SoftReference) {
            ((SoftReference) baseDanmaku.obj).clear();
        }
    }

    public void releaseResource(BaseDanmaku baseDanmaku) {
        clearCache(baseDanmaku);
        super.releaseResource(baseDanmaku);
    }
}
