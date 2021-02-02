package master.flame.danmaku.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import master.flame.danmaku.controller.DrawHandler;
import master.flame.danmaku.controller.DrawHandler.Callback;
import master.flame.danmaku.danmaku.model.AlphaValue;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.Duration;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.Consumer;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.SpecialDanmaku;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.DanmakuFactory;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.danmaku.util.DanmakuUtils;

public class FakeDanmakuView extends DanmakuView implements Callback {
    private long mBeginTimeMills;
    private Bitmap mBufferBitmap;
    private Canvas mBufferCanvas;
    private long mEndTimeMills;
    private long mExpectBeginMills = 0;
    private long mFrameIntervalMills = 16;
    private int mHeight = 0;
    private boolean mIsRelease;
    private OnFrameAvailableListener mOnFrameAvailableListener;
    private DanmakuTimer mOuterTimer;
    private int mRetryCount = 0;
    private float mScale = 1.0f;
    private DanmakuTimer mTimer;
    private int mWidth = 0;

    private class CustomParser extends BaseDanmakuParser {
        /* access modifiers changed from: private */
        public final long edTime;
        private final BaseDanmakuParser mBaseParser;
        /* access modifiers changed from: private */
        public float mDispScaleX;
        /* access modifiers changed from: private */
        public float mDispScaleY;
        private int mViewWidth;
        /* access modifiers changed from: private */
        public final long stTime;

        public CustomParser(BaseDanmakuParser baseDanmakuParser, long j, long j2) {
            this.mBaseParser = baseDanmakuParser;
            this.stTime = j;
            this.edTime = j2;
        }

        /* access modifiers changed from: protected */
        public IDanmakus parse() {
            IDanmakus iDanmakus;
            final Danmakus danmakus = new Danmakus();
            try {
                iDanmakus = this.mBaseParser.getDanmakus().subnew(this.stTime, this.edTime);
            } catch (Exception unused) {
                iDanmakus = this.mBaseParser.getDanmakus();
            }
            if (iDanmakus == null) {
                return danmakus;
            }
            iDanmakus.forEach(new Consumer<BaseDanmaku, Object>() {
                public int accept(BaseDanmaku baseDanmaku) {
                    BaseDanmaku baseDanmaku2 = baseDanmaku;
                    long time = baseDanmaku.getTime();
                    if (time < CustomParser.this.stTime) {
                        return 0;
                    }
                    if (time > CustomParser.this.edTime) {
                        return 1;
                    }
                    BaseDanmaku createDanmaku = CustomParser.this.mContext.mDanmakuFactory.createDanmaku(baseDanmaku.getType(), CustomParser.this.mContext);
                    if (createDanmaku != null) {
                        createDanmaku.setTime(baseDanmaku.getTime());
                        DanmakuUtils.fillText(createDanmaku, baseDanmaku2.text);
                        createDanmaku.textSize = baseDanmaku2.textSize;
                        createDanmaku.textColor = baseDanmaku2.textColor;
                        createDanmaku.textShadowColor = baseDanmaku2.textShadowColor;
                        if (baseDanmaku2 instanceof SpecialDanmaku) {
                            SpecialDanmaku specialDanmaku = (SpecialDanmaku) baseDanmaku2;
                            createDanmaku.index = baseDanmaku2.index;
                            createDanmaku.duration = new Duration(specialDanmaku.getDuration());
                            createDanmaku.rotationZ = specialDanmaku.rotateZ;
                            createDanmaku.rotationY = specialDanmaku.rotationY;
                            ((SpecialDanmaku) createDanmaku).isQuadraticEaseOut = specialDanmaku.isQuadraticEaseOut;
                            BaseDanmaku baseDanmaku3 = createDanmaku;
                            CustomParser.this.mContext.mDanmakuFactory.fillTranslationData(baseDanmaku3, specialDanmaku.beginX, specialDanmaku.beginY, specialDanmaku.endX, specialDanmaku.endY, specialDanmaku.translationDuration, specialDanmaku.translationStartDelay, CustomParser.this.mDispScaleX, CustomParser.this.mDispScaleY);
                            CustomParser.this.mContext.mDanmakuFactory.fillAlphaData(baseDanmaku3, specialDanmaku.beginAlpha, specialDanmaku.endAlpha, createDanmaku.getDuration());
                            return 0;
                        }
                        createDanmaku.setTimer(CustomParser.this.mTimer);
                        createDanmaku.mFilterParam = baseDanmaku2.mFilterParam;
                        createDanmaku.filterResetFlag = baseDanmaku2.filterResetFlag;
                        createDanmaku.flags = CustomParser.this.mContext.mGlobalFlagValues;
                        synchronized (danmakus.obtainSynchronizer()) {
                            danmakus.addItem(createDanmaku);
                        }
                    }
                    return 0;
                }
            });
            return danmakus;
        }

        public BaseDanmakuParser setDisplayer(IDisplayer iDisplayer) {
            super.setDisplayer(iDisplayer);
            BaseDanmakuParser baseDanmakuParser = this.mBaseParser;
            if (!(baseDanmakuParser == null || baseDanmakuParser.getDisplayer() == null)) {
                this.mDispScaleX = ((float) this.mDispWidth) / ((float) this.mBaseParser.getDisplayer().getWidth());
                this.mDispScaleY = ((float) this.mDispHeight) / ((float) this.mBaseParser.getDisplayer().getHeight());
                if (this.mViewWidth <= 1) {
                    this.mViewWidth = iDisplayer.getWidth();
                }
            }
            return this;
        }

        /* access modifiers changed from: protected */
        public float getViewportSizeFactor() {
            return (((float) this.mContext.mDanmakuFactory.MAX_DANMAKU_DURATION) * 1.1f) / (((float) (((long) this.mViewWidth) * DanmakuFactory.COMMON_DANMAKU_DURATION)) / 682.0f);
        }
    }

    public interface OnFrameAvailableListener {
        void onConfig(DanmakuContext danmakuContext);

        void onFailed(int i, String str);

        void onFrameAvailable(long j, Bitmap bitmap);

        void onFramesFinished(long j);
    }

    public void danmakuShown(BaseDanmaku baseDanmaku) {
    }

    public void drawingFinished() {
    }

    public boolean isShown() {
        return true;
    }

    public boolean isViewReady() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
    }

    public void prepared() {
    }

    public FakeDanmakuView(Context context) {
        super(context);
    }

    public FakeDanmakuView(Context context, int i, int i2, float f) {
        super(context);
        this.mWidth = i;
        this.mHeight = i2;
        this.mScale = f;
        initBufferCanvas(i, i2);
    }

    public void initBufferCanvas(int i, int i2) {
        this.mBufferBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        this.mBufferCanvas = new Canvas(this.mBufferBitmap);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0072, code lost:
        if (r2 != null) goto L_0x0074;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0074, code lost:
        r2.update(r10.mEndTimeMills);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0079, code lost:
        r0.onFramesFinished(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0097, code lost:
        if (r2 != null) goto L_0x0074;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long drawDanmakus() {
        /*
            r10 = this;
            boolean r0 = r10.mIsRelease
            r1 = 0
            if (r0 == 0) goto L_0x0007
            return r1
        L_0x0007:
            android.graphics.Canvas r0 = r10.mBufferCanvas
            if (r0 != 0) goto L_0x000c
            return r1
        L_0x000c:
            android.graphics.Bitmap r3 = r10.mBufferBitmap
            if (r3 == 0) goto L_0x00b5
            boolean r4 = r3.isRecycled()
            if (r4 == 0) goto L_0x0018
            goto L_0x00b5
        L_0x0018:
            r1 = 0
            r3.eraseColor(r1)
            boolean r2 = r10.mClearFlag
            if (r2 == 0) goto L_0x0026
            master.flame.danmaku.controller.DrawHelper.clearCanvas(r0)
            r10.mClearFlag = r1
            goto L_0x002f
        L_0x0026:
            master.flame.danmaku.controller.DrawHandler r2 = r10.handler
            if (r2 == 0) goto L_0x002f
            master.flame.danmaku.controller.DrawHandler r2 = r10.handler
            r2.draw(r0)
        L_0x002f:
            master.flame.danmaku.ui.widget.FakeDanmakuView$OnFrameAvailableListener r0 = r10.mOnFrameAvailableListener
            if (r0 == 0) goto L_0x00b0
            master.flame.danmaku.danmaku.model.DanmakuTimer r2 = r10.mOuterTimer
            long r4 = r2.currMillisecond
            long r6 = r10.mExpectBeginMills     // Catch:{ Exception -> 0x007f }
            long r8 = r10.mFrameIntervalMills     // Catch:{ Exception -> 0x007f }
            long r6 = r6 - r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L_0x0067
            float r2 = r10.mScale     // Catch:{ Exception -> 0x007f }
            r6 = 1065353216(0x3f800000, float:1.0)
            r7 = 1
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 != 0) goto L_0x004b
            r7 = 0
            goto L_0x005f
        L_0x004b:
            int r2 = r10.mWidth     // Catch:{ Exception -> 0x007f }
            float r2 = (float) r2     // Catch:{ Exception -> 0x007f }
            float r6 = r10.mScale     // Catch:{ Exception -> 0x007f }
            float r2 = r2 * r6
            int r2 = (int) r2     // Catch:{ Exception -> 0x007f }
            int r6 = r10.mHeight     // Catch:{ Exception -> 0x007f }
            float r6 = (float) r6     // Catch:{ Exception -> 0x007f }
            float r8 = r10.mScale     // Catch:{ Exception -> 0x007f }
            float r6 = r6 * r8
            int r6 = (int) r6     // Catch:{ Exception -> 0x007f }
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createScaledBitmap(r3, r2, r6, r7)     // Catch:{ Exception -> 0x007f }
        L_0x005f:
            r0.onFrameAvailable(r4, r3)     // Catch:{ Exception -> 0x007f }
            if (r7 == 0) goto L_0x0067
            r3.recycle()     // Catch:{ Exception -> 0x007f }
        L_0x0067:
            long r2 = r10.mEndTimeMills
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto L_0x00b0
            r10.release()
            master.flame.danmaku.danmaku.model.DanmakuTimer r2 = r10.mTimer
            if (r2 == 0) goto L_0x0079
        L_0x0074:
            long r6 = r10.mEndTimeMills
            r2.update(r6)
        L_0x0079:
            r0.onFramesFinished(r4)
            goto L_0x00b0
        L_0x007d:
            r1 = move-exception
            goto L_0x009a
        L_0x007f:
            r2 = move-exception
            r10.release()     // Catch:{ all -> 0x007d }
            r3 = 101(0x65, float:1.42E-43)
            java.lang.String r2 = r2.getMessage()     // Catch:{ all -> 0x007d }
            r0.onFailed(r3, r2)     // Catch:{ all -> 0x007d }
            long r2 = r10.mEndTimeMills
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto L_0x00b0
            r10.release()
            master.flame.danmaku.danmaku.model.DanmakuTimer r2 = r10.mTimer
            if (r2 == 0) goto L_0x0079
            goto L_0x0074
        L_0x009a:
            long r2 = r10.mEndTimeMills
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto L_0x00af
            r10.release()
            master.flame.danmaku.danmaku.model.DanmakuTimer r2 = r10.mTimer
            if (r2 == 0) goto L_0x00ac
            long r6 = r10.mEndTimeMills
            r2.update(r6)
        L_0x00ac:
            r0.onFramesFinished(r4)
        L_0x00af:
            throw r1
        L_0x00b0:
            r10.mRequestRender = r1
            r0 = 2
            return r0
        L_0x00b5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.ui.widget.FakeDanmakuView.drawDanmakus():long");
    }

    public void release() {
        this.mIsRelease = true;
        super.release();
        this.mBufferBitmap = null;
    }

    public int getViewWidth() {
        return this.mWidth;
    }

    public int getViewHeight() {
        return this.mHeight;
    }

    public void prepare(BaseDanmakuParser baseDanmakuParser, DanmakuContext danmakuContext) {
        DanmakuContext danmakuContext2;
        CustomParser customParser = new CustomParser(baseDanmakuParser, this.mBeginTimeMills, this.mEndTimeMills);
        try {
            danmakuContext2 = (DanmakuContext) danmakuContext.clone();
            danmakuContext2.resetContext();
            danmakuContext2.transparency = AlphaValue.MAX;
            danmakuContext2.setDanmakuTransparency(((float) danmakuContext.transparency) / ((float) AlphaValue.MAX));
            danmakuContext2.mGlobalFlagValues.FILTER_RESET_FLAG = danmakuContext.mGlobalFlagValues.FILTER_RESET_FLAG;
            danmakuContext2.setDanmakuSync(null);
            danmakuContext2.unregisterAllConfigChangedCallbacks();
            danmakuContext2.mGlobalFlagValues.updateAll();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            danmakuContext2 = danmakuContext;
        }
        danmakuContext2.updateMethod = 1;
        OnFrameAvailableListener onFrameAvailableListener = this.mOnFrameAvailableListener;
        if (onFrameAvailableListener != null) {
            onFrameAvailableListener.onConfig(danmakuContext2);
        }
        super.prepare(customParser, danmakuContext2);
        this.handler.setIdleSleep(false);
        this.handler.enableNonBlockMode(true);
    }

    public void setTimeRange(long j, long j2) {
        this.mExpectBeginMills = j;
        this.mBeginTimeMills = Math.max(0, j - 30000);
        this.mEndTimeMills = j2;
    }

    public void setOnFrameAvailableListener(OnFrameAvailableListener onFrameAvailableListener) {
        this.mOnFrameAvailableListener = onFrameAvailableListener;
    }

    public void getFrameAtTime(final int i) {
        int i2 = this.mRetryCount;
        this.mRetryCount = i2 + 1;
        if (i2 > 5) {
            release();
            OnFrameAvailableListener onFrameAvailableListener = this.mOnFrameAvailableListener;
            if (onFrameAvailableListener != null) {
                onFrameAvailableListener.onFailed(100, "not prepared");
            }
        } else if (!isPrepared()) {
            DrawHandler drawHandler = this.handler;
            if (drawHandler != null) {
                drawHandler.postDelayed(new Runnable() {
                    public void run() {
                        FakeDanmakuView.this.getFrameAtTime(i);
                    }
                }, 1000);
            }
        } else {
            this.mFrameIntervalMills = (long) (1000 / i);
            setCallback(this);
            long max = Math.max(0, this.mExpectBeginMills - ((getConfig().mDanmakuFactory.MAX_DANMAKU_DURATION * 3) / 2));
            this.mOuterTimer = new DanmakuTimer(max);
            start(max);
        }
    }

    public void updateTimer(DanmakuTimer danmakuTimer) {
        this.mTimer = danmakuTimer;
        danmakuTimer.update(this.mOuterTimer.currMillisecond);
        this.mOuterTimer.add(this.mFrameIntervalMills);
        danmakuTimer.add(this.mFrameIntervalMills);
    }
}
