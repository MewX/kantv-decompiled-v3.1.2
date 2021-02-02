package com.avos.avoscloud;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

abstract class HeartBeatPolicy {
    private static final ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1);
    private final long HEALTHY_THRESHOLD = 360000;
    private final long HEART_BEAT_INTERNAL = 180000;
    private Future healthFuture;
    private Runnable healthMonitor = new Runnable() {
        public void run() {
            if (System.currentTimeMillis() - HeartBeatPolicy.this.lastPongTS > 360000) {
                HeartBeatPolicy.this.onTimeOut();
            } else {
                HeartBeatPolicy.this.sendPing();
            }
        }
    };
    /* access modifiers changed from: private */
    public long lastPongTS;

    public abstract void onTimeOut();

    public abstract void sendPing();

    HeartBeatPolicy() {
    }

    /* access modifiers changed from: 0000 */
    public synchronized void onPong() {
        this.lastPongTS = System.currentTimeMillis();
    }

    /* access modifiers changed from: 0000 */
    public synchronized void startHeartbeat() {
        stopHeartbeat();
        this.lastPongTS = System.currentTimeMillis();
        this.healthFuture = executor.scheduleAtFixedRate(this.healthMonitor, 180000, 180000, TimeUnit.MILLISECONDS);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void stopHeartbeat() {
        if (this.healthFuture != null) {
            this.healthFuture.cancel(true);
        }
    }
}
