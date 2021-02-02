package master.flame.danmaku.danmaku.model;

import master.flame.danmaku.danmaku.util.DanmakuUtils;

public class Danmaku extends BaseDanmaku {
    public float getBottom() {
        return 0.0f;
    }

    public float getLeft() {
        return 0.0f;
    }

    public float[] getRectAtTime(IDisplayer iDisplayer, long j) {
        return null;
    }

    public float getRight() {
        return 0.0f;
    }

    public float getTop() {
        return 0.0f;
    }

    public int getType() {
        return 0;
    }

    public boolean isShown() {
        return false;
    }

    public void layout(IDisplayer iDisplayer, float f, float f2) {
    }

    public Danmaku(CharSequence charSequence) {
        DanmakuUtils.fillText(this, charSequence);
    }
}
