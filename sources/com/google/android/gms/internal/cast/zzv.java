package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouter.Callback;
import androidx.mediarouter.media.MediaRouter.RouteInfo;
import com.google.android.gms.common.internal.Preconditions;

public final class zzv extends Callback {
    private static final zzdg zzbe = new zzdg("MediaRouterCallback");
    private final zzl zzje;

    public zzv(zzl zzl) {
        this.zzje = (zzl) Preconditions.checkNotNull(zzl);
    }

    public final void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzje.zzd(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onRouteSelected", zzl.class.getSimpleName());
        }
    }

    public final void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
        try {
            this.zzje.zza(routeInfo.getId(), routeInfo.getExtras(), i);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onRouteUnselected", zzl.class.getSimpleName());
        }
    }

    public final void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzje.zza(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onRouteAdded", zzl.class.getSimpleName());
        }
    }

    public final void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzje.zzb(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onRouteChanged", zzl.class.getSimpleName());
        }
    }

    public final void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzje.zzc(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onRouteRemoved", zzl.class.getSimpleName());
        }
    }
}
