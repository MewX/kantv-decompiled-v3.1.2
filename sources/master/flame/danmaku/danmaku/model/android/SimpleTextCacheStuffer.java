package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.text.TextPaint;
import java.util.HashMap;
import java.util.Map;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.SpecialDanmaku;
import master.flame.danmaku.danmaku.model.android.AndroidDisplayer.DisplayerConfig;

public class SimpleTextCacheStuffer extends BaseCacheStuffer {
    private static final Map<Float, Float> sTextHeightCache = new HashMap();

    /* access modifiers changed from: protected */
    public void drawBackground(BaseDanmaku baseDanmaku, Canvas canvas, float f, float f2) {
    }

    /* access modifiers changed from: protected */
    public Float getCacheHeight(BaseDanmaku baseDanmaku, Paint paint) {
        Float valueOf = Float.valueOf(paint.getTextSize());
        Float f = (Float) sTextHeightCache.get(valueOf);
        if (f != null) {
            return f;
        }
        FontMetrics fontMetrics = paint.getFontMetrics();
        Float valueOf2 = Float.valueOf((fontMetrics.descent - fontMetrics.ascent) + fontMetrics.leading);
        sTextHeightCache.put(valueOf, valueOf2);
        return valueOf2;
    }

    public void measure(BaseDanmaku baseDanmaku, TextPaint textPaint, boolean z) {
        String[] strArr;
        float f = 0.0f;
        Float valueOf = Float.valueOf(0.0f);
        if (baseDanmaku.lines == null) {
            if (baseDanmaku.text != null) {
                f = textPaint.measureText(baseDanmaku.text.toString());
                valueOf = getCacheHeight(baseDanmaku, textPaint);
            }
            baseDanmaku.paintWidth = f;
            baseDanmaku.paintHeight = valueOf.floatValue();
            return;
        }
        Float cacheHeight = getCacheHeight(baseDanmaku, textPaint);
        for (String str : baseDanmaku.lines) {
            if (str.length() > 0) {
                f = Math.max(textPaint.measureText(str), f);
            }
        }
        baseDanmaku.paintWidth = f;
        baseDanmaku.paintHeight = ((float) baseDanmaku.lines.length) * cacheHeight.floatValue();
    }

    /* access modifiers changed from: protected */
    public void drawStroke(BaseDanmaku baseDanmaku, String str, Canvas canvas, float f, float f2, Paint paint) {
        if (str != null) {
            canvas.drawText(str, f, f2, paint);
        } else {
            canvas.drawText(baseDanmaku.text.toString(), f, f2, paint);
        }
    }

    /* access modifiers changed from: protected */
    public void drawText(BaseDanmaku baseDanmaku, String str, Canvas canvas, float f, float f2, TextPaint textPaint, boolean z) {
        if (z && (baseDanmaku instanceof SpecialDanmaku)) {
            textPaint.setAlpha(255);
        }
        if (str != null) {
            canvas.drawText(str, f, f2, textPaint);
        } else {
            canvas.drawText(baseDanmaku.text.toString(), f, f2, textPaint);
        }
    }

    public void clearCaches() {
        sTextHeightCache.clear();
    }

    public void drawDanmaku(BaseDanmaku baseDanmaku, Canvas canvas, float f, float f2, boolean z, DisplayerConfig displayerConfig) {
        float f3;
        float f4;
        String[] strArr;
        int i;
        float f5;
        float f6;
        float f7;
        float f8;
        BaseDanmaku baseDanmaku2 = baseDanmaku;
        boolean z2 = z;
        DisplayerConfig displayerConfig2 = displayerConfig;
        float f9 = f + ((float) baseDanmaku2.padding);
        float f10 = f2 + ((float) baseDanmaku2.padding);
        if (baseDanmaku2.borderColor != 0) {
            f9 += 4.0f;
            f10 += 4.0f;
        }
        float f11 = f9;
        float f12 = f10;
        displayerConfig2.definePaintParams(z2);
        TextPaint paint = displayerConfig2.getPaint(baseDanmaku2, z2);
        drawBackground(baseDanmaku, canvas, f, f2);
        boolean z3 = true;
        if (baseDanmaku2.lines != null) {
            String[] strArr2 = baseDanmaku2.lines;
            if (strArr2.length == 1) {
                if (displayerConfig2.hasStroke(baseDanmaku2)) {
                    displayerConfig2.applyPaintConfig(baseDanmaku2, paint, true);
                    float ascent = f12 - paint.ascent();
                    if (displayerConfig2.HAS_PROJECTION) {
                        f7 = ascent + displayerConfig2.sProjectionOffsetY;
                        f8 = displayerConfig2.sProjectionOffsetX + f11;
                    } else {
                        f7 = ascent;
                        f8 = f11;
                    }
                    drawStroke(baseDanmaku, strArr2[0], canvas, f8, f7, paint);
                }
                displayerConfig2.applyPaintConfig(baseDanmaku2, paint, false);
                drawText(baseDanmaku, strArr2[0], canvas, f11, f12 - paint.ascent(), paint, z);
            } else {
                float length = (baseDanmaku2.paintHeight - ((float) (baseDanmaku2.padding * 2))) / ((float) strArr2.length);
                int i2 = 0;
                while (i2 < strArr2.length) {
                    if (strArr2[i2] == null || strArr2[i2].length() == 0) {
                        i = i2;
                        strArr = strArr2;
                    } else {
                        if (displayerConfig2.hasStroke(baseDanmaku2)) {
                            displayerConfig2.applyPaintConfig(baseDanmaku2, paint, z3);
                            float ascent2 = ((((float) i2) * length) + f12) - paint.ascent();
                            if (displayerConfig2.HAS_PROJECTION) {
                                f5 = ascent2 + displayerConfig2.sProjectionOffsetY;
                                f6 = displayerConfig2.sProjectionOffsetX + f11;
                            } else {
                                f5 = ascent2;
                                f6 = f11;
                            }
                            i = i2;
                            drawStroke(baseDanmaku, strArr2[i2], canvas, f6, f5, paint);
                        } else {
                            i = i2;
                        }
                        displayerConfig2.applyPaintConfig(baseDanmaku2, paint, false);
                        strArr = strArr2;
                        drawText(baseDanmaku, strArr2[i], canvas, f11, ((((float) i) * length) + f12) - paint.ascent(), paint, z);
                    }
                    i2 = i + 1;
                    strArr2 = strArr;
                    z3 = true;
                }
            }
        } else {
            if (displayerConfig2.hasStroke(baseDanmaku2)) {
                displayerConfig2.applyPaintConfig(baseDanmaku2, paint, true);
                float ascent3 = f12 - paint.ascent();
                if (displayerConfig2.HAS_PROJECTION) {
                    f3 = ascent3 + displayerConfig2.sProjectionOffsetY;
                    f4 = displayerConfig2.sProjectionOffsetX + f11;
                } else {
                    f3 = ascent3;
                    f4 = f11;
                }
                drawStroke(baseDanmaku, null, canvas, f4, f3, paint);
            }
            displayerConfig2.applyPaintConfig(baseDanmaku2, paint, false);
            drawText(baseDanmaku, null, canvas, f11, f12 - paint.ascent(), paint, z);
        }
        if (baseDanmaku2.underlineColor != 0) {
            float f13 = (f2 + baseDanmaku2.paintHeight) - ((float) displayerConfig2.UNDERLINE_HEIGHT);
            float f14 = f + baseDanmaku2.paintWidth;
            canvas.drawLine(f, f13, f14, f13, displayerConfig2.getUnderlinePaint(baseDanmaku2));
        }
        if (baseDanmaku2.borderColor != 0) {
            float f15 = f + baseDanmaku2.paintWidth;
            float f16 = f2 + baseDanmaku2.paintHeight;
            canvas.drawRect(f, f2, f15, f16, displayerConfig2.getBorderPaint(baseDanmaku2));
        }
    }
}
