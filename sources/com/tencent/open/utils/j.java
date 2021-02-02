package com.tencent.open.utils;

import android.annotation.TargetApi;
import android.net.SSLCertificateSocketFactory;
import android.os.Build.VERSION;
import com.tencent.open.a.f;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import org.apache.http.params.HttpParams;

@TargetApi(17)
/* compiled from: ProGuard */
public class j implements LayeredSocketFactory {
    static final HostnameVerifier a = new StrictHostnameVerifier();
    SSLCertificateSocketFactory b = ((SSLCertificateSocketFactory) SSLCertificateSocketFactory.getInsecure(0, null));

    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) throws IOException {
        socket.connect(new InetSocketAddress(str, i));
        return socket;
    }

    public Socket createSocket() {
        return new Socket();
    }

    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).isConnected();
        }
        return false;
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("createSocket ");
        sb.append(socket.toString());
        sb.append(" host:");
        sb.append(str);
        sb.append(" port:");
        sb.append(i);
        sb.append(" autoClose:");
        sb.append(z);
        String str2 = "SNISocketFactory";
        f.a(str2, sb.toString());
        SSLSocket sSLSocket = (SSLSocket) this.b.createSocket(socket, str, i, z);
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        if (VERSION.SDK_INT >= 17) {
            f.a(str2, "Setting SNI hostname");
            this.b.setHostname(sSLSocket, str);
        } else {
            f.a(str2, "No documented SNI support on Android <4.2, trying with reflection");
            try {
                sSLSocket.getClass().getMethod("setHostname", new Class[]{String.class}).invoke(sSLSocket, new Object[]{str});
            } catch (Exception unused) {
                f.a(str2, "SNI not useable");
            }
        }
        if (a.verify(str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Cannot verify hostname: ");
        sb2.append(str);
        throw new SSLPeerUnverifiedException(sb2.toString());
    }
}
