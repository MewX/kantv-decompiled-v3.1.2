package master.flame.danmaku.danmaku.renderer;

import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.ICacheManager;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.android.Danmakus;

public interface IRenderer {
    public static final int CACHE_RENDERING = 1;
    public static final int NOTHING_RENDERING = 0;
    public static final int TEXT_RENDERING = 2;

    public static class Area {
        private int mMaxHeight;
        private int mMaxWidth;
        public final float[] mRefreshRect = new float[4];

        public void setEdge(int i, int i2) {
            this.mMaxWidth = i;
            this.mMaxHeight = i2;
        }

        public void reset() {
            set((float) this.mMaxWidth, (float) this.mMaxHeight, 0.0f, 0.0f);
        }

        public void resizeToMax() {
            set(0.0f, 0.0f, (float) this.mMaxWidth, (float) this.mMaxHeight);
        }

        public void set(float f, float f2, float f3, float f4) {
            float[] fArr = this.mRefreshRect;
            fArr[0] = f;
            fArr[1] = f2;
            fArr[2] = f3;
            fArr[3] = f4;
        }
    }

    public interface OnDanmakuShownListener {
        void onDanmakuShown(BaseDanmaku baseDanmaku);
    }

    public static class RenderingState {
        public static final int UNKNOWN_TIME = -1;
        public long beginTime;
        public long cacheHitCount;
        public long cacheMissCount;
        public long consumingTime;
        public long endTime;
        public int fbDanmakuCount;
        public int ftDanmakuCount;
        public int indexInScreen;
        public boolean isRunningDanmakus;
        public int l2rDanmakuCount;
        public BaseDanmaku lastDanmaku;
        public int lastTotalDanmakuCount;
        private boolean mIsObtaining;
        public boolean nothingRendered;
        public int r2lDanmakuCount;
        private IDanmakus runningDanmakus = new Danmakus(4);
        public int specialDanmakuCount;
        public long sysTime;
        public DanmakuTimer timer = new DanmakuTimer();
        public int totalDanmakuCount;
        public int totalSizeInScreen;

        public int addTotalCount(int i) {
            this.totalDanmakuCount += i;
            return this.totalDanmakuCount;
        }

        public int addCount(int i, int i2) {
            if (i == 1) {
                this.r2lDanmakuCount += i2;
                return this.r2lDanmakuCount;
            } else if (i == 4) {
                this.fbDanmakuCount += i2;
                return this.fbDanmakuCount;
            } else if (i == 5) {
                this.ftDanmakuCount += i2;
                return this.ftDanmakuCount;
            } else if (i == 6) {
                this.l2rDanmakuCount += i2;
                return this.l2rDanmakuCount;
            } else if (i != 7) {
                return 0;
            } else {
                this.specialDanmakuCount += i2;
                return this.specialDanmakuCount;
            }
        }

        public void reset() {
            this.lastTotalDanmakuCount = this.totalDanmakuCount;
            this.totalDanmakuCount = 0;
            this.specialDanmakuCount = 0;
            this.fbDanmakuCount = 0;
            this.ftDanmakuCount = 0;
            this.l2rDanmakuCount = 0;
            this.r2lDanmakuCount = 0;
            this.consumingTime = 0;
            this.endTime = 0;
            this.beginTime = 0;
            this.sysTime = 0;
            this.nothingRendered = false;
            synchronized (this) {
                this.runningDanmakus.clear();
            }
        }

        public void set(RenderingState renderingState) {
            if (renderingState != null) {
                this.lastTotalDanmakuCount = renderingState.lastTotalDanmakuCount;
                this.r2lDanmakuCount = renderingState.r2lDanmakuCount;
                this.l2rDanmakuCount = renderingState.l2rDanmakuCount;
                this.ftDanmakuCount = renderingState.ftDanmakuCount;
                this.fbDanmakuCount = renderingState.fbDanmakuCount;
                this.specialDanmakuCount = renderingState.specialDanmakuCount;
                this.totalDanmakuCount = renderingState.totalDanmakuCount;
                this.consumingTime = renderingState.consumingTime;
                this.beginTime = renderingState.beginTime;
                this.endTime = renderingState.endTime;
                this.nothingRendered = renderingState.nothingRendered;
                this.sysTime = renderingState.sysTime;
                this.cacheHitCount = renderingState.cacheHitCount;
                this.cacheMissCount = renderingState.cacheMissCount;
            }
        }

        public void appendToRunningDanmakus(BaseDanmaku baseDanmaku) {
            if (!this.mIsObtaining) {
                this.runningDanmakus.addItem(baseDanmaku);
            }
        }

        public IDanmakus obtainRunningDanmakus() {
            IDanmakus iDanmakus;
            this.mIsObtaining = true;
            synchronized (this) {
                iDanmakus = this.runningDanmakus;
                this.runningDanmakus = new Danmakus(4);
            }
            this.mIsObtaining = false;
            return iDanmakus;
        }
    }

    void alignBottom(boolean z);

    void clear();

    void clearRetainer();

    void draw(IDisplayer iDisplayer, IDanmakus iDanmakus, long j, RenderingState renderingState);

    void release();

    void removeOnDanmakuShownListener();

    void setCacheManager(ICacheManager iCacheManager);

    void setOnDanmakuShownListener(OnDanmakuShownListener onDanmakuShownListener);

    void setVerifierEnabled(boolean z);
}
