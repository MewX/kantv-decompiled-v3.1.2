package master.flame.danmaku.danmaku.loader.android;

import java.io.InputStream;
import master.flame.danmaku.danmaku.loader.ILoader;
import master.flame.danmaku.danmaku.loader.IllegalDataException;
import master.flame.danmaku.danmaku.parser.android.AndroidFileSource;

public class BiliDanmakuLoader implements ILoader {
    private static BiliDanmakuLoader _instance;
    private AndroidFileSource dataSource;

    private BiliDanmakuLoader() {
    }

    public static BiliDanmakuLoader instance() {
        if (_instance == null) {
            _instance = new BiliDanmakuLoader();
        }
        return _instance;
    }

    public void load(String str) throws IllegalDataException {
        try {
            this.dataSource = new AndroidFileSource(str);
        } catch (Exception e) {
            throw new IllegalDataException((Throwable) e);
        }
    }

    public void load(InputStream inputStream) {
        this.dataSource = new AndroidFileSource(inputStream);
    }

    public AndroidFileSource getDataSource() {
        return this.dataSource;
    }
}
