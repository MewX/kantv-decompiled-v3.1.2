package com.google.android.gms.cast.framework.media;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

public abstract class NotificationActionsProvider {
    private final Context zzgt;
    private final zzd zzmz = new zza();

    private class zza extends com.google.android.gms.cast.framework.media.zzd.zza {
        private zza() {
        }

        public final int zzm() {
            return 12451009;
        }

        public final IObjectWrapper zzax() {
            return ObjectWrapper.wrap(NotificationActionsProvider.this);
        }

        public final List<NotificationAction> getNotificationActions() {
            return NotificationActionsProvider.this.getNotificationActions();
        }

        public final int[] getCompactViewActionIndices() {
            return NotificationActionsProvider.this.getCompactViewActionIndices();
        }
    }

    public NotificationActionsProvider(@NonNull Context context) {
        this.zzgt = context.getApplicationContext();
    }

    public abstract int[] getCompactViewActionIndices();

    public abstract List<NotificationAction> getNotificationActions();

    public Context getApplicationContext() {
        return this.zzgt;
    }

    public final zzd zzbl() {
        return this.zzmz;
    }
}
