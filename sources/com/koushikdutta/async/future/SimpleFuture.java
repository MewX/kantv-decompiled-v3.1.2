package com.koushikdutta.async.future;

import com.koushikdutta.async.AsyncSemaphore;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

public class SimpleFuture<T> extends SimpleCancellable implements DependentFuture<T> {
    FutureCallback<T> callback;
    Exception exception;
    T result;
    boolean silent;
    AsyncSemaphore waiter;

    public SimpleFuture() {
    }

    public SimpleFuture(T t) {
        setComplete(t);
    }

    public SimpleFuture(Exception exc) {
        setComplete(exc);
    }

    public boolean cancel(boolean z) {
        return cancel();
    }

    private boolean cancelInternal(boolean z) {
        FutureCallback handleCompleteLocked;
        if (!super.cancel()) {
            return false;
        }
        synchronized (this) {
            this.exception = new CancellationException();
            releaseWaiterLocked();
            handleCompleteLocked = handleCompleteLocked();
            this.silent = z;
        }
        handleCallbackUnlocked(handleCompleteLocked);
        return true;
    }

    public boolean cancelSilently() {
        return cancelInternal(true);
    }

    public boolean cancel() {
        return cancelInternal(this.silent);
    }

    public T get() throws InterruptedException, ExecutionException {
        synchronized (this) {
            if (!isCancelled()) {
                if (!isDone()) {
                    AsyncSemaphore ensureWaiterLocked = ensureWaiterLocked();
                    ensureWaiterLocked.acquire();
                    return getResultOrThrow();
                }
            }
            T resultOrThrow = getResultOrThrow();
            return resultOrThrow;
        }
    }

    private T getResultOrThrow() throws ExecutionException {
        Exception exc = this.exception;
        if (exc == null) {
            return this.result;
        }
        throw new ExecutionException(exc);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r0.tryAcquire(r2, r4) == false) goto L_0x001e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001d, code lost:
        return getResultOrThrow();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
        throw new java.util.concurrent.TimeoutException();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T get(long r2, java.util.concurrent.TimeUnit r4) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isCancelled()     // Catch:{ all -> 0x002a }
            if (r0 != 0) goto L_0x0024
            boolean r0 = r1.isDone()     // Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x000e
            goto L_0x0024
        L_0x000e:
            com.koushikdutta.async.AsyncSemaphore r0 = r1.ensureWaiterLocked()     // Catch:{ all -> 0x002a }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            boolean r2 = r0.tryAcquire(r2, r4)
            if (r2 == 0) goto L_0x001e
            java.lang.Object r2 = r1.getResultOrThrow()
            return r2
        L_0x001e:
            java.util.concurrent.TimeoutException r2 = new java.util.concurrent.TimeoutException
            r2.<init>()
            throw r2
        L_0x0024:
            java.lang.Object r2 = r1.getResultOrThrow()     // Catch:{ all -> 0x002a }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            return r2
        L_0x002a:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.future.SimpleFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean setComplete() {
        return setComplete((T) null);
    }

    private FutureCallback<T> handleCompleteLocked() {
        FutureCallback<T> futureCallback = this.callback;
        this.callback = null;
        return futureCallback;
    }

    private void handleCallbackUnlocked(FutureCallback<T> futureCallback) {
        if (futureCallback != null && !this.silent) {
            futureCallback.onCompleted(this.exception, this.result);
        }
    }

    /* access modifiers changed from: 0000 */
    public void releaseWaiterLocked() {
        AsyncSemaphore asyncSemaphore = this.waiter;
        if (asyncSemaphore != null) {
            asyncSemaphore.release();
            this.waiter = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public AsyncSemaphore ensureWaiterLocked() {
        if (this.waiter == null) {
            this.waiter = new AsyncSemaphore();
        }
        return this.waiter;
    }

    public boolean setComplete(Exception exc) {
        return setComplete(exc, null);
    }

    public boolean setComplete(T t) {
        return setComplete(null, t);
    }

    public boolean setComplete(Exception exc, T t) {
        synchronized (this) {
            if (!super.setComplete()) {
                return false;
            }
            this.result = t;
            this.exception = exc;
            releaseWaiterLocked();
            FutureCallback handleCompleteLocked = handleCompleteLocked();
            handleCallbackUnlocked(handleCompleteLocked);
            return true;
        }
    }

    public FutureCallback<T> getCompletionCallback() {
        return new FutureCallback<T>() {
            public void onCompleted(Exception exc, T t) {
                SimpleFuture.this.setComplete(exc, t);
            }
        };
    }

    public SimpleFuture<T> setComplete(Future<T> future) {
        future.setCallback(getCompletionCallback());
        setParent((Cancellable) future);
        return this;
    }

    public FutureCallback<T> getCallback() {
        return this.callback;
    }

    public SimpleFuture<T> setCallback(FutureCallback<T> futureCallback) {
        FutureCallback futureCallback2;
        synchronized (this) {
            this.callback = futureCallback;
            if (!isDone()) {
                if (!isCancelled()) {
                    futureCallback2 = null;
                }
            }
            futureCallback2 = handleCompleteLocked();
        }
        handleCallbackUnlocked(futureCallback2);
        return this;
    }

    public final <C extends FutureCallback<T>> C then(C c) {
        if (c instanceof DependentCancellable) {
            ((DependentCancellable) c).setParent(this);
        }
        setCallback((FutureCallback) c);
        return c;
    }

    public SimpleFuture<T> setParent(Cancellable cancellable) {
        super.setParent(cancellable);
        return this;
    }

    public SimpleFuture<T> reset() {
        super.reset();
        this.result = null;
        this.exception = null;
        this.waiter = null;
        this.callback = null;
        this.silent = false;
        return this;
    }

    public Exception tryGetException() {
        return this.exception;
    }

    public T tryGet() {
        return this.result;
    }
}
