package master.flame.danmaku.danmaku.model;

public class FTDanmaku extends BaseDanmaku {
    private float[] RECT = null;
    private int mLastDispWidth;
    private float mLastLeft;
    private float mLastPaintWidth;
    private float x = 0.0f;
    protected float y = -1.0f;

    public int getType() {
        return 5;
    }

    public FTDanmaku(Duration duration) {
        this.duration = duration;
    }

    public void layout(IDisplayer iDisplayer, float f, float f2) {
        if (this.mTimer != null) {
            long actualTime = this.mTimer.currMillisecond - getActualTime();
            if (actualTime <= 0 || actualTime >= this.duration.value) {
                setVisibility(false);
                this.y = -1.0f;
                this.x = (float) iDisplayer.getWidth();
            } else {
                if (!isShown()) {
                    this.x = getLeft(iDisplayer);
                    this.y = f2;
                    setVisibility(true);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public float getLeft(IDisplayer iDisplayer) {
        if (this.mLastDispWidth == iDisplayer.getWidth() && this.mLastPaintWidth == this.paintWidth) {
            return this.mLastLeft;
        }
        float width = (((float) iDisplayer.getWidth()) - this.paintWidth) / 2.0f;
        this.mLastDispWidth = iDisplayer.getWidth();
        this.mLastPaintWidth = this.paintWidth;
        this.mLastLeft = width;
        return width;
    }

    public float[] getRectAtTime(IDisplayer iDisplayer, long j) {
        if (!isMeasured()) {
            return null;
        }
        float left = getLeft(iDisplayer);
        if (this.RECT == null) {
            this.RECT = new float[4];
        }
        float[] fArr = this.RECT;
        fArr[0] = left;
        fArr[1] = this.y;
        fArr[2] = left + this.paintWidth;
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
}
