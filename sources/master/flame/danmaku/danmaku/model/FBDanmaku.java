package master.flame.danmaku.danmaku.model;

public class FBDanmaku extends FTDanmaku {
    public int getType() {
        return 4;
    }

    public FBDanmaku(Duration duration) {
        super(duration);
    }
}
