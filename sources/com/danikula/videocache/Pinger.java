package com.danikula.videocache;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class Pinger {
    private static final String PING_REQUEST = "ping";
    private static final String PING_RESPONSE = "ping ok";
    private final String host;
    private final ExecutorService pingExecutor = Executors.newSingleThreadExecutor();
    private final int port;

    private class PingCallable implements Callable<Boolean> {
        private PingCallable() {
        }

        public Boolean call() throws Exception {
            return Boolean.valueOf(Pinger.this.pingServer());
        }
    }

    Pinger(String str, int i) {
        this.host = (String) Preconditions.checkNotNull(str);
        this.port = i;
    }

    /* access modifiers changed from: 0000 */
    public boolean ping(int i, int i2) {
        Preconditions.checkArgument(i >= 1);
        Preconditions.checkArgument(i2 > 0);
        int i3 = i2;
        int i4 = 0;
        while (i4 < i) {
            try {
                if (((Boolean) this.pingExecutor.submit(new PingCallable()).get((long) i3, TimeUnit.MILLISECONDS)).booleanValue()) {
                    return true;
                }
                i4++;
                i3 *= 2;
            } catch (TimeoutException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Error pinging server (attempt: ");
                sb.append(i4);
                sb.append(", timeout: ");
                sb.append(i3);
                sb.append("). ");
                HttpProxyCacheDebuger.printfWarning(sb.toString());
            } catch (InterruptedException | ExecutionException e) {
                HttpProxyCacheDebuger.printfError("Error pinging server due to unexpected error", e);
            }
        }
        String format = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", new Object[]{Integer.valueOf(i4), Integer.valueOf(i3 / 2), getDefaultProxies()});
        HttpProxyCacheDebuger.printfError(format, (Exception) new ProxyCacheException(format));
        return false;
    }

    private List<Proxy> getDefaultProxies() {
        try {
            return ProxySelector.getDefault().select(new URI(getPingUrl()));
        } catch (URISyntaxException e) {
            throw new IllegalStateException(e);
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isPingRequest(String str) {
        return PING_REQUEST.equals(str);
    }

    /* access modifiers changed from: 0000 */
    public void responseToPing(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write(PING_RESPONSE.getBytes());
    }

    /* access modifiers changed from: private */
    public boolean pingServer() throws ProxyCacheException {
        HttpUrlSource httpUrlSource = new HttpUrlSource(getPingUrl());
        try {
            byte[] bytes = PING_RESPONSE.getBytes();
            httpUrlSource.open(0);
            byte[] bArr = new byte[bytes.length];
            httpUrlSource.read(bArr);
            boolean equals = Arrays.equals(bytes, bArr);
            StringBuilder sb = new StringBuilder();
            sb.append("Ping response: `");
            sb.append(new String(bArr));
            sb.append("`, pinged? ");
            sb.append(equals);
            HttpProxyCacheDebuger.printfLog(sb.toString());
            return equals;
        } catch (ProxyCacheException e) {
            HttpProxyCacheDebuger.printfError("Error reading ping response", (Exception) e);
            return false;
        } finally {
            httpUrlSource.close();
        }
    }

    private String getPingUrl() {
        return String.format(Locale.US, "http://%s:%d/%s", new Object[]{this.host, Integer.valueOf(this.port), PING_REQUEST});
    }
}
