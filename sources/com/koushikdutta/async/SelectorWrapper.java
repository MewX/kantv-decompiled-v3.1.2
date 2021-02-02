package com.koushikdutta.async;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;

public class SelectorWrapper {
    boolean isWaking;
    private Selector selector;
    Semaphore semaphore = new Semaphore(0);

    public Selector getSelector() {
        return this.selector;
    }

    public SelectorWrapper(Selector selector2) {
        this.selector = selector2;
    }

    public int selectNow() throws IOException {
        return this.selector.selectNow();
    }

    public void select() throws IOException {
        select(0);
    }

    public void select(long j) throws IOException {
        try {
            this.semaphore.drainPermits();
            this.selector.select(j);
        } finally {
            this.semaphore.release(Integer.MAX_VALUE);
        }
    }

    public Set<SelectionKey> keys() {
        return this.selector.keys();
    }

    public Set<SelectionKey> selectedKeys() {
        return this.selector.selectedKeys();
    }

    public void close() throws IOException {
        this.selector.close();
    }

    public boolean isOpen() {
        return this.selector.isOpen();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001a, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0036 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void wakeupOnce() {
        /*
            r6 = this;
            java.util.concurrent.Semaphore r0 = r6.semaphore
            boolean r0 = r0.tryAcquire()
            r1 = 1
            r0 = r0 ^ r1
            java.nio.channels.Selector r2 = r6.selector
            r2.wakeup()
            if (r0 == 0) goto L_0x0010
            return
        L_0x0010:
            monitor-enter(r6)
            boolean r0 = r6.isWaking     // Catch:{ all -> 0x004e }
            if (r0 == 0) goto L_0x0017
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            return
        L_0x0017:
            r6.isWaking = r1     // Catch:{ all -> 0x004e }
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            r0 = 0
            r1 = 0
        L_0x001c:
            r2 = 100
            if (r1 >= r2) goto L_0x0046
            java.util.concurrent.Semaphore r2 = r6.semaphore     // Catch:{ InterruptedException -> 0x0036 }
            r3 = 10
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ InterruptedException -> 0x0036 }
            boolean r2 = r2.tryAcquire(r3, r5)     // Catch:{ InterruptedException -> 0x0036 }
            if (r2 == 0) goto L_0x0036
            monitor-enter(r6)
            r6.isWaking = r0     // Catch:{ all -> 0x0031 }
            monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            return
        L_0x0031:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            throw r0
        L_0x0034:
            r1 = move-exception
            goto L_0x003e
        L_0x0036:
            java.nio.channels.Selector r2 = r6.selector     // Catch:{ all -> 0x0034 }
            r2.wakeup()     // Catch:{ all -> 0x0034 }
            int r1 = r1 + 1
            goto L_0x001c
        L_0x003e:
            monitor-enter(r6)
            r6.isWaking = r0     // Catch:{ all -> 0x0043 }
            monitor-exit(r6)     // Catch:{ all -> 0x0043 }
            throw r1
        L_0x0043:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0043 }
            throw r0
        L_0x0046:
            monitor-enter(r6)
            r6.isWaking = r0     // Catch:{ all -> 0x004b }
            monitor-exit(r6)     // Catch:{ all -> 0x004b }
            return
        L_0x004b:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x004b }
            throw r0
        L_0x004e:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            goto L_0x0052
        L_0x0051:
            throw r0
        L_0x0052:
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.SelectorWrapper.wakeupOnce():void");
    }
}
