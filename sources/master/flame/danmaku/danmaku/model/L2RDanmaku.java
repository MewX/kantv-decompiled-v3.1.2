package master.flame.danmaku.danmaku.model;

public class L2RDanmaku extends R2LDanmaku {
    public int getType() {
        return 6;
    }

    public L2RDanmaku(Duration duration) {
        super(duration);
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

    public float[] getRectAtTime(IDisplayer iDisplayer, long j) {
        if (!isMeasured()) {
            return null;
        }
        float accurateLeft = getAccurateLeft(iDisplayer, j);
        if (this.RECT == null) {
            this.RECT = new float[4];
        }
        this.RECT[0] = accurateLeft;
        this.RECT[1] = this.y;
        this.RECT[2] = accurateLeft + this.paintWidth;
        this.RECT[3] = this.y + this.paintHeight;
        return this.RECT;
    }

    /* access modifiers changed from: protected */
    public float getAccurateLeft(IDisplayer iDisplayer, long j) {
        long actualTime = j - getActualTime();
        if (actualTime >= this.duration.value) {
            return (float) iDisplayer.getWidth();
        }
        return (this.mStepX * ((float) actualTime)) - this.paintWidth;
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
}
