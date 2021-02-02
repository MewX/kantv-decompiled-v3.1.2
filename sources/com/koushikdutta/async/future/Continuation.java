package com.koushikdutta.async.future;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ContinuationCallback;
import java.util.LinkedList;

public class Continuation extends SimpleCancellable implements ContinuationCallback, Runnable, Cancellable {
    CompletedCallback callback;
    Runnable cancelCallback;
    private boolean inNext;
    LinkedList<ContinuationCallback> mCallbacks;
    boolean started;
    /* access modifiers changed from: private */
    public boolean waiting;

    public CompletedCallback getCallback() {
        return this.callback;
    }

    public void setCallback(CompletedCallback completedCallback) {
        this.callback = completedCallback;
    }

    public Runnable getCancelCallback() {
        return this.cancelCallback;
    }

    public void setCancelCallback(Runnable runnable) {
        this.cancelCallback = runnable;
    }

    public void setCancelCallback(final Cancellable cancellable) {
        if (cancellable == null) {
            this.cancelCallback = null;
        } else {
            this.cancelCallback = new Runnable() {
                public void run() {
                    cancellable.cancel();
                }
            };
        }
    }

    public Continuation() {
        this(null);
    }

    public Continuation(CompletedCallback completedCallback) {
        this(completedCallback, null);
    }

    public Continuation(CompletedCallback completedCallback, Runnable runnable) {
        this.mCallbacks = new LinkedList<>();
        this.cancelCallback = runnable;
        this.callback = completedCallback;
    }

    private CompletedCallback wrap() {
        return new CompletedCallback() {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            boolean mThisCompleted;

            public void onCompleted(Exception exc) {
                if (!this.mThisCompleted) {
                    this.mThisCompleted = true;
                    Continuation.this.waiting = false;
                    if (exc == null) {
                        Continuation.this.next();
                    } else {
                        Continuation.this.reportCompleted(exc);
                    }
                }
            }
        };
    }

    /* access modifiers changed from: 0000 */
    public void reportCompleted(Exception exc) {
        if (setComplete()) {
            CompletedCallback completedCallback = this.callback;
            if (completedCallback != null) {
                completedCallback.onCompleted(exc);
            }
        }
    }

    private ContinuationCallback hook(ContinuationCallback continuationCallback) {
        if (continuationCallback instanceof DependentCancellable) {
            ((DependentCancellable) continuationCallback).setParent(this);
        }
        return continuationCallback;
    }

    public Continuation add(ContinuationCallback continuationCallback) {
        this.mCallbacks.add(hook(continuationCallback));
        return this;
    }

    public Continuation insert(ContinuationCallback continuationCallback) {
        this.mCallbacks.add(0, hook(continuationCallback));
        return this;
    }

    public Continuation add(final DependentFuture dependentFuture) {
        dependentFuture.setParent(this);
        add((ContinuationCallback) new ContinuationCallback() {
            public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                dependentFuture.get();
                completedCallback.onCompleted(null);
            }
        });
        return this;
    }

    /* access modifiers changed from: private */
    public void next() {
        if (!this.inNext) {
            while (this.mCallbacks.size() > 0 && !this.waiting && !isDone() && !isCancelled()) {
                ContinuationCallback continuationCallback = (ContinuationCallback) this.mCallbacks.remove();
                try {
                    this.inNext = true;
                    this.waiting = true;
                    continuationCallback.onContinue(this, wrap());
                } catch (Exception e) {
                    reportCompleted(e);
                } catch (Throwable th) {
                    this.inNext = false;
                    throw th;
                }
                this.inNext = false;
            }
            if (!this.waiting && !isDone() && !isCancelled()) {
                reportCompleted(null);
            }
        }
    }

    public boolean cancel() {
        if (!super.cancel()) {
            return false;
        }
        Runnable runnable = this.cancelCallback;
        if (runnable != null) {
            runnable.run();
        }
        return true;
    }

    public Continuation start() {
        if (!this.started) {
            this.started = true;
            next();
            return this;
        }
        throw new IllegalStateException("already started");
    }

    public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
        setCallback(completedCallback);
        start();
    }

    public void run() {
        start();
    }
}
