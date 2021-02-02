package com.danikula.videocache;

import android.content.Context;
import android.net.Uri;
import com.danikula.videocache.file.DiskUsage;
import com.danikula.videocache.file.FileNameGenerator;
import com.danikula.videocache.file.Md5FileNameGenerator;
import com.danikula.videocache.file.TotalCountLruDiskUsage;
import com.danikula.videocache.file.TotalSizeLruDiskUsage;
import com.danikula.videocache.headers.EmptyHeadersInjector;
import com.danikula.videocache.headers.HeaderInjector;
import com.danikula.videocache.sourcestorage.SourceInfoStorage;
import com.danikula.videocache.sourcestorage.SourceInfoStorageFactory;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class HttpProxyCacheServer {
    private static final String PROXY_HOST = "127.0.0.1";
    private final Object clientsLock;
    private final Map<String, HttpProxyCacheServerClients> clientsMap;
    private final Config config;
    private final Pinger pinger;
    private final int port;
    private final ServerSocket serverSocket;
    private final ExecutorService socketProcessor;
    private final Thread waitConnectionThread;

    public static final class Builder {
        private static final long DEFAULT_MAX_SIZE = 536870912;
        private File cacheRoot;
        private DiskUsage diskUsage = new TotalSizeLruDiskUsage(536870912);
        private FileNameGenerator fileNameGenerator = new Md5FileNameGenerator();
        private HeaderInjector headerInjector = new EmptyHeadersInjector();
        private SourceInfoStorage sourceInfoStorage;

        public Builder(Context context) {
            this.sourceInfoStorage = SourceInfoStorageFactory.newSourceInfoStorage(context);
            this.cacheRoot = StorageUtils.getIndividualCacheDirectory(context);
        }

        public Builder cacheDirectory(File file) {
            this.cacheRoot = (File) Preconditions.checkNotNull(file);
            return this;
        }

        public Builder fileNameGenerator(FileNameGenerator fileNameGenerator2) {
            this.fileNameGenerator = (FileNameGenerator) Preconditions.checkNotNull(fileNameGenerator2);
            return this;
        }

        public Builder maxCacheSize(long j) {
            this.diskUsage = new TotalSizeLruDiskUsage(j);
            return this;
        }

        public Builder maxCacheFilesCount(int i) {
            this.diskUsage = new TotalCountLruDiskUsage(i);
            return this;
        }

        public Builder diskUsage(DiskUsage diskUsage2) {
            this.diskUsage = (DiskUsage) Preconditions.checkNotNull(diskUsage2);
            return this;
        }

        public Builder headerInjector(HeaderInjector headerInjector2) {
            this.headerInjector = (HeaderInjector) Preconditions.checkNotNull(headerInjector2);
            return this;
        }

        public HttpProxyCacheServer build() {
            return new HttpProxyCacheServer(buildConfig());
        }

        /* access modifiers changed from: private */
        public Config buildConfig() {
            Config config = new Config(this.cacheRoot, this.fileNameGenerator, this.diskUsage, this.sourceInfoStorage, this.headerInjector);
            return config;
        }
    }

    private final class SocketProcessorRunnable implements Runnable {
        private final Socket socket;

        public SocketProcessorRunnable(Socket socket2) {
            this.socket = socket2;
        }

        public void run() {
            HttpProxyCacheServer.this.processSocket(this.socket);
        }
    }

    private final class WaitRequestsRunnable implements Runnable {
        private final CountDownLatch startSignal;

        public WaitRequestsRunnable(CountDownLatch countDownLatch) {
            this.startSignal = countDownLatch;
        }

        public void run() {
            this.startSignal.countDown();
            HttpProxyCacheServer.this.waitForRequest();
        }
    }

    public HttpProxyCacheServer(Context context) {
        this(new Builder(context).buildConfig());
    }

    private HttpProxyCacheServer(Config config2) {
        String str = PROXY_HOST;
        this.clientsLock = new Object();
        this.socketProcessor = Executors.newFixedThreadPool(8);
        this.clientsMap = new ConcurrentHashMap();
        this.config = (Config) Preconditions.checkNotNull(config2);
        try {
            this.serverSocket = new ServerSocket(0, 8, InetAddress.getByName(str));
            this.port = this.serverSocket.getLocalPort();
            IgnoreHostProxySelector.install(str, this.port);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.waitConnectionThread = new Thread(new WaitRequestsRunnable(countDownLatch));
            this.waitConnectionThread.start();
            countDownLatch.await();
            this.pinger = new Pinger(str, this.port);
            StringBuilder sb = new StringBuilder();
            sb.append("Proxy cache server started. Is it alive? ");
            sb.append(isAlive());
            HttpProxyCacheDebuger.printfLog(sb.toString());
        } catch (IOException | InterruptedException e) {
            this.socketProcessor.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        }
    }

    public String getProxyUrl(String str) {
        return getProxyUrl(str, true);
    }

    public String getProxyUrl(String str, boolean z) {
        if (!z || !isCached(str)) {
            if (isAlive()) {
                str = appendToProxyUrl(str);
            }
            return str;
        }
        File cacheFile = getCacheFile(str);
        touchFileSafely(cacheFile);
        return Uri.fromFile(cacheFile).toString();
    }

    public void registerCacheListener(CacheListener cacheListener, String str) {
        Preconditions.checkAllNotNull(cacheListener, str);
        synchronized (this.clientsLock) {
            try {
                getClients(str).registerCacheListener(cacheListener);
            } catch (ProxyCacheException e) {
                HttpProxyCacheDebuger.printfWarning("Error registering cache listener", e.getMessage());
            }
        }
    }

    public void unregisterCacheListener(CacheListener cacheListener, String str) {
        Preconditions.checkAllNotNull(cacheListener, str);
        synchronized (this.clientsLock) {
            try {
                getClients(str).unregisterCacheListener(cacheListener);
            } catch (ProxyCacheException e) {
                HttpProxyCacheDebuger.printfWarning("Error registering cache listener", e.getMessage());
            }
        }
    }

    public void unregisterCacheListener(CacheListener cacheListener) {
        Preconditions.checkNotNull(cacheListener);
        synchronized (this.clientsLock) {
            for (HttpProxyCacheServerClients unregisterCacheListener : this.clientsMap.values()) {
                unregisterCacheListener.unregisterCacheListener(cacheListener);
            }
        }
    }

    public boolean isCached(String str) {
        Preconditions.checkNotNull(str, "Url can't be null!");
        return getCacheFile(str).exists();
    }

    public void shutdown() {
        HttpProxyCacheDebuger.printfLog("Shutdown proxy server");
        shutdownClients();
        this.config.sourceInfoStorage.release();
        this.waitConnectionThread.interrupt();
        try {
            if (!this.serverSocket.isClosed()) {
                this.serverSocket.close();
            }
        } catch (IOException e) {
            onError(new ProxyCacheException("Error shutting down proxy server", e));
        }
    }

    private boolean isAlive() {
        return this.pinger.ping(3, 70);
    }

    private String appendToProxyUrl(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", new Object[]{PROXY_HOST, Integer.valueOf(this.port), ProxyCacheUtils.encode(str)});
    }

    private File getCacheFile(String str) {
        return new File(this.config.cacheRoot, this.config.fileNameGenerator.generate(str));
    }

    private void touchFileSafely(File file) {
        try {
            this.config.diskUsage.touch(file);
        } catch (IOException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error touching file ");
            sb.append(file);
            HttpProxyCacheDebuger.printfError(sb.toString(), (Exception) e);
        }
    }

    private void shutdownClients() {
        synchronized (this.clientsLock) {
            for (HttpProxyCacheServerClients shutdown : this.clientsMap.values()) {
                shutdown.shutdown();
            }
            this.clientsMap.clear();
        }
    }

    /* access modifiers changed from: private */
    public void waitForRequest() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.socketProcessor.submit(new SocketProcessorRunnable(this.serverSocket.accept()));
            } catch (IOException e) {
                onError(new ProxyCacheException("Error during waiting connection", e));
                return;
            }
        }
    }

    /* access modifiers changed from: private */
    public void processSocket(Socket socket) {
        StringBuilder sb;
        String str = "Opened connections: ";
        try {
            GetRequest read = GetRequest.read(socket.getInputStream());
            String decode = ProxyCacheUtils.decode(read.uri);
            if (this.pinger.isPingRequest(decode)) {
                this.pinger.responseToPing(socket);
            } else {
                getClients(decode).processRequest(read, socket);
            }
            releaseSocket(socket);
            sb = new StringBuilder();
        } catch (SocketException unused) {
            releaseSocket(socket);
            sb = new StringBuilder();
        } catch (ProxyCacheException | IOException e) {
            onError(new ProxyCacheException("Error processing request", e));
            releaseSocket(socket);
            sb = new StringBuilder();
        } catch (Throwable th) {
            releaseSocket(socket);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(getClientsCount());
            HttpProxyCacheDebuger.printfLog(sb2.toString());
            throw th;
        }
        sb.append(str);
        sb.append(getClientsCount());
        HttpProxyCacheDebuger.printfLog(sb.toString());
    }

    private HttpProxyCacheServerClients getClients(String str) throws ProxyCacheException {
        HttpProxyCacheServerClients httpProxyCacheServerClients;
        synchronized (this.clientsLock) {
            httpProxyCacheServerClients = (HttpProxyCacheServerClients) this.clientsMap.get(str);
            if (httpProxyCacheServerClients == null) {
                httpProxyCacheServerClients = new HttpProxyCacheServerClients(str, this.config);
                this.clientsMap.put(str, httpProxyCacheServerClients);
            }
        }
        return httpProxyCacheServerClients;
    }

    private int getClientsCount() {
        int i;
        synchronized (this.clientsLock) {
            i = 0;
            for (HttpProxyCacheServerClients clientsCount : this.clientsMap.values()) {
                i += clientsCount.getClientsCount();
            }
        }
        return i;
    }

    private void releaseSocket(Socket socket) {
        closeSocketInput(socket);
        closeSocketOutput(socket);
        closeSocket(socket);
    }

    private void closeSocketInput(Socket socket) {
        try {
            if (!socket.isInputShutdown()) {
                socket.shutdownInput();
            }
        } catch (IOException | SocketException unused) {
        }
    }

    private void closeSocketOutput(Socket socket) {
        try {
            if (!socket.isOutputShutdown()) {
                socket.shutdownOutput();
            }
        } catch (IOException e) {
            HttpProxyCacheDebuger.printfWarning("Failed to close socket on proxy side: {}. It seems client have already closed connection.", e.getMessage());
        }
    }

    private void closeSocket(Socket socket) {
        try {
            if (!socket.isClosed()) {
                socket.close();
            }
        } catch (IOException unused) {
        }
    }

    private void onError(Throwable th) {
        HttpProxyCacheDebuger.printfError("HttpProxyCacheServer error", th.getMessage());
    }
}
