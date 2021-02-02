package com.google.android.gms.cast.framework;

import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.internal.cast.zzch;
import com.google.android.gms.internal.cast.zzdg;

public class PrecacheManager {
    private final zzdg zzbe = new zzdg("PrecacheManager");
    private final SessionManager zzgv;
    private final CastOptions zzgz;
    private final zzch zzig;

    public PrecacheManager(@NonNull CastOptions castOptions, @NonNull SessionManager sessionManager, @NonNull zzch zzch) {
        this.zzgz = castOptions;
        this.zzgv = sessionManager;
        this.zzig = zzch;
    }

    public void precache(@NonNull String str) {
        Session currentSession = this.zzgv.getCurrentSession();
        if (str == null) {
            throw new IllegalArgumentException("No precache data found to be precached");
        } else if (currentSession == null) {
            this.zzig.zza(new String[]{this.zzgz.getReceiverApplicationId()}, str, null);
        } else if (currentSession instanceof CastSession) {
            RemoteMediaClient remoteMediaClient = ((CastSession) currentSession).getRemoteMediaClient();
            if (remoteMediaClient != null) {
                remoteMediaClient.zza(str, null);
                return;
            }
            this.zzbe.e("Failed to get RemoteMediaClient from current cast session.", new Object[0]);
        } else {
            this.zzbe.e("Current session is not a CastSession. Precache is not supported.", new Object[0]);
        }
    }
}
