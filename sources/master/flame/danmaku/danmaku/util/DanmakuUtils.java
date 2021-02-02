package master.flame.danmaku.danmaku.util;

import android.text.TextUtils;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.android.DrawingCache;
import master.flame.danmaku.danmaku.model.android.DrawingCacheHolder;

public class DanmakuUtils {
    public static int getCacheSize(int i, int i2, int i3) {
        return i * i2 * i3;
    }

    public static boolean willHitInDuration(IDisplayer iDisplayer, BaseDanmaku baseDanmaku, BaseDanmaku baseDanmaku2, long j, long j2) {
        int type = baseDanmaku.getType();
        if (type != baseDanmaku2.getType() || baseDanmaku.isOutside()) {
            return false;
        }
        long actualTime = baseDanmaku2.getActualTime() - baseDanmaku.getActualTime();
        boolean z = true;
        if (actualTime <= 0) {
            return true;
        }
        if (Math.abs(actualTime) >= j || baseDanmaku.isTimeOut() || baseDanmaku2.isTimeOut()) {
            return false;
        }
        if (type != 5 && type != 4 && !checkHitAtTime(iDisplayer, baseDanmaku, baseDanmaku2, j2) && !checkHitAtTime(iDisplayer, baseDanmaku, baseDanmaku2, baseDanmaku.getActualTime() + baseDanmaku.getDuration())) {
            z = false;
        }
        return z;
    }

    private static boolean checkHitAtTime(IDisplayer iDisplayer, BaseDanmaku baseDanmaku, BaseDanmaku baseDanmaku2, long j) {
        float[] rectAtTime = baseDanmaku.getRectAtTime(iDisplayer, j);
        float[] rectAtTime2 = baseDanmaku2.getRectAtTime(iDisplayer, j);
        if (rectAtTime == null || rectAtTime2 == null) {
            return false;
        }
        return checkHit(baseDanmaku.getType(), baseDanmaku2.getType(), rectAtTime, rectAtTime2);
    }

    private static boolean checkHit(int i, int i2, float[] fArr, float[] fArr2) {
        boolean z = false;
        if (i != i2) {
            return false;
        }
        if (i == 1) {
            if (fArr2[0] < fArr[2]) {
                z = true;
            }
            return z;
        }
        if (i == 6 && fArr2[2] > fArr[0]) {
            z = true;
        }
        return z;
    }

    public static DrawingCache buildDanmakuDrawingCache(BaseDanmaku baseDanmaku, IDisplayer iDisplayer, DrawingCache drawingCache, int i) {
        if (drawingCache == null) {
            drawingCache = new DrawingCache();
        }
        drawingCache.build((int) Math.ceil((double) baseDanmaku.paintWidth), (int) Math.ceil((double) baseDanmaku.paintHeight), iDisplayer.getDensityDpi(), false, i);
        DrawingCacheHolder drawingCacheHolder = drawingCache.get();
        if (drawingCacheHolder != null) {
            ((AbsDisplayer) iDisplayer).drawDanmaku(baseDanmaku, drawingCacheHolder.canvas, 0.0f, 0.0f, true);
            if (iDisplayer.isHardwareAccelerated()) {
                drawingCacheHolder.splitWith(iDisplayer.getWidth(), iDisplayer.getHeight(), iDisplayer.getMaximumCacheWidth(), iDisplayer.getMaximumCacheHeight());
            }
        }
        return drawingCache;
    }

    public static final boolean isDuplicate(BaseDanmaku baseDanmaku, BaseDanmaku baseDanmaku2) {
        if (baseDanmaku == baseDanmaku2) {
            return false;
        }
        if (baseDanmaku.text == baseDanmaku2.text) {
            return true;
        }
        return baseDanmaku.text != null && baseDanmaku.text.equals(baseDanmaku2.text);
    }

    public static final int compare(BaseDanmaku baseDanmaku, BaseDanmaku baseDanmaku2) {
        if (baseDanmaku == baseDanmaku2) {
            return 0;
        }
        int i = -1;
        if (baseDanmaku == null) {
            return -1;
        }
        if (baseDanmaku2 == null) {
            return 1;
        }
        long time = baseDanmaku.getTime() - baseDanmaku2.getTime();
        if (time > 0) {
            return 1;
        }
        if (time < 0) {
            return -1;
        }
        int i2 = baseDanmaku.index - baseDanmaku2.index;
        if (i2 == 0) {
            return baseDanmaku.hashCode() - baseDanmaku.hashCode();
        }
        if (i2 >= 0) {
            i = 1;
        }
        return i;
    }

    public static final boolean isOverSize(IDisplayer iDisplayer, BaseDanmaku baseDanmaku) {
        return iDisplayer.isHardwareAccelerated() && (baseDanmaku.paintWidth > ((float) iDisplayer.getMaximumCacheWidth()) || baseDanmaku.paintHeight > ((float) iDisplayer.getMaximumCacheHeight()));
    }

    public static void fillText(BaseDanmaku baseDanmaku, CharSequence charSequence) {
        baseDanmaku.text = charSequence;
        if (!TextUtils.isEmpty(charSequence)) {
            String charSequence2 = charSequence.toString();
            String str = BaseDanmaku.DANMAKU_BR_CHAR;
            if (charSequence2.contains(str)) {
                String[] split = String.valueOf(baseDanmaku.text).split(str, -1);
                if (split.length > 1) {
                    baseDanmaku.lines = split;
                }
            }
        }
    }
}
