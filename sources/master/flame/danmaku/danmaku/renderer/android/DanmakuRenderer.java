package master.flame.danmaku.danmaku.renderer.android;

import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.ICacheManager;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.DefaultConsumer;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.IDrawingCache;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.renderer.IRenderer.OnDanmakuShownListener;
import master.flame.danmaku.danmaku.renderer.IRenderer.RenderingState;
import master.flame.danmaku.danmaku.renderer.Renderer;
import master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer.Verifier;

public class DanmakuRenderer extends Renderer {
    /* access modifiers changed from: private */
    public ICacheManager mCacheManager;
    private Consumer mConsumer = new Consumer();
    /* access modifiers changed from: private */
    public final DanmakuContext mContext;
    /* access modifiers changed from: private */
    public final DanmakusRetainer mDanmakusRetainer;
    /* access modifiers changed from: private */
    public OnDanmakuShownListener mOnDanmakuShownListener;
    /* access modifiers changed from: private */
    public DanmakuTimer mStartTimer;
    /* access modifiers changed from: private */
    public Verifier mVerifier;
    private final Verifier verifier = new Verifier() {
        public boolean skipLayout(BaseDanmaku baseDanmaku, float f, int i, boolean z) {
            if (baseDanmaku.priority == 0) {
                if (DanmakuRenderer.this.mContext.mDanmakuFilters.filterSecondary(baseDanmaku, i, 0, DanmakuRenderer.this.mStartTimer, z, DanmakuRenderer.this.mContext)) {
                    baseDanmaku.setVisibility(false);
                    return true;
                }
            }
            return false;
        }
    };

    private class Consumer extends DefaultConsumer<BaseDanmaku> {
        public IDisplayer disp;
        private BaseDanmaku lastItem;
        public RenderingState renderingState;
        public long startRenderTime;

        private Consumer() {
        }

        public int accept(BaseDanmaku baseDanmaku) {
            this.lastItem = baseDanmaku;
            int i = 2;
            if (baseDanmaku.isTimeOut()) {
                this.disp.recycle(baseDanmaku);
                if (!this.renderingState.isRunningDanmakus) {
                    i = 0;
                }
                return i;
            } else if (!this.renderingState.isRunningDanmakus && baseDanmaku.isOffset()) {
                return 0;
            } else {
                if (!baseDanmaku.hasPassedFilter()) {
                    DanmakuRenderer.this.mContext.mDanmakuFilters.filter(baseDanmaku, this.renderingState.indexInScreen, this.renderingState.totalSizeInScreen, this.renderingState.timer, false, DanmakuRenderer.this.mContext);
                }
                if (baseDanmaku.getActualTime() >= this.startRenderTime && (baseDanmaku.priority != 0 || !baseDanmaku.isFiltered())) {
                    if (baseDanmaku.isLate()) {
                        IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
                        if (DanmakuRenderer.this.mCacheManager != null && (drawingCache == null || drawingCache.get() == null)) {
                            DanmakuRenderer.this.mCacheManager.addDanmaku(baseDanmaku);
                        }
                        return 1;
                    }
                    if (baseDanmaku.getType() == 1) {
                        this.renderingState.indexInScreen++;
                    }
                    if (!baseDanmaku.isMeasured()) {
                        baseDanmaku.measure(this.disp, false);
                    }
                    if (!baseDanmaku.isPrepared()) {
                        baseDanmaku.prepare(this.disp, false);
                    }
                    DanmakuRenderer.this.mDanmakusRetainer.fix(baseDanmaku, this.disp, DanmakuRenderer.this.mVerifier);
                    if (!baseDanmaku.isShown() || (baseDanmaku.lines == null && baseDanmaku.getBottom() > ((float) this.disp.getHeight()))) {
                        return 0;
                    }
                    int draw = baseDanmaku.draw(this.disp);
                    if (draw == 1) {
                        this.renderingState.cacheHitCount++;
                    } else if (draw == 2) {
                        this.renderingState.cacheMissCount++;
                        if (DanmakuRenderer.this.mCacheManager != null) {
                            DanmakuRenderer.this.mCacheManager.addDanmaku(baseDanmaku);
                        }
                    }
                    this.renderingState.addCount(baseDanmaku.getType(), 1);
                    this.renderingState.addTotalCount(1);
                    this.renderingState.appendToRunningDanmakus(baseDanmaku);
                    if (!(DanmakuRenderer.this.mOnDanmakuShownListener == null || baseDanmaku.firstShownFlag == DanmakuRenderer.this.mContext.mGlobalFlagValues.FIRST_SHOWN_RESET_FLAG)) {
                        baseDanmaku.firstShownFlag = DanmakuRenderer.this.mContext.mGlobalFlagValues.FIRST_SHOWN_RESET_FLAG;
                        DanmakuRenderer.this.mOnDanmakuShownListener.onDanmakuShown(baseDanmaku);
                    }
                }
                return 0;
            }
        }

        public void after() {
            this.renderingState.lastDanmaku = this.lastItem;
            super.after();
        }
    }

    public DanmakuRenderer(DanmakuContext danmakuContext) {
        this.mContext = danmakuContext;
        this.mDanmakusRetainer = new DanmakusRetainer(danmakuContext.isAlignBottom());
    }

    public void clear() {
        clearRetainer();
        this.mContext.mDanmakuFilters.clear();
    }

    public void clearRetainer() {
        this.mDanmakusRetainer.clear();
    }

    public void release() {
        this.mDanmakusRetainer.release();
        this.mContext.mDanmakuFilters.clear();
    }

    public void setVerifierEnabled(boolean z) {
        this.mVerifier = z ? this.verifier : null;
    }

    public void draw(IDisplayer iDisplayer, IDanmakus iDanmakus, long j, RenderingState renderingState) {
        this.mStartTimer = renderingState.timer;
        Consumer consumer = this.mConsumer;
        consumer.disp = iDisplayer;
        consumer.renderingState = renderingState;
        consumer.startRenderTime = j;
        iDanmakus.forEachSync(consumer);
    }

    public void setCacheManager(ICacheManager iCacheManager) {
        this.mCacheManager = iCacheManager;
    }

    public void setOnDanmakuShownListener(OnDanmakuShownListener onDanmakuShownListener) {
        this.mOnDanmakuShownListener = onDanmakuShownListener;
    }

    public void removeOnDanmakuShownListener() {
        this.mOnDanmakuShownListener = null;
    }

    public void alignBottom(boolean z) {
        DanmakusRetainer danmakusRetainer = this.mDanmakusRetainer;
        if (danmakusRetainer != null) {
            danmakusRetainer.alignBottom(z);
        }
    }
}
