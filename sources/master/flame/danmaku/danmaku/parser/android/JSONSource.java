package master.flame.danmaku.danmaku.parser.android;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import master.flame.danmaku.danmaku.parser.IDataSource;
import master.flame.danmaku.danmaku.util.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;

public class JSONSource implements IDataSource<JSONArray> {
    private InputStream mInput;
    private JSONArray mJSONArray;

    public JSONSource(String str) throws JSONException {
        init(str);
    }

    public JSONSource(InputStream inputStream) throws JSONException {
        init(inputStream);
    }

    private void init(InputStream inputStream) throws JSONException {
        if (inputStream != null) {
            this.mInput = inputStream;
            init(IOUtils.getString(this.mInput));
            return;
        }
        throw new NullPointerException("input stream cannot be null!");
    }

    public JSONSource(URL url) throws JSONException, IOException {
        this(url.openStream());
    }

    public JSONSource(File file) throws FileNotFoundException, JSONException {
        init((InputStream) new FileInputStream(file));
    }

    public JSONSource(Uri uri) throws IOException, JSONException {
        String scheme = uri.getScheme();
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            init(new URL(uri.getPath()).openStream());
        } else if (IDataSource.SCHEME_FILE_TAG.equalsIgnoreCase(scheme)) {
            init((InputStream) new FileInputStream(uri.getPath()));
        }
    }

    private void init(String str) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            this.mJSONArray = new JSONArray(str);
        }
    }

    public JSONArray data() {
        return this.mJSONArray;
    }

    public void release() {
        IOUtils.closeQuietly(this.mInput);
        this.mInput = null;
        this.mJSONArray = null;
    }
}
