package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDrawingCache;
import master.flame.danmaku.danmaku.model.android.AndroidDisplayer.DisplayerConfig;

public abstract class BaseCacheStuffer {
    protected Proxy mProxy;

    public static abstract class Proxy {
        public abstract void prepareDrawing(BaseDanmaku baseDanmaku, boolean z);

        public abstract void releaseResource(BaseDanmaku baseDanmaku);
    }

    public void clearCache(BaseDanmaku baseDanmaku) {
    }

    public abstract void clearCaches();

    public abstract void drawDanmaku(BaseDanmaku baseDanmaku, Canvas canvas, float f, float f2, boolean z, DisplayerConfig displayerConfig);

    public abstract void measure(BaseDanmaku baseDanmaku, TextPaint textPaint, boolean z);

    public void prepare(BaseDanmaku baseDanmaku, boolean z) {
        Proxy proxy = this.mProxy;
        if (proxy != null) {
            proxy.prepareDrawing(baseDanmaku, z);
        }
    }

    public boolean drawCache(BaseDanmaku baseDanmaku, Canvas canvas, float f, float f2, Paint paint, TextPaint textPaint) {
        IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
        if (drawingCache != null) {
            DrawingCacheHolder drawingCacheHolder = (DrawingCacheHolder) drawingCache.get();
            if (drawingCacheHolder != null) {
                return drawingCacheHolder.draw(canvas, f, f2, paint);
            }
        }
        return false;
    }

    public void setProxy(Proxy proxy) {
        this.mProxy = proxy;
    }

    public void releaseResource(BaseDanmaku baseDanmaku) {
        Proxy proxy = this.mProxy;
        if (proxy != null) {
            proxy.releaseResource(baseDanmaku);
        }
    }
}
