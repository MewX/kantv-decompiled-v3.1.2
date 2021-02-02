package master.flame.danmaku.ui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.LinkedList;
import java.util.Locale;
import master.flame.danmaku.controller.DrawHandler;
import master.flame.danmaku.controller.DrawHandler.Callback;
import master.flame.danmaku.controller.DrawHelper;
import master.flame.danmaku.controller.IDanmakuView;
import master.flame.danmaku.controller.IDanmakuView.OnDanmakuClickListener;
import master.flame.danmaku.controller.IDanmakuViewController;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.danmaku.renderer.IRenderer.RenderingState;
import master.flame.danmaku.danmaku.util.SystemClock;

public class DanmakuView extends View implements IDanmakuView, IDanmakuViewController {
    private static final int MAX_RECORD_SIZE = 50;
    private static final int ONE_SECOND = 1000;
    public static final String TAG = "DanmakuView";
    protected volatile DrawHandler handler;
    private boolean isSurfaceCreated;
    private Callback mCallback;
    protected boolean mClearFlag;
    private boolean mDanmakuVisible = true;
    private boolean mDrawFinished = false;
    private Object mDrawMonitor = new Object();
    private LinkedList<Long> mDrawTimes;
    protected int mDrawingThreadType = 0;
    private boolean mEnableDanmakuDrwaingCache = true;
    private HandlerThread mHandlerThread;
    private OnClickListener mOnClickListener;
    private OnDanmakuClickListener mOnDanmakuClickListener;
    protected boolean mRequestRender = false;
    private Runnable mResumeRunnable = new Runnable() {
        public void run() {
            DrawHandler drawHandler = DanmakuView.this.handler;
            if (drawHandler != null) {
                DanmakuView.this.mResumeTryCount = DanmakuView.this.mResumeTryCount + 1;
                if (DanmakuView.this.mResumeTryCount > 4 || DanmakuView.super.isShown()) {
                    drawHandler.resume();
                } else {
                    drawHandler.postDelayed(this, (long) (DanmakuView.this.mResumeTryCount * 100));
                }
            }
        }
    };
    /* access modifiers changed from: private */
    public int mResumeTryCount = 0;
    private boolean mShowFps;
    private DanmakuTouchHelper mTouchHelper;
    private long mUiThreadId;
    private float mXOff;
    private float mYOff;

    public View getView() {
        return this;
    }

    public DanmakuView(Context context) {
        super(context);
        init();
    }

    private void init() {
        this.mUiThreadId = Thread.currentThread().getId();
        setBackgroundColor(0);
        setDrawingCacheBackgroundColor(0);
        DrawHelper.useDrawColorToClearCanvas(true, false);
        this.mTouchHelper = DanmakuTouchHelper.instance(this);
    }

    public DanmakuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public DanmakuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public void addDanmaku(BaseDanmaku baseDanmaku) {
        if (this.handler != null) {
            this.handler.addDanmaku(baseDanmaku);
        }
    }

    public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
        if (this.handler != null) {
            this.handler.invalidateDanmaku(baseDanmaku, z);
        }
    }

    public void removeAllDanmakus(boolean z) {
        if (this.handler != null) {
            this.handler.removeAllDanmakus(z);
        }
    }

    public void removeAllLiveDanmakus() {
        if (this.handler != null) {
            this.handler.removeAllLiveDanmakus();
        }
    }

    public IDanmakus getCurrentVisibleDanmakus() {
        if (this.handler != null) {
            return this.handler.getCurrentVisibleDanmakus();
        }
        return null;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
        if (this.handler != null) {
            this.handler.setCallback(callback);
        }
    }

    public void release() {
        stop();
        LinkedList<Long> linkedList = this.mDrawTimes;
        if (linkedList != null) {
            linkedList.clear();
        }
    }

    public void stop() {
        stopDraw();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0026, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void stopDraw() {
        /*
            r2 = this;
            monitor-enter(r2)
            master.flame.danmaku.controller.DrawHandler r0 = r2.handler     // Catch:{ all -> 0x0027 }
            if (r0 != 0) goto L_0x0007
            monitor-exit(r2)
            return
        L_0x0007:
            master.flame.danmaku.controller.DrawHandler r0 = r2.handler     // Catch:{ all -> 0x0027 }
            r1 = 0
            r2.handler = r1     // Catch:{ all -> 0x0027 }
            r2.unlockCanvasAndPost()     // Catch:{ all -> 0x0027 }
            if (r0 == 0) goto L_0x0014
            r0.quit()     // Catch:{ all -> 0x0027 }
        L_0x0014:
            android.os.HandlerThread r0 = r2.mHandlerThread     // Catch:{ all -> 0x0027 }
            r2.mHandlerThread = r1     // Catch:{ all -> 0x0027 }
            if (r0 == 0) goto L_0x0025
            r0.join()     // Catch:{ InterruptedException -> 0x001e }
            goto L_0x0022
        L_0x001e:
            r1 = move-exception
            r1.printStackTrace()     // Catch:{ all -> 0x0027 }
        L_0x0022:
            r0.quit()     // Catch:{ all -> 0x0027 }
        L_0x0025:
            monitor-exit(r2)
            return
        L_0x0027:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.ui.widget.DanmakuView.stopDraw():void");
    }

    /* access modifiers changed from: protected */
    public synchronized Looper getLooper(int i) {
        if (this.mHandlerThread != null) {
            this.mHandlerThread.quit();
            this.mHandlerThread = null;
        }
        if (i != 1) {
            int i2 = i != 2 ? i != 3 ? 0 : 19 : -8;
            StringBuilder sb = new StringBuilder();
            sb.append("DFM Handler Thread #");
            sb.append(i2);
            this.mHandlerThread = new HandlerThread(sb.toString(), i2);
            this.mHandlerThread.start();
            return this.mHandlerThread.getLooper();
        }
        return Looper.getMainLooper();
    }

    private void prepare() {
        if (this.handler == null) {
            this.handler = new DrawHandler(getLooper(this.mDrawingThreadType), this, this.mDanmakuVisible);
        }
    }

    public void prepare(BaseDanmakuParser baseDanmakuParser, DanmakuContext danmakuContext) {
        prepare();
        this.handler.setConfig(danmakuContext);
        this.handler.setParser(baseDanmakuParser);
        this.handler.setCallback(this.mCallback);
        this.handler.prepare();
    }

    public boolean isPrepared() {
        return this.handler != null && this.handler.isPrepared();
    }

    public DanmakuContext getConfig() {
        if (this.handler == null) {
            return null;
        }
        return this.handler.getConfig();
    }

    public void showFPS(boolean z) {
        this.mShowFps = z;
    }

    private float fps() {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mDrawTimes.addLast(Long.valueOf(uptimeMillis));
        Long l = (Long) this.mDrawTimes.peekFirst();
        float f = 0.0f;
        if (l == null) {
            return 0.0f;
        }
        float longValue = (float) (uptimeMillis - l.longValue());
        if (this.mDrawTimes.size() > 50) {
            this.mDrawTimes.removeFirst();
        }
        if (longValue > 0.0f) {
            f = ((float) (this.mDrawTimes.size() * 1000)) / longValue;
        }
        return f;
    }

    public long drawDanmakus() {
        if (!this.isSurfaceCreated) {
            return 0;
        }
        if (!isShown()) {
            return -1;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        lockCanvas();
        return SystemClock.uptimeMillis() - uptimeMillis;
    }

    @SuppressLint({"NewApi"})
    private void postInvalidateCompat() {
        this.mRequestRender = true;
        if (VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            postInvalidate();
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x000b, code lost:
        continue;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x001b */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x002b A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void lockCanvas() {
        /*
            r4 = this;
            boolean r0 = r4.mDanmakuVisible
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r4.postInvalidateCompat()
            java.lang.Object r0 = r4.mDrawMonitor
            monitor-enter(r0)
        L_0x000b:
            boolean r1 = r4.mDrawFinished     // Catch:{ all -> 0x0039 }
            if (r1 != 0) goto L_0x0034
            master.flame.danmaku.controller.DrawHandler r1 = r4.handler     // Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x0034
            java.lang.Object r1 = r4.mDrawMonitor     // Catch:{ InterruptedException -> 0x001b }
            r2 = 200(0xc8, double:9.9E-322)
            r1.wait(r2)     // Catch:{ InterruptedException -> 0x001b }
            goto L_0x000b
        L_0x001b:
            boolean r1 = r4.mDanmakuVisible     // Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x0034
            master.flame.danmaku.controller.DrawHandler r1 = r4.handler     // Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x0034
            master.flame.danmaku.controller.DrawHandler r1 = r4.handler     // Catch:{ all -> 0x0039 }
            boolean r1 = r1.isStop()     // Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x002c
            goto L_0x0034
        L_0x002c:
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0039 }
            r1.interrupt()     // Catch:{ all -> 0x0039 }
            goto L_0x000b
        L_0x0034:
            r1 = 0
            r4.mDrawFinished = r1     // Catch:{ all -> 0x0039 }
            monitor-exit(r0)     // Catch:{ all -> 0x0039 }
            return
        L_0x0039:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0039 }
            goto L_0x003d
        L_0x003c:
            throw r1
        L_0x003d:
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.ui.widget.DanmakuView.lockCanvas():void");
    }

    private void lockCanvasAndClear() {
        this.mClearFlag = true;
        lockCanvas();
    }

    private void unlockCanvasAndPost() {
        synchronized (this.mDrawMonitor) {
            this.mDrawFinished = true;
            this.mDrawMonitor.notifyAll();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.mDanmakuVisible || this.mRequestRender) {
            if (this.mClearFlag) {
                DrawHelper.clearCanvas(canvas);
                this.mClearFlag = false;
            } else if (this.handler != null) {
                RenderingState draw = this.handler.draw(canvas);
                if (this.mShowFps) {
                    if (this.mDrawTimes == null) {
                        this.mDrawTimes = new LinkedList<>();
                    }
                    DrawHelper.drawFPS(canvas, String.format(Locale.getDefault(), "fps %.2f,time:%d s,cache:%d,miss:%d", new Object[]{Float.valueOf(fps()), Long.valueOf(getCurrentTime() / 1000), Long.valueOf(draw.cacheHitCount), Long.valueOf(draw.cacheMissCount)}));
                }
            }
            this.mRequestRender = false;
            unlockCanvasAndPost();
            return;
        }
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.handler != null) {
            this.handler.notifyDispSizeChanged(i3 - i, i4 - i2);
        }
        this.isSurfaceCreated = true;
    }

    public void toggle() {
        if (!this.isSurfaceCreated) {
            return;
        }
        if (this.handler == null) {
            start();
        } else if (this.handler.isStop()) {
            resume();
        } else {
            pause();
        }
    }

    public void pause() {
        if (this.handler != null) {
            this.handler.removeCallbacks(this.mResumeRunnable);
            this.handler.pause();
        }
    }

    public void resume() {
        if (this.handler != null && this.handler.isPrepared()) {
            this.mResumeTryCount = 0;
            this.handler.post(this.mResumeRunnable);
        } else if (this.handler == null) {
            restart();
        }
    }

    public boolean isPaused() {
        if (this.handler != null) {
            return this.handler.isStop();
        }
        return false;
    }

    public void restart() {
        stop();
        start();
    }

    public void start() {
        start(0);
    }

    public void start(long j) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler == null) {
            prepare();
            drawHandler = this.handler;
        } else {
            drawHandler.removeCallbacksAndMessages(null);
        }
        if (drawHandler != null) {
            drawHandler.obtainMessage(1, Long.valueOf(j)).sendToTarget();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = this.mTouchHelper.onTouchEvent(motionEvent);
        return !onTouchEvent ? super.onTouchEvent(motionEvent) : onTouchEvent;
    }

    public void seekTo(Long l) {
        if (this.handler != null) {
            this.handler.seekTo(l);
        }
    }

    public void enableDanmakuDrawingCache(boolean z) {
        this.mEnableDanmakuDrwaingCache = z;
    }

    public boolean isDanmakuDrawingCacheEnabled() {
        return this.mEnableDanmakuDrwaingCache;
    }

    public boolean isViewReady() {
        return this.isSurfaceCreated;
    }

    public int getViewWidth() {
        return super.getWidth();
    }

    public int getViewHeight() {
        return super.getHeight();
    }

    public void show() {
        showAndResumeDrawTask(null);
    }

    public void showAndResumeDrawTask(Long l) {
        this.mDanmakuVisible = true;
        this.mClearFlag = false;
        if (this.handler != null) {
            this.handler.showDanmakus(l);
        }
    }

    public void hide() {
        this.mDanmakuVisible = false;
        if (this.handler != null) {
            this.handler.hideDanmakus(false);
        }
    }

    public long hideAndPauseDrawTask() {
        this.mDanmakuVisible = false;
        if (this.handler == null) {
            return 0;
        }
        return this.handler.hideDanmakus(true);
    }

    public void clear() {
        if (isViewReady()) {
            if (!this.mDanmakuVisible || Thread.currentThread().getId() == this.mUiThreadId) {
                this.mClearFlag = true;
                postInvalidateCompat();
            } else {
                lockCanvasAndClear();
            }
        }
    }

    public boolean isShown() {
        return this.mDanmakuVisible && super.isShown();
    }

    public void setDrawingThreadType(int i) {
        this.mDrawingThreadType = i;
    }

    public long getCurrentTime() {
        if (this.handler != null) {
            return this.handler.getCurrentTime();
        }
        return 0;
    }

    @SuppressLint({"NewApi"})
    public boolean isHardwareAccelerated() {
        if (VERSION.SDK_INT >= 11) {
            return super.isHardwareAccelerated();
        }
        return false;
    }

    public void clearDanmakusOnScreen() {
        if (this.handler != null) {
            this.handler.clearDanmakusOnScreen();
        }
    }

    public void setOnDanmakuClickListener(OnDanmakuClickListener onDanmakuClickListener) {
        this.mOnDanmakuClickListener = onDanmakuClickListener;
    }

    public void setOnDanmakuClickListener(OnDanmakuClickListener onDanmakuClickListener, float f, float f2) {
        this.mOnDanmakuClickListener = onDanmakuClickListener;
        this.mXOff = f;
        this.mYOff = f2;
    }

    public OnDanmakuClickListener getOnDanmakuClickListener() {
        return this.mOnDanmakuClickListener;
    }

    public float getXOff() {
        return this.mXOff;
    }

    public float getYOff() {
        return this.mYOff;
    }

    public void forceRender() {
        this.mRequestRender = true;
        this.handler.forceRender();
    }
}
