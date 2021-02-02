package master.flame.danmaku.danmaku.model;

public class R2LDanmaku extends BaseDanmaku {
    protected static final long CORDON_RENDERING_TIME = 40;
    protected static final long MAX_RENDERING_TIME = 100;
    protected float[] RECT = null;
    protected int mDistance;
    protected long mLastTime;
    protected float mStepX;
    protected float x = 0.0f;
    protected float y = -1.0f;

    public int getType() {
        return 1;
    }

    public R2LDanmaku(Duration duration) {
        this.duration = duration;
    }

    public void layout(IDisplayer iDisplayer, float f, float f2) {
        if (this.mTimer != null) {
            long j = this.mTimer.currMillisecond;
            long actualTime = j - getActualTime();
            if (actualTime <= 0 || actualTime >= this.duration.value) {
                this.mLastTime = j;
            } else {
                this.x = getAccurateLeft(iDisplayer, j);
                if (!isShown()) {
                    this.y = f2;
                    setVisibility(true);
                }
                this.mLastTime = j;
                return;
            }
        }
        setVisibility(false);
    }

    /* access modifiers changed from: protected */
    public float getAccurateLeft(IDisplayer iDisplayer, long j) {
        long actualTime = j - getActualTime();
        if (actualTime >= this.duration.value) {
            return -this.paintWidth;
        }
        return ((float) iDisplayer.getWidth()) - (((float) actualTime) * this.mStepX);
    }

    public float[] getRectAtTime(IDisplayer iDisplayer, long j) {
        if (!isMeasured()) {
            return null;
        }
        float accurateLeft = getAccurateLeft(iDisplayer, j);
        if (this.RECT == null) {
            this.RECT = new float[4];
        }
        float[] fArr = this.RECT;
        fArr[0] = accurateLeft;
        fArr[1] = this.y;
        fArr[2] = accurateLeft + this.paintWidth;
        this.RECT[3] = this.y + this.paintHeight;
        return this.RECT;
    }

    public float getLeft() {
        return this.x;
    }

    public float getTop() {
        return this.y;
    }

    public float getRight() {
        return this.x + this.paintWidth;
    }

    public float getBottom() {
        return this.y + this.paintHeight;
    }

    public void measure(IDisplayer iDisplayer, boolean z) {
        super.measure(iDisplayer, z);
        this.mDistance = (int) (((float) iDisplayer.getWidth()) + this.paintWidth);
        this.mStepX = ((float) this.mDistance) / ((float) this.duration.value);
    }
}
