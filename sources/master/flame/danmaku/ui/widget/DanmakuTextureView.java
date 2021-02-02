package master.flame.danmaku.ui.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
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

@SuppressLint({"NewApi"})
public class DanmakuTextureView extends TextureView implements IDanmakuView, IDanmakuViewController, SurfaceTextureListener {
    private static final int MAX_RECORD_SIZE = 50;
    private static final int ONE_SECOND = 1000;
    public static final String TAG = "DanmakuTextureView";
    private DrawHandler handler;
    private boolean isSurfaceCreated;
    private Callback mCallback;
    private boolean mDanmakuVisible = true;
    private LinkedList<Long> mDrawTimes;
    protected int mDrawingThreadType = 0;
    private boolean mEnableDanmakuDrwaingCache = true;
    private HandlerThread mHandlerThread;
    private OnDanmakuClickListener mOnDanmakuClickListener;
    private boolean mShowFps;
    private DanmakuTouchHelper mTouchHelper;
    private float mXOff;
    private float mYOff;

    public void forceRender() {
    }

    public View getView() {
        return this;
    }

    public boolean isHardwareAccelerated() {
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public DanmakuTextureView(Context context) {
        super(context);
        init();
    }

    @TargetApi(11)
    private void init() {
        setLayerType(2, null);
        setOpaque(false);
        setWillNotCacheDrawing(true);
        setDrawingCacheEnabled(false);
        setWillNotDraw(true);
        setSurfaceTextureListener(this);
        DrawHelper.useDrawColorToClearCanvas(true, true);
        this.mTouchHelper = DanmakuTouchHelper.instance(this);
    }

    public DanmakuTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public DanmakuTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public void addDanmaku(BaseDanmaku baseDanmaku) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.addDanmaku(baseDanmaku);
        }
    }

    public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.invalidateDanmaku(baseDanmaku, z);
        }
    }

    public void removeAllDanmakus(boolean z) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.removeAllDanmakus(z);
        }
    }

    public void removeAllLiveDanmakus() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.removeAllLiveDanmakus();
        }
    }

    public IDanmakus getCurrentVisibleDanmakus() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            return drawHandler.getCurrentVisibleDanmakus();
        }
        return null;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.setCallback(callback);
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.isSurfaceCreated = true;
    }

    public synchronized boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.isSurfaceCreated = false;
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.notifyDispSizeChanged(i, i2);
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

    private synchronized void stopDraw() {
        if (this.handler != null) {
            this.handler.quit();
            this.handler = null;
        }
        HandlerThread handlerThread = this.mHandlerThread;
        this.mHandlerThread = null;
        if (handlerThread != null) {
            try {
                handlerThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            handlerThread.quit();
        }
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
        DrawHandler drawHandler = this.handler;
        return drawHandler != null && drawHandler.isPrepared();
    }

    public DanmakuContext getConfig() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler == null) {
            return null;
        }
        return drawHandler.getConfig();
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

    public synchronized long drawDanmakus() {
        if (!this.isSurfaceCreated) {
            return 0;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!isShown()) {
            return -1;
        }
        Canvas lockCanvas = lockCanvas();
        if (lockCanvas != null) {
            if (this.handler != null) {
                RenderingState draw = this.handler.draw(lockCanvas);
                if (this.mShowFps) {
                    if (this.mDrawTimes == null) {
                        this.mDrawTimes = new LinkedList<>();
                    }
                    SystemClock.uptimeMillis();
                    DrawHelper.drawFPS(lockCanvas, String.format(Locale.getDefault(), "fps %.2f,time:%d s,cache:%d,miss:%d", new Object[]{Float.valueOf(fps()), Long.valueOf(getCurrentTime() / 1000), Long.valueOf(draw.cacheHitCount), Long.valueOf(draw.cacheMissCount)}));
                }
            }
            if (this.isSurfaceCreated) {
                unlockCanvasAndPost(lockCanvas);
            }
        }
        return SystemClock.uptimeMillis() - uptimeMillis;
    }

    public void toggle() {
        if (this.isSurfaceCreated) {
            DrawHandler drawHandler = this.handler;
            if (drawHandler == null) {
                start();
            } else if (drawHandler.isStop()) {
                resume();
            } else {
                pause();
            }
        }
    }

    public void pause() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.pause();
        }
    }

    public void resume() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null && drawHandler.isPrepared()) {
            this.handler.resume();
        } else if (this.handler == null) {
            restart();
        }
    }

    public boolean isPaused() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            return drawHandler.isStop();
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
        } else {
            drawHandler.removeCallbacksAndMessages(null);
        }
        this.handler.obtainMessage(1, Long.valueOf(j)).sendToTarget();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = this.mTouchHelper.onTouchEvent(motionEvent);
        return !onTouchEvent ? super.onTouchEvent(motionEvent) : onTouchEvent;
    }

    public void seekTo(Long l) {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.seekTo(l);
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
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.showDanmakus(l);
        }
    }

    public void hide() {
        this.mDanmakuVisible = false;
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.hideDanmakus(false);
        }
    }

    public long hideAndPauseDrawTask() {
        this.mDanmakuVisible = false;
        DrawHandler drawHandler = this.handler;
        if (drawHandler == null) {
            return 0;
        }
        return drawHandler.hideDanmakus(true);
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

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0016, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void clear() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isViewReady()     // Catch:{ all -> 0x0017 }
            if (r0 != 0) goto L_0x0009
            monitor-exit(r1)
            return
        L_0x0009:
            android.graphics.Canvas r0 = r1.lockCanvas()     // Catch:{ all -> 0x0017 }
            if (r0 == 0) goto L_0x0015
            master.flame.danmaku.controller.DrawHelper.clearCanvas(r0)     // Catch:{ all -> 0x0017 }
            r1.unlockCanvasAndPost(r0)     // Catch:{ all -> 0x0017 }
        L_0x0015:
            monitor-exit(r1)
            return
        L_0x0017:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.ui.widget.DanmakuTextureView.clear():void");
    }

    public boolean isShown() {
        return this.mDanmakuVisible && super.isShown();
    }

    public void setDrawingThreadType(int i) {
        this.mDrawingThreadType = i;
    }

    public long getCurrentTime() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            return drawHandler.getCurrentTime();
        }
        return 0;
    }

    public void clearDanmakusOnScreen() {
        DrawHandler drawHandler = this.handler;
        if (drawHandler != null) {
            drawHandler.clearDanmakusOnScreen();
        }
    }
}
