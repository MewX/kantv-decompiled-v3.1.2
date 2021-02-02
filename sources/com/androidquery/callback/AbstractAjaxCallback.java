package com.androidquery.callback;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Xml;
import android.view.View;
import com.androidquery.auth.AccountHandle;
import com.androidquery.auth.GoogleHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.Progress;
import com.androidquery.util.XmlDom;
import com.avos.avoscloud.java_websocket.WebSocket;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import master.flame.danmaku.danmaku.parser.IDataSource;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.eclipse.jetty.http.HttpHeaders;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;

public abstract class AbstractAjaxCallback<T, K> implements Runnable {
    private static String AGENT = null;
    private static final Class<?>[] DEFAULT_SIG = {String.class, Object.class, AjaxStatus.class};
    private static boolean GZIP = true;
    private static int NETWORK_POOL = 4;
    private static int NET_TIMEOUT = 30000;
    private static boolean REUSE_CLIENT = true;
    private static final String boundary = "*****";
    private static DefaultHttpClient client = null;
    private static ExecutorService fetchExe = null;
    private static int lastStatus = 200;
    private static final String lineEnd = "\r\n";
    private static SocketFactory ssf = null;
    private static Transformer st = null;
    private static final String twoHyphens = "--";
    private boolean abort;
    private WeakReference<Activity> act;
    private AccountHandle ah;
    private boolean blocked;
    private File cacheDir;
    private String callback;
    private boolean completed;
    private Map<String, String> cookies;
    private String encoding = "UTF-8";
    private long expire;
    protected boolean fileCache;
    private Object handler;
    private Map<String, String> headers;
    protected boolean memCache;
    private int method = 4;
    private String networkUrl;
    private Map<String, Object> params;
    private int policy = 0;
    private WeakReference<Object> progress;
    private HttpHost proxy;
    private boolean reauth;
    private boolean refresh;
    private HttpUriRequest request;
    protected T result;
    private int retry = 0;
    protected AjaxStatus status;
    private File targetFile;
    private int timeout = 0;
    private Transformer transformer;
    private Class<T> type;
    private boolean uiCallback = true;
    /* access modifiers changed from: private */
    public String url;
    private Reference<Object> whandler;

    private K self() {
        return this;
    }

    public void callback(String str, T t, AjaxStatus ajaxStatus) {
    }

    /* access modifiers changed from: protected */
    public T datastoreGet(String str) {
        return null;
    }

    /* access modifiers changed from: protected */
    public T memGet(String str) {
        return null;
    }

    /* access modifiers changed from: protected */
    public void memPut(String str, T t) {
    }

    /* access modifiers changed from: protected */
    public void skip(String str, T t, AjaxStatus ajaxStatus) {
    }

    private void clear() {
        this.whandler = null;
        this.handler = null;
        this.progress = null;
        this.request = null;
        this.transformer = null;
        this.ah = null;
        this.act = null;
    }

    public static void setTimeout(int i) {
        NET_TIMEOUT = i;
    }

    public static void setAgent(String str) {
        AGENT = str;
    }

    public static void setGZip(boolean z) {
        GZIP = z;
    }

    public static void setTransformer(Transformer transformer2) {
        st = transformer2;
    }

    public Class<T> getType() {
        return this.type;
    }

    public K weakHandler(Object obj, String str) {
        this.whandler = new WeakReference(obj);
        this.callback = str;
        this.handler = null;
        return self();
    }

    public K handler(Object obj, String str) {
        this.handler = obj;
        this.callback = str;
        this.whandler = null;
        return self();
    }

    public K url(String str) {
        this.url = str;
        return self();
    }

    public K networkUrl(String str) {
        this.networkUrl = str;
        return self();
    }

    public K type(Class<T> cls) {
        this.type = cls;
        return self();
    }

    public K method(int i) {
        this.method = i;
        return self();
    }

    public K timeout(int i) {
        this.timeout = i;
        return self();
    }

    public K retry(int i) {
        this.retry = i;
        return self();
    }

    public K transformer(Transformer transformer2) {
        this.transformer = transformer2;
        return self();
    }

    public K fileCache(boolean z) {
        this.fileCache = z;
        return self();
    }

    public K memCache(boolean z) {
        this.memCache = z;
        return self();
    }

    public K policy(int i) {
        this.policy = i;
        return self();
    }

    public K refresh(boolean z) {
        this.refresh = z;
        return self();
    }

    public K uiCallback(boolean z) {
        this.uiCallback = z;
        return self();
    }

    public K expire(long j) {
        this.expire = j;
        return self();
    }

    public K header(String str, String str2) {
        if (this.headers == null) {
            this.headers = new HashMap();
        }
        this.headers.put(str, str2);
        return self();
    }

    public K cookie(String str, String str2) {
        if (this.cookies == null) {
            this.cookies = new HashMap();
        }
        this.cookies.put(str, str2);
        return self();
    }

    public K encoding(String str) {
        this.encoding = str;
        return self();
    }

    public K proxy(String str, int i) {
        this.proxy = new HttpHost(str, i);
        return self();
    }

    public K targetFile(File file) {
        this.targetFile = file;
        return self();
    }

    public K param(String str, Object obj) {
        if (this.params == null) {
            this.params = new HashMap();
        }
        this.params.put(str, obj);
        return self();
    }

    public K params(Map<String, ?> map) {
        this.params = map;
        return self();
    }

    public K progress(View view) {
        return progress((Object) view);
    }

    public K progress(Dialog dialog) {
        return progress((Object) dialog);
    }

    public K progress(Object obj) {
        if (obj != null) {
            this.progress = new WeakReference<>(obj);
        }
        return self();
    }

    /* access modifiers changed from: 0000 */
    public void callback() {
        showProgress(false);
        this.completed = true;
        if (!isActive()) {
            skip(this.url, this.result, this.status);
        } else if (this.callback != null) {
            Class[] clsArr = {String.class, this.type, AjaxStatus.class};
            AQUtility.invokeHandler(getHandler(), this.callback, true, true, clsArr, DEFAULT_SIG, this.url, this.result, this.status);
        } else {
            try {
                callback(this.url, this.result, this.status);
            } catch (Exception e) {
                AQUtility.report(e);
            }
        }
        filePut();
        if (!this.blocked) {
            this.status.close();
        }
        wake();
        AQUtility.debugNotify();
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x000c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void wake() {
        /*
            r1 = this;
            boolean r0 = r1.blocked
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            monitor-enter(r1)
            r1.notifyAll()     // Catch:{ Exception -> 0x000c }
            goto L_0x000c
        L_0x000a:
            r0 = move-exception
            goto L_0x000e
        L_0x000c:
            monitor-exit(r1)     // Catch:{ all -> 0x000a }
            return
        L_0x000e:
            monitor-exit(r1)     // Catch:{ all -> 0x000a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.callback.AbstractAjaxCallback.wake():void");
    }

    public void block() {
        if (AQUtility.isUIThread()) {
            throw new IllegalStateException("Cannot block UI thread.");
        } else if (!this.completed) {
            try {
                synchronized (this) {
                    this.blocked = true;
                    wait((long) (NET_TIMEOUT + 5000));
                }
            } catch (Exception unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public T fileGet(String str, File file, AjaxStatus ajaxStatus) {
        byte[] bArr;
        try {
            if (isStreamingContent()) {
                ajaxStatus.file(file);
                bArr = null;
            } else {
                bArr = AQUtility.toBytes(new FileInputStream(file));
            }
            return transform(str, bArr, ajaxStatus);
        } catch (Exception e) {
            AQUtility.debug((Throwable) e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void showProgress(final boolean z) {
        WeakReference<Object> weakReference = this.progress;
        final Object obj = weakReference == null ? null : weakReference.get();
        if (obj == null) {
            return;
        }
        if (AQUtility.isUIThread()) {
            Common.showProgress(obj, this.url, z);
        } else {
            AQUtility.post(new Runnable() {
                public void run() {
                    Common.showProgress(obj, AbstractAjaxCallback.this.url, z);
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public T transform(String str, byte[] bArr, AjaxStatus ajaxStatus) {
        T t;
        T t2;
        String str2;
        T t3 = null;
        if (this.type == null) {
            return null;
        }
        T file = ajaxStatus.getFile();
        if (bArr != 0) {
            if (this.type.equals(Bitmap.class)) {
                return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            }
            if (this.type.equals(JSONObject.class)) {
                try {
                    str2 = new String(bArr, this.encoding);
                    try {
                        t2 = (JSONObject) new JSONTokener(str2).nextValue();
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str2 = null;
                    AQUtility.debug((Throwable) e);
                    AQUtility.debug((Object) str2);
                    t2 = null;
                    return t2;
                }
                return t2;
            } else if (this.type.equals(JSONArray.class)) {
                try {
                    t = (JSONArray) new JSONTokener(new String(bArr, this.encoding)).nextValue();
                } catch (Exception e3) {
                    AQUtility.debug((Throwable) e3);
                    t = null;
                }
                return t;
            } else if (this.type.equals(String.class)) {
                if (ajaxStatus.getSource() == 1) {
                    AQUtility.debug((Object) "network");
                    t3 = correctEncoding(bArr, this.encoding, ajaxStatus);
                } else {
                    AQUtility.debug((Object) IDataSource.SCHEME_FILE_TAG);
                    try {
                        t3 = new String(bArr, this.encoding);
                    } catch (Exception e4) {
                        AQUtility.debug((Throwable) e4);
                    }
                }
                return t3;
            } else if (this.type.equals(byte[].class)) {
                return bArr;
            } else {
                Transformer transformer2 = this.transformer;
                if (transformer2 != null) {
                    return transformer2.transform(str, this.type, this.encoding, bArr, ajaxStatus);
                }
                Transformer transformer3 = st;
                if (transformer3 != null) {
                    return transformer3.transform(str, this.type, this.encoding, bArr, ajaxStatus);
                }
            }
        } else if (file != null) {
            if (this.type.equals(File.class)) {
                return file;
            }
            if (this.type.equals(XmlDom.class)) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    T xmlDom = new XmlDom((InputStream) fileInputStream);
                    ajaxStatus.closeLater(fileInputStream);
                    return xmlDom;
                } catch (Exception e5) {
                    AQUtility.report(e5);
                    return null;
                }
            } else if (this.type.equals(XmlPullParser.class)) {
                T newPullParser = Xml.newPullParser();
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    newPullParser.setInput(fileInputStream2, this.encoding);
                    ajaxStatus.closeLater(fileInputStream2);
                    return newPullParser;
                } catch (Exception e6) {
                    AQUtility.report(e6);
                    return null;
                }
            } else if (this.type.equals(InputStream.class)) {
                try {
                    T fileInputStream3 = new FileInputStream(file);
                    ajaxStatus.closeLater(fileInputStream3);
                    return fileInputStream3;
                } catch (Exception e7) {
                    AQUtility.report(e7);
                }
            }
        }
        return null;
    }

    private String getCharset(String str) {
        Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return parseCharset(matcher.group());
    }

    private String parseCharset(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(HttpRequest.PARAM_CHARSET);
        if (indexOf == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(";", indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return str.substring(indexOf + 7, indexOf2).replaceAll("[^\\w-]", "");
    }

    private String correctEncoding(byte[] bArr, String str, AjaxStatus ajaxStatus) {
        String str2;
        String str3 = "utf-8";
        try {
            if (!str3.equalsIgnoreCase(str)) {
                return new String(bArr, str);
            }
            String parseCharset = parseCharset(ajaxStatus.getHeader("Content-Type"));
            AQUtility.debug("parsing header", parseCharset);
            if (parseCharset != null) {
                return new String(bArr, parseCharset);
            }
            str2 = new String(bArr, str3);
            try {
                String charset = getCharset(str2);
                AQUtility.debug("parsing needed", charset);
                if (charset != null && !str3.equalsIgnoreCase(charset)) {
                    AQUtility.debug("correction needed", charset);
                    String str4 = new String(bArr, charset);
                    try {
                        ajaxStatus.data(str4.getBytes(str3));
                        str2 = str4;
                    } catch (Exception e) {
                        e = e;
                        str2 = str4;
                        AQUtility.report(e);
                        return str2;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                AQUtility.report(e);
                return str2;
            }
            return str2;
        } catch (Exception e3) {
            e = e3;
            str2 = null;
            AQUtility.report(e);
            return str2;
        }
    }

    /* access modifiers changed from: protected */
    public void filePut(String str, T t, File file, byte[] bArr) {
        if (file != null && bArr != null) {
            AQUtility.storeAsync(file, bArr, 0);
        }
    }

    /* access modifiers changed from: protected */
    public File accessFile(File file, String str) {
        if (this.expire < 0) {
            return null;
        }
        File existedCacheByUrl = AQUtility.getExistedCacheByUrl(file, str);
        if (existedCacheByUrl == null || this.expire == 0 || System.currentTimeMillis() - existedCacheByUrl.lastModified() <= this.expire) {
            return existedCacheByUrl;
        }
        return null;
    }

    public void async(Activity activity) {
        boolean isFinishing = activity.isFinishing();
        String str = HttpHeaders.WARNING;
        if (isFinishing) {
            AQUtility.warn(str, "Possible memory leak. Calling ajax with a terminated activity.");
        }
        if (this.type == null) {
            AQUtility.warn(str, "type() is not called with response type.");
            return;
        }
        this.act = new WeakReference<>(activity);
        async((Context) activity);
    }

    public void async(Context context) {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus == null) {
            this.status = new AjaxStatus();
            this.status.redirect(this.url).refresh(this.refresh);
        } else if (ajaxStatus.getDone()) {
            this.status.reset();
            this.result = null;
        }
        showProgress(true);
        AccountHandle accountHandle = this.ah;
        if (accountHandle == null || accountHandle.authenticated()) {
            work(context);
            return;
        }
        AQUtility.debug("auth needed", this.url);
        this.ah.auth(this);
    }

    private boolean isActive() {
        WeakReference<Activity> weakReference = this.act;
        if (weakReference == null) {
            return true;
        }
        Activity activity = (Activity) weakReference.get();
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        return true;
    }

    public void failure(int i, String str) {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus != null) {
            ajaxStatus.code(i).message(str);
            callback();
        }
    }

    private void work(Context context) {
        T memGet = memGet(this.url);
        if (memGet != null) {
            this.result = memGet;
            this.status.source(4).done();
            callback();
            return;
        }
        this.cacheDir = AQUtility.getCacheDir(context, this.policy);
        execute(this);
    }

    /* access modifiers changed from: protected */
    public boolean cacheAvailable(Context context) {
        return this.fileCache && AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(context, this.policy), this.url) != null;
    }

    public void run() {
        if (!this.status.getDone()) {
            try {
                backgroundWork();
            } catch (Throwable th) {
                AQUtility.debug(th);
                this.status.code(AjaxStatus.NETWORK_ERROR).done();
            }
            if (this.status.getReauth()) {
                return;
            }
            if (this.uiCallback) {
                AQUtility.post(this);
            } else {
                afterWork();
            }
        } else {
            afterWork();
        }
    }

    private void backgroundWork() {
        if (!this.refresh && this.fileCache) {
            fileWork();
        }
        if (this.result == null) {
            datastoreWork();
        }
        if (this.result == null) {
            networkWork();
        }
    }

    private String getCacheUrl() {
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            return accountHandle.getCacheUrl(this.url);
        }
        return this.url;
    }

    private String getNetworkUrl(String str) {
        String str2 = this.networkUrl;
        if (str2 != null) {
            str = str2;
        }
        AccountHandle accountHandle = this.ah;
        return accountHandle != null ? accountHandle.getNetworkUrl(str) : str;
    }

    private void fileWork() {
        File accessFile = accessFile(this.cacheDir, getCacheUrl());
        if (accessFile != null) {
            this.status.source(3);
            this.result = fileGet(this.url, accessFile, this.status);
            if (this.result != null) {
                this.status.time(new Date(accessFile.lastModified())).done();
            }
        }
    }

    private void datastoreWork() {
        this.result = datastoreGet(this.url);
        if (this.result != null) {
            this.status.source(2).done();
        }
    }

    private void networkWork() {
        if (this.url == null) {
            this.status.code(AjaxStatus.NETWORK_ERROR).done();
            return;
        }
        byte[] bArr = null;
        try {
            network(this.retry + 1);
            if (this.ah != null && this.ah.expired(this, this.status) && !this.reauth) {
                AQUtility.debug("reauth needed", this.status.getMessage());
                this.reauth = true;
                if (this.ah.reauth(this)) {
                    network();
                } else {
                    this.status.reauth(true);
                    return;
                }
            }
            bArr = this.status.getData();
        } catch (Exception e) {
            AQUtility.debug((Throwable) e);
            this.status.code(AjaxStatus.NETWORK_ERROR).message("network error");
        }
        try {
            this.result = transform(this.url, bArr, this.status);
        } catch (Exception e2) {
            AQUtility.debug((Throwable) e2);
        }
        if (this.result == null && bArr != null) {
            this.status.code(AjaxStatus.TRANSFORM_ERROR).message("transform error");
        }
        lastStatus = this.status.getCode();
        this.status.done();
    }

    /* access modifiers changed from: protected */
    public File getCacheFile() {
        return AQUtility.getCacheFile(this.cacheDir, getCacheUrl());
    }

    /* access modifiers changed from: protected */
    public boolean isStreamingContent() {
        return File.class.equals(this.type) || XmlPullParser.class.equals(this.type) || InputStream.class.equals(this.type) || XmlDom.class.equals(this.type);
    }

    private File getPreFile() {
        File file;
        if (isStreamingContent()) {
            file = this.targetFile;
            if (file == null) {
                if (this.fileCache) {
                    file = getCacheFile();
                } else {
                    File tempDir = AQUtility.getTempDir();
                    if (tempDir == null) {
                        tempDir = this.cacheDir;
                    }
                    file = AQUtility.getCacheFile(tempDir, this.url);
                }
            }
        } else {
            file = null;
        }
        if (file != null && !file.exists()) {
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
            } catch (Exception e) {
                AQUtility.report(e);
                return null;
            }
        }
        return file;
    }

    private void filePut() {
        if (this.result != null && this.fileCache) {
            byte[] data = this.status.getData();
            if (data != null) {
                try {
                    if (this.status.getSource() == 1) {
                        File cacheFile = getCacheFile();
                        if (!this.status.getInvalid()) {
                            filePut(this.url, this.result, cacheFile, data);
                        } else if (cacheFile.exists()) {
                            cacheFile.delete();
                        }
                    }
                } catch (Exception e) {
                    AQUtility.debug((Throwable) e);
                }
            }
            this.status.data(null);
        }
    }

    private static String extractUrl(Uri uri) {
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("://");
        sb.append(uri.getAuthority());
        sb.append(uri.getPath());
        String sb2 = sb.toString();
        String fragment = uri.getFragment();
        if (fragment == null) {
            return sb2;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append("#");
        sb3.append(fragment);
        return sb3.toString();
    }

    private static Map<String, Object> extractParams(Uri uri) {
        HashMap hashMap = new HashMap();
        for (String split : uri.getQuery().split("&")) {
            String[] split2 = split.split("=");
            if (split2.length >= 2) {
                hashMap.put(split2[0], split2[1]);
            } else if (split2.length == 1) {
                hashMap.put(split2[0], "");
            }
        }
        return hashMap;
    }

    private void network(int i) throws IOException {
        if (i <= 1) {
            network();
            return;
        }
        int i2 = 0;
        while (i2 < i) {
            try {
                network();
                return;
            } catch (IOException e) {
                if (i2 != i - 1) {
                    i2++;
                } else {
                    throw e;
                }
            }
        }
    }

    private void network() throws IOException {
        String str = this.url;
        Map<String, Object> map = this.params;
        if (map == null && str.length() > 2000) {
            Uri parse = Uri.parse(str);
            String extractUrl = extractUrl(parse);
            map = extractParams(parse);
            str = extractUrl;
        }
        String networkUrl2 = getNetworkUrl(str);
        int i = this.method;
        if (2 == i) {
            httpDelete(networkUrl2, this.headers, this.status);
        } else if (3 == i) {
            httpPut(networkUrl2, this.headers, map, this.status);
        } else {
            if (1 == i && map == null) {
                map = new HashMap<>();
            }
            if (map == null) {
                httpGet(networkUrl2, this.headers, this.status);
            } else if (isMultiPart(map)) {
                httpMulti(networkUrl2, this.headers, map, this.status);
            } else {
                httpPost(networkUrl2, this.headers, map, this.status);
            }
        }
    }

    private void afterWork() {
        String str = this.url;
        if (str != null && this.memCache) {
            memPut(str, this.result);
        }
        callback();
        clear();
    }

    public static void execute(Runnable runnable) {
        if (fetchExe == null) {
            fetchExe = Executors.newFixedThreadPool(NETWORK_POOL);
        }
        fetchExe.execute(runnable);
    }

    public static int getActiveCount() {
        ExecutorService executorService = fetchExe;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getActiveCount();
        }
        return 0;
    }

    public static void setNetworkLimit(int i) {
        NETWORK_POOL = Math.max(1, Math.min(25, i));
        fetchExe = null;
        AQUtility.debug("setting network limit", Integer.valueOf(NETWORK_POOL));
    }

    public static void cancel() {
        ExecutorService executorService = fetchExe;
        if (executorService != null) {
            executorService.shutdownNow();
            fetchExe = null;
        }
        BitmapAjaxCallback.clearTasks();
    }

    private static String patchUrl(String str) {
        return str.replaceAll(" ", "%20").replaceAll("\\|", "%7C");
    }

    private void httpGet(String str, Map<String, String> map, AjaxStatus ajaxStatus) throws IOException {
        AQUtility.debug("get", str);
        String patchUrl = patchUrl(str);
        httpDo(new HttpGet(patchUrl), patchUrl, map, ajaxStatus);
    }

    private void httpDelete(String str, Map<String, String> map, AjaxStatus ajaxStatus) throws IOException {
        AQUtility.debug("get", str);
        String patchUrl = patchUrl(str);
        httpDo(new HttpDelete(patchUrl), patchUrl, map, ajaxStatus);
    }

    private void httpPost(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        AQUtility.debug("post", str);
        httpEntity(str, new HttpPost(str), map, map2, ajaxStatus);
    }

    private void httpPut(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        AQUtility.debug("put", str);
        httpEntity(str, new HttpPut(str), map, map2, ajaxStatus);
    }

    private void httpEntity(String str, HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        HttpEntity httpEntity;
        httpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        Object obj = map2.get(Constants.POST_ENTITY);
        if (obj instanceof HttpEntity) {
            httpEntity = (HttpEntity) obj;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Entry entry : map2.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    arrayList.add(new BasicNameValuePair((String) entry.getKey(), value.toString()));
                }
            }
            httpEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        }
        if (map != null) {
            String str2 = "Content-Type";
            if (!map.containsKey(str2)) {
                map.put(str2, "application/x-www-form-urlencoded;charset=UTF-8");
            }
        }
        httpEntityEnclosingRequestBase.setEntity(httpEntity);
        httpDo(httpEntityEnclosingRequestBase, str, map, ajaxStatus);
    }

    public static void setSSF(SocketFactory socketFactory) {
        ssf = socketFactory;
        client = null;
    }

    public static void setReuseHttpClient(boolean z) {
        REUSE_CLIENT = z;
        client = null;
    }

    private static DefaultHttpClient getClient() {
        if (client == null || !REUSE_CLIENT) {
            AQUtility.debug((Object) "creating http client");
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, NET_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, NET_TIMEOUT);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(25));
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            SocketFactory socketFactory = ssf;
            if (socketFactory == null) {
                socketFactory = SSLSocketFactory.getSocketFactory();
            }
            schemeRegistry.register(new Scheme("https", socketFactory, WebSocket.DEFAULT_WSS_PORT));
            client = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
        return client;
    }

    private HttpResponse execute(HttpUriRequest httpUriRequest, DefaultHttpClient defaultHttpClient, HttpContext httpContext) throws ClientProtocolException, IOException {
        HttpHost httpHost;
        if (!httpUriRequest.getURI().getAuthority().contains(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            return defaultHttpClient.execute(httpUriRequest, httpContext);
        }
        URL url2 = httpUriRequest.getURI().toURL();
        if (url2.getPort() == -1) {
            httpHost = new HttpHost(url2.getHost(), 80, url2.getProtocol());
        } else {
            httpHost = new HttpHost(url2.getHost(), url2.getPort(), url2.getProtocol());
        }
        return defaultHttpClient.execute(httpHost, httpUriRequest, httpContext);
    }

    /* JADX WARNING: type inference failed for: r8v1 */
    /* JADX WARNING: type inference failed for: r8v2, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r9v3 */
    /* JADX WARNING: type inference failed for: r8v3 */
    /* JADX WARNING: type inference failed for: r9v5 */
    /* JADX WARNING: type inference failed for: r9v6 */
    /* JADX WARNING: type inference failed for: r9v7 */
    /* JADX WARNING: type inference failed for: r9v8 */
    /* JADX WARNING: type inference failed for: r9v9, types: [java.lang.Object, java.lang.String] */
    /* JADX WARNING: type inference failed for: r8v4, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r10v8, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r8v5 */
    /* JADX WARNING: type inference failed for: r4v18, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r8v6 */
    /* JADX WARNING: type inference failed for: r4v19 */
    /* JADX WARNING: type inference failed for: r4v20, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r8v8 */
    /* JADX WARNING: type inference failed for: r8v9 */
    /* JADX WARNING: type inference failed for: r9v17 */
    /* JADX WARNING: type inference failed for: r9v18 */
    /* JADX WARNING: type inference failed for: r9v19 */
    /* JADX WARNING: type inference failed for: r4v25 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r9v6
      assigns: []
      uses: []
      mth insns count: 195
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01b8  */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void httpDo(org.apache.http.client.methods.HttpUriRequest r18, java.lang.String r19, java.util.Map<java.lang.String, java.lang.String> r20, com.androidquery.callback.AjaxStatus r21) throws org.apache.http.client.ClientProtocolException, java.io.IOException {
        /*
            r17 = this;
            r1 = r17
            r2 = r18
            r0 = r20
            java.lang.String r3 = AGENT
            if (r3 == 0) goto L_0x000f
            java.lang.String r4 = "User-Agent"
            r2.addHeader(r4, r3)
        L_0x000f:
            if (r0 == 0) goto L_0x002f
            java.util.Set r3 = r20.keySet()
            java.util.Iterator r3 = r3.iterator()
        L_0x0019:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x002f
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r0.get(r4)
            java.lang.String r5 = (java.lang.String) r5
            r2.addHeader(r4, r5)
            goto L_0x0019
        L_0x002f:
            boolean r3 = GZIP
            java.lang.String r4 = "gzip"
            if (r3 == 0) goto L_0x0042
            java.lang.String r3 = "Accept-Encoding"
            if (r0 == 0) goto L_0x003f
            boolean r0 = r0.containsKey(r3)
            if (r0 != 0) goto L_0x0042
        L_0x003f:
            r2.addHeader(r3, r4)
        L_0x0042:
            java.lang.String r0 = r17.makeCookie()
            if (r0 == 0) goto L_0x004d
            java.lang.String r3 = "Cookie"
            r2.addHeader(r3, r0)
        L_0x004d:
            com.androidquery.auth.AccountHandle r0 = r1.ah
            if (r0 == 0) goto L_0x0054
            r0.applyToken(r1, r2)
        L_0x0054:
            org.apache.http.impl.client.DefaultHttpClient r3 = getClient()
            org.apache.http.params.HttpParams r5 = r18.getParams()
            org.apache.http.HttpHost r0 = r1.proxy
            java.lang.String r6 = "http.route.default-proxy"
            if (r0 == 0) goto L_0x0065
            r5.setParameter(r6, r0)
        L_0x0065:
            int r0 = r1.timeout
            if (r0 <= 0) goto L_0x007d
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r7 = "http.connection.timeout"
            r5.setParameter(r7, r0)
            int r0 = r1.timeout
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r7 = "http.socket.timeout"
            r5.setParameter(r7, r0)
        L_0x007d:
            org.apache.http.protocol.BasicHttpContext r7 = new org.apache.http.protocol.BasicHttpContext
            r7.<init>()
            org.apache.http.impl.client.BasicCookieStore r0 = new org.apache.http.impl.client.BasicCookieStore
            r0.<init>()
            java.lang.String r8 = "http.cookie-store"
            r7.setAttribute(r8, r0)
            r1.request = r2
            boolean r0 = r1.abort
            if (r0 != 0) goto L_0x01f6
            r8 = 0
            org.apache.http.HttpResponse r0 = r1.execute(r2, r3, r7)     // Catch:{ HttpHostConnectException -> 0x0099 }
        L_0x0097:
            r2 = r0
            goto L_0x00ac
        L_0x0099:
            r0 = move-exception
            r9 = r0
            org.apache.http.HttpHost r0 = r1.proxy
            if (r0 == 0) goto L_0x01f5
            java.lang.String r0 = "proxy failed, retrying without proxy"
            com.androidquery.util.AQUtility.debug(r0)
            r5.setParameter(r6, r8)
            org.apache.http.HttpResponse r0 = r1.execute(r2, r3, r7)
            goto L_0x0097
        L_0x00ac:
            org.apache.http.StatusLine r0 = r2.getStatusLine()
            int r5 = r0.getStatusCode()
            org.apache.http.StatusLine r0 = r2.getStatusLine()
            java.lang.String r6 = r0.getReasonPhrase()
            org.apache.http.HttpEntity r0 = r2.getEntity()
            r9 = 200(0xc8, float:2.8E-43)
            if (r5 < r9) goto L_0x0173
            r9 = 300(0x12c, float:4.2E-43)
            if (r5 < r9) goto L_0x00ca
            goto L_0x0173
        L_0x00ca:
            java.lang.String r9 = "http.target_host"
            java.lang.Object r9 = r7.getAttribute(r9)
            org.apache.http.HttpHost r9 = (org.apache.http.HttpHost) r9
            java.lang.String r10 = "http.request"
            java.lang.Object r10 = r7.getAttribute(r10)
            org.apache.http.client.methods.HttpUriRequest r10 = (org.apache.http.client.methods.HttpUriRequest) r10
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r9 = r9.toURI()
            r11.append(r9)
            java.net.URI r9 = r10.getURI()
            r11.append(r9)
            java.lang.String r9 = r11.toString()
            r10 = 32
            r11 = 65536(0x10000, float:9.18355E-41)
            long r12 = r0.getContentLength()
            int r13 = (int) r12
            int r11 = java.lang.Math.min(r11, r13)
            int r10 = java.lang.Math.max(r10, r11)
            java.io.File r11 = r17.getPreFile()     // Catch:{ all -> 0x016a }
            if (r11 != 0) goto L_0x010e
            com.androidquery.util.PredefinedBAOS r12 = new com.androidquery.util.PredefinedBAOS     // Catch:{ all -> 0x016a }
            r12.<init>(r10)     // Catch:{ all -> 0x016a }
            goto L_0x011c
        L_0x010e:
            r11.createNewFile()     // Catch:{ all -> 0x016a }
            java.io.BufferedOutputStream r10 = new java.io.BufferedOutputStream     // Catch:{ all -> 0x016a }
            java.io.FileOutputStream r12 = new java.io.FileOutputStream     // Catch:{ all -> 0x016a }
            r12.<init>(r11)     // Catch:{ all -> 0x016a }
            r10.<init>(r12)     // Catch:{ all -> 0x016a }
            r12 = r10
        L_0x011c:
            java.io.InputStream r10 = r0.getContent()     // Catch:{ all -> 0x0168 }
            java.lang.String r13 = r1.getEncoding(r0)     // Catch:{ all -> 0x0165 }
            boolean r4 = r4.equalsIgnoreCase(r13)     // Catch:{ all -> 0x0165 }
            if (r4 == 0) goto L_0x0130
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch:{ all -> 0x0165 }
            r4.<init>(r10)     // Catch:{ all -> 0x0165 }
            goto L_0x0131
        L_0x0130:
            r4 = r10
        L_0x0131:
            long r13 = r0.getContentLength()     // Catch:{ all -> 0x0162 }
            int r0 = (int) r13     // Catch:{ all -> 0x0162 }
            r1.copy(r4, r12, r0)     // Catch:{ all -> 0x0162 }
            r12.flush()     // Catch:{ all -> 0x0162 }
            if (r11 != 0) goto L_0x0146
            r0 = r12
            com.androidquery.util.PredefinedBAOS r0 = (com.androidquery.util.PredefinedBAOS) r0     // Catch:{ all -> 0x0162 }
            byte[] r0 = r0.toByteArray()     // Catch:{ all -> 0x0162 }
            goto L_0x015b
        L_0x0146:
            boolean r0 = r11.exists()     // Catch:{ all -> 0x0162 }
            if (r0 == 0) goto L_0x0159
            long r13 = r11.length()     // Catch:{ all -> 0x0162 }
            r15 = 0
            int r0 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r0 != 0) goto L_0x0157
            goto L_0x0159
        L_0x0157:
            r0 = r8
            goto L_0x015b
        L_0x0159:
            r0 = r8
            r11 = r0
        L_0x015b:
            com.androidquery.util.AQUtility.close(r4)
            com.androidquery.util.AQUtility.close(r12)
            goto L_0x01ad
        L_0x0162:
            r0 = move-exception
            r8 = r4
            goto L_0x016c
        L_0x0165:
            r0 = move-exception
            r8 = r10
            goto L_0x016c
        L_0x0168:
            r0 = move-exception
            goto L_0x016c
        L_0x016a:
            r0 = move-exception
            r12 = r8
        L_0x016c:
            com.androidquery.util.AQUtility.close(r8)
            com.androidquery.util.AQUtility.close(r12)
            throw r0
        L_0x0173:
            if (r0 == 0) goto L_0x01a3
            java.io.InputStream r4 = r0.getContent()     // Catch:{ Exception -> 0x0198, all -> 0x0195 }
            java.lang.String r0 = r1.getEncoding(r0)     // Catch:{ Exception -> 0x0192 }
            byte[] r0 = r1.toData(r0, r4)     // Catch:{ Exception -> 0x0192 }
            java.lang.String r9 = new java.lang.String     // Catch:{ Exception -> 0x0192 }
            java.lang.String r10 = "UTF-8"
            r9.<init>(r0, r10)     // Catch:{ Exception -> 0x0192 }
            java.lang.String r0 = "error"
            com.androidquery.util.AQUtility.debug(r0, r9)     // Catch:{ Exception -> 0x018e }
            goto L_0x01a5
        L_0x018e:
            r0 = move-exception
            goto L_0x019b
        L_0x0190:
            r0 = move-exception
            goto L_0x019f
        L_0x0192:
            r0 = move-exception
            r9 = r8
            goto L_0x019b
        L_0x0195:
            r0 = move-exception
            r4 = r8
            goto L_0x019f
        L_0x0198:
            r0 = move-exception
            r4 = r8
            r9 = r4
        L_0x019b:
            com.androidquery.util.AQUtility.debug(r0)     // Catch:{ all -> 0x0190 }
            goto L_0x01a5
        L_0x019f:
            com.androidquery.util.AQUtility.close(r4)
            throw r0
        L_0x01a3:
            r4 = r8
            r9 = r4
        L_0x01a5:
            com.androidquery.util.AQUtility.close(r4)
            r0 = r8
            r11 = r0
            r8 = r9
            r9 = r19
        L_0x01ad:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r5)
            java.lang.String r10 = "response"
            com.androidquery.util.AQUtility.debug(r10, r4)
            if (r0 == 0) goto L_0x01c2
            int r4 = r0.length
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r10 = r19
            com.androidquery.util.AQUtility.debug(r4, r10)
        L_0x01c2:
            r4 = r21
            com.androidquery.callback.AjaxStatus r4 = r4.code(r5)
            com.androidquery.callback.AjaxStatus r4 = r4.message(r6)
            com.androidquery.callback.AjaxStatus r4 = r4.error(r8)
            com.androidquery.callback.AjaxStatus r4 = r4.redirect(r9)
            java.util.Date r5 = new java.util.Date
            r5.<init>()
            com.androidquery.callback.AjaxStatus r4 = r4.time(r5)
            com.androidquery.callback.AjaxStatus r0 = r4.data(r0)
            com.androidquery.callback.AjaxStatus r0 = r0.file(r11)
            com.androidquery.callback.AjaxStatus r0 = r0.client(r3)
            com.androidquery.callback.AjaxStatus r0 = r0.context(r7)
            org.apache.http.Header[] r2 = r2.getAllHeaders()
            r0.headers(r2)
            return
        L_0x01f5:
            throw r9
        L_0x01f6:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r2 = "Aborted"
            r0.<init>(r2)
            goto L_0x01ff
        L_0x01fe:
            throw r0
        L_0x01ff:
            goto L_0x01fe
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.callback.AbstractAjaxCallback.httpDo(org.apache.http.client.methods.HttpUriRequest, java.lang.String, java.util.Map, com.androidquery.callback.AjaxStatus):void");
    }

    private String getEncoding(HttpEntity httpEntity) {
        if (httpEntity == null) {
            return null;
        }
        Header contentEncoding = httpEntity.getContentEncoding();
        if (contentEncoding == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        WeakReference<Object> weakReference = this.progress;
        Progress progress2 = null;
        Object obj = weakReference != null ? weakReference.get() : null;
        if (obj != null) {
            progress2 = new Progress(obj);
        }
        AQUtility.copy(inputStream, outputStream, i, progress2);
    }

    public K auth(Activity activity, String str, String str2) {
        if (VERSION.SDK_INT >= 5 && str.startsWith("g.")) {
            this.ah = new GoogleHandle(activity, str, str2);
        }
        return self();
    }

    public K auth(AccountHandle accountHandle) {
        this.ah = accountHandle;
        return self();
    }

    public String getUrl() {
        return this.url;
    }

    public Object getHandler() {
        Object obj = this.handler;
        if (obj != null) {
            return obj;
        }
        Reference<Object> reference = this.whandler;
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public String getCallback() {
        return this.callback;
    }

    protected static int getLastStatus() {
        return lastStatus;
    }

    public T getResult() {
        return this.result;
    }

    public AjaxStatus getStatus() {
        return this.status;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public void abort() {
        this.abort = true;
        HttpUriRequest httpUriRequest = this.request;
        if (httpUriRequest != null && !httpUriRequest.isAborted()) {
            this.request.abort();
        }
    }

    private static boolean isMultiPart(Map<String, Object> map) {
        for (Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            AQUtility.debug(entry.getKey(), value);
            if ((value instanceof File) || (value instanceof byte[])) {
                return true;
            }
            if (value instanceof InputStream) {
                return true;
            }
        }
        return false;
    }

    private void httpMulti(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws IOException {
        String str2;
        byte[] bArr;
        AQUtility.debug("multipart", str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(NET_TIMEOUT * 4);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, HttpHeaders.KEEP_ALIVE);
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
        if (map != null) {
            for (String str3 : map.keySet()) {
                httpURLConnection.setRequestProperty(str3, (String) map.get(str3));
            }
        }
        String makeCookie = makeCookie();
        if (makeCookie != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.COOKIE, makeCookie);
        }
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            accountHandle.applyToken(this, httpURLConnection);
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        for (Entry entry : map2.entrySet()) {
            writeObject(dataOutputStream, (String) entry.getKey(), entry.getValue());
        }
        dataOutputStream.writeBytes("--*****--\r\n");
        dataOutputStream.flush();
        dataOutputStream.close();
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (responseCode < 200 || responseCode >= 300) {
            str2 = new String(toData(contentEncoding, httpURLConnection.getErrorStream()), "UTF-8");
            AQUtility.debug("error", str2);
            bArr = null;
        } else {
            bArr = toData(contentEncoding, httpURLConnection.getInputStream());
            str2 = null;
        }
        AQUtility.debug("response", Integer.valueOf(responseCode));
        if (bArr != null) {
            AQUtility.debug(Integer.valueOf(bArr.length), str);
        }
        ajaxStatus.code(responseCode).message(responseMessage).redirect(str).time(new Date()).data(bArr).error(str2).client(null);
    }

    private byte[] toData(String str, InputStream inputStream) throws IOException {
        return AQUtility.toBytes("gzip".equalsIgnoreCase(str) ? new GZIPInputStream(inputStream) : inputStream);
    }

    private static void writeObject(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        if (obj != null) {
            if (obj instanceof File) {
                File file = (File) obj;
                writeData(dataOutputStream, str, file.getName(), new FileInputStream(file));
            } else if (obj instanceof byte[]) {
                writeData(dataOutputStream, str, str, new ByteArrayInputStream((byte[]) obj));
            } else if (obj instanceof InputStream) {
                writeData(dataOutputStream, str, str, (InputStream) obj);
            } else {
                writeField(dataOutputStream, str, obj.toString());
            }
        }
    }

    private static void writeData(DataOutputStream dataOutputStream, String str, String str2, InputStream inputStream) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        StringBuilder sb = new StringBuilder();
        sb.append("Content-Disposition: form-data; name=\"");
        sb.append(str);
        sb.append("\";");
        sb.append(" filename=\"");
        sb.append(str2);
        sb.append("\"");
        String str3 = "\r\n";
        sb.append(str3);
        dataOutputStream.writeBytes(sb.toString());
        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
        dataOutputStream.writeBytes(str3);
        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
        dataOutputStream.writeBytes(str3);
        dataOutputStream.writeBytes(str3);
        AQUtility.copy(inputStream, dataOutputStream);
        dataOutputStream.writeBytes(str3);
    }

    private static void writeField(DataOutputStream dataOutputStream, String str, String str2) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        StringBuilder sb = new StringBuilder();
        sb.append("Content-Disposition: form-data; name=\"");
        sb.append(str);
        sb.append("\"");
        dataOutputStream.writeBytes(sb.toString());
        String str3 = "\r\n";
        dataOutputStream.writeBytes(str3);
        dataOutputStream.writeBytes(str3);
        dataOutputStream.write(str2.getBytes("UTF-8"));
        dataOutputStream.writeBytes(str3);
    }

    private String makeCookie() {
        Map<String, String> map = this.cookies;
        if (map == null || map.size() == 0) {
            return null;
        }
        Iterator it = this.cookies.keySet().iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            String str = (String) it.next();
            String str2 = (String) this.cookies.get(str);
            sb.append(str);
            sb.append("=");
            sb.append(str2);
            if (it.hasNext()) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }
}
