package com.google.android.gms.cast.framework.media;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.TaskStackBuilder;
import com.google.android.exoplayer2.C;

final class zzh extends BroadcastReceiver {
    private final /* synthetic */ MediaNotificationService zzls;

    zzh(MediaNotificationService mediaNotificationService) {
        this.zzls = mediaNotificationService;
    }

    public final void onReceive(Context context, Intent intent) {
        PendingIntent pendingIntent;
        ComponentName componentName = (ComponentName) intent.getParcelableExtra("targetActivity");
        Intent intent2 = new Intent();
        intent2.setComponent(componentName);
        if (this.zzls.zzlq.zzq()) {
            intent2.setFlags(603979776);
            pendingIntent = PendingIntent.getActivity(context, 1, intent2, 134217728);
        } else {
            TaskStackBuilder create = TaskStackBuilder.create(this.zzls);
            create.addParentStack(componentName);
            create.addNextIntent(intent2);
            pendingIntent = create.getPendingIntent(1, 134217728);
        }
        try {
            pendingIntent.send(context, 1, new Intent().setFlags(C.ENCODING_PCM_MU_LAW));
        } catch (CanceledException e) {
            MediaNotificationService.zzbe.zza(e, "Sending PendingIntent failed", new Object[0]);
        }
    }
}
