package org.fourthline.cling.transport.spi;

import java.util.concurrent.Callable;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.transport.spi.StreamClientConfiguration;

public abstract class AbstractStreamClient<C extends StreamClientConfiguration, REQUEST> implements StreamClient<C> {
    private static final Logger log = Logger.getLogger(StreamClient.class.getName());

    /* access modifiers changed from: protected */
    public abstract void abort(REQUEST request);

    /* access modifiers changed from: protected */
    public abstract Callable<StreamResponseMessage> createCallable(StreamRequestMessage streamRequestMessage, REQUEST request);

    /* access modifiers changed from: protected */
    public abstract REQUEST createRequest(StreamRequestMessage streamRequestMessage);

    /* access modifiers changed from: protected */
    public abstract boolean logExecutionException(Throwable th);

    /* access modifiers changed from: protected */
    public void onFinally(REQUEST request) {
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0113 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0140 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.fourthline.cling.model.message.StreamResponseMessage sendRequest(org.fourthline.cling.model.message.StreamRequestMessage r9) throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.logging.Logger r0 = log
            java.util.logging.Level r1 = java.util.logging.Level.FINE
            boolean r0 = r0.isLoggable(r1)
            if (r0 == 0) goto L_0x0020
            java.util.logging.Logger r0 = log
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Preparing HTTP request: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r1 = r1.toString()
            r0.fine(r1)
        L_0x0020:
            java.lang.Object r0 = r8.createRequest(r9)
            r1 = 0
            if (r0 != 0) goto L_0x0028
            return r1
        L_0x0028:
            java.util.concurrent.Callable r2 = r8.createCallable(r9, r0)
            long r3 = java.lang.System.currentTimeMillis()
            org.fourthline.cling.transport.spi.StreamClientConfiguration r5 = r8.getConfiguration()
            java.util.concurrent.ExecutorService r5 = r5.getRequestExecutorService()
            java.util.concurrent.Future r2 = r5.submit(r2)
            java.util.logging.Logger r5 = log     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.util.logging.Level r6 = java.util.logging.Level.FINE     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            boolean r5 = r5.isLoggable(r6)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            if (r5 == 0) goto L_0x006c
            java.util.logging.Logger r5 = log     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r6.<init>()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r7 = "Waiting "
            r6.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            org.fourthline.cling.transport.spi.StreamClientConfiguration r7 = r8.getConfiguration()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r7 = r7.getTimeoutSeconds()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r6.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r7 = " seconds for HTTP request to complete: "
            r6.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r6.append(r9)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r6 = r6.toString()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r5.fine(r6)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
        L_0x006c:
            org.fourthline.cling.transport.spi.StreamClientConfiguration r5 = r8.getConfiguration()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r5 = r5.getTimeoutSeconds()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            long r5 = (long) r5     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.Object r2 = r2.get(r5, r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            org.fourthline.cling.model.message.StreamResponseMessage r2 = (org.fourthline.cling.model.message.StreamResponseMessage) r2     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            long r5 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            long r5 = r5 - r3
            java.util.logging.Logger r3 = log     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.util.logging.Level r4 = java.util.logging.Level.FINEST     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            boolean r3 = r3.isLoggable(r4)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            if (r3 == 0) goto L_0x00aa
            java.util.logging.Logger r3 = log     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.<init>()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r7 = "Got HTTP response in "
            r4.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.append(r5)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r7 = "ms: "
            r4.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.append(r9)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r4 = r4.toString()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r3.finest(r4)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
        L_0x00aa:
            org.fourthline.cling.transport.spi.StreamClientConfiguration r3 = r8.getConfiguration()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r3 = r3.getLogWarningSeconds()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            if (r3 <= 0) goto L_0x00e1
            org.fourthline.cling.transport.spi.StreamClientConfiguration r3 = r8.getConfiguration()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r3 = r3.getLogWarningSeconds()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r3 = r3 * 1000
            long r3 = (long) r3     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 <= 0) goto L_0x00e1
            java.util.logging.Logger r3 = log     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.<init>()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r7 = "HTTP request took a long time ("
            r4.append(r7)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.append(r5)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r5 = "ms): "
            r4.append(r5)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r4.append(r9)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            java.lang.String r4 = r4.toString()     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
            r3.warning(r4)     // Catch:{ InterruptedException -> 0x0140, TimeoutException -> 0x0113, ExecutionException -> 0x00e8 }
        L_0x00e1:
            r8.onFinally(r0)
            return r2
        L_0x00e5:
            r9 = move-exception
            goto L_0x016b
        L_0x00e8:
            r2 = move-exception
            java.lang.Throwable r2 = r2.getCause()     // Catch:{ all -> 0x00e5 }
            boolean r3 = r8.logExecutionException(r2)     // Catch:{ all -> 0x00e5 }
            if (r3 != 0) goto L_0x010f
            java.util.logging.Logger r3 = log     // Catch:{ all -> 0x00e5 }
            java.util.logging.Level r4 = java.util.logging.Level.WARNING     // Catch:{ all -> 0x00e5 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e5 }
            r5.<init>()     // Catch:{ all -> 0x00e5 }
            java.lang.String r6 = "HTTP request failed: "
            r5.append(r6)     // Catch:{ all -> 0x00e5 }
            r5.append(r9)     // Catch:{ all -> 0x00e5 }
            java.lang.String r9 = r5.toString()     // Catch:{ all -> 0x00e5 }
            java.lang.Throwable r2 = org.seamless.util.Exceptions.unwrap(r2)     // Catch:{ all -> 0x00e5 }
            r3.log(r4, r9, r2)     // Catch:{ all -> 0x00e5 }
        L_0x010f:
            r8.onFinally(r0)
            return r1
        L_0x0113:
            java.util.logging.Logger r2 = log     // Catch:{ all -> 0x00e5 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e5 }
            r3.<init>()     // Catch:{ all -> 0x00e5 }
            java.lang.String r4 = "Timeout of "
            r3.append(r4)     // Catch:{ all -> 0x00e5 }
            org.fourthline.cling.transport.spi.StreamClientConfiguration r4 = r8.getConfiguration()     // Catch:{ all -> 0x00e5 }
            int r4 = r4.getTimeoutSeconds()     // Catch:{ all -> 0x00e5 }
            r3.append(r4)     // Catch:{ all -> 0x00e5 }
            java.lang.String r4 = " seconds while waiting for HTTP request to complete, aborting: "
            r3.append(r4)     // Catch:{ all -> 0x00e5 }
            r3.append(r9)     // Catch:{ all -> 0x00e5 }
            java.lang.String r9 = r3.toString()     // Catch:{ all -> 0x00e5 }
            r2.info(r9)     // Catch:{ all -> 0x00e5 }
            r8.abort(r0)     // Catch:{ all -> 0x00e5 }
            r8.onFinally(r0)
            return r1
        L_0x0140:
            java.util.logging.Logger r1 = log     // Catch:{ all -> 0x00e5 }
            java.util.logging.Level r2 = java.util.logging.Level.FINE     // Catch:{ all -> 0x00e5 }
            boolean r1 = r1.isLoggable(r2)     // Catch:{ all -> 0x00e5 }
            if (r1 == 0) goto L_0x0160
            java.util.logging.Logger r1 = log     // Catch:{ all -> 0x00e5 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e5 }
            r2.<init>()     // Catch:{ all -> 0x00e5 }
            java.lang.String r3 = "Interruption, aborting request: "
            r2.append(r3)     // Catch:{ all -> 0x00e5 }
            r2.append(r9)     // Catch:{ all -> 0x00e5 }
            java.lang.String r9 = r2.toString()     // Catch:{ all -> 0x00e5 }
            r1.fine(r9)     // Catch:{ all -> 0x00e5 }
        L_0x0160:
            r8.abort(r0)     // Catch:{ all -> 0x00e5 }
            java.lang.InterruptedException r9 = new java.lang.InterruptedException     // Catch:{ all -> 0x00e5 }
            java.lang.String r1 = "HTTP request interrupted and aborted"
            r9.<init>(r1)     // Catch:{ all -> 0x00e5 }
            throw r9     // Catch:{ all -> 0x00e5 }
        L_0x016b:
            r8.onFinally(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.spi.AbstractStreamClient.sendRequest(org.fourthline.cling.model.message.StreamRequestMessage):org.fourthline.cling.model.message.StreamResponseMessage");
    }
}
