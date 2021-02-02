package master.flame.danmaku.danmaku.util;

public class SystemClock {
    public static final long uptimeMillis() {
        return android.os.SystemClock.elapsedRealtime();
    }

    public static final void sleep(long j) {
        android.os.SystemClock.sleep(j);
    }
}
