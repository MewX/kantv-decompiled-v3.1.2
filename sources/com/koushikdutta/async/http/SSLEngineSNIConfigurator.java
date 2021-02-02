package com.koushikdutta.async.http;

import android.os.Build.VERSION;
import com.google.android.gms.security.ProviderInstaller;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

public class SSLEngineSNIConfigurator implements AsyncSSLEngineConfigurator {
    Hashtable<String, EngineHolder> holders = new Hashtable<>();

    private static class EngineHolder implements AsyncSSLEngineConfigurator {
        Field peerHost;
        Field peerPort;
        boolean skipReflection;
        Field sslParameters;
        Field useSni;

        public SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
            return null;
        }

        public EngineHolder(Class cls) {
            try {
                this.peerHost = cls.getSuperclass().getDeclaredField("peerHost");
                this.peerHost.setAccessible(true);
                this.peerPort = cls.getSuperclass().getDeclaredField("peerPort");
                this.peerPort.setAccessible(true);
                this.sslParameters = cls.getDeclaredField("sslParameters");
                this.sslParameters.setAccessible(true);
                this.useSni = this.sslParameters.getType().getDeclaredField("useSni");
                this.useSni.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
        }

        public void configureEngine(SSLEngine sSLEngine, GetSocketData getSocketData, String str, int i) {
            if (this.useSni != null && !this.skipReflection) {
                try {
                    this.peerHost.set(sSLEngine, str);
                    this.peerPort.set(sSLEngine, Integer.valueOf(i));
                    this.useSni.set(this.sslParameters.get(sSLEngine), Boolean.valueOf(true));
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
        if (ProviderInstaller.PROVIDER_NAME.equals(sSLContext.getProvider().getName()) || VERSION.SDK_INT >= 23) {
            return sSLContext.createSSLEngine(str, i);
        }
        return sSLContext.createSSLEngine();
    }

    /* access modifiers changed from: 0000 */
    public EngineHolder ensureHolder(SSLEngine sSLEngine) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        EngineHolder engineHolder = (EngineHolder) this.holders.get(canonicalName);
        if (engineHolder != null) {
            return engineHolder;
        }
        EngineHolder engineHolder2 = new EngineHolder(sSLEngine.getClass());
        this.holders.put(canonicalName, engineHolder2);
        return engineHolder2;
    }

    public void configureEngine(SSLEngine sSLEngine, GetSocketData getSocketData, String str, int i) {
        ensureHolder(sSLEngine).configureEngine(sSLEngine, getSocketData, str, i);
    }
}
