package master.flame.danmaku.danmaku.model.android;

import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.Duration;
import master.flame.danmaku.danmaku.model.FBDanmaku;
import master.flame.danmaku.danmaku.model.FTDanmaku;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.L2RDanmaku;
import master.flame.danmaku.danmaku.model.R2LDanmaku;
import master.flame.danmaku.danmaku.model.SpecialDanmaku;
import master.flame.danmaku.danmaku.model.SpecialDanmaku.ScaleFactor;

public class DanmakuFactory {
    public static final float BILI_PLAYER_HEIGHT = 438.0f;
    public static final float BILI_PLAYER_WIDTH = 682.0f;
    public static final long COMMON_DANMAKU_DURATION = 3800;
    public static final int DANMAKU_MEDIUM_TEXTSIZE = 25;
    public static final long MAX_DANMAKU_DURATION_HIGH_DENSITY = 9000;
    public static final long MIN_DANMAKU_DURATION = 4000;
    public static final float OLD_BILI_PLAYER_HEIGHT = 385.0f;
    public static final float OLD_BILI_PLAYER_WIDTH = 539.0f;
    public int CURRENT_DISP_HEIGHT = 0;
    private float CURRENT_DISP_SIZE_FACTOR = 1.0f;
    public int CURRENT_DISP_WIDTH = 0;
    public long MAX_DANMAKU_DURATION = MIN_DANMAKU_DURATION;
    public Duration MAX_Duration_Fix_Danmaku;
    public Duration MAX_Duration_Scroll_Danmaku;
    public Duration MAX_Duration_Special_Danmaku;
    public long REAL_DANMAKU_DURATION = COMMON_DANMAKU_DURATION;
    private ScaleFactor mScaleFactor = null;
    private DanmakuContext sLastConfig;
    public IDisplayer sLastDisp;

    public static DanmakuFactory create() {
        return new DanmakuFactory();
    }

    protected DanmakuFactory() {
    }

    public void resetDurationsData() {
        this.sLastDisp = null;
        this.CURRENT_DISP_HEIGHT = 0;
        this.CURRENT_DISP_WIDTH = 0;
        this.MAX_Duration_Scroll_Danmaku = null;
        this.MAX_Duration_Fix_Danmaku = null;
        this.MAX_Duration_Special_Danmaku = null;
        this.MAX_DANMAKU_DURATION = MIN_DANMAKU_DURATION;
    }

    public void notifyDispSizeChanged(DanmakuContext danmakuContext) {
        this.sLastConfig = danmakuContext;
        this.sLastDisp = danmakuContext.getDisplayer();
        createDanmaku(1, danmakuContext);
    }

    public BaseDanmaku createDanmaku(int i) {
        return createDanmaku(i, this.sLastConfig);
    }

    public BaseDanmaku createDanmaku(int i, DanmakuContext danmakuContext) {
        if (danmakuContext == null) {
            return null;
        }
        this.sLastConfig = danmakuContext;
        this.sLastDisp = danmakuContext.getDisplayer();
        return createDanmaku(i, this.sLastDisp.getWidth(), this.sLastDisp.getHeight(), this.CURRENT_DISP_SIZE_FACTOR, danmakuContext.scrollSpeedFactor);
    }

    public BaseDanmaku createDanmaku(int i, IDisplayer iDisplayer, float f, float f2) {
        if (iDisplayer == null) {
            return null;
        }
        this.sLastDisp = iDisplayer;
        return createDanmaku(i, iDisplayer.getWidth(), iDisplayer.getHeight(), f, f2);
    }

    public BaseDanmaku createDanmaku(int i, int i2, int i3, float f, float f2) {
        return createDanmaku(i, (float) i2, (float) i3, f, f2);
    }

    public BaseDanmaku createDanmaku(int i, float f, float f2, float f3, float f4) {
        float f5;
        int i2 = this.CURRENT_DISP_WIDTH;
        int i3 = this.CURRENT_DISP_HEIGHT;
        boolean updateViewportState = updateViewportState(f, f2, f3);
        Duration duration = this.MAX_Duration_Scroll_Danmaku;
        if (duration == null) {
            this.MAX_Duration_Scroll_Danmaku = new Duration(this.REAL_DANMAKU_DURATION);
            this.MAX_Duration_Scroll_Danmaku.setFactor(f4);
        } else if (updateViewportState) {
            duration.setValue(this.REAL_DANMAKU_DURATION);
        }
        if (this.MAX_Duration_Fix_Danmaku == null) {
            this.MAX_Duration_Fix_Danmaku = new Duration(COMMON_DANMAKU_DURATION);
        }
        float f6 = 1.0f;
        if (!updateViewportState || f <= 0.0f) {
            f5 = 1.0f;
        } else {
            updateMaxDanmakuDuration();
            if (i2 <= 0 || i3 <= 0) {
                f5 = 1.0f;
            } else {
                f6 = f / ((float) i2);
                f5 = f2 / ((float) i3);
            }
            int i4 = (int) f;
            int i5 = (int) f2;
            updateScaleFactor(i4, i5, f6, f5);
            if (f2 > 0.0f) {
                updateSpecialDanmakusDate(i4, i5, f6, f5);
            }
        }
        if (i == 1) {
            return new R2LDanmaku(this.MAX_Duration_Scroll_Danmaku);
        }
        if (i == 4) {
            return new FBDanmaku(this.MAX_Duration_Fix_Danmaku);
        }
        if (i == 5) {
            return new FTDanmaku(this.MAX_Duration_Fix_Danmaku);
        }
        if (i == 6) {
            return new L2RDanmaku(this.MAX_Duration_Scroll_Danmaku);
        }
        if (i != 7) {
            return null;
        }
        SpecialDanmaku specialDanmaku = new SpecialDanmaku();
        updateScaleFactor((int) f, (int) f2, f6, f5);
        specialDanmaku.setScaleFactor(this.mScaleFactor);
        return specialDanmaku;
    }

    private void updateScaleFactor(int i, int i2, float f, float f2) {
        if (this.mScaleFactor == null) {
            this.mScaleFactor = new ScaleFactor(i, i2, f, f2);
        }
        this.mScaleFactor.update(i, i2, f, f2);
    }

    public boolean updateViewportState(float f, float f2, float f3) {
        int i = (int) f;
        if (this.CURRENT_DISP_WIDTH == i && this.CURRENT_DISP_HEIGHT == ((int) f2) && this.CURRENT_DISP_SIZE_FACTOR == f3) {
            return false;
        }
        this.REAL_DANMAKU_DURATION = (long) (((f * f3) / 682.0f) * 3800.0f);
        this.REAL_DANMAKU_DURATION = Math.min(MAX_DANMAKU_DURATION_HIGH_DENSITY, this.REAL_DANMAKU_DURATION);
        this.REAL_DANMAKU_DURATION = Math.max(MIN_DANMAKU_DURATION, this.REAL_DANMAKU_DURATION);
        this.CURRENT_DISP_WIDTH = i;
        this.CURRENT_DISP_HEIGHT = (int) f2;
        this.CURRENT_DISP_SIZE_FACTOR = f3;
        return true;
    }

    private synchronized void updateSpecialDanmakusDate(int i, int i2, float f, float f2) {
        if (this.mScaleFactor != null) {
            this.mScaleFactor.update(i, i2, f, f2);
        }
    }

    public void updateMaxDanmakuDuration() {
        Duration duration = this.MAX_Duration_Scroll_Danmaku;
        long j = 0;
        long j2 = duration == null ? 0 : duration.value;
        Duration duration2 = this.MAX_Duration_Fix_Danmaku;
        long j3 = duration2 == null ? 0 : duration2.value;
        Duration duration3 = this.MAX_Duration_Special_Danmaku;
        if (duration3 != null) {
            j = duration3.value;
        }
        this.MAX_DANMAKU_DURATION = Math.max(j2, j3);
        this.MAX_DANMAKU_DURATION = Math.max(this.MAX_DANMAKU_DURATION, j);
        this.MAX_DANMAKU_DURATION = Math.max(COMMON_DANMAKU_DURATION, this.MAX_DANMAKU_DURATION);
        this.MAX_DANMAKU_DURATION = Math.max(this.REAL_DANMAKU_DURATION, this.MAX_DANMAKU_DURATION);
    }

    public void updateDurationFactor(float f) {
        Duration duration = this.MAX_Duration_Scroll_Danmaku;
        if (duration != null && this.MAX_Duration_Fix_Danmaku != null) {
            duration.setFactor(f);
            updateMaxDanmakuDuration();
        }
    }

    public void fillTranslationData(BaseDanmaku baseDanmaku, float f, float f2, float f3, float f4, long j, long j2, float f5, float f6) {
        if (baseDanmaku.getType() == 7) {
            ((SpecialDanmaku) baseDanmaku).setTranslationData(f * f5, f2 * f6, f3 * f5, f4 * f6, j, j2);
            updateSpecicalDanmakuDuration(baseDanmaku);
        }
    }

    public static void fillLinePathData(BaseDanmaku baseDanmaku, float[][] fArr, float f, float f2) {
        if (baseDanmaku.getType() == 7 && fArr.length != 0 && fArr[0].length == 2) {
            for (int i = 0; i < fArr.length; i++) {
                float[] fArr2 = fArr[i];
                fArr2[0] = fArr2[0] * f;
                float[] fArr3 = fArr[i];
                fArr3[1] = fArr3[1] * f2;
            }
            ((SpecialDanmaku) baseDanmaku).setLinePathData(fArr);
        }
    }

    public void fillAlphaData(BaseDanmaku baseDanmaku, int i, int i2, long j) {
        if (baseDanmaku.getType() == 7) {
            ((SpecialDanmaku) baseDanmaku).setAlphaData(i, i2, j);
            updateSpecicalDanmakuDuration(baseDanmaku);
        }
    }

    private void updateSpecicalDanmakuDuration(BaseDanmaku baseDanmaku) {
        if (this.MAX_Duration_Special_Danmaku == null || (baseDanmaku.duration != null && baseDanmaku.duration.value > this.MAX_Duration_Special_Danmaku.value)) {
            this.MAX_Duration_Special_Danmaku = baseDanmaku.duration;
            updateMaxDanmakuDuration();
        }
    }
}
