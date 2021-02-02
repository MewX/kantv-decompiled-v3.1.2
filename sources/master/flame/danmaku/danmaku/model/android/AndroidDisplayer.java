package master.flame.danmaku.danmaku.model.android;

import android.annotation.SuppressLint;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.text.TextPaint;
import androidx.core.view.ViewCompat;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.HashMap;
import java.util.Map;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.AlphaValue;
import master.flame.danmaku.danmaku.model.BaseDanmaku;

public class AndroidDisplayer extends AbsDisplayer<Canvas, Typeface> {
    private Camera camera = new Camera();
    public Canvas canvas;
    private float density = 1.0f;
    private int densityDpi = Opcodes.IF_ICMPNE;
    private int height;
    private float locationZ;
    private final DisplayerConfig mDisplayConfig = new DisplayerConfig();
    private boolean mIsHardwareAccelerated = true;
    private int mMaximumBitmapHeight = 2048;
    private int mMaximumBitmapWidth = 2048;
    private int mSlopPixel = 0;
    private Matrix matrix = new Matrix();
    private BaseCacheStuffer sStuffer = new SimpleTextCacheStuffer();
    private float scaledDensity = 1.0f;
    private int width;

    public static class DisplayerConfig {
        public static final int BORDER_WIDTH = 4;
        /* access modifiers changed from: private */
        public Paint ALPHA_PAINT;
        private boolean ANTI_ALIAS = this.CONFIG_ANTI_ALIAS;
        private Paint BORDER_PAINT;
        public boolean CONFIG_ANTI_ALIAS = true;
        public boolean CONFIG_HAS_PROJECTION = false;
        public boolean CONFIG_HAS_SHADOW = false;
        public boolean CONFIG_HAS_STROKE = true;
        public boolean HAS_PROJECTION = this.CONFIG_HAS_PROJECTION;
        private boolean HAS_SHADOW = this.CONFIG_HAS_SHADOW;
        /* access modifiers changed from: private */
        public boolean HAS_STROKE = this.CONFIG_HAS_STROKE;
        public final TextPaint PAINT = new TextPaint();
        public final TextPaint PAINT_DUPLICATE;
        private float SHADOW_RADIUS = 4.0f;
        private float STROKE_WIDTH = 3.5f;
        public int UNDERLINE_HEIGHT = 4;
        private Paint UNDERLINE_PAINT;
        /* access modifiers changed from: private */
        public int allMarginTop = 0;
        private boolean isTextScaled = false;
        private boolean isTranslucent;
        /* access modifiers changed from: private */
        public int margin = 0;
        private final Map<Float, Float> sCachedScaleSize = new HashMap(10);
        private float sLastScaleTextSize;
        private int sProjectionAlpha = 204;
        public float sProjectionOffsetX = 1.0f;
        public float sProjectionOffsetY = 1.0f;
        private float scaleTextSize = 1.0f;
        private int transparency = AlphaValue.MAX;

        public DisplayerConfig() {
            this.PAINT.setStrokeWidth(this.STROKE_WIDTH);
            this.PAINT_DUPLICATE = new TextPaint(this.PAINT);
            this.ALPHA_PAINT = new Paint();
            this.UNDERLINE_PAINT = new Paint();
            this.UNDERLINE_PAINT.setStrokeWidth((float) this.UNDERLINE_HEIGHT);
            this.UNDERLINE_PAINT.setStyle(Style.STROKE);
            this.BORDER_PAINT = new Paint();
            this.BORDER_PAINT.setStyle(Style.STROKE);
            this.BORDER_PAINT.setStrokeWidth(4.0f);
        }

        public void setTypeface(Typeface typeface) {
            this.PAINT.setTypeface(typeface);
        }

        public void setShadowRadius(float f) {
            this.SHADOW_RADIUS = f;
        }

        public void setStrokeWidth(float f) {
            this.PAINT.setStrokeWidth(f);
            this.STROKE_WIDTH = f;
        }

        public void setProjectionConfig(float f, float f2, int i) {
            if (this.sProjectionOffsetX != f || this.sProjectionOffsetY != f2 || this.sProjectionAlpha != i) {
                if (f <= 1.0f) {
                    f = 1.0f;
                }
                this.sProjectionOffsetX = f;
                if (f2 <= 1.0f) {
                    f2 = 1.0f;
                }
                this.sProjectionOffsetY = f2;
                if (i < 0) {
                    i = 0;
                } else if (i > 255) {
                    i = 255;
                }
                this.sProjectionAlpha = i;
            }
        }

        public void setFakeBoldText(boolean z) {
            this.PAINT.setFakeBoldText(z);
        }

        public void setTransparency(int i) {
            this.isTranslucent = i != AlphaValue.MAX;
            this.transparency = i;
        }

        public void setScaleTextSizeFactor(float f) {
            this.isTextScaled = f != 1.0f;
            this.scaleTextSize = f;
        }

        private void applyTextScaleConfig(BaseDanmaku baseDanmaku, Paint paint) {
            if (this.isTextScaled) {
                Float f = (Float) this.sCachedScaleSize.get(Float.valueOf(baseDanmaku.textSize));
                if (f == null || this.sLastScaleTextSize != this.scaleTextSize) {
                    this.sLastScaleTextSize = this.scaleTextSize;
                    f = Float.valueOf(baseDanmaku.textSize * this.scaleTextSize);
                    this.sCachedScaleSize.put(Float.valueOf(baseDanmaku.textSize), f);
                }
                paint.setTextSize(f.floatValue());
            }
        }

        public boolean hasStroke(BaseDanmaku baseDanmaku) {
            return (this.HAS_STROKE || this.HAS_PROJECTION) && this.STROKE_WIDTH > 0.0f && baseDanmaku.textShadowColor != 0;
        }

        public Paint getBorderPaint(BaseDanmaku baseDanmaku) {
            this.BORDER_PAINT.setColor(baseDanmaku.borderColor);
            return this.BORDER_PAINT;
        }

        public Paint getUnderlinePaint(BaseDanmaku baseDanmaku) {
            this.UNDERLINE_PAINT.setColor(baseDanmaku.underlineColor);
            return this.UNDERLINE_PAINT;
        }

        public TextPaint getPaint(BaseDanmaku baseDanmaku, boolean z) {
            TextPaint textPaint;
            if (z) {
                textPaint = this.PAINT;
            } else {
                textPaint = this.PAINT_DUPLICATE;
                textPaint.set(this.PAINT);
            }
            textPaint.setTextSize(baseDanmaku.textSize);
            applyTextScaleConfig(baseDanmaku, textPaint);
            if (!this.HAS_SHADOW || this.SHADOW_RADIUS <= 0.0f || baseDanmaku.textShadowColor == 0) {
                textPaint.clearShadowLayer();
            } else {
                textPaint.setShadowLayer(this.SHADOW_RADIUS, 0.0f, 0.0f, baseDanmaku.textShadowColor);
            }
            textPaint.setAntiAlias(this.ANTI_ALIAS);
            return textPaint;
        }

        public void applyPaintConfig(BaseDanmaku baseDanmaku, Paint paint, boolean z) {
            if (this.isTranslucent) {
                if (z) {
                    paint.setStyle(this.HAS_PROJECTION ? Style.FILL : Style.FILL_AND_STROKE);
                    paint.setColor(baseDanmaku.textShadowColor & ViewCompat.MEASURED_SIZE_MASK);
                    paint.setAlpha(this.HAS_PROJECTION ? (int) (((float) this.sProjectionAlpha) * (((float) this.transparency) / ((float) AlphaValue.MAX))) : this.transparency);
                } else {
                    paint.setStyle(Style.FILL);
                    paint.setColor(baseDanmaku.textColor & ViewCompat.MEASURED_SIZE_MASK);
                    paint.setAlpha(this.transparency);
                }
            } else if (z) {
                paint.setStyle(this.HAS_PROJECTION ? Style.FILL : Style.FILL_AND_STROKE);
                paint.setColor(baseDanmaku.textShadowColor & ViewCompat.MEASURED_SIZE_MASK);
                paint.setAlpha(this.HAS_PROJECTION ? this.sProjectionAlpha : AlphaValue.MAX);
            } else {
                paint.setStyle(Style.FILL);
                paint.setColor(baseDanmaku.textColor & ViewCompat.MEASURED_SIZE_MASK);
                paint.setAlpha(AlphaValue.MAX);
            }
            if (baseDanmaku.getType() == 7) {
                paint.setAlpha(baseDanmaku.getAlpha());
            }
        }

        public void clearTextHeightCache() {
            this.sCachedScaleSize.clear();
        }

        public float getStrokeWidth() {
            if (this.HAS_SHADOW && this.HAS_STROKE) {
                return Math.max(this.SHADOW_RADIUS, this.STROKE_WIDTH);
            }
            if (this.HAS_SHADOW) {
                return this.SHADOW_RADIUS;
            }
            if (this.HAS_STROKE) {
                return this.STROKE_WIDTH;
            }
            return 0.0f;
        }

        public void definePaintParams(boolean z) {
            this.HAS_STROKE = this.CONFIG_HAS_STROKE;
            this.HAS_SHADOW = this.CONFIG_HAS_SHADOW;
            this.HAS_PROJECTION = this.CONFIG_HAS_PROJECTION;
            this.ANTI_ALIAS = this.CONFIG_ANTI_ALIAS;
        }
    }

    @SuppressLint({"NewApi"})
    private static final int getMaximumBitmapWidth(Canvas canvas2) {
        if (VERSION.SDK_INT >= 14) {
            return canvas2.getMaximumBitmapWidth();
        }
        return canvas2.getWidth();
    }

    @SuppressLint({"NewApi"})
    private static final int getMaximumBitmapHeight(Canvas canvas2) {
        if (VERSION.SDK_INT >= 14) {
            return canvas2.getMaximumBitmapHeight();
        }
        return canvas2.getHeight();
    }

    public void setTypeFace(Typeface typeface) {
        this.mDisplayConfig.setTypeface(typeface);
    }

    public void setShadowRadius(float f) {
        this.mDisplayConfig.setShadowRadius(f);
    }

    public void setPaintStorkeWidth(float f) {
        this.mDisplayConfig.setStrokeWidth(f);
    }

    public void setProjectionConfig(float f, float f2, int i) {
        this.mDisplayConfig.setProjectionConfig(f, f2, i);
    }

    public void setFakeBoldText(boolean z) {
        this.mDisplayConfig.setFakeBoldText(z);
    }

    public void setTransparency(int i) {
        this.mDisplayConfig.setTransparency(i);
    }

    public void setScaleTextSizeFactor(float f) {
        this.mDisplayConfig.setScaleTextSizeFactor(f);
    }

    public void setCacheStuffer(BaseCacheStuffer baseCacheStuffer) {
        if (baseCacheStuffer != this.sStuffer) {
            this.sStuffer = baseCacheStuffer;
        }
    }

    public BaseCacheStuffer getCacheStuffer() {
        return this.sStuffer;
    }

    public void setMargin(int i) {
        this.mDisplayConfig.margin = i;
    }

    public int getMargin() {
        return this.mDisplayConfig.margin;
    }

    public void setAllMarginTop(int i) {
        this.mDisplayConfig.allMarginTop = i;
    }

    public int getAllMarginTop() {
        return this.mDisplayConfig.allMarginTop;
    }

    private void update(Canvas canvas2) {
        this.canvas = canvas2;
        if (canvas2 != null) {
            this.width = canvas2.getWidth();
            this.height = canvas2.getHeight();
            if (this.mIsHardwareAccelerated) {
                this.mMaximumBitmapWidth = getMaximumBitmapWidth(canvas2);
                this.mMaximumBitmapHeight = getMaximumBitmapHeight(canvas2);
            }
        }
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public float getDensity() {
        return this.density;
    }

    public int getDensityDpi() {
        return this.densityDpi;
    }

    public int draw(BaseDanmaku baseDanmaku) {
        boolean z;
        Paint paint;
        boolean z2;
        float top = baseDanmaku.getTop();
        float left = baseDanmaku.getLeft();
        if (this.canvas == null) {
            return 0;
        }
        Paint paint2 = null;
        int i = 1;
        if (baseDanmaku.getType() != 7) {
            paint = null;
            z = false;
        } else if (baseDanmaku.getAlpha() == AlphaValue.TRANSPARENT) {
            return 0;
        } else {
            if (baseDanmaku.rotationZ == 0.0f && baseDanmaku.rotationY == 0.0f) {
                z2 = false;
            } else {
                saveCanvas(baseDanmaku, this.canvas, left, top);
                z2 = true;
            }
            if (baseDanmaku.getAlpha() != AlphaValue.MAX) {
                paint2 = this.mDisplayConfig.ALPHA_PAINT;
                paint2.setAlpha(baseDanmaku.getAlpha());
            }
            paint = paint2;
            z = z2;
        }
        if (paint != null && paint.getAlpha() == AlphaValue.TRANSPARENT) {
            return 0;
        }
        if (!this.sStuffer.drawCache(baseDanmaku, this.canvas, left, top, paint, this.mDisplayConfig.PAINT)) {
            if (paint != null) {
                this.mDisplayConfig.PAINT.setAlpha(paint.getAlpha());
                this.mDisplayConfig.PAINT_DUPLICATE.setAlpha(paint.getAlpha());
            } else {
                resetPaintAlpha(this.mDisplayConfig.PAINT);
            }
            drawDanmaku(baseDanmaku, this.canvas, left, top, false);
            i = 2;
        }
        if (z) {
            restoreCanvas(this.canvas);
        }
        return i;
    }

    public void recycle(BaseDanmaku baseDanmaku) {
        BaseCacheStuffer baseCacheStuffer = this.sStuffer;
        if (baseCacheStuffer != null) {
            baseCacheStuffer.releaseResource(baseDanmaku);
        }
    }

    private void resetPaintAlpha(Paint paint) {
        if (paint.getAlpha() != AlphaValue.MAX) {
            paint.setAlpha(AlphaValue.MAX);
        }
    }

    private void restoreCanvas(Canvas canvas2) {
        canvas2.restore();
    }

    private int saveCanvas(BaseDanmaku baseDanmaku, Canvas canvas2, float f, float f2) {
        this.camera.save();
        if (this.locationZ != 0.0f && VERSION.SDK_INT >= 12) {
            this.camera.setLocation(0.0f, 0.0f, this.locationZ);
        }
        this.camera.rotateY(-baseDanmaku.rotationY);
        this.camera.rotateZ(-baseDanmaku.rotationZ);
        this.camera.getMatrix(this.matrix);
        this.matrix.preTranslate(-f, -f2);
        this.matrix.postTranslate(f, f2);
        this.camera.restore();
        int save = canvas2.save();
        canvas2.concat(this.matrix);
        return save;
    }

    public synchronized void drawDanmaku(BaseDanmaku baseDanmaku, Canvas canvas2, float f, float f2, boolean z) {
        if (this.sStuffer != null) {
            this.sStuffer.drawDanmaku(baseDanmaku, canvas2, f, f2, z, this.mDisplayConfig);
        }
    }

    private synchronized TextPaint getPaint(BaseDanmaku baseDanmaku, boolean z) {
        return this.mDisplayConfig.getPaint(baseDanmaku, z);
    }

    public void prepare(BaseDanmaku baseDanmaku, boolean z) {
        BaseCacheStuffer baseCacheStuffer = this.sStuffer;
        if (baseCacheStuffer != null) {
            baseCacheStuffer.prepare(baseDanmaku, z);
        }
    }

    public void measure(BaseDanmaku baseDanmaku, boolean z) {
        TextPaint paint = getPaint(baseDanmaku, z);
        if (this.mDisplayConfig.HAS_STROKE) {
            this.mDisplayConfig.applyPaintConfig(baseDanmaku, paint, true);
        }
        calcPaintWH(baseDanmaku, paint, z);
        if (this.mDisplayConfig.HAS_STROKE) {
            this.mDisplayConfig.applyPaintConfig(baseDanmaku, paint, false);
        }
    }

    private void calcPaintWH(BaseDanmaku baseDanmaku, TextPaint textPaint, boolean z) {
        this.sStuffer.measure(baseDanmaku, textPaint, z);
        setDanmakuPaintWidthAndHeight(baseDanmaku, baseDanmaku.paintWidth, baseDanmaku.paintHeight);
    }

    private void setDanmakuPaintWidthAndHeight(BaseDanmaku baseDanmaku, float f, float f2) {
        float f3 = f + ((float) (baseDanmaku.padding * 2));
        float f4 = f2 + ((float) (baseDanmaku.padding * 2));
        if (baseDanmaku.borderColor != 0) {
            DisplayerConfig displayerConfig = this.mDisplayConfig;
            float f5 = (float) 8;
            f3 += f5;
            f4 += f5;
        }
        baseDanmaku.paintWidth = f3 + getStrokeWidth();
        baseDanmaku.paintHeight = f4;
    }

    public void clearTextHeightCache() {
        this.sStuffer.clearCaches();
        this.mDisplayConfig.clearTextHeightCache();
    }

    public float getScaledDensity() {
        return this.scaledDensity;
    }

    public void resetSlopPixel(float f) {
        float max = Math.max(f, ((float) getWidth()) / 682.0f) * 25.0f;
        this.mSlopPixel = (int) max;
        if (f > 1.0f) {
            this.mSlopPixel = (int) (max * f);
        }
    }

    public int getSlopPixel() {
        return this.mSlopPixel;
    }

    public void setDensities(float f, int i, float f2) {
        this.density = f;
        this.densityDpi = i;
        this.scaledDensity = f2;
    }

    public void setSize(int i, int i2) {
        this.width = i;
        this.height = i2;
        double d = (double) (((float) i) / 2.0f);
        double tan = Math.tan(0.4799655442984406d);
        Double.isNaN(d);
        this.locationZ = (float) (d / tan);
    }

    public void setDanmakuStyle(int i, float[] fArr) {
        if (i != -1) {
            if (i == 0) {
                DisplayerConfig displayerConfig = this.mDisplayConfig;
                displayerConfig.CONFIG_HAS_SHADOW = false;
                displayerConfig.CONFIG_HAS_STROKE = false;
                displayerConfig.CONFIG_HAS_PROJECTION = false;
                return;
            } else if (i == 1) {
                DisplayerConfig displayerConfig2 = this.mDisplayConfig;
                displayerConfig2.CONFIG_HAS_SHADOW = true;
                displayerConfig2.CONFIG_HAS_STROKE = false;
                displayerConfig2.CONFIG_HAS_PROJECTION = false;
                setShadowRadius(fArr[0]);
                return;
            } else if (i != 2) {
                if (i == 3) {
                    DisplayerConfig displayerConfig3 = this.mDisplayConfig;
                    displayerConfig3.CONFIG_HAS_SHADOW = false;
                    displayerConfig3.CONFIG_HAS_STROKE = false;
                    displayerConfig3.CONFIG_HAS_PROJECTION = true;
                    setProjectionConfig(fArr[0], fArr[1], (int) fArr[2]);
                    return;
                }
                return;
            }
        }
        DisplayerConfig displayerConfig4 = this.mDisplayConfig;
        displayerConfig4.CONFIG_HAS_SHADOW = false;
        displayerConfig4.CONFIG_HAS_STROKE = true;
        displayerConfig4.CONFIG_HAS_PROJECTION = false;
        setPaintStorkeWidth(fArr[0]);
    }

    public void setExtraData(Canvas canvas2) {
        update(canvas2);
    }

    public Canvas getExtraData() {
        return this.canvas;
    }

    public float getStrokeWidth() {
        return this.mDisplayConfig.getStrokeWidth();
    }

    public void setHardwareAccelerated(boolean z) {
        this.mIsHardwareAccelerated = z;
    }

    public boolean isHardwareAccelerated() {
        return this.mIsHardwareAccelerated;
    }

    public int getMaximumCacheWidth() {
        return this.mMaximumBitmapWidth;
    }

    public int getMaximumCacheHeight() {
        return this.mMaximumBitmapHeight;
    }
}
