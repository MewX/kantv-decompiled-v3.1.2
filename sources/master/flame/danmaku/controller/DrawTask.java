package master.flame.danmaku.controller;

import android.graphics.Canvas;
import master.flame.danmaku.controller.IDrawTask.TaskListener;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.DefaultConsumer;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.DanmakuContext.ConfigChangedCallback;
import master.flame.danmaku.danmaku.model.android.DanmakuContext.DanmakuConfigTag;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser.Listener;
import master.flame.danmaku.danmaku.renderer.IRenderer;
import master.flame.danmaku.danmaku.renderer.IRenderer.OnDanmakuShownListener;
import master.flame.danmaku.danmaku.renderer.IRenderer.RenderingState;
import master.flame.danmaku.danmaku.renderer.android.DanmakuRenderer;
import master.flame.danmaku.danmaku.util.SystemClock;

public class DrawTask implements IDrawTask {
    protected boolean clearRetainerFlag;
    protected IDanmakus danmakuList;
    private IDanmakus danmakus = new Danmakus(4);
    private ConfigChangedCallback mConfigChangedCallback = new ConfigChangedCallback() {
        public boolean onDanmakuConfigChanged(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object... objArr) {
            return DrawTask.this.onDanmakuConfigChanged(danmakuContext, danmakuConfigTag, objArr);
        }
    };
    protected final DanmakuContext mContext;
    protected final AbsDisplayer mDisp;
    private boolean mIsHidden;
    private long mLastBeginMills;
    private BaseDanmaku mLastDanmaku;
    private long mLastEndMills;
    private Danmakus mLiveDanmakus = new Danmakus(4);
    protected BaseDanmakuParser mParser;
    protected int mPlayState;
    protected boolean mReadyState;
    final IRenderer mRenderer;
    private final RenderingState mRenderingState = new RenderingState();
    private boolean mRequestRender;
    private IDanmakus mRunningDanmakus;
    private long mStartRenderTime = 0;
    TaskListener mTaskListener;
    DanmakuTimer mTimer;

    /* access modifiers changed from: protected */
    public void onDanmakuRemoved(BaseDanmaku baseDanmaku) {
    }

    public DrawTask(DanmakuTimer danmakuTimer, DanmakuContext danmakuContext, TaskListener taskListener) {
        if (danmakuContext != null) {
            this.mContext = danmakuContext;
            this.mDisp = danmakuContext.getDisplayer();
            this.mTaskListener = taskListener;
            this.mRenderer = new DanmakuRenderer(danmakuContext);
            this.mRenderer.setOnDanmakuShownListener(new OnDanmakuShownListener() {
                public void onDanmakuShown(BaseDanmaku baseDanmaku) {
                    if (DrawTask.this.mTaskListener != null) {
                        DrawTask.this.mTaskListener.onDanmakuShown(baseDanmaku);
                    }
                }
            });
            this.mRenderer.setVerifierEnabled(this.mContext.isPreventOverlappingEnabled() || this.mContext.isMaxLinesLimited());
            initTimer(danmakuTimer);
            Boolean valueOf = Boolean.valueOf(this.mContext.isDuplicateMergingEnabled());
            if (valueOf != null) {
                boolean booleanValue = valueOf.booleanValue();
                String str = DanmakuFilters.TAG_DUPLICATE_FILTER;
                if (booleanValue) {
                    this.mContext.mDanmakuFilters.registerFilter(str);
                } else {
                    this.mContext.mDanmakuFilters.unregisterFilter(str);
                }
            }
        } else {
            throw new IllegalArgumentException("context is null");
        }
    }

    /* access modifiers changed from: protected */
    public void initTimer(DanmakuTimer danmakuTimer) {
        this.mTimer = danmakuTimer;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0080, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void addDanmaku(master.flame.danmaku.danmaku.model.BaseDanmaku r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r6.danmakuList     // Catch:{ all -> 0x0084 }
            if (r0 != 0) goto L_0x0007
            monitor-exit(r6)
            return
        L_0x0007:
            boolean r0 = r7.isLive     // Catch:{ all -> 0x0084 }
            if (r0 == 0) goto L_0x0015
            master.flame.danmaku.danmaku.model.android.Danmakus r0 = r6.mLiveDanmakus     // Catch:{ all -> 0x0084 }
            r0.addItem(r7)     // Catch:{ all -> 0x0084 }
            r0 = 10
            r6.removeUnusedLiveDanmakusIn(r0)     // Catch:{ all -> 0x0084 }
        L_0x0015:
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r6.danmakuList     // Catch:{ all -> 0x0084 }
            int r0 = r0.size()     // Catch:{ all -> 0x0084 }
            r7.index = r0     // Catch:{ all -> 0x0084 }
            r0 = 1
            long r1 = r6.mLastBeginMills     // Catch:{ all -> 0x0084 }
            long r3 = r7.getActualTime()     // Catch:{ all -> 0x0084 }
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 > 0) goto L_0x0041
            long r1 = r7.getActualTime()     // Catch:{ all -> 0x0084 }
            long r3 = r6.mLastEndMills     // Catch:{ all -> 0x0084 }
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 > 0) goto L_0x0041
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r6.danmakus     // Catch:{ all -> 0x0084 }
            monitor-enter(r0)     // Catch:{ all -> 0x0084 }
            master.flame.danmaku.danmaku.model.IDanmakus r1 = r6.danmakus     // Catch:{ all -> 0x003e }
            boolean r1 = r1.addItem(r7)     // Catch:{ all -> 0x003e }
            monitor-exit(r0)     // Catch:{ all -> 0x003e }
            r0 = r1
            goto L_0x0046
        L_0x003e:
            r7 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003e }
            throw r7     // Catch:{ all -> 0x0084 }
        L_0x0041:
            boolean r1 = r7.isLive     // Catch:{ all -> 0x0084 }
            if (r1 == 0) goto L_0x0046
            r0 = 0
        L_0x0046:
            master.flame.danmaku.danmaku.model.IDanmakus r1 = r6.danmakuList     // Catch:{ all -> 0x0084 }
            monitor-enter(r1)     // Catch:{ all -> 0x0084 }
            master.flame.danmaku.danmaku.model.IDanmakus r2 = r6.danmakuList     // Catch:{ all -> 0x0081 }
            boolean r2 = r2.addItem(r7)     // Catch:{ all -> 0x0081 }
            monitor-exit(r1)     // Catch:{ all -> 0x0081 }
            if (r0 == 0) goto L_0x0054
            if (r2 != 0) goto L_0x005a
        L_0x0054:
            r0 = 0
            r6.mLastEndMills = r0     // Catch:{ all -> 0x0084 }
            r6.mLastBeginMills = r0     // Catch:{ all -> 0x0084 }
        L_0x005a:
            if (r2 == 0) goto L_0x0065
            master.flame.danmaku.controller.IDrawTask$TaskListener r0 = r6.mTaskListener     // Catch:{ all -> 0x0084 }
            if (r0 == 0) goto L_0x0065
            master.flame.danmaku.controller.IDrawTask$TaskListener r0 = r6.mTaskListener     // Catch:{ all -> 0x0084 }
            r0.onDanmakuAdd(r7)     // Catch:{ all -> 0x0084 }
        L_0x0065:
            master.flame.danmaku.danmaku.model.BaseDanmaku r0 = r6.mLastDanmaku     // Catch:{ all -> 0x0084 }
            if (r0 == 0) goto L_0x007d
            if (r7 == 0) goto L_0x007f
            master.flame.danmaku.danmaku.model.BaseDanmaku r0 = r6.mLastDanmaku     // Catch:{ all -> 0x0084 }
            if (r0 == 0) goto L_0x007f
            long r0 = r7.getActualTime()     // Catch:{ all -> 0x0084 }
            master.flame.danmaku.danmaku.model.BaseDanmaku r2 = r6.mLastDanmaku     // Catch:{ all -> 0x0084 }
            long r2 = r2.getActualTime()     // Catch:{ all -> 0x0084 }
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L_0x007f
        L_0x007d:
            r6.mLastDanmaku = r7     // Catch:{ all -> 0x0084 }
        L_0x007f:
            monitor-exit(r6)
            return
        L_0x0081:
            r7 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0081 }
            throw r7     // Catch:{ all -> 0x0084 }
        L_0x0084:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawTask.addDanmaku(master.flame.danmaku.danmaku.model.BaseDanmaku):void");
    }

    public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
        this.mContext.getDisplayer().getCacheStuffer().clearCache(baseDanmaku);
        baseDanmaku.requestFlags |= 2;
        if (z) {
            baseDanmaku.paintWidth = -1.0f;
            baseDanmaku.paintHeight = -1.0f;
            baseDanmaku.requestFlags |= 1;
            baseDanmaku.measureResetFlag++;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0042, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeAllDanmakus(boolean r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r7.danmakuList     // Catch:{ all -> 0x0043 }
            if (r0 == 0) goto L_0x0041
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r7.danmakuList     // Catch:{ all -> 0x0043 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0043 }
            if (r0 == 0) goto L_0x000e
            goto L_0x0041
        L_0x000e:
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r7.danmakuList     // Catch:{ all -> 0x0043 }
            monitor-enter(r0)     // Catch:{ all -> 0x0043 }
            if (r8 != 0) goto L_0x0036
            master.flame.danmaku.danmaku.model.DanmakuTimer r8 = r7.mTimer     // Catch:{ all -> 0x003e }
            long r1 = r8.currMillisecond     // Catch:{ all -> 0x003e }
            master.flame.danmaku.danmaku.model.android.DanmakuContext r8 = r7.mContext     // Catch:{ all -> 0x003e }
            master.flame.danmaku.danmaku.model.android.DanmakuFactory r8 = r8.mDanmakuFactory     // Catch:{ all -> 0x003e }
            long r3 = r8.MAX_DANMAKU_DURATION     // Catch:{ all -> 0x003e }
            long r1 = r1 - r3
            r3 = 100
            long r1 = r1 - r3
            master.flame.danmaku.danmaku.model.DanmakuTimer r8 = r7.mTimer     // Catch:{ all -> 0x003e }
            long r3 = r8.currMillisecond     // Catch:{ all -> 0x003e }
            master.flame.danmaku.danmaku.model.android.DanmakuContext r8 = r7.mContext     // Catch:{ all -> 0x003e }
            master.flame.danmaku.danmaku.model.android.DanmakuFactory r8 = r8.mDanmakuFactory     // Catch:{ all -> 0x003e }
            long r5 = r8.MAX_DANMAKU_DURATION     // Catch:{ all -> 0x003e }
            long r3 = r3 + r5
            master.flame.danmaku.danmaku.model.IDanmakus r8 = r7.danmakuList     // Catch:{ all -> 0x003e }
            master.flame.danmaku.danmaku.model.IDanmakus r8 = r8.subnew(r1, r3)     // Catch:{ all -> 0x003e }
            if (r8 == 0) goto L_0x0036
            r7.danmakus = r8     // Catch:{ all -> 0x003e }
        L_0x0036:
            master.flame.danmaku.danmaku.model.IDanmakus r8 = r7.danmakuList     // Catch:{ all -> 0x003e }
            r8.clear()     // Catch:{ all -> 0x003e }
            monitor-exit(r0)     // Catch:{ all -> 0x003e }
            monitor-exit(r7)
            return
        L_0x003e:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003e }
            throw r8     // Catch:{ all -> 0x0043 }
        L_0x0041:
            monitor-exit(r7)
            return
        L_0x0043:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawTask.removeAllDanmakus(boolean):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0022, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeAllLiveDanmakus() {
        /*
            r3 = this;
            monitor-enter(r3)
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r3.danmakus     // Catch:{ all -> 0x0023 }
            if (r0 == 0) goto L_0x0021
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r3.danmakus     // Catch:{ all -> 0x0023 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0023 }
            if (r0 == 0) goto L_0x000e
            goto L_0x0021
        L_0x000e:
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r3.danmakus     // Catch:{ all -> 0x0023 }
            monitor-enter(r0)     // Catch:{ all -> 0x0023 }
            master.flame.danmaku.danmaku.model.IDanmakus r1 = r3.danmakus     // Catch:{ all -> 0x001e }
            master.flame.danmaku.controller.DrawTask$3 r2 = new master.flame.danmaku.controller.DrawTask$3     // Catch:{ all -> 0x001e }
            r2.<init>()     // Catch:{ all -> 0x001e }
            r1.forEachSync(r2)     // Catch:{ all -> 0x001e }
            monitor-exit(r0)     // Catch:{ all -> 0x001e }
            monitor-exit(r3)
            return
        L_0x001e:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001e }
            throw r1     // Catch:{ all -> 0x0023 }
        L_0x0021:
            monitor-exit(r3)
            return
        L_0x0023:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawTask.removeAllLiveDanmakus():void");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0023, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeUnusedLiveDanmakusIn(final int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r2.danmakuList     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0022
            master.flame.danmaku.danmaku.model.IDanmakus r0 = r2.danmakuList     // Catch:{ all -> 0x0024 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0024 }
            if (r0 != 0) goto L_0x0022
            master.flame.danmaku.danmaku.model.android.Danmakus r0 = r2.mLiveDanmakus     // Catch:{ all -> 0x0024 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0016
            goto L_0x0022
        L_0x0016:
            master.flame.danmaku.danmaku.model.android.Danmakus r0 = r2.mLiveDanmakus     // Catch:{ all -> 0x0024 }
            master.flame.danmaku.controller.DrawTask$4 r1 = new master.flame.danmaku.controller.DrawTask$4     // Catch:{ all -> 0x0024 }
            r1.<init>(r3)     // Catch:{ all -> 0x0024 }
            r0.forEachSync(r1)     // Catch:{ all -> 0x0024 }
            monitor-exit(r2)
            return
        L_0x0022:
            monitor-exit(r2)
            return
        L_0x0024:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawTask.removeUnusedLiveDanmakusIn(int):void");
    }

    public IDanmakus getVisibleDanmakusOnTime(long j) {
        IDanmakus iDanmakus;
        long j2 = (j - this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) - 100;
        long j3 = j + this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 3) {
                iDanmakus = null;
                break;
            }
            try {
                iDanmakus = this.danmakuList.subnew(j2, j3);
                break;
            } catch (Exception unused) {
                i = i2;
            }
        }
        final Danmakus danmakus2 = new Danmakus();
        if (iDanmakus != null && !iDanmakus.isEmpty()) {
            iDanmakus.forEachSync(new DefaultConsumer<BaseDanmaku>() {
                public int accept(BaseDanmaku baseDanmaku) {
                    if (baseDanmaku.isShown() && !baseDanmaku.isOutside()) {
                        danmakus2.addItem(baseDanmaku);
                    }
                    return 0;
                }
            });
        }
        return danmakus2;
    }

    public synchronized RenderingState draw(AbsDisplayer absDisplayer) {
        return drawDanmakus(absDisplayer, this.mTimer);
    }

    public void reset() {
        if (this.danmakus != null) {
            this.danmakus = new Danmakus();
        }
        IRenderer iRenderer = this.mRenderer;
        if (iRenderer != null) {
            iRenderer.clear();
        }
    }

    public void seek(long j) {
        reset();
        this.mContext.mGlobalFlagValues.updateVisibleFlag();
        this.mContext.mGlobalFlagValues.updateFirstShownFlag();
        this.mContext.mGlobalFlagValues.updateSyncOffsetTimeFlag();
        this.mContext.mGlobalFlagValues.updatePrepareFlag();
        this.mRunningDanmakus = new Danmakus(4);
        if (j < 1000) {
            j = 0;
        }
        this.mStartRenderTime = j;
        this.mRenderingState.reset();
        this.mRenderingState.endTime = this.mStartRenderTime;
        this.mLastEndMills = 0;
        this.mLastBeginMills = 0;
        IDanmakus iDanmakus = this.danmakuList;
        if (iDanmakus != null) {
            BaseDanmaku last = iDanmakus.last();
            if (last != null && !last.isTimeOut()) {
                this.mLastDanmaku = last;
            }
        }
    }

    public void clearDanmakusOnScreen(long j) {
        reset();
        this.mContext.mGlobalFlagValues.updateVisibleFlag();
        this.mContext.mGlobalFlagValues.updateFirstShownFlag();
        this.mStartRenderTime = j;
    }

    public void start() {
        this.mContext.registerConfigChangedCallback(this.mConfigChangedCallback);
    }

    public void quit() {
        this.mContext.unregisterAllConfigChangedCallbacks();
        IRenderer iRenderer = this.mRenderer;
        if (iRenderer != null) {
            iRenderer.release();
        }
    }

    public void prepare() {
        BaseDanmakuParser baseDanmakuParser = this.mParser;
        if (baseDanmakuParser != null) {
            loadDanmakus(baseDanmakuParser);
            this.mLastEndMills = 0;
            this.mLastBeginMills = 0;
            TaskListener taskListener = this.mTaskListener;
            if (taskListener != null) {
                taskListener.ready();
                this.mReadyState = true;
            }
        }
    }

    public void onPlayStateChanged(int i) {
        this.mPlayState = i;
    }

    /* access modifiers changed from: protected */
    public void loadDanmakus(BaseDanmakuParser baseDanmakuParser) {
        this.danmakuList = baseDanmakuParser.setConfig(this.mContext).setDisplayer(this.mDisp).setTimer(this.mTimer).setListener(new Listener() {
            public void onDanmakuAdd(BaseDanmaku baseDanmaku) {
                if (DrawTask.this.mTaskListener != null) {
                    DrawTask.this.mTaskListener.onDanmakuAdd(baseDanmaku);
                }
            }
        }).getDanmakus();
        this.mContext.mGlobalFlagValues.resetAll();
        IDanmakus iDanmakus = this.danmakuList;
        if (iDanmakus != null) {
            this.mLastDanmaku = iDanmakus.last();
        }
    }

    public void setParser(BaseDanmakuParser baseDanmakuParser) {
        this.mParser = baseDanmakuParser;
        this.mReadyState = false;
    }

    /* access modifiers changed from: protected */
    public RenderingState drawDanmakus(AbsDisplayer absDisplayer, DanmakuTimer danmakuTimer) {
        long j;
        long j2;
        IDanmakus iDanmakus;
        IDanmakus iDanmakus2;
        DanmakuTimer danmakuTimer2 = danmakuTimer;
        if (this.clearRetainerFlag) {
            this.mRenderer.clearRetainer();
            this.clearRetainerFlag = false;
        }
        if (this.danmakuList == null) {
            return null;
        }
        DrawHelper.clearCanvas((Canvas) absDisplayer.getExtraData());
        if (this.mIsHidden && !this.mRequestRender) {
            return this.mRenderingState;
        }
        this.mRequestRender = false;
        RenderingState renderingState = this.mRenderingState;
        long j3 = (danmakuTimer2.currMillisecond - this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) - 100;
        long j4 = danmakuTimer2.currMillisecond + this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION;
        IDanmakus iDanmakus3 = this.danmakus;
        if (this.mLastBeginMills <= j3) {
            long j5 = danmakuTimer2.currMillisecond;
            long j6 = this.mLastEndMills;
            if (j5 <= j6) {
                iDanmakus = iDanmakus3;
                j = j6;
                j2 = this.mLastBeginMills;
                iDanmakus2 = this.mRunningDanmakus;
                beginTracing(renderingState, iDanmakus2, iDanmakus);
                if (iDanmakus2 != null && !iDanmakus2.isEmpty()) {
                    RenderingState renderingState2 = this.mRenderingState;
                    renderingState2.isRunningDanmakus = true;
                    this.mRenderer.draw(absDisplayer, iDanmakus2, 0, renderingState2);
                }
                this.mRenderingState.isRunningDanmakus = false;
                if (iDanmakus != null || iDanmakus.isEmpty()) {
                    renderingState.nothingRendered = true;
                    renderingState.beginTime = j2;
                    renderingState.endTime = j;
                    return renderingState;
                }
                this.mRenderer.draw(this.mDisp, iDanmakus, this.mStartRenderTime, renderingState);
                endTracing(renderingState);
                if (renderingState.nothingRendered) {
                    BaseDanmaku baseDanmaku = this.mLastDanmaku;
                    if (baseDanmaku != null && baseDanmaku.isTimeOut()) {
                        this.mLastDanmaku = null;
                        TaskListener taskListener = this.mTaskListener;
                        if (taskListener != null) {
                            taskListener.onDanmakusDrawingFinished();
                        }
                    }
                    if (renderingState.beginTime == -1) {
                        renderingState.beginTime = j2;
                    }
                    if (renderingState.endTime == -1) {
                        renderingState.endTime = j;
                    }
                }
                return renderingState;
            }
        }
        IDanmakus sub = this.danmakuList.sub(j3, j4);
        if (sub != null) {
            this.danmakus = sub;
        }
        this.mLastBeginMills = j3;
        this.mLastEndMills = j4;
        j2 = j3;
        j = j4;
        iDanmakus = sub;
        iDanmakus2 = this.mRunningDanmakus;
        beginTracing(renderingState, iDanmakus2, iDanmakus);
        RenderingState renderingState22 = this.mRenderingState;
        renderingState22.isRunningDanmakus = true;
        this.mRenderer.draw(absDisplayer, iDanmakus2, 0, renderingState22);
        this.mRenderingState.isRunningDanmakus = false;
        if (iDanmakus != null) {
        }
        renderingState.nothingRendered = true;
        renderingState.beginTime = j2;
        renderingState.endTime = j;
        return renderingState;
    }

    public void requestClear() {
        this.mLastEndMills = 0;
        this.mLastBeginMills = 0;
        this.mIsHidden = false;
    }

    public void requestClearRetainer() {
        this.clearRetainerFlag = true;
    }

    public void requestSync(long j, long j2, final long j3) {
        IDanmakus obtainRunningDanmakus = this.mRenderingState.obtainRunningDanmakus();
        this.mRunningDanmakus = obtainRunningDanmakus;
        obtainRunningDanmakus.forEachSync(new DefaultConsumer<BaseDanmaku>() {
            public int accept(BaseDanmaku baseDanmaku) {
                if (baseDanmaku.isOutside()) {
                    return 2;
                }
                baseDanmaku.setTimeOffset(j3 + baseDanmaku.timeOffset);
                if (baseDanmaku.timeOffset == 0) {
                    return 2;
                }
                return 0;
            }
        });
        this.mStartRenderTime = j2;
    }

    public boolean onDanmakuConfigChanged(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        boolean handleOnDanmakuConfigChanged = handleOnDanmakuConfigChanged(danmakuContext, danmakuConfigTag, objArr);
        TaskListener taskListener = this.mTaskListener;
        if (taskListener != null) {
            taskListener.onDanmakuConfigChanged();
        }
        return handleOnDanmakuConfigChanged;
    }

    /* access modifiers changed from: protected */
    public boolean handleOnDanmakuConfigChanged(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object[] objArr) {
        boolean z = false;
        if (danmakuConfigTag == null || DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN.equals(danmakuConfigTag)) {
            return true;
        }
        if (DanmakuConfigTag.DUPLICATE_MERGING_ENABLED.equals(danmakuConfigTag)) {
            Boolean bool = objArr[0];
            if (bool != null) {
                boolean booleanValue = bool.booleanValue();
                String str = DanmakuFilters.TAG_DUPLICATE_FILTER;
                if (booleanValue) {
                    this.mContext.mDanmakuFilters.registerFilter(str);
                    return true;
                }
                this.mContext.mDanmakuFilters.unregisterFilter(str);
                return true;
            }
        } else if (DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag) || DanmakuConfigTag.SCROLL_SPEED_FACTOR.equals(danmakuConfigTag) || DanmakuConfigTag.DANMAKU_MARGIN.equals(danmakuConfigTag)) {
            requestClearRetainer();
        } else if (DanmakuConfigTag.MAXIMUN_LINES.equals(danmakuConfigTag) || DanmakuConfigTag.OVERLAPPING_ENABLE.equals(danmakuConfigTag)) {
            IRenderer iRenderer = this.mRenderer;
            if (iRenderer == null) {
                return true;
            }
            if (this.mContext.isPreventOverlappingEnabled() || this.mContext.isMaxLinesLimited()) {
                z = true;
            }
            iRenderer.setVerifierEnabled(z);
            return true;
        } else if (DanmakuConfigTag.ALIGN_BOTTOM.equals(danmakuConfigTag)) {
            Boolean bool2 = objArr[0];
            if (bool2 != null) {
                IRenderer iRenderer2 = this.mRenderer;
                if (iRenderer2 == null) {
                    return true;
                }
                iRenderer2.alignBottom(bool2.booleanValue());
                return true;
            }
        }
        return false;
    }

    public void requestHide() {
        this.mIsHidden = true;
    }

    public void requestRender() {
        this.mRequestRender = true;
    }

    private void beginTracing(RenderingState renderingState, IDanmakus iDanmakus, IDanmakus iDanmakus2) {
        renderingState.reset();
        renderingState.timer.update(SystemClock.uptimeMillis());
        int i = 0;
        renderingState.indexInScreen = 0;
        int size = iDanmakus != null ? iDanmakus.size() : 0;
        if (iDanmakus2 != null) {
            i = iDanmakus2.size();
        }
        renderingState.totalSizeInScreen = size + i;
    }

    private void endTracing(RenderingState renderingState) {
        renderingState.nothingRendered = renderingState.totalDanmakuCount == 0;
        long j = -1;
        if (renderingState.nothingRendered) {
            renderingState.beginTime = -1;
        }
        BaseDanmaku baseDanmaku = renderingState.lastDanmaku;
        renderingState.lastDanmaku = null;
        if (baseDanmaku != null) {
            j = baseDanmaku.getActualTime();
        }
        renderingState.endTime = j;
        renderingState.consumingTime = renderingState.timer.update(SystemClock.uptimeMillis());
    }
}
