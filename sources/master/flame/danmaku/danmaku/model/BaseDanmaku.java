package master.flame.danmaku.danmaku.model;

import android.util.SparseArray;

public abstract class BaseDanmaku {
    public static final String DANMAKU_BR_CHAR = "/n";
    public static final int FLAG_REQUEST_INVALIDATE = 2;
    public static final int FLAG_REQUEST_REMEASURE = 1;
    public static final int INVISIBLE = 0;
    public static final int TYPE_FIX_BOTTOM = 4;
    public static final int TYPE_FIX_TOP = 5;
    public static final int TYPE_MOVEABLE_XXX = 0;
    public static final int TYPE_SCROLL_LR = 6;
    public static final int TYPE_SCROLL_RL = 1;
    public static final int TYPE_SPECIAL = 7;
    public static final int VISIBLE = 1;
    protected int alpha = AlphaValue.MAX;
    public int borderColor = 0;
    public IDrawingCache<?> cache;
    public Duration duration;
    public int filterResetFlag = -1;
    public int firstShownFlag = -1;
    public GlobalFlagValues flags = null;
    public boolean forceBuildCacheInSameThread;
    public int index;
    public boolean isGuest;
    public boolean isLive;
    public String[] lines;
    public int mFilterParam = 0;
    private SparseArray<Object> mTags = new SparseArray<>();
    protected DanmakuTimer mTimer;
    public int measureResetFlag = 0;
    public Object obj;
    public int padding = 0;
    public float paintHeight = -1.0f;
    public float paintWidth = -1.0f;
    public int prepareResetFlag = -1;
    public byte priority = 0;
    public int requestFlags = 0;
    public float rotationY;
    public float rotationZ;
    public int syncTimeOffsetResetFlag = 0;
    public Object tag;
    public CharSequence text;
    public int textColor;
    public int textShadowColor;
    public float textSize = -1.0f;
    private long time;
    public long timeOffset;
    public int underlineColor = 0;
    public String userHash;
    public int userId = 0;
    public int visibility;
    private int visibleResetFlag = 0;

    public abstract float getBottom();

    public abstract float getLeft();

    public abstract float[] getRectAtTime(IDisplayer iDisplayer, long j);

    public abstract float getRight();

    public abstract float getTop();

    public abstract int getType();

    public abstract void layout(IDisplayer iDisplayer, float f, float f2);

    public long getDuration() {
        return this.duration.value;
    }

    public void setDuration(Duration duration2) {
        this.duration = duration2;
    }

    public int draw(IDisplayer iDisplayer) {
        return iDisplayer.draw(this);
    }

    public boolean isMeasured() {
        return this.paintWidth > -1.0f && this.paintHeight > -1.0f && this.measureResetFlag == this.flags.MEASURE_RESET_FLAG;
    }

    public void measure(IDisplayer iDisplayer, boolean z) {
        iDisplayer.measure(this, z);
        this.measureResetFlag = this.flags.MEASURE_RESET_FLAG;
    }

    public boolean isPrepared() {
        return this.prepareResetFlag == this.flags.PREPARE_RESET_FLAG;
    }

    public void prepare(IDisplayer iDisplayer, boolean z) {
        iDisplayer.prepare(this, z);
        this.prepareResetFlag = this.flags.PREPARE_RESET_FLAG;
    }

    public IDrawingCache<?> getDrawingCache() {
        return this.cache;
    }

    public boolean isShown() {
        return this.visibility == 1 && this.visibleResetFlag == this.flags.VISIBLE_RESET_FLAG;
    }

    public boolean isTimeOut() {
        DanmakuTimer danmakuTimer = this.mTimer;
        return danmakuTimer == null || isTimeOut(danmakuTimer.currMillisecond);
    }

    public boolean isTimeOut(long j) {
        return j - getActualTime() >= this.duration.value;
    }

    public boolean isOutside() {
        DanmakuTimer danmakuTimer = this.mTimer;
        return danmakuTimer == null || isOutside(danmakuTimer.currMillisecond);
    }

    public boolean isOutside(long j) {
        long actualTime = j - getActualTime();
        return actualTime <= 0 || actualTime >= this.duration.value;
    }

    public boolean isLate() {
        DanmakuTimer danmakuTimer = this.mTimer;
        return danmakuTimer == null || danmakuTimer.currMillisecond < getActualTime();
    }

    public boolean hasPassedFilter() {
        if (this.filterResetFlag == this.flags.FILTER_RESET_FLAG) {
            return true;
        }
        this.mFilterParam = 0;
        return false;
    }

    public boolean isFiltered() {
        return this.filterResetFlag == this.flags.FILTER_RESET_FLAG && this.mFilterParam != 0;
    }

    public boolean isFilteredBy(int i) {
        return this.filterResetFlag == this.flags.FILTER_RESET_FLAG && (this.mFilterParam & i) == i;
    }

    public void setVisibility(boolean z) {
        if (z) {
            this.visibleResetFlag = this.flags.VISIBLE_RESET_FLAG;
            this.visibility = 1;
            return;
        }
        this.visibility = 0;
    }

    public DanmakuTimer getTimer() {
        return this.mTimer;
    }

    public void setTimer(DanmakuTimer danmakuTimer) {
        this.mTimer = danmakuTimer;
    }

    public int getAlpha() {
        return this.alpha;
    }

    public void setTag(Object obj2) {
        this.tag = obj2;
    }

    public void setTag(int i, Object obj2) {
        this.mTags.put(i, obj2);
    }

    public Object getTag(int i) {
        SparseArray<Object> sparseArray = this.mTags;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public void setTimeOffset(long j) {
        this.timeOffset = j;
        this.syncTimeOffsetResetFlag = this.flags.SYNC_TIME_OFFSET_RESET_FLAG;
    }

    public void setTime(long j) {
        this.time = j;
        this.timeOffset = 0;
    }

    public long getTime() {
        return this.time;
    }

    public long getActualTime() {
        GlobalFlagValues globalFlagValues = this.flags;
        if (globalFlagValues != null && globalFlagValues.SYNC_TIME_OFFSET_RESET_FLAG == this.syncTimeOffsetResetFlag) {
            return this.time + this.timeOffset;
        }
        this.timeOffset = 0;
        return this.time;
    }

    public boolean isOffset() {
        GlobalFlagValues globalFlagValues = this.flags;
        boolean z = false;
        if (globalFlagValues == null || globalFlagValues.SYNC_TIME_OFFSET_RESET_FLAG != this.syncTimeOffsetResetFlag) {
            this.timeOffset = 0;
            return false;
        }
        if (this.timeOffset != 0) {
            z = true;
        }
        return z;
    }
}
