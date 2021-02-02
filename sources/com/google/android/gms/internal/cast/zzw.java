package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouter.Callback;
import androidx.mediarouter.media.MediaRouter.RouteInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzw extends zzk {
    private final MediaRouter zzcb;
    private final Map<MediaRouteSelector, Set<Callback>> zzjf = new HashMap();

    public zzw(MediaRouter mediaRouter) {
        this.zzcb = mediaRouter;
    }

    public final int zzm() {
        return 12451009;
    }

    public final void zza(Bundle bundle, zzl zzl) {
        MediaRouteSelector fromBundle = MediaRouteSelector.fromBundle(bundle);
        if (!this.zzjf.containsKey(fromBundle)) {
            this.zzjf.put(fromBundle, new HashSet());
        }
        ((Set) this.zzjf.get(fromBundle)).add(new zzv(zzl));
    }

    public final void zzan() {
        for (Set<Callback> it : this.zzjf.values()) {
            for (Callback removeCallback : it) {
                this.zzcb.removeCallback(removeCallback);
            }
        }
        this.zzjf.clear();
    }

    public final void zza(Bundle bundle, int i) {
        MediaRouteSelector fromBundle = MediaRouteSelector.fromBundle(bundle);
        for (Callback addCallback : (Set) this.zzjf.get(fromBundle)) {
            this.zzcb.addCallback(fromBundle, addCallback, i);
        }
    }

    public final void zzd(Bundle bundle) {
        for (Callback removeCallback : (Set) this.zzjf.get(MediaRouteSelector.fromBundle(bundle))) {
            this.zzcb.removeCallback(removeCallback);
        }
    }

    public final boolean zzb(Bundle bundle, int i) {
        return this.zzcb.isRouteAvailable(MediaRouteSelector.fromBundle(bundle), i);
    }

    public final void zzk(String str) {
        for (RouteInfo routeInfo : this.zzcb.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                this.zzcb.selectRoute(routeInfo);
                return;
            }
        }
    }

    public final void zzak() {
        MediaRouter mediaRouter = this.zzcb;
        mediaRouter.selectRoute(mediaRouter.getDefaultRoute());
    }

    public final boolean zzal() {
        return this.zzcb.getSelectedRoute().getId().equals(this.zzcb.getDefaultRoute().getId());
    }

    public final Bundle zzl(String str) {
        for (RouteInfo routeInfo : this.zzcb.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                return routeInfo.getExtras();
            }
        }
        return null;
    }

    public final String zzam() {
        return this.zzcb.getSelectedRoute().getId();
    }

    public final void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        this.zzcb.setMediaSessionCompat(mediaSessionCompat);
    }
}
