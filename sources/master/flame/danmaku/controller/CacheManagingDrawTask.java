package master.flame.danmaku.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import master.flame.danmaku.controller.IDrawTask.TaskListener;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.ICacheManager;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.Consumer;
import master.flame.danmaku.danmaku.model.IDanmakus.DefaultConsumer;
import master.flame.danmaku.danmaku.model.IDrawingCache;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.DanmakuContext.DanmakuConfigTag;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.model.android.DrawingCache;
import master.flame.danmaku.danmaku.model.android.DrawingCachePoolManager;
import master.flame.danmaku.danmaku.model.objectpool.Pool;
import master.flame.danmaku.danmaku.model.objectpool.Pools;
import master.flame.danmaku.danmaku.renderer.IRenderer.RenderingState;
import master.flame.danmaku.danmaku.util.DanmakuUtils;
import tv.cjump.jni.NativeBitmapFactory;

public class CacheManagingDrawTask extends DrawTask {
    private static final int MAX_CACHE_SCREEN_SIZE = 3;
    /* access modifiers changed from: private */
    public CacheManager mCacheManager;
    /* access modifiers changed from: private */
    public DanmakuTimer mCacheTimer;
    /* access modifiers changed from: private */
    public final Object mDrawingNotify = new Object();
    /* access modifiers changed from: private */
    public int mMaxCacheSize = 2;
    private int mRemaininCacheCount;

    public class CacheManager implements ICacheManager {
        public static final byte RESULT_FAILED = 1;
        public static final byte RESULT_FAILED_OVERSIZE = 2;
        public static final byte RESULT_SUCCESS = 0;
        private static final String TAG = "CacheManager";
        Pool<DrawingCache> mCachePool = Pools.finitePool(this.mCachePoolManager, 800);
        DrawingCachePoolManager mCachePoolManager = new DrawingCachePoolManager();
        Danmakus mCaches = new Danmakus();
        /* access modifiers changed from: private */
        public boolean mEndFlag = false;
        private CacheHandler mHandler;
        /* access modifiers changed from: private */
        public int mMaxSize;
        /* access modifiers changed from: private */
        public int mRealSize = 0;
        /* access modifiers changed from: private */
        public int mScreenSize = 3;
        public HandlerThread mThread;

        public class CacheHandler extends Handler {
            public static final int ADD_DANMAKU = 2;
            public static final int BUILD_CACHES = 3;
            public static final int CLEAR_ALL_CACHES = 7;
            public static final int CLEAR_OUTSIDE_CACHES = 8;
            public static final int CLEAR_OUTSIDE_CACHES_AND_RESET = 9;
            public static final int CLEAR_TIMEOUT_CACHES = 4;
            public static final int DISABLE_CANCEL_FLAG = 18;
            public static final int DISPATCH_ACTIONS = 16;
            private static final int PREPARE = 1;
            public static final int QUIT = 6;
            public static final int REBUILD_CACHE = 17;
            public static final int SEEK = 5;
            /* access modifiers changed from: private */
            public boolean mCancelFlag;
            /* access modifiers changed from: private */
            public boolean mIsPlayerPause;
            /* access modifiers changed from: private */
            public boolean mPause;
            private boolean mSeekedFlag;

            public CacheHandler(Looper looper) {
                super(looper);
            }

            public void requestCancelCaching() {
                this.mCancelFlag = true;
            }

            public void handleMessage(Message message) {
                int i = message.what;
                switch (i) {
                    case 1:
                        CacheManager.this.evictAllNotInScreen();
                        for (int i2 = 0; i2 < 300; i2++) {
                            CacheManager.this.mCachePool.release(new DrawingCache());
                        }
                        break;
                    case 2:
                        addDanmakuAndBuildCache((BaseDanmaku) message.obj);
                        break;
                    case 3:
                        removeMessages(3);
                        boolean z = (CacheManagingDrawTask.this.mTaskListener != null && !CacheManagingDrawTask.this.mReadyState) || this.mSeekedFlag;
                        prepareCaches(z);
                        if (z) {
                            this.mSeekedFlag = false;
                        }
                        if (CacheManagingDrawTask.this.mTaskListener != null && !CacheManagingDrawTask.this.mReadyState) {
                            CacheManagingDrawTask.this.mTaskListener.ready();
                            CacheManagingDrawTask.this.mReadyState = true;
                            break;
                        }
                        break;
                    case 4:
                        CacheManager.this.clearTimeOutCaches();
                        break;
                    case 5:
                        Long l = (Long) message.obj;
                        if (l != null) {
                            long longValue = l.longValue();
                            long j = CacheManagingDrawTask.this.mCacheTimer.currMillisecond;
                            CacheManagingDrawTask.this.mCacheTimer.update(longValue);
                            this.mSeekedFlag = true;
                            long firstCacheTime = CacheManager.this.getFirstCacheTime();
                            if (longValue > j || firstCacheTime - longValue > CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) {
                                CacheManager.this.evictAllNotInScreen();
                            } else {
                                CacheManager.this.clearTimeOutCaches();
                            }
                            prepareCaches(true);
                            resume();
                            break;
                        }
                        break;
                    case 6:
                        removeCallbacksAndMessages(null);
                        this.mPause = true;
                        CacheManager.this.evictAll();
                        CacheManager.this.clearCachePool();
                        getLooper().quit();
                        break;
                    case 7:
                        CacheManager.this.evictAll();
                        CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond - CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION);
                        this.mSeekedFlag = true;
                        break;
                    case 8:
                        CacheManager.this.evictAllNotInScreen();
                        CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond);
                        break;
                    case 9:
                        CacheManager.this.evictAllNotInScreen();
                        CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond);
                        CacheManagingDrawTask.this.requestClear();
                        break;
                    default:
                        switch (i) {
                            case 16:
                                break;
                            case 17:
                                BaseDanmaku baseDanmaku = (BaseDanmaku) message.obj;
                                if (baseDanmaku != null) {
                                    IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
                                    if (((baseDanmaku.requestFlags & 1) != 0) || drawingCache == null || drawingCache.get() == null || drawingCache.hasReferences()) {
                                        if (!baseDanmaku.isLive) {
                                            if (drawingCache != null && drawingCache.hasReferences()) {
                                                drawingCache.destroy();
                                            }
                                            CacheManager.this.entryRemoved(true, baseDanmaku, null);
                                            addDanmakuAndBuildCache(baseDanmaku);
                                            break;
                                        } else {
                                            CacheManager.this.clearCache(baseDanmaku);
                                            createCache(baseDanmaku);
                                            break;
                                        }
                                    } else {
                                        baseDanmaku.cache = DanmakuUtils.buildDanmakuDrawingCache(baseDanmaku, CacheManagingDrawTask.this.mDisp, (DrawingCache) baseDanmaku.cache, CacheManagingDrawTask.this.mContext.cachingPolicy.bitsPerPixelOfCache);
                                        CacheManager.this.push(baseDanmaku, 0, true);
                                        return;
                                    }
                                }
                                break;
                            case 18:
                                this.mCancelFlag = false;
                                break;
                        }
                }
                long dispatchAction = dispatchAction();
                if (dispatchAction <= 0) {
                    dispatchAction = CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION / 2;
                }
                sendEmptyMessageDelayed(16, dispatchAction);
            }

            private long dispatchAction() {
                if (CacheManagingDrawTask.this.mCacheTimer.currMillisecond <= CacheManagingDrawTask.this.mTimer.currMillisecond - CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) {
                    if (CacheManagingDrawTask.this.mContext.cachingPolicy.periodOfRecycle != -1) {
                        CacheManager.this.evictAllNotInScreen();
                    }
                    CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond);
                    sendEmptyMessage(3);
                    return 0;
                }
                float poolPercent = CacheManager.this.getPoolPercent();
                BaseDanmaku first = CacheManager.this.mCaches.first();
                long actualTime = first != null ? first.getActualTime() - CacheManagingDrawTask.this.mTimer.currMillisecond : 0;
                long j = CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION * 2;
                if (poolPercent < 0.6f && actualTime > CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) {
                    CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond);
                    removeMessages(3);
                    sendEmptyMessage(3);
                    return 0;
                } else if (poolPercent > 0.4f && actualTime < (-j)) {
                    removeMessages(4);
                    sendEmptyMessage(4);
                    return 0;
                } else if (poolPercent >= 0.9f) {
                    return 0;
                } else {
                    long j2 = CacheManagingDrawTask.this.mCacheTimer.currMillisecond - CacheManagingDrawTask.this.mTimer.currMillisecond;
                    if (first != null && first.isTimeOut() && j2 < (-CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION)) {
                        CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond);
                        sendEmptyMessage(8);
                        sendEmptyMessage(3);
                        return 0;
                    } else if (j2 > j) {
                        return 0;
                    } else {
                        removeMessages(3);
                        sendEmptyMessage(3);
                        return 0;
                    }
                }
            }

            private void releaseDanmakuCache(BaseDanmaku baseDanmaku, DrawingCache drawingCache) {
                if (drawingCache == null) {
                    drawingCache = (DrawingCache) baseDanmaku.cache;
                }
                baseDanmaku.cache = null;
                if (drawingCache != null) {
                    drawingCache.destroy();
                    CacheManager.this.mCachePool.release(drawingCache);
                }
            }

            private void preMeasure() {
                IDanmakus iDanmakus;
                try {
                    long j = CacheManagingDrawTask.this.mTimer.currMillisecond;
                    iDanmakus = CacheManagingDrawTask.this.danmakuList.subnew(j - CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION, (CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION * 2) + j);
                } catch (Exception unused) {
                    iDanmakus = null;
                }
                if (iDanmakus != null && !iDanmakus.isEmpty()) {
                    iDanmakus.forEach(new DefaultConsumer<BaseDanmaku>() {
                        public int accept(BaseDanmaku baseDanmaku) {
                            if (CacheHandler.this.mPause || CacheHandler.this.mCancelFlag) {
                                return 1;
                            }
                            if (!baseDanmaku.hasPassedFilter()) {
                                CacheManagingDrawTask.this.mContext.mDanmakuFilters.filter(baseDanmaku, 0, 0, null, true, CacheManagingDrawTask.this.mContext);
                            }
                            if (baseDanmaku.isFiltered()) {
                                return 0;
                            }
                            if (!baseDanmaku.isMeasured()) {
                                baseDanmaku.measure(CacheManagingDrawTask.this.mDisp, true);
                            }
                            if (!baseDanmaku.isPrepared()) {
                                baseDanmaku.prepare(CacheManagingDrawTask.this.mDisp, true);
                            }
                            return 0;
                        }
                    });
                }
            }

            /* JADX WARNING: Removed duplicated region for block: B:16:0x006b  */
            /* JADX WARNING: Removed duplicated region for block: B:18:0x0077  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            private long prepareCaches(boolean r20) {
                /*
                    r19 = this;
                    r11 = r19
                    r19.preMeasure()
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r0.mCacheTimer
                    long r0 = r0.currMillisecond
                    r2 = 30
                    long r5 = r0 - r2
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.android.DanmakuContext r0 = r0.mContext
                    master.flame.danmaku.danmaku.model.android.DanmakuFactory r0 = r0.mDanmakuFactory
                    long r0 = r0.MAX_DANMAKU_DURATION
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r4 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    int r4 = r4.mScreenSize
                    long r7 = (long) r4
                    long r0 = r0 * r7
                    long r12 = r5 + r0
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r0.mTimer
                    long r0 = r0.currMillisecond
                    r7 = 0
                    int r4 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
                    if (r4 >= 0) goto L_0x0037
                    return r7
                L_0x0037:
                    long r14 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis()
                    r0 = 0
                    r1 = 0
                    r4 = 0
                L_0x003e:
                    r9 = 10
                    r16 = 1
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r2 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this     // Catch:{ Exception -> 0x0052 }
                    master.flame.danmaku.controller.CacheManagingDrawTask r2 = master.flame.danmaku.controller.CacheManagingDrawTask.this     // Catch:{ Exception -> 0x0052 }
                    master.flame.danmaku.danmaku.model.IDanmakus r2 = r2.danmakuList     // Catch:{ Exception -> 0x0052 }
                    master.flame.danmaku.danmaku.model.IDanmakus r0 = r2.subnew(r5, r12)     // Catch:{ Exception -> 0x0052 }
                    r18 = r4
                    r4 = r0
                    r0 = r18
                    goto L_0x0057
                L_0x0052:
                    master.flame.danmaku.danmaku.util.SystemClock.sleep(r9)
                    r4 = r0
                    r0 = 1
                L_0x0057:
                    int r1 = r1 + 1
                    r2 = 3
                    if (r1 >= r2) goto L_0x0069
                    if (r4 != 0) goto L_0x0069
                    if (r0 != 0) goto L_0x0061
                    goto L_0x0069
                L_0x0061:
                    r2 = 30
                    r18 = r4
                    r4 = r0
                    r0 = r18
                    goto L_0x003e
                L_0x0069:
                    if (r4 != 0) goto L_0x0077
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r0.mCacheTimer
                    r0.update(r12)
                    return r7
                L_0x0077:
                    master.flame.danmaku.danmaku.model.BaseDanmaku r0 = r4.first()
                    master.flame.danmaku.danmaku.model.BaseDanmaku r2 = r4.last()
                    if (r0 == 0) goto L_0x00de
                    if (r2 != 0) goto L_0x0084
                    goto L_0x00de
                L_0x0084:
                    long r0 = r0.getActualTime()
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r3 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r3 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r3 = r3.mTimer
                    long r9 = r3.currMillisecond
                    long r0 = r0 - r9
                    int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                    if (r3 >= 0) goto L_0x0098
                    r0 = 30
                    goto L_0x00aa
                L_0x0098:
                    r9 = 10
                    long r0 = r0 * r9
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r3 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r3 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.android.DanmakuContext r3 = r3.mContext
                    master.flame.danmaku.danmaku.model.android.DanmakuFactory r3 = r3.mDanmakuFactory
                    long r9 = r3.MAX_DANMAKU_DURATION
                    long r0 = r0 / r9
                    r9 = 30
                    long r0 = r0 + r9
                L_0x00aa:
                    r9 = 100
                    long r0 = java.lang.Math.min(r9, r0)
                    if (r20 == 0) goto L_0x00b3
                    goto L_0x00b4
                L_0x00b3:
                    r7 = r0
                L_0x00b4:
                    int r9 = r4.size()
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager$CacheHandler$2 r10 = new master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager$CacheHandler$2
                    r0 = r10
                    r1 = r19
                    r3 = r20
                    r16 = r12
                    r12 = r4
                    r4 = r9
                    r13 = r10
                    r9 = r14
                    r0.<init>(r2, r3, r4, r5, r7, r9)
                    r12.forEach(r13)
                    long r0 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis()
                    long r0 = r0 - r14
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r2 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r2 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r2 = r2.mCacheTimer
                    r5 = r16
                    r2.update(r5)
                    return r0
                L_0x00de:
                    r5 = r12
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r0.mCacheTimer
                    r0.update(r5)
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.CacheHandler.prepareCaches(boolean):long");
            }

            /* JADX WARNING: Removed duplicated region for block: B:14:0x003a  */
            /* JADX WARNING: Removed duplicated region for block: B:20:0x0047  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public boolean createCache(master.flame.danmaku.danmaku.model.BaseDanmaku r7) {
                /*
                    r6 = this;
                    boolean r0 = r7.isMeasured()
                    r1 = 1
                    if (r0 != 0) goto L_0x0010
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r0 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.controller.CacheManagingDrawTask r0 = master.flame.danmaku.controller.CacheManagingDrawTask.this
                    master.flame.danmaku.danmaku.model.AbsDisplayer r0 = r0.mDisp
                    r7.measure(r0, r1)
                L_0x0010:
                    r0 = 0
                    r2 = 0
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r3 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this     // Catch:{ OutOfMemoryError -> 0x0044, Exception -> 0x0037 }
                    master.flame.danmaku.danmaku.model.objectpool.Pool<master.flame.danmaku.danmaku.model.android.DrawingCache> r3 = r3.mCachePool     // Catch:{ OutOfMemoryError -> 0x0044, Exception -> 0x0037 }
                    master.flame.danmaku.danmaku.model.objectpool.Poolable r3 = r3.acquire()     // Catch:{ OutOfMemoryError -> 0x0044, Exception -> 0x0037 }
                    master.flame.danmaku.danmaku.model.android.DrawingCache r3 = (master.flame.danmaku.danmaku.model.android.DrawingCache) r3     // Catch:{ OutOfMemoryError -> 0x0044, Exception -> 0x0037 }
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r4 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.controller.CacheManagingDrawTask r4 = master.flame.danmaku.controller.CacheManagingDrawTask.this     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.danmaku.model.AbsDisplayer r4 = r4.mDisp     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r5 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.controller.CacheManagingDrawTask r5 = master.flame.danmaku.controller.CacheManagingDrawTask.this     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.danmaku.model.android.DanmakuContext r5 = r5.mContext     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.danmaku.model.android.CachingPolicy r5 = r5.cachingPolicy     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    int r5 = r5.bitsPerPixelOfCache     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    master.flame.danmaku.danmaku.model.android.DrawingCache r3 = master.flame.danmaku.danmaku.util.DanmakuUtils.buildDanmakuDrawingCache(r7, r4, r3, r5)     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    r7.cache = r3     // Catch:{ OutOfMemoryError -> 0x0035, Exception -> 0x0033 }
                    return r1
                L_0x0033:
                    goto L_0x0038
                L_0x0035:
                    goto L_0x0045
                L_0x0037:
                    r3 = r2
                L_0x0038:
                    if (r3 == 0) goto L_0x0041
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r1 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.danmaku.model.objectpool.Pool<master.flame.danmaku.danmaku.model.android.DrawingCache> r1 = r1.mCachePool
                    r1.release(r3)
                L_0x0041:
                    r7.cache = r2
                    return r0
                L_0x0044:
                    r3 = r2
                L_0x0045:
                    if (r3 == 0) goto L_0x004e
                    master.flame.danmaku.controller.CacheManagingDrawTask$CacheManager r1 = master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.this
                    master.flame.danmaku.danmaku.model.objectpool.Pool<master.flame.danmaku.danmaku.model.android.DrawingCache> r1 = r1.mCachePool
                    r1.release(r3)
                L_0x004e:
                    r7.cache = r2
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager.CacheHandler.createCache(master.flame.danmaku.danmaku.model.BaseDanmaku):boolean");
            }

            /* access modifiers changed from: private */
            public byte buildCache(BaseDanmaku baseDanmaku, boolean z) {
                DrawingCache drawingCache;
                if (!baseDanmaku.isMeasured()) {
                    baseDanmaku.measure(CacheManagingDrawTask.this.mDisp, true);
                }
                DrawingCache drawingCache2 = null;
                try {
                    BaseDanmaku access$1500 = CacheManager.this.findReusableCache(baseDanmaku, true, CacheManagingDrawTask.this.mContext.cachingPolicy.maxTimesOfStrictReusableFinds);
                    drawingCache = access$1500 != null ? (DrawingCache) access$1500.cache : null;
                    if (drawingCache != null) {
                        try {
                            drawingCache.increaseReference();
                            baseDanmaku.cache = drawingCache;
                            CacheManagingDrawTask.this.mCacheManager.push(baseDanmaku, 0, z);
                            return 0;
                        } catch (OutOfMemoryError unused) {
                            releaseDanmakuCache(baseDanmaku, drawingCache);
                            return 1;
                        } catch (Exception unused2) {
                            releaseDanmakuCache(baseDanmaku, drawingCache);
                            return 1;
                        }
                    } else {
                        BaseDanmaku access$15002 = CacheManager.this.findReusableCache(baseDanmaku, false, CacheManagingDrawTask.this.mContext.cachingPolicy.maxTimesOfReusableFinds);
                        if (access$15002 != null) {
                            drawingCache = (DrawingCache) access$15002.cache;
                        }
                        if (drawingCache != null) {
                            access$15002.cache = null;
                            drawingCache2 = DanmakuUtils.buildDanmakuDrawingCache(baseDanmaku, CacheManagingDrawTask.this.mDisp, drawingCache, CacheManagingDrawTask.this.mContext.cachingPolicy.bitsPerPixelOfCache);
                            baseDanmaku.cache = drawingCache2;
                            CacheManagingDrawTask.this.mCacheManager.push(baseDanmaku, 0, z);
                            return 0;
                        }
                        int cacheSize = DanmakuUtils.getCacheSize((int) baseDanmaku.paintWidth, (int) baseDanmaku.paintHeight, CacheManagingDrawTask.this.mContext.cachingPolicy.bitsPerPixelOfCache / 8);
                        if (cacheSize * 2 > CacheManagingDrawTask.this.mMaxCacheSize) {
                            return 1;
                        }
                        if (z || CacheManager.this.mRealSize + cacheSize <= CacheManager.this.mMaxSize) {
                            DrawingCache buildDanmakuDrawingCache = DanmakuUtils.buildDanmakuDrawingCache(baseDanmaku, CacheManagingDrawTask.this.mDisp, (DrawingCache) CacheManager.this.mCachePool.acquire(), CacheManagingDrawTask.this.mContext.cachingPolicy.bitsPerPixelOfCache);
                            baseDanmaku.cache = buildDanmakuDrawingCache;
                            boolean access$400 = CacheManagingDrawTask.this.mCacheManager.push(baseDanmaku, CacheManager.this.sizeOf(baseDanmaku), z);
                            if (!access$400) {
                                releaseDanmakuCache(baseDanmaku, buildDanmakuDrawingCache);
                            }
                            return access$400 ^ true ? (byte) 1 : 0;
                        }
                        CacheManagingDrawTask.this.mCacheManager.clearTimeOutAndFilteredCaches(cacheSize, false);
                        return 1;
                    }
                } catch (OutOfMemoryError unused3) {
                    drawingCache = drawingCache2;
                    releaseDanmakuCache(baseDanmaku, drawingCache);
                    return 1;
                } catch (Exception unused4) {
                    drawingCache = drawingCache2;
                    releaseDanmakuCache(baseDanmaku, drawingCache);
                    return 1;
                }
            }

            private final void addDanmakuAndBuildCache(BaseDanmaku baseDanmaku) {
                if (!baseDanmaku.isTimeOut() && ((baseDanmaku.getActualTime() <= CacheManagingDrawTask.this.mCacheTimer.currMillisecond + CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION || baseDanmaku.isLive) && (baseDanmaku.priority != 0 || !baseDanmaku.isFiltered()))) {
                    IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
                    if (drawingCache == null || drawingCache.get() == null) {
                        buildCache(baseDanmaku, true);
                    }
                }
            }

            public void begin() {
                sendEmptyMessage(1);
                sendEmptyMessageDelayed(4, CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION);
            }

            public void pause() {
                this.mPause = true;
                sendEmptyMessage(6);
            }

            public void resume() {
                sendEmptyMessage(18);
                this.mPause = false;
                removeMessages(16);
                sendEmptyMessage(16);
                sendEmptyMessageDelayed(4, CacheManagingDrawTask.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION);
            }

            public boolean isPause() {
                return this.mPause;
            }

            public void requestBuildCacheAndDraw(long j) {
                removeMessages(3);
                this.mSeekedFlag = true;
                sendEmptyMessage(18);
                CacheManagingDrawTask.this.mCacheTimer.update(CacheManagingDrawTask.this.mTimer.currMillisecond + j);
                sendEmptyMessage(3);
            }

            public void onPlayStateChanged(boolean z) {
                this.mIsPlayerPause = !z;
            }
        }

        public CacheManager(int i, int i2) {
            this.mMaxSize = i;
            this.mScreenSize = i2;
        }

        public void seek(long j) {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.requestCancelCaching();
                this.mHandler.removeMessages(3);
                this.mHandler.obtainMessage(5, Long.valueOf(j)).sendToTarget();
            }
        }

        public void addDanmaku(BaseDanmaku baseDanmaku) {
            if (this.mHandler != null) {
                if (!baseDanmaku.isLive || !baseDanmaku.forceBuildCacheInSameThread) {
                    this.mHandler.obtainMessage(2, baseDanmaku).sendToTarget();
                } else {
                    if (!baseDanmaku.isTimeOut()) {
                        this.mHandler.createCache(baseDanmaku);
                    }
                }
            }
        }

        public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.requestCancelCaching();
                this.mHandler.obtainMessage(17, baseDanmaku).sendToTarget();
                this.mHandler.sendEmptyMessage(18);
                requestBuild(0);
            }
        }

        public void begin() {
            this.mEndFlag = false;
            if (this.mThread == null) {
                this.mThread = new HandlerThread("DFM Cache-Building Thread");
                this.mThread.start();
            }
            if (this.mHandler == null) {
                this.mHandler = new CacheHandler(this.mThread.getLooper());
            }
            this.mHandler.begin();
        }

        public void end() {
            this.mEndFlag = true;
            synchronized (CacheManagingDrawTask.this.mDrawingNotify) {
                CacheManagingDrawTask.this.mDrawingNotify.notifyAll();
            }
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.removeCallbacksAndMessages(null);
                this.mHandler.pause();
                this.mHandler = null;
            }
            HandlerThread handlerThread = this.mThread;
            if (handlerThread != null) {
                try {
                    handlerThread.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.mThread.quit();
                this.mThread = null;
            }
        }

        public void resume() {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.resume();
            } else {
                begin();
            }
        }

        public void onPlayStateChanged(int i) {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                boolean z = true;
                if (i != 1) {
                    z = false;
                }
                cacheHandler.onPlayStateChanged(z);
            }
        }

        public float getPoolPercent() {
            int i = this.mMaxSize;
            if (i == 0) {
                return 0.0f;
            }
            return ((float) this.mRealSize) / ((float) i);
        }

        public boolean isPoolFull() {
            return this.mRealSize + 5120 >= this.mMaxSize;
        }

        /* access modifiers changed from: private */
        public void evictAll() {
            Danmakus danmakus = this.mCaches;
            if (danmakus != null) {
                danmakus.forEach(new DefaultConsumer<BaseDanmaku>() {
                    public int accept(BaseDanmaku baseDanmaku) {
                        CacheManager.this.entryRemoved(true, baseDanmaku, null);
                        return 0;
                    }
                });
                this.mCaches.clear();
            }
            this.mRealSize = 0;
        }

        /* access modifiers changed from: private */
        public void evictAllNotInScreen() {
            Danmakus danmakus = this.mCaches;
            if (danmakus != null) {
                danmakus.forEach(new DefaultConsumer<BaseDanmaku>() {
                    public int accept(BaseDanmaku baseDanmaku) {
                        if (!baseDanmaku.isOutside()) {
                            return 0;
                        }
                        CacheManager.this.entryRemoved(true, baseDanmaku, null);
                        return 2;
                    }
                });
            }
        }

        /* access modifiers changed from: protected */
        public void entryRemoved(boolean z, BaseDanmaku baseDanmaku, BaseDanmaku baseDanmaku2) {
            IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
            if (drawingCache != null) {
                long clearCache = clearCache(baseDanmaku);
                if (baseDanmaku.isTimeOut()) {
                    CacheManagingDrawTask.this.mContext.getDisplayer().getCacheStuffer().releaseResource(baseDanmaku);
                }
                if (clearCache > 0) {
                    this.mRealSize = (int) (((long) this.mRealSize) - clearCache);
                    this.mCachePool.release((DrawingCache) drawingCache);
                }
            }
        }

        /* access modifiers changed from: private */
        public long clearCache(BaseDanmaku baseDanmaku) {
            IDrawingCache<?> iDrawingCache = baseDanmaku.cache;
            if (iDrawingCache == null) {
                return 0;
            }
            if (iDrawingCache.hasReferences()) {
                iDrawingCache.decreaseReference();
                baseDanmaku.cache = null;
                return 0;
            }
            long sizeOf = (long) sizeOf(baseDanmaku);
            iDrawingCache.destroy();
            baseDanmaku.cache = null;
            return sizeOf;
        }

        /* access modifiers changed from: protected */
        public int sizeOf(BaseDanmaku baseDanmaku) {
            if (baseDanmaku.cache == null || baseDanmaku.cache.hasReferences()) {
                return 0;
            }
            return baseDanmaku.cache.size();
        }

        /* access modifiers changed from: private */
        public void clearCachePool() {
            while (true) {
                DrawingCache drawingCache = (DrawingCache) this.mCachePool.acquire();
                if (drawingCache != null) {
                    drawingCache.destroy();
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: private */
        public boolean push(BaseDanmaku baseDanmaku, int i, boolean z) {
            if (i > 0) {
                clearTimeOutAndFilteredCaches(i, z);
            }
            this.mCaches.addItem(baseDanmaku);
            this.mRealSize += i;
            return true;
        }

        /* access modifiers changed from: private */
        public void clearTimeOutCaches() {
            this.mCaches.forEach(new DefaultConsumer<BaseDanmaku>() {
                public int accept(BaseDanmaku baseDanmaku) {
                    if (!baseDanmaku.isTimeOut()) {
                        return 1;
                    }
                    IDrawingCache<?> iDrawingCache = baseDanmaku.cache;
                    if (CacheManagingDrawTask.this.mContext.cachingPolicy.periodOfRecycle == -1 && iDrawingCache != null && !iDrawingCache.hasReferences() && ((float) iDrawingCache.size()) / ((float) CacheManagingDrawTask.this.mMaxCacheSize) < CacheManagingDrawTask.this.mContext.cachingPolicy.forceRecyleThreshold) {
                        return 0;
                    }
                    if (!CacheManager.this.mEndFlag) {
                        synchronized (CacheManagingDrawTask.this.mDrawingNotify) {
                            try {
                                CacheManagingDrawTask.this.mDrawingNotify.wait(30);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                return 1;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    CacheManager.this.entryRemoved(false, baseDanmaku, null);
                    return 2;
                }
            });
        }

        /* access modifiers changed from: private */
        public BaseDanmaku findReusableCache(BaseDanmaku baseDanmaku, boolean z, int i) {
            final int slopPixel = (!z ? CacheManagingDrawTask.this.mDisp.getSlopPixel() * 2 : 0) + CacheManagingDrawTask.this.mContext.cachingPolicy.reusableOffsetPixel;
            final int i2 = i;
            final BaseDanmaku baseDanmaku2 = baseDanmaku;
            final boolean z2 = z;
            AnonymousClass4 r2 = new Consumer<BaseDanmaku, BaseDanmaku>() {
                int count = 0;
                BaseDanmaku mResult;

                public BaseDanmaku result() {
                    return this.mResult;
                }

                public int accept(BaseDanmaku baseDanmaku) {
                    int i = this.count;
                    this.count = i + 1;
                    if (i >= i2) {
                        return 1;
                    }
                    IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
                    if (!(drawingCache == null || drawingCache.get() == null)) {
                        if (baseDanmaku.paintWidth == baseDanmaku2.paintWidth && baseDanmaku.paintHeight == baseDanmaku2.paintHeight && baseDanmaku.underlineColor == baseDanmaku2.underlineColor && baseDanmaku.borderColor == baseDanmaku2.borderColor && baseDanmaku.textColor == baseDanmaku2.textColor && baseDanmaku.text.equals(baseDanmaku2.text) && baseDanmaku.tag == baseDanmaku2.tag) {
                            this.mResult = baseDanmaku;
                            return 1;
                        } else if (z2) {
                            return 0;
                        } else {
                            if (!baseDanmaku.isTimeOut()) {
                                return 1;
                            }
                            if (drawingCache.hasReferences()) {
                                return 0;
                            }
                            float width = ((float) drawingCache.width()) - baseDanmaku2.paintWidth;
                            float height = ((float) drawingCache.height()) - baseDanmaku2.paintHeight;
                            if (width >= 0.0f) {
                                int i2 = slopPixel;
                                if (width <= ((float) i2) && height >= 0.0f && height <= ((float) i2)) {
                                    this.mResult = baseDanmaku;
                                    return 1;
                                }
                            }
                        }
                    }
                    return 0;
                }
            };
            this.mCaches.forEach(r2);
            return (BaseDanmaku) r2.result();
        }

        /* access modifiers changed from: private */
        public void clearTimeOutAndFilteredCaches(final int i, final boolean z) {
            this.mCaches.forEach(new DefaultConsumer<BaseDanmaku>() {
                public int accept(BaseDanmaku baseDanmaku) {
                    if (CacheManager.this.mEndFlag || CacheManager.this.mRealSize + i <= CacheManager.this.mMaxSize) {
                        return 1;
                    }
                    if (baseDanmaku.isTimeOut() || baseDanmaku.isFiltered()) {
                        CacheManager.this.entryRemoved(false, baseDanmaku, null);
                        return 2;
                    } else if (z) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            });
        }

        public long getFirstCacheTime() {
            Danmakus danmakus = this.mCaches;
            if (danmakus == null || danmakus.size() <= 0) {
                return 0;
            }
            BaseDanmaku first = this.mCaches.first();
            if (first == null) {
                return 0;
            }
            return first.getActualTime();
        }

        public void requestBuild(long j) {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.requestBuildCacheAndDraw(j);
            }
        }

        public void requestClearAll() {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.removeMessages(3);
                this.mHandler.removeMessages(18);
                this.mHandler.requestCancelCaching();
                this.mHandler.removeMessages(7);
                this.mHandler.sendEmptyMessage(7);
            }
        }

        public void requestClearUnused() {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.removeMessages(9);
                this.mHandler.sendEmptyMessage(9);
            }
        }

        public void requestClearTimeout() {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.removeMessages(4);
                this.mHandler.sendEmptyMessage(4);
            }
        }

        public void post(Runnable runnable) {
            CacheHandler cacheHandler = this.mHandler;
            if (cacheHandler != null) {
                cacheHandler.post(runnable);
            }
        }
    }

    public CacheManagingDrawTask(DanmakuTimer danmakuTimer, DanmakuContext danmakuContext, TaskListener taskListener) {
        super(danmakuTimer, danmakuContext, taskListener);
        NativeBitmapFactory.loadLibs();
        this.mMaxCacheSize = (int) Math.max(4194304.0f, ((float) Runtime.getRuntime().maxMemory()) * danmakuContext.cachingPolicy.maxCachePoolSizeFactorPercentage);
        this.mCacheManager = new CacheManager(this.mMaxCacheSize, 3);
        this.mRenderer.setCacheManager(this.mCacheManager);
    }

    /* access modifiers changed from: protected */
    public void initTimer(DanmakuTimer danmakuTimer) {
        this.mTimer = danmakuTimer;
        this.mCacheTimer = new DanmakuTimer();
        this.mCacheTimer.update(danmakuTimer.currMillisecond);
    }

    public void addDanmaku(BaseDanmaku baseDanmaku) {
        super.addDanmaku(baseDanmaku);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.addDanmaku(baseDanmaku);
        }
    }

    public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
        super.invalidateDanmaku(baseDanmaku, z);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.invalidateDanmaku(baseDanmaku, z);
        }
    }

    public void removeAllDanmakus(boolean z) {
        super.removeAllDanmakus(z);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.requestClearAll();
        }
    }

    /* access modifiers changed from: protected */
    public void onDanmakuRemoved(BaseDanmaku baseDanmaku) {
        super.onDanmakuRemoved(baseDanmaku);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            int i = this.mRemaininCacheCount + 1;
            this.mRemaininCacheCount = i;
            if (i > 5) {
                cacheManager.requestClearTimeout();
                this.mRemaininCacheCount = 0;
                return;
            }
            return;
        }
        IDrawingCache drawingCache = baseDanmaku.getDrawingCache();
        if (drawingCache != null) {
            if (drawingCache.hasReferences()) {
                drawingCache.decreaseReference();
            } else {
                drawingCache.destroy();
            }
            baseDanmaku.cache = null;
        }
    }

    public RenderingState draw(AbsDisplayer absDisplayer) {
        RenderingState draw = super.draw(absDisplayer);
        synchronized (this.mDrawingNotify) {
            this.mDrawingNotify.notify();
        }
        if (!(draw == null || this.mCacheManager == null || draw.totalDanmakuCount - draw.lastTotalDanmakuCount >= -20)) {
            this.mCacheManager.requestClearTimeout();
            this.mCacheManager.requestBuild(-this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION);
        }
        return draw;
    }

    public void seek(long j) {
        super.seek(j);
        if (this.mCacheManager == null) {
            start();
        }
        this.mCacheManager.seek(j);
    }

    public void start() {
        super.start();
        NativeBitmapFactory.loadLibs();
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager == null) {
            this.mCacheManager = new CacheManager(this.mMaxCacheSize, 3);
            this.mCacheManager.begin();
            this.mRenderer.setCacheManager(this.mCacheManager);
            return;
        }
        cacheManager.resume();
    }

    public void quit() {
        super.quit();
        reset();
        this.mRenderer.setCacheManager(null);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.end();
            this.mCacheManager = null;
        }
        NativeBitmapFactory.releaseLibs();
    }

    public void prepare() {
        if (this.mParser != null) {
            loadDanmakus(this.mParser);
            this.mCacheManager.begin();
        }
    }

    public void onPlayStateChanged(int i) {
        super.onPlayStateChanged(i);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.onPlayStateChanged(i);
        }
    }

    public void requestSync(long j, long j2, long j3) {
        super.requestSync(j, j2, j3);
        CacheManager cacheManager = this.mCacheManager;
        if (cacheManager != null) {
            cacheManager.seek(j2);
        }
    }

    public boolean onDanmakuConfigChanged(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        if (!super.handleOnDanmakuConfigChanged(danmakuContext, danmakuConfigTag, objArr)) {
            if (DanmakuConfigTag.SCROLL_SPEED_FACTOR.equals(danmakuConfigTag)) {
                this.mDisp.resetSlopPixel(this.mContext.scaleTextSize);
                requestClear();
            } else if (danmakuConfigTag.isVisibilityRelatedTag()) {
                if (objArr != null && objArr.length > 0 && objArr[0] != null && (!(objArr[0] instanceof Boolean) || objArr[0].booleanValue())) {
                    CacheManager cacheManager = this.mCacheManager;
                    if (cacheManager != null) {
                        cacheManager.requestBuild(0);
                    }
                }
                requestClear();
            } else if (DanmakuConfigTag.TRANSPARENCY.equals(danmakuConfigTag) || DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag) || DanmakuConfigTag.DANMAKU_STYLE.equals(danmakuConfigTag)) {
                if (DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag)) {
                    this.mDisp.resetSlopPixel(this.mContext.scaleTextSize);
                }
                CacheManager cacheManager2 = this.mCacheManager;
                if (cacheManager2 != null) {
                    cacheManager2.requestClearAll();
                    this.mCacheManager.requestBuild(-this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION);
                }
            } else {
                CacheManager cacheManager3 = this.mCacheManager;
                if (cacheManager3 != null) {
                    cacheManager3.requestClearUnused();
                    this.mCacheManager.requestBuild(0);
                }
            }
        }
        if (this.mTaskListener != null) {
            CacheManager cacheManager4 = this.mCacheManager;
            if (cacheManager4 != null) {
                cacheManager4.post(new Runnable() {
                    public void run() {
                        CacheManagingDrawTask.this.mTaskListener.onDanmakuConfigChanged();
                    }
                });
            }
        }
        return true;
    }
}
