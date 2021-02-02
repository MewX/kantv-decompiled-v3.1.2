package master.flame.danmaku.danmaku.model;

public class Duration implements Cloneable {
    private float factor = 1.0f;
    private long mInitialDuration;
    public long value;

    public Duration(long j) {
        this.mInitialDuration = j;
        this.value = j;
    }

    public void setValue(long j) {
        this.mInitialDuration = j;
        this.value = (long) (((float) this.mInitialDuration) * this.factor);
    }

    public void setFactor(float f) {
        if (this.factor != f) {
            this.factor = f;
            this.value = (long) (((float) this.mInitialDuration) * f);
        }
    }
}
