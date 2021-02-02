package com.shuyu.gsyvideoplayer.cache;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.danikula.videocache.CacheListener;
import com.danikula.videocache.HttpProxyCacheServer;
import com.danikula.videocache.HttpProxyCacheServer.Builder;
import com.danikula.videocache.file.Md5FileNameGenerator;
import com.shuyu.gsyvideoplayer.cache.ICacheManager.ICacheAvailableListener;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.FileUtils;
import com.shuyu.gsyvideoplayer.utils.StorageUtils;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class ProxyCacheManager implements ICacheManager, CacheListener {
    private static ProxyCacheManager proxyCacheManager;
    private ICacheAvailableListener cacheAvailableListener;
    protected File mCacheDir;
    protected boolean mCacheFile;
    protected HttpProxyCacheServer proxy;
    protected ProxyCacheUserAgentHeadersInjector userAgentHeadersInjector = new ProxyCacheUserAgentHeadersInjector();

    public static synchronized ProxyCacheManager instance() {
        ProxyCacheManager proxyCacheManager2;
        synchronized (ProxyCacheManager.class) {
            if (proxyCacheManager == null) {
                proxyCacheManager = new ProxyCacheManager();
            }
            proxyCacheManager2 = proxyCacheManager;
        }
        return proxyCacheManager2;
    }

    public void onCacheAvailable(File file, String str, int i) {
        ICacheAvailableListener iCacheAvailableListener = this.cacheAvailableListener;
        if (iCacheAvailableListener != null) {
            iCacheAvailableListener.onCacheAvailable(file, str, i);
        }
    }

    public void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        ProxyCacheUserAgentHeadersInjector proxyCacheUserAgentHeadersInjector = this.userAgentHeadersInjector;
        ProxyCacheUserAgentHeadersInjector.mMapHeadData.clear();
        if (map != null) {
            ProxyCacheUserAgentHeadersInjector proxyCacheUserAgentHeadersInjector2 = this.userAgentHeadersInjector;
            ProxyCacheUserAgentHeadersInjector.mMapHeadData.putAll(map);
        }
        String str2 = "http";
        String str3 = ".m3u8";
        if (str.startsWith(str2) && !str.contains("127.0.0.1") && !str.contains(str3)) {
            HttpProxyCacheServer proxy2 = getProxy(context.getApplicationContext(), file);
            if (proxy2 != null) {
                String proxyUrl = proxy2.getProxyUrl(str);
                this.mCacheFile = !proxyUrl.startsWith(str2);
                if (!this.mCacheFile) {
                    proxy2.registerCacheListener(this, str);
                }
                str = proxyUrl;
            }
        } else if (!str.startsWith(str2) && !str.startsWith("rtmp") && !str.startsWith("rtsp") && !str.contains(str3)) {
            this.mCacheFile = true;
        }
        try {
            iMediaPlayer.setDataSource(context, Uri.parse(str), map);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void clearCache(Context context, File file, String str) {
        if (TextUtils.isEmpty(str)) {
            FileUtils.deleteFiles(new File(StorageUtils.getIndividualCacheDirectory(context.getApplicationContext()).getAbsolutePath()));
            return;
        }
        String generate = new Md5FileNameGenerator().generate(str);
        String str2 = ".download";
        if (file != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(file.getAbsolutePath());
            sb.append(File.separator);
            sb.append(generate);
            sb.append(str2);
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(file.getAbsolutePath());
            sb3.append(File.separator);
            sb3.append(generate);
            String sb4 = sb3.toString();
            CommonUtil.deleteFile(sb2);
            CommonUtil.deleteFile(sb4);
            return;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(StorageUtils.getIndividualCacheDirectory(context.getApplicationContext()).getAbsolutePath());
        sb5.append(File.separator);
        sb5.append(generate);
        sb5.append(str2);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append(StorageUtils.getIndividualCacheDirectory(context.getApplicationContext()).getAbsolutePath());
        sb7.append(File.separator);
        sb7.append(generate);
        String sb8 = sb7.toString();
        CommonUtil.deleteFile(sb6);
        CommonUtil.deleteFile(sb8);
    }

    public void release() {
        HttpProxyCacheServer httpProxyCacheServer = this.proxy;
        if (httpProxyCacheServer != null) {
            try {
                httpProxyCacheServer.unregisterCacheListener(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean cachePreview(Context context, File file, String str) {
        HttpProxyCacheServer proxy2 = getProxy(context.getApplicationContext(), file);
        if (proxy2 != null) {
            str = proxy2.getProxyUrl(str);
        }
        return !str.startsWith("http");
    }

    public boolean hadCached() {
        return this.mCacheFile;
    }

    public void setCacheAvailableListener(ICacheAvailableListener iCacheAvailableListener) {
        this.cacheAvailableListener = iCacheAvailableListener;
    }

    public HttpProxyCacheServer newProxy(Context context, File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        Builder builder = new Builder(context);
        builder.cacheDirectory(file);
        builder.headerInjector(this.userAgentHeadersInjector);
        this.mCacheDir = file;
        return builder.build();
    }

    public void setProxy(HttpProxyCacheServer httpProxyCacheServer) {
        this.proxy = httpProxyCacheServer;
    }

    public HttpProxyCacheServer newProxy(Context context) {
        return new Builder(context.getApplicationContext()).headerInjector(this.userAgentHeadersInjector).build();
    }

    protected static HttpProxyCacheServer getProxy(Context context) {
        HttpProxyCacheServer httpProxyCacheServer = instance().proxy;
        if (httpProxyCacheServer != null) {
            return httpProxyCacheServer;
        }
        ProxyCacheManager instance = instance();
        HttpProxyCacheServer newProxy = instance().newProxy(context);
        instance.proxy = newProxy;
        return newProxy;
    }

    public static HttpProxyCacheServer getProxy(Context context, File file) {
        HttpProxyCacheServer httpProxyCacheServer;
        if (file == null) {
            return getProxy(context);
        }
        if (instance().mCacheDir == null || instance().mCacheDir.getAbsolutePath().equals(file.getAbsolutePath())) {
            HttpProxyCacheServer httpProxyCacheServer2 = instance().proxy;
            if (httpProxyCacheServer2 == null) {
                ProxyCacheManager instance = instance();
                httpProxyCacheServer = instance().newProxy(context, file);
                instance.proxy = httpProxyCacheServer;
            } else {
                httpProxyCacheServer = httpProxyCacheServer2;
            }
            return httpProxyCacheServer;
        }
        HttpProxyCacheServer httpProxyCacheServer3 = instance().proxy;
        if (httpProxyCacheServer3 != null) {
            httpProxyCacheServer3.shutdown();
        }
        ProxyCacheManager instance2 = instance();
        HttpProxyCacheServer newProxy = instance().newProxy(context, file);
        instance2.proxy = newProxy;
        return newProxy;
    }
}
