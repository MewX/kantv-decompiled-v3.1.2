package com.google.firebase.iid;

import android.content.BroadcastReceiver.PendingResult;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import master.flame.danmaku.danmaku.model.android.DanmakuFactory;

final class zze {
    final Intent intent;
    private boolean zzaa = false;
    private final ScheduledFuture<?> zzab;
    private final PendingResult zzz;

    zze(Intent intent2, PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.intent = intent2;
        this.zzz = pendingResult;
        this.zzab = scheduledExecutorService.schedule(new zzd(this, intent2), DanmakuFactory.MAX_DANMAKU_DURATION_HIGH_DENSITY, TimeUnit.MILLISECONDS);
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void finish() {
        if (!this.zzaa) {
            this.zzz.finish();
            this.zzab.cancel(false);
            this.zzaa = true;
        }
    }
}
