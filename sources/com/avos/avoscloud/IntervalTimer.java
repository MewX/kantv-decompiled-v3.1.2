package com.avos.avoscloud;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

abstract class IntervalTimer {
    private static final int MSG = 1;
    private static final int SKIP = -1;
    /* access modifiers changed from: private */
    public volatile boolean mCancelled;
    /* access modifiers changed from: private */
    public final long mCountdownInterval;
    private Handler mHandler;
    /* access modifiers changed from: private */
    public volatile long mTriggerTimeInFuture;

    public abstract void onTrigger();

    public IntervalTimer(long j) {
        this(null, j);
    }

    public IntervalTimer(Looper looper, long j) {
        this.mCancelled = false;
        this.mCountdownInterval = j;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.mHandler = new Handler(looper) {
            /* JADX WARNING: Code restructure failed: missing block: B:20:0x0070, code lost:
                return;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void handleMessage(android.os.Message r9) {
                /*
                    r8 = this;
                    com.avos.avoscloud.IntervalTimer r0 = com.avos.avoscloud.IntervalTimer.this
                    monitor-enter(r0)
                    com.avos.avoscloud.IntervalTimer r1 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    boolean r1 = r1.mCancelled     // Catch:{ all -> 0x0071 }
                    if (r1 == 0) goto L_0x000d
                    monitor-exit(r0)     // Catch:{ all -> 0x0071 }
                    return
                L_0x000d:
                    int r9 = r9.what     // Catch:{ all -> 0x0071 }
                    r1 = -1
                    if (r9 == r1) goto L_0x005f
                    r1 = 1
                    if (r9 == r1) goto L_0x0016
                    goto L_0x006f
                L_0x0016:
                    com.avos.avoscloud.IntervalTimer r9 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r2 = r9.mTriggerTimeInFuture     // Catch:{ all -> 0x0071 }
                    long r4 = android.os.SystemClock.elapsedRealtime()     // Catch:{ all -> 0x0071 }
                    long r2 = r2 - r4
                    r4 = 0
                    int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r9 > 0) goto L_0x004d
                    com.avos.avoscloud.IntervalTimer r9 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    r9.onTrigger()     // Catch:{ all -> 0x0071 }
                    com.avos.avoscloud.IntervalTimer r9 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    com.avos.avoscloud.IntervalTimer r4 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r4 = r4.mTriggerTimeInFuture     // Catch:{ all -> 0x0071 }
                    com.avos.avoscloud.IntervalTimer r6 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r6 = r6.mCountdownInterval     // Catch:{ all -> 0x0071 }
                    long r4 = r4 + r6
                    long r4 = r4 - r2
                    r9.mTriggerTimeInFuture = r4     // Catch:{ all -> 0x0071 }
                    android.os.Message r9 = r8.obtainMessage(r1)     // Catch:{ all -> 0x0071 }
                    com.avos.avoscloud.IntervalTimer r1 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r1 = r1.mCountdownInterval     // Catch:{ all -> 0x0071 }
                    r8.sendMessageDelayed(r9, r1)     // Catch:{ all -> 0x0071 }
                    goto L_0x006f
                L_0x004d:
                    com.avos.avoscloud.IntervalTimer r9 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r4 = r9.mCountdownInterval     // Catch:{ all -> 0x0071 }
                    int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r9 > 0) goto L_0x006f
                    android.os.Message r9 = r8.obtainMessage(r1)     // Catch:{ all -> 0x0071 }
                    r8.sendMessageDelayed(r9, r2)     // Catch:{ all -> 0x0071 }
                    goto L_0x006f
                L_0x005f:
                    com.avos.avoscloud.IntervalTimer r9 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r1 = android.os.SystemClock.elapsedRealtime()     // Catch:{ all -> 0x0071 }
                    com.avos.avoscloud.IntervalTimer r3 = com.avos.avoscloud.IntervalTimer.this     // Catch:{ all -> 0x0071 }
                    long r3 = r3.mCountdownInterval     // Catch:{ all -> 0x0071 }
                    long r1 = r1 + r3
                    r9.mTriggerTimeInFuture = r1     // Catch:{ all -> 0x0071 }
                L_0x006f:
                    monitor-exit(r0)     // Catch:{ all -> 0x0071 }
                    return
                L_0x0071:
                    r9 = move-exception
                    monitor-exit(r0)     // Catch:{ all -> 0x0071 }
                    throw r9
                */
                throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.IntervalTimer.AnonymousClass1.handleMessage(android.os.Message):void");
            }
        };
    }

    public synchronized void cancel() {
        this.mCancelled = true;
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(-1);
    }

    public final void skip() {
        this.mHandler.sendEmptyMessage(-1);
    }

    /* access modifiers changed from: protected */
    public final synchronized IntervalTimer start() {
        this.mCancelled = false;
        this.mTriggerTimeInFuture = SystemClock.elapsedRealtime() + this.mCountdownInterval;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
        return this;
    }
}
