package com.shuyu.gsyvideoplayer.cache;

import com.danikula.videocache.headers.HeaderInjector;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import java.util.HashMap;
import java.util.Map;

public class ProxyCacheUserAgentHeadersInjector implements HeaderInjector {
    public static final Map<String, String> mMapHeadData = new HashMap();

    public Map<String, String> addHeaders(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("****** proxy addHeaders ****** ");
        sb.append(mMapHeadData.size());
        Debuger.printfLog(sb.toString());
        return mMapHeadData;
    }
}
