package master.flame.danmaku.controller;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Choreographer;
import java.util.LinkedList;
import master.flame.danmaku.controller.IDrawTask.TaskListener;
import master.flame.danmaku.danmaku.model.AbsDanmakuSync;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.danmaku.renderer.IRenderer.RenderingState;
import master.flame.danmaku.danmaku.util.SystemClock;
import tv.cjump.jni.DeviceUtils;

public class DrawHandler extends Handler {
    private static final int CLEAR_DANMAKUS_ON_SCREEN = 13;
    private static final int FORCE_RENDER = 14;
    private static final int HIDE_DANMAKUS = 9;
    private static final long INDEFINITE_TIME = 10000000;
    private static final int MAX_RECORD_SIZE = 500;
    private static final int NOTIFY_DISP_SIZE_CHANGED = 10;
    private static final int NOTIFY_RENDERING = 11;
    private static final int PAUSE = 7;
    public static final int PREPARE = 5;
    private static final int QUIT = 6;
    public static final int RESUME = 3;
    public static final int SEEK_POS = 4;
    private static final int SHOW_DANMAKUS = 8;
    public static final int START = 1;
    public static final int UPDATE = 2;
    private static final int UPDATE_WHEN_PAUSED = 12;
    public IDrawTask drawTask;
    /* access modifiers changed from: private */
    public Callback mCallback;
    /* access modifiers changed from: private */
    public DanmakuContext mContext;
    private long mCordonTime = 30;
    /* access modifiers changed from: private */
    public long mCordonTime2 = 60;
    /* access modifiers changed from: private */
    public IDanmakuViewController mDanmakuView;
    /* access modifiers changed from: private */
    public boolean mDanmakusVisible = true;
    private long mDesireSeekingTime;
    private AbsDisplayer mDisp;
    /* access modifiers changed from: private */
    public LinkedList<Long> mDrawTimes = new LinkedList<>();
    private FrameCallback mFrameCallback;
    /* access modifiers changed from: private */
    public long mFrameUpdateRate = 16;
    /* access modifiers changed from: private */
    public boolean mIdleSleep = (true ^ DeviceUtils.isProblemBoxDevice());
    private boolean mInSeekingAction;
    private boolean mInSyncAction;
    /* access modifiers changed from: private */
    public boolean mInWaitingState;
    private long mLastDeltaTime;
    /* access modifiers changed from: private */
    public boolean mNonBlockModeEnable;
    private BaseDanmakuParser mParser;
    /* access modifiers changed from: private */
    public boolean mReady;
    private long mRemainingTime;
    /* access modifiers changed from: private */
    public final RenderingState mRenderingState = new RenderingState();
    private UpdateThread mThread;
    private long mThresholdTime;
    private long mTimeBase;
    private boolean mUpdateInSeparateThread;
    /* access modifiers changed from: private */
    public long pausedPosition = 0;
    /* access modifiers changed from: private */
    public boolean quitFlag = true;
    /* access modifiers changed from: private */
    public DanmakuTimer timer = new DanmakuTimer();

    public interface Callback {
        void danmakuShown(BaseDanmaku baseDanmaku);

        void drawingFinished();

        void prepared();

        void updateTimer(DanmakuTimer danmakuTimer);
    }

    @TargetApi(16)
    private class FrameCallback implements android.view.Choreographer.FrameCallback {
        private FrameCallback() {
        }

        public void doFrame(long j) {
            DrawHandler.this.sendEmptyMessage(2);
        }
    }

    public DrawHandler(Looper looper, IDanmakuViewController iDanmakuViewController, boolean z) {
        super(looper);
        bindView(iDanmakuViewController);
        if (z) {
            showDanmakus(null);
        } else {
            hideDanmakus(false);
        }
        this.mDanmakusVisible = z;
    }

    private void bindView(IDanmakuViewController iDanmakuViewController) {
        this.mDanmakuView = iDanmakuViewController;
    }

    public void setIdleSleep(boolean z) {
        this.mIdleSleep = z;
    }

    public void enableNonBlockMode(boolean z) {
        this.mNonBlockModeEnable = z;
    }

    public void setConfig(DanmakuContext danmakuContext) {
        this.mContext = danmakuContext;
    }

    public void setParser(BaseDanmakuParser baseDanmakuParser) {
        this.mParser = baseDanmakuParser;
        DanmakuTimer timer2 = baseDanmakuParser.getTimer();
        if (timer2 != null) {
            this.timer = timer2;
        }
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void quit() {
        this.quitFlag = true;
        sendEmptyMessage(6);
    }

    public boolean isStop() {
        return this.quitFlag;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00d8, code lost:
        removeMessages(3);
        removeMessages(2);
        r12 = r11.drawTask;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e0, code lost:
        if (r12 == null) goto L_0x00e5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00e2, code lost:
        r12.onPlayStateChanged(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00e6, code lost:
        if (r0 != 6) goto L_0x00ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00e8, code lost:
        removeCallbacksAndMessages(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00ec, code lost:
        r11.quitFlag = true;
        syncTimerIfNeeded();
        r11.pausedPosition = r11.timer.currMillisecond;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00f9, code lost:
        if (r11.mUpdateInSeparateThread == false) goto L_0x0101;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00fb, code lost:
        notifyRendering();
        quitUpdateThread();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0103, code lost:
        if (r11.mFrameCallback == null) goto L_0x0114;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0109, code lost:
        if (android.os.Build.VERSION.SDK_INT < 16) goto L_0x0114;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x010b, code lost:
        android.view.Choreographer.getInstance().removeFrameCallback(r11.mFrameCallback);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0114, code lost:
        if (r0 != 6) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0116, code lost:
        r12 = r11.drawTask;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0118, code lost:
        if (r12 == null) goto L_0x011d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x011a, code lost:
        r12.quit();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x011d, code lost:
        r12 = r11.mParser;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x011f, code lost:
        if (r12 == null) goto L_0x0124;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0121, code lost:
        r12.release();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x012c, code lost:
        if (getLooper() == android.os.Looper.getMainLooper()) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x012e, code lost:
        getLooper().quit();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x017b, code lost:
        r7 = (java.lang.Long) r12.obj;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x017f, code lost:
        if (r7 == null) goto L_0x0188;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0181, code lost:
        r11.pausedPosition = r7.longValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0188, code lost:
        r11.pausedPosition = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x018d, code lost:
        if (r0 != 4) goto L_0x01c7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x018f, code lost:
        r11.quitFlag = true;
        quitUpdateThread();
        r12 = (java.lang.Long) r12.obj;
        r11.mTimeBase -= r12.longValue() - r11.timer.currMillisecond;
        r11.timer.update(r12.longValue());
        r11.mContext.mGlobalFlagValues.updateMeasureFlag();
        r0 = r11.drawTask;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x01b8, code lost:
        if (r0 == null) goto L_0x01c1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x01ba, code lost:
        r0.seek(r12.longValue());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x01c1, code lost:
        r11.pausedPosition = r12.longValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x01c7, code lost:
        removeMessages(7);
        r11.quitFlag = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x01cf, code lost:
        if (r11.mReady == false) goto L_0x0201;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x01d1, code lost:
        r11.mRenderingState.reset();
        r11.mDrawTimes.clear();
        r0 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis();
        r7 = r11.pausedPosition;
        r11.mTimeBase = r0 - r7;
        r11.timer.update(r7);
        removeMessages(3);
        sendEmptyMessage(2);
        r11.drawTask.start();
        notifyRendering();
        r11.mInSeekingAction = false;
        r12 = r11.drawTask;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x01fb, code lost:
        if (r12 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x01fd, code lost:
        r12.onPlayStateChanged(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0201, code lost:
        sendEmptyMessageDelayed(3, 100);
     */
    /* JADX WARNING: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ca  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void handleMessage(android.os.Message r12) {
        /*
            r11 = this;
            int r0 = r12.what
            r1 = 100
            r3 = 3
            r4 = 2
            r5 = 0
            r6 = 1
            switch(r0) {
                case 1: goto L_0x017b;
                case 2: goto L_0x015a;
                case 3: goto L_0x01c7;
                case 4: goto L_0x018c;
                case 5: goto L_0x0137;
                case 6: goto L_0x00e5;
                case 7: goto L_0x00d8;
                case 8: goto L_0x0097;
                case 9: goto L_0x0069;
                case 10: goto L_0x003f;
                case 11: goto L_0x003a;
                case 12: goto L_0x0023;
                case 13: goto L_0x0016;
                case 14: goto L_0x000d;
                default: goto L_0x000b;
            }
        L_0x000b:
            goto L_0x0204
        L_0x000d:
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            if (r12 == 0) goto L_0x0204
            r12.requestRender()
            goto L_0x0204
        L_0x0016:
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            if (r12 == 0) goto L_0x0204
            long r0 = r11.getCurrentTime()
            r12.clearDanmakusOnScreen(r0)
            goto L_0x0204
        L_0x0023:
            boolean r12 = r11.quitFlag
            if (r12 == 0) goto L_0x0204
            master.flame.danmaku.controller.IDanmakuViewController r12 = r11.mDanmakuView
            if (r12 == 0) goto L_0x0204
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            r12.requestClear()
            master.flame.danmaku.controller.IDanmakuViewController r12 = r11.mDanmakuView
            r12.drawDanmakus()
            r11.notifyRendering()
            goto L_0x0204
        L_0x003a:
            r11.notifyRendering()
            goto L_0x0204
        L_0x003f:
            master.flame.danmaku.danmaku.model.android.DanmakuContext r0 = r11.mContext
            master.flame.danmaku.danmaku.model.android.DanmakuFactory r0 = r0.mDanmakuFactory
            master.flame.danmaku.danmaku.model.android.DanmakuContext r1 = r11.mContext
            r0.notifyDispSizeChanged(r1)
            java.lang.Object r12 = r12.obj
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            if (r12 == 0) goto L_0x0204
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L_0x0204
            master.flame.danmaku.danmaku.model.android.DanmakuContext r12 = r11.mContext
            master.flame.danmaku.danmaku.model.GlobalFlagValues r12 = r12.mGlobalFlagValues
            r12.updateMeasureFlag()
            master.flame.danmaku.danmaku.model.android.DanmakuContext r12 = r11.mContext
            master.flame.danmaku.danmaku.model.GlobalFlagValues r12 = r12.mGlobalFlagValues
            r12.updateVisibleFlag()
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            r12.requestClearRetainer()
            goto L_0x0204
        L_0x0069:
            r11.mDanmakusVisible = r5
            master.flame.danmaku.controller.IDanmakuViewController r1 = r11.mDanmakuView
            if (r1 == 0) goto L_0x0072
            r1.clear()
        L_0x0072:
            master.flame.danmaku.controller.IDrawTask r1 = r11.drawTask
            if (r1 == 0) goto L_0x007e
            r1.requestClear()
            master.flame.danmaku.controller.IDrawTask r1 = r11.drawTask
            r1.requestHide()
        L_0x007e:
            java.lang.Object r12 = r12.obj
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r1 = r12.booleanValue()
            if (r1 == 0) goto L_0x008f
            master.flame.danmaku.controller.IDrawTask r1 = r11.drawTask
            if (r1 == 0) goto L_0x008f
            r1.quit()
        L_0x008f:
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L_0x00d8
            goto L_0x0204
        L_0x0097:
            r11.mDanmakusVisible = r6
            java.lang.Object r7 = r12.obj
            java.lang.Long r7 = (java.lang.Long) r7
            master.flame.danmaku.controller.IDrawTask r8 = r11.drawTask
            if (r8 == 0) goto L_0x00c5
            if (r7 != 0) goto L_0x00b2
            master.flame.danmaku.danmaku.model.DanmakuTimer r7 = r11.timer
            long r8 = r11.getCurrentTime()
            r7.update(r8)
            master.flame.danmaku.controller.IDrawTask r7 = r11.drawTask
            r7.requestClear()
            goto L_0x00c5
        L_0x00b2:
            r8.start()
            master.flame.danmaku.controller.IDrawTask r8 = r11.drawTask
            long r9 = r7.longValue()
            r8.seek(r9)
            master.flame.danmaku.controller.IDrawTask r7 = r11.drawTask
            r7.requestClear()
            r7 = 1
            goto L_0x00c6
        L_0x00c5:
            r7 = 0
        L_0x00c6:
            boolean r8 = r11.quitFlag
            if (r8 == 0) goto L_0x00d1
            master.flame.danmaku.controller.IDanmakuViewController r8 = r11.mDanmakuView
            if (r8 == 0) goto L_0x00d1
            r8.drawDanmakus()
        L_0x00d1:
            r11.notifyRendering()
            if (r7 != 0) goto L_0x017b
            goto L_0x0204
        L_0x00d8:
            r11.removeMessages(r3)
            r11.removeMessages(r4)
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            if (r12 == 0) goto L_0x00e5
            r12.onPlayStateChanged(r4)
        L_0x00e5:
            r12 = 6
            if (r0 != r12) goto L_0x00ec
            r1 = 0
            r11.removeCallbacksAndMessages(r1)
        L_0x00ec:
            r11.quitFlag = r6
            r11.syncTimerIfNeeded()
            master.flame.danmaku.danmaku.model.DanmakuTimer r1 = r11.timer
            long r1 = r1.currMillisecond
            r11.pausedPosition = r1
            boolean r1 = r11.mUpdateInSeparateThread
            if (r1 == 0) goto L_0x0101
            r11.notifyRendering()
            r11.quitUpdateThread()
        L_0x0101:
            master.flame.danmaku.controller.DrawHandler$FrameCallback r1 = r11.mFrameCallback
            if (r1 == 0) goto L_0x0114
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 16
            if (r1 < r2) goto L_0x0114
            android.view.Choreographer r1 = android.view.Choreographer.getInstance()
            master.flame.danmaku.controller.DrawHandler$FrameCallback r2 = r11.mFrameCallback
            r1.removeFrameCallback(r2)
        L_0x0114:
            if (r0 != r12) goto L_0x0204
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            if (r12 == 0) goto L_0x011d
            r12.quit()
        L_0x011d:
            master.flame.danmaku.danmaku.parser.BaseDanmakuParser r12 = r11.mParser
            if (r12 == 0) goto L_0x0124
            r12.release()
        L_0x0124:
            android.os.Looper r12 = r11.getLooper()
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            if (r12 == r0) goto L_0x0204
            android.os.Looper r12 = r11.getLooper()
            r12.quit()
            goto L_0x0204
        L_0x0137:
            long r3 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis()
            r11.mTimeBase = r3
            master.flame.danmaku.danmaku.parser.BaseDanmakuParser r12 = r11.mParser
            if (r12 == 0) goto L_0x0154
            master.flame.danmaku.controller.IDanmakuViewController r12 = r11.mDanmakuView
            boolean r12 = r12.isViewReady()
            if (r12 != 0) goto L_0x014a
            goto L_0x0154
        L_0x014a:
            master.flame.danmaku.controller.DrawHandler$1 r12 = new master.flame.danmaku.controller.DrawHandler$1
            r12.<init>()
            r11.prepare(r12)
            goto L_0x0204
        L_0x0154:
            r12 = 5
            r11.sendEmptyMessageDelayed(r12, r1)
            goto L_0x0204
        L_0x015a:
            master.flame.danmaku.danmaku.model.android.DanmakuContext r12 = r11.mContext
            byte r12 = r12.updateMethod
            if (r12 != 0) goto L_0x0165
            r11.updateInChoreographer()
            goto L_0x0204
        L_0x0165:
            master.flame.danmaku.danmaku.model.android.DanmakuContext r12 = r11.mContext
            byte r12 = r12.updateMethod
            if (r12 != r6) goto L_0x0170
            r11.updateInNewThread()
            goto L_0x0204
        L_0x0170:
            master.flame.danmaku.danmaku.model.android.DanmakuContext r12 = r11.mContext
            byte r12 = r12.updateMethod
            if (r12 != r4) goto L_0x0204
            r11.updateInCurrentThread()
            goto L_0x0204
        L_0x017b:
            java.lang.Object r7 = r12.obj
            java.lang.Long r7 = (java.lang.Long) r7
            if (r7 == 0) goto L_0x0188
            long r7 = r7.longValue()
            r11.pausedPosition = r7
            goto L_0x018c
        L_0x0188:
            r7 = 0
            r11.pausedPosition = r7
        L_0x018c:
            r7 = 4
            if (r0 != r7) goto L_0x01c7
            r11.quitFlag = r6
            r11.quitUpdateThread()
            java.lang.Object r12 = r12.obj
            java.lang.Long r12 = (java.lang.Long) r12
            long r7 = r12.longValue()
            master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r11.timer
            long r9 = r0.currMillisecond
            long r7 = r7 - r9
            long r9 = r11.mTimeBase
            long r9 = r9 - r7
            r11.mTimeBase = r9
            master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r11.timer
            long r7 = r12.longValue()
            r0.update(r7)
            master.flame.danmaku.danmaku.model.android.DanmakuContext r0 = r11.mContext
            master.flame.danmaku.danmaku.model.GlobalFlagValues r0 = r0.mGlobalFlagValues
            r0.updateMeasureFlag()
            master.flame.danmaku.controller.IDrawTask r0 = r11.drawTask
            if (r0 == 0) goto L_0x01c1
            long r7 = r12.longValue()
            r0.seek(r7)
        L_0x01c1:
            long r7 = r12.longValue()
            r11.pausedPosition = r7
        L_0x01c7:
            r12 = 7
            r11.removeMessages(r12)
            r11.quitFlag = r5
            boolean r12 = r11.mReady
            if (r12 == 0) goto L_0x0201
            master.flame.danmaku.danmaku.renderer.IRenderer$RenderingState r12 = r11.mRenderingState
            r12.reset()
            java.util.LinkedList<java.lang.Long> r12 = r11.mDrawTimes
            r12.clear()
            long r0 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis()
            long r7 = r11.pausedPosition
            long r0 = r0 - r7
            r11.mTimeBase = r0
            master.flame.danmaku.danmaku.model.DanmakuTimer r12 = r11.timer
            r12.update(r7)
            r11.removeMessages(r3)
            r11.sendEmptyMessage(r4)
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            r12.start()
            r11.notifyRendering()
            r11.mInSeekingAction = r5
            master.flame.danmaku.controller.IDrawTask r12 = r11.drawTask
            if (r12 == 0) goto L_0x0204
            r12.onPlayStateChanged(r6)
            goto L_0x0204
        L_0x0201:
            r11.sendEmptyMessageDelayed(r3, r1)
        L_0x0204:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawHandler.handleMessage(android.os.Message):void");
    }

    private synchronized void quitUpdateThread() {
        UpdateThread updateThread = this.mThread;
        this.mThread = null;
        if (updateThread != null) {
            synchronized (this.drawTask) {
                this.drawTask.notifyAll();
            }
            updateThread.quit();
            try {
                updateThread.join(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return;
    }

    private void updateInCurrentThread() {
        if (!this.quitFlag) {
            long syncTimer = syncTimer(SystemClock.uptimeMillis());
            if (syncTimer >= 0 || this.mNonBlockModeEnable) {
                long drawDanmakus = this.mDanmakuView.drawDanmakus();
                removeMessages(2);
                if (drawDanmakus > this.mCordonTime2) {
                    this.timer.add(drawDanmakus);
                    this.mDrawTimes.clear();
                }
                if (!this.mDanmakusVisible) {
                    waitRendering(INDEFINITE_TIME);
                    return;
                }
                if (this.mRenderingState.nothingRendered && this.mIdleSleep) {
                    long j = this.mRenderingState.endTime - this.timer.currMillisecond;
                    if (j > 500) {
                        waitRendering(j - 10);
                        return;
                    }
                }
                long j2 = this.mFrameUpdateRate;
                if (drawDanmakus < j2) {
                    sendEmptyMessageDelayed(2, j2 - drawDanmakus);
                } else {
                    sendEmptyMessage(2);
                }
            } else {
                removeMessages(2);
                sendEmptyMessageDelayed(2, 60 - syncTimer);
            }
        }
    }

    private void updateInNewThread() {
        if (this.mThread == null) {
            this.mThread = new UpdateThread("DFM Update") {
                public void run() {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    while (!isQuited() && !DrawHandler.this.quitFlag) {
                        long uptimeMillis2 = SystemClock.uptimeMillis();
                        if (DrawHandler.this.mFrameUpdateRate - (SystemClock.uptimeMillis() - uptimeMillis) <= 1 || DrawHandler.this.mNonBlockModeEnable) {
                            long access$600 = DrawHandler.this.syncTimer(uptimeMillis2);
                            if (access$600 >= 0 || DrawHandler.this.mNonBlockModeEnable) {
                                long drawDanmakus = DrawHandler.this.mDanmakuView.drawDanmakus();
                                if (drawDanmakus > DrawHandler.this.mCordonTime2) {
                                    DrawHandler.this.timer.add(drawDanmakus);
                                    DrawHandler.this.mDrawTimes.clear();
                                }
                                if (!DrawHandler.this.mDanmakusVisible) {
                                    DrawHandler.this.waitRendering(DrawHandler.INDEFINITE_TIME);
                                } else if (DrawHandler.this.mRenderingState.nothingRendered && DrawHandler.this.mIdleSleep) {
                                    long j = DrawHandler.this.mRenderingState.endTime - DrawHandler.this.timer.currMillisecond;
                                    if (j > 500) {
                                        DrawHandler.this.notifyRendering();
                                        DrawHandler.this.waitRendering(j - 10);
                                    }
                                }
                            } else {
                                SystemClock.sleep(60 - access$600);
                            }
                            uptimeMillis = uptimeMillis2;
                        } else {
                            SystemClock.sleep(1);
                        }
                    }
                }
            };
            this.mThread.start();
        }
    }

    @TargetApi(16)
    private void updateInChoreographer() {
        if (!this.quitFlag) {
            Choreographer.getInstance().postFrameCallback(this.mFrameCallback);
            if (syncTimer(SystemClock.uptimeMillis()) < 0) {
                removeMessages(2);
                return;
            }
            long drawDanmakus = this.mDanmakuView.drawDanmakus();
            removeMessages(2);
            if (drawDanmakus > this.mCordonTime2) {
                this.timer.add(drawDanmakus);
                this.mDrawTimes.clear();
            }
            if (!this.mDanmakusVisible) {
                waitRendering(INDEFINITE_TIME);
                return;
            }
            if (this.mRenderingState.nothingRendered && this.mIdleSleep) {
                long j = this.mRenderingState.endTime - this.timer.currMillisecond;
                if (j > 500) {
                    waitRendering(j - 10);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long syncTimer(long r12) {
        /*
            r11 = this;
            boolean r0 = r11.mInSeekingAction
            r1 = 0
            if (r0 != 0) goto L_0x00b3
            boolean r0 = r11.mInSyncAction
            if (r0 == 0) goto L_0x000c
            goto L_0x00b3
        L_0x000c:
            r0 = 1
            r11.mInSyncAction = r0
            long r3 = r11.mTimeBase
            long r12 = r12 - r3
            boolean r0 = r11.mNonBlockModeEnable
            if (r0 == 0) goto L_0x0027
            master.flame.danmaku.controller.DrawHandler$Callback r12 = r11.mCallback
            if (r12 == 0) goto L_0x00b0
            master.flame.danmaku.danmaku.model.DanmakuTimer r13 = r11.timer
            r12.updateTimer(r13)
            master.flame.danmaku.danmaku.model.DanmakuTimer r12 = r11.timer
            long r1 = r12.lastInterval()
            goto L_0x00b0
        L_0x0027:
            boolean r0 = r11.mDanmakusVisible
            if (r0 == 0) goto L_0x00a0
            master.flame.danmaku.danmaku.renderer.IRenderer$RenderingState r0 = r11.mRenderingState
            boolean r0 = r0.nothingRendered
            if (r0 != 0) goto L_0x00a0
            boolean r0 = r11.mInWaitingState
            if (r0 == 0) goto L_0x0037
            goto L_0x00a0
        L_0x0037:
            master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r11.timer
            long r3 = r0.currMillisecond
            long r12 = r12 - r3
            long r3 = r11.mFrameUpdateRate
            long r5 = r11.getAverageRenderingTime()
            long r3 = java.lang.Math.max(r3, r5)
            r5 = 2000(0x7d0, double:9.88E-321)
            int r0 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r0 > 0) goto L_0x008c
            master.flame.danmaku.danmaku.renderer.IRenderer$RenderingState r0 = r11.mRenderingState
            long r5 = r0.consumingTime
            long r7 = r11.mCordonTime
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 > 0) goto L_0x008c
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 <= 0) goto L_0x005b
            goto L_0x008c
        L_0x005b:
            long r0 = r11.mFrameUpdateRate
            long r5 = r12 / r0
            long r3 = r3 + r5
            long r0 = java.lang.Math.max(r0, r3)
            long r2 = r11.mCordonTime
            long r0 = java.lang.Math.min(r2, r0)
            long r2 = r11.mLastDeltaTime
            long r4 = r0 - r2
            r6 = 3
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 <= 0) goto L_0x0087
            r6 = 8
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 >= 0) goto L_0x0087
            long r4 = r11.mFrameUpdateRate
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L_0x0087
            long r4 = r11.mCordonTime
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 > 0) goto L_0x0087
            r0 = r2
        L_0x0087:
            long r12 = r12 - r0
            r11.mLastDeltaTime = r0
            r1 = r0
            goto L_0x008f
        L_0x008c:
            r9 = r12
            r12 = r1
            r1 = r9
        L_0x008f:
            r11.mRemainingTime = r12
            master.flame.danmaku.danmaku.model.DanmakuTimer r12 = r11.timer
            r12.add(r1)
            master.flame.danmaku.controller.DrawHandler$Callback r12 = r11.mCallback
            if (r12 == 0) goto L_0x00b0
            master.flame.danmaku.danmaku.model.DanmakuTimer r13 = r11.timer
            r12.updateTimer(r13)
            goto L_0x00b0
        L_0x00a0:
            master.flame.danmaku.danmaku.model.DanmakuTimer r0 = r11.timer
            r0.update(r12)
            r11.mRemainingTime = r1
            master.flame.danmaku.controller.DrawHandler$Callback r12 = r11.mCallback
            if (r12 == 0) goto L_0x00b0
            master.flame.danmaku.danmaku.model.DanmakuTimer r13 = r11.timer
            r12.updateTimer(r13)
        L_0x00b0:
            r12 = 0
            r11.mInSyncAction = r12
        L_0x00b3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawHandler.syncTimer(long):long");
    }

    private void syncTimerIfNeeded() {
        if (this.mInWaitingState) {
            syncTimer(SystemClock.uptimeMillis());
        }
    }

    /* access modifiers changed from: private */
    public void initRenderingConfigs() {
        this.mCordonTime = Math.max(33, (long) (((float) 16) * 2.5f));
        this.mCordonTime2 = (long) (((float) this.mCordonTime) * 2.5f);
        this.mFrameUpdateRate = Math.max(16, 15);
        this.mThresholdTime = this.mFrameUpdateRate + 3;
    }

    private void prepare(final Runnable runnable) {
        if (this.drawTask == null) {
            this.drawTask = createDrawTask(this.mDanmakuView.isDanmakuDrawingCacheEnabled(), this.timer, this.mDanmakuView.getContext(), this.mDanmakuView.getViewWidth(), this.mDanmakuView.getViewHeight(), this.mDanmakuView.isHardwareAccelerated(), new TaskListener() {
                public void ready() {
                    DrawHandler.this.initRenderingConfigs();
                    runnable.run();
                }

                public void onDanmakuAdd(BaseDanmaku baseDanmaku) {
                    if (!baseDanmaku.isTimeOut()) {
                        long actualTime = baseDanmaku.getActualTime() - DrawHandler.this.getCurrentTime();
                        if (actualTime < DrawHandler.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION && (DrawHandler.this.mInWaitingState || DrawHandler.this.mRenderingState.nothingRendered)) {
                            DrawHandler.this.notifyRendering();
                        } else if (actualTime > 0 && actualTime <= DrawHandler.this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) {
                            DrawHandler.this.sendEmptyMessageDelayed(11, actualTime);
                        }
                    }
                }

                public void onDanmakuShown(BaseDanmaku baseDanmaku) {
                    if (DrawHandler.this.mCallback != null) {
                        DrawHandler.this.mCallback.danmakuShown(baseDanmaku);
                    }
                }

                public void onDanmakusDrawingFinished() {
                    if (DrawHandler.this.mCallback != null) {
                        DrawHandler.this.mCallback.drawingFinished();
                    }
                }

                public void onDanmakuConfigChanged() {
                    DrawHandler.this.redrawIfNeeded();
                }
            });
            return;
        }
        runnable.run();
    }

    public boolean isPrepared() {
        return this.mReady;
    }

    private IDrawTask createDrawTask(boolean z, DanmakuTimer danmakuTimer, Context context, int i, int i2, boolean z2, TaskListener taskListener) {
        this.mDisp = this.mContext.getDisplayer();
        this.mDisp.setSize(i, i2);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.mDisp.setDensities(displayMetrics.density, displayMetrics.densityDpi, displayMetrics.scaledDensity);
        this.mDisp.resetSlopPixel(this.mContext.scaleTextSize);
        this.mDisp.setHardwareAccelerated(z2);
        IDrawTask cacheManagingDrawTask = z ? new CacheManagingDrawTask(danmakuTimer, this.mContext, taskListener) : new DrawTask(danmakuTimer, this.mContext, taskListener);
        cacheManagingDrawTask.setParser(this.mParser);
        cacheManagingDrawTask.prepare();
        obtainMessage(10, Boolean.valueOf(false)).sendToTarget();
        return cacheManagingDrawTask;
    }

    public void seekTo(Long l) {
        this.mInSeekingAction = true;
        this.mDesireSeekingTime = l.longValue();
        removeMessages(2);
        removeMessages(3);
        removeMessages(4);
        obtainMessage(4, l).sendToTarget();
    }

    public void addDanmaku(BaseDanmaku baseDanmaku) {
        if (this.drawTask != null) {
            baseDanmaku.flags = this.mContext.mGlobalFlagValues;
            baseDanmaku.setTimer(this.timer);
            this.drawTask.addDanmaku(baseDanmaku);
            obtainMessage(11).sendToTarget();
        }
    }

    public void invalidateDanmaku(BaseDanmaku baseDanmaku, boolean z) {
        IDrawTask iDrawTask = this.drawTask;
        if (!(iDrawTask == null || baseDanmaku == null)) {
            iDrawTask.invalidateDanmaku(baseDanmaku, z);
        }
        redrawIfNeeded();
    }

    public void resume() {
        removeMessages(7);
        sendEmptyMessage(3);
    }

    public void prepare() {
        boolean z = false;
        this.mReady = false;
        if (VERSION.SDK_INT < 16 && this.mContext.updateMethod == 0) {
            this.mContext.updateMethod = 2;
        }
        if (this.mContext.updateMethod == 0) {
            this.mFrameCallback = new FrameCallback();
        }
        if (this.mContext.updateMethod == 1) {
            z = true;
        }
        this.mUpdateInSeparateThread = z;
        sendEmptyMessage(5);
    }

    public void pause() {
        removeMessages(3);
        syncTimerIfNeeded();
        sendEmptyMessage(7);
    }

    public void showDanmakus(Long l) {
        if (!this.mDanmakusVisible) {
            this.mDanmakusVisible = true;
            removeMessages(8);
            removeMessages(9);
            obtainMessage(8, l).sendToTarget();
        }
    }

    public long hideDanmakus(boolean z) {
        if (!this.mDanmakusVisible) {
            return this.timer.currMillisecond;
        }
        this.mDanmakusVisible = false;
        removeMessages(8);
        removeMessages(9);
        obtainMessage(9, Boolean.valueOf(z)).sendToTarget();
        return this.timer.currMillisecond;
    }

    public void forceRender() {
        removeMessages(14);
        obtainMessage(14).sendToTarget();
    }

    public boolean getVisibility() {
        return this.mDanmakusVisible;
    }

    public RenderingState draw(Canvas canvas) {
        if (this.drawTask == null) {
            return this.mRenderingState;
        }
        if (!this.mInWaitingState) {
            AbsDanmakuSync absDanmakuSync = this.mContext.danmakuSync;
            if (absDanmakuSync != null) {
                boolean isSyncPlayingState = absDanmakuSync.isSyncPlayingState();
                if (isSyncPlayingState || !this.quitFlag) {
                    int syncState = absDanmakuSync.getSyncState();
                    if (syncState == 2) {
                        long j = this.timer.currMillisecond;
                        long uptimeMillis = absDanmakuSync.getUptimeMillis();
                        long j2 = uptimeMillis - j;
                        if (Math.abs(j2) > absDanmakuSync.getThresholdTimeMills()) {
                            if (isSyncPlayingState && this.quitFlag) {
                                resume();
                            }
                            this.drawTask.requestSync(j, uptimeMillis, j2);
                            this.timer.update(uptimeMillis);
                            this.mTimeBase -= j2;
                            this.mRemainingTime = 0;
                        }
                    } else if (syncState == 1 && isSyncPlayingState && !this.quitFlag) {
                        pause();
                    }
                }
            }
        }
        this.mDisp.setExtraData(canvas);
        this.mRenderingState.set(this.drawTask.draw(this.mDisp));
        recordRenderingTime();
        return this.mRenderingState;
    }

    /* access modifiers changed from: private */
    public void redrawIfNeeded() {
        if (this.quitFlag && this.mDanmakusVisible) {
            removeMessages(12);
            sendEmptyMessageDelayed(12, 100);
        }
    }

    /* access modifiers changed from: private */
    public void notifyRendering() {
        if (this.mInWaitingState) {
            IDrawTask iDrawTask = this.drawTask;
            if (iDrawTask != null) {
                iDrawTask.requestClear();
            }
            if (this.mUpdateInSeparateThread) {
                synchronized (this) {
                    this.mDrawTimes.clear();
                }
                synchronized (this.drawTask) {
                    this.drawTask.notifyAll();
                }
            } else {
                this.mDrawTimes.clear();
                removeMessages(2);
                sendEmptyMessage(2);
            }
            this.mInWaitingState = false;
        }
    }

    /* access modifiers changed from: private */
    public void waitRendering(long j) {
        if (!isStop() && isPrepared() && !this.mInSeekingAction) {
            this.mRenderingState.sysTime = SystemClock.uptimeMillis();
            this.mInWaitingState = true;
            if (this.mUpdateInSeparateThread) {
                if (this.mThread != null) {
                    try {
                        synchronized (this.drawTask) {
                            if (j == INDEFINITE_TIME) {
                                this.drawTask.wait();
                            } else {
                                this.drawTask.wait(j);
                            }
                            sendEmptyMessage(11);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            } else if (j == INDEFINITE_TIME) {
                removeMessages(11);
                removeMessages(2);
            } else {
                removeMessages(11);
                removeMessages(2);
                sendEmptyMessageDelayed(11, j);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0030, code lost:
        return 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized long getAverageRenderingTime() {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.LinkedList<java.lang.Long> r0 = r5.mDrawTimes     // Catch:{ all -> 0x0031 }
            int r0 = r0.size()     // Catch:{ all -> 0x0031 }
            r1 = 0
            if (r0 > 0) goto L_0x000d
            monitor-exit(r5)
            return r1
        L_0x000d:
            java.util.LinkedList<java.lang.Long> r3 = r5.mDrawTimes     // Catch:{ all -> 0x0031 }
            java.lang.Object r3 = r3.peekFirst()     // Catch:{ all -> 0x0031 }
            java.lang.Long r3 = (java.lang.Long) r3     // Catch:{ all -> 0x0031 }
            java.util.LinkedList<java.lang.Long> r4 = r5.mDrawTimes     // Catch:{ all -> 0x0031 }
            java.lang.Object r4 = r4.peekLast()     // Catch:{ all -> 0x0031 }
            java.lang.Long r4 = (java.lang.Long) r4     // Catch:{ all -> 0x0031 }
            if (r3 == 0) goto L_0x002f
            if (r4 != 0) goto L_0x0022
            goto L_0x002f
        L_0x0022:
            long r1 = r4.longValue()     // Catch:{ all -> 0x0031 }
            long r3 = r3.longValue()     // Catch:{ all -> 0x0031 }
            long r1 = r1 - r3
            long r3 = (long) r0     // Catch:{ all -> 0x0031 }
            long r1 = r1 / r3
            monitor-exit(r5)
            return r1
        L_0x002f:
            monitor-exit(r5)
            return r1
        L_0x0031:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DrawHandler.getAverageRenderingTime():long");
    }

    private synchronized void recordRenderingTime() {
        this.mDrawTimes.addLast(Long.valueOf(SystemClock.uptimeMillis()));
        if (this.mDrawTimes.size() > 500) {
            this.mDrawTimes.removeFirst();
        }
    }

    public IDisplayer getDisplayer() {
        return this.mDisp;
    }

    public void notifyDispSizeChanged(int i, int i2) {
        AbsDisplayer absDisplayer = this.mDisp;
        if (absDisplayer != null) {
            if (!(absDisplayer.getWidth() == i && this.mDisp.getHeight() == i2)) {
                this.mDisp.setSize(i, i2);
                obtainMessage(10, Boolean.valueOf(true)).sendToTarget();
            }
        }
    }

    public void removeAllDanmakus(boolean z) {
        IDrawTask iDrawTask = this.drawTask;
        if (iDrawTask != null) {
            iDrawTask.removeAllDanmakus(z);
        }
    }

    public void removeAllLiveDanmakus() {
        IDrawTask iDrawTask = this.drawTask;
        if (iDrawTask != null) {
            iDrawTask.removeAllLiveDanmakus();
        }
    }

    public IDanmakus getCurrentVisibleDanmakus() {
        IDrawTask iDrawTask = this.drawTask;
        if (iDrawTask != null) {
            return iDrawTask.getVisibleDanmakusOnTime(getCurrentTime());
        }
        return null;
    }

    public long getCurrentTime() {
        long j;
        long j2;
        if (!this.mReady) {
            return 0;
        }
        if (this.mInSeekingAction) {
            return this.mDesireSeekingTime;
        }
        if (this.quitFlag || !this.mInWaitingState) {
            j = this.timer.currMillisecond;
            j2 = this.mRemainingTime;
        } else {
            j = SystemClock.uptimeMillis();
            j2 = this.mTimeBase;
        }
        return j - j2;
    }

    public void clearDanmakusOnScreen() {
        obtainMessage(13).sendToTarget();
    }

    public DanmakuContext getConfig() {
        return this.mContext;
    }
}
