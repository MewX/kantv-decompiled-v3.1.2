package com.google.android.gms.cast;

final class zzv implements Runnable {
    private final /* synthetic */ CastRemoteDisplayLocalService zzch;

    zzv(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzch = castRemoteDisplayLocalService;
    }

    public final void run() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zzch;
        boolean zzb = castRemoteDisplayLocalService.zzcc;
        StringBuilder sb = new StringBuilder(59);
        sb.append("onCreate after delay. The local service been started: ");
        sb.append(zzb);
        castRemoteDisplayLocalService.zzb(sb.toString());
        if (!this.zzch.zzcc) {
            this.zzch.zzc("The local service has not been been started, stopping it");
            this.zzch.stopSelf();
        }
    }
}
