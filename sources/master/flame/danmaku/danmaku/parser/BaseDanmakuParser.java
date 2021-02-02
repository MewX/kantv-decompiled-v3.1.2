package master.flame.danmaku.danmaku.parser;

import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;

public abstract class BaseDanmakuParser {
    protected DanmakuContext mContext;
    private IDanmakus mDanmakus;
    protected IDataSource<?> mDataSource;
    protected IDisplayer mDisp;
    protected float mDispDensity;
    protected int mDispHeight;
    protected int mDispWidth;
    protected Listener mListener;
    protected float mScaledDensity;
    protected DanmakuTimer mTimer;

    public interface Listener {
        void onDanmakuAdd(BaseDanmaku baseDanmaku);
    }

    /* access modifiers changed from: protected */
    public abstract IDanmakus parse();

    public BaseDanmakuParser setDisplayer(IDisplayer iDisplayer) {
        this.mDisp = iDisplayer;
        this.mDispWidth = iDisplayer.getWidth();
        this.mDispHeight = iDisplayer.getHeight();
        this.mDispDensity = iDisplayer.getDensity();
        this.mScaledDensity = iDisplayer.getScaledDensity();
        this.mContext.mDanmakuFactory.updateViewportState((float) this.mDispWidth, (float) this.mDispHeight, getViewportSizeFactor());
        this.mContext.mDanmakuFactory.updateMaxDanmakuDuration();
        return this;
    }

    public IDisplayer getDisplayer() {
        return this.mDisp;
    }

    public BaseDanmakuParser setListener(Listener listener) {
        this.mListener = listener;
        return this;
    }

    /* access modifiers changed from: protected */
    public float getViewportSizeFactor() {
        return 1.0f / (this.mDispDensity - 0.6f);
    }

    public BaseDanmakuParser load(IDataSource<?> iDataSource) {
        this.mDataSource = iDataSource;
        return this;
    }

    public BaseDanmakuParser setTimer(DanmakuTimer danmakuTimer) {
        this.mTimer = danmakuTimer;
        return this;
    }

    public DanmakuTimer getTimer() {
        return this.mTimer;
    }

    public IDanmakus getDanmakus() {
        IDanmakus iDanmakus = this.mDanmakus;
        if (iDanmakus != null) {
            return iDanmakus;
        }
        this.mContext.mDanmakuFactory.resetDurationsData();
        this.mDanmakus = parse();
        releaseDataSource();
        this.mContext.mDanmakuFactory.updateMaxDanmakuDuration();
        return this.mDanmakus;
    }

    /* access modifiers changed from: protected */
    public void releaseDataSource() {
        IDataSource<?> iDataSource = this.mDataSource;
        if (iDataSource != null) {
            iDataSource.release();
        }
        this.mDataSource = null;
    }

    public void release() {
        releaseDataSource();
    }

    public BaseDanmakuParser setConfig(DanmakuContext danmakuContext) {
        this.mContext = danmakuContext;
        return this;
    }
}
