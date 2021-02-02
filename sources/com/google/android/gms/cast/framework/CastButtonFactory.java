package com.google.android.gms.cast.framework;

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.core.view.MenuItemCompat;
import androidx.mediarouter.app.MediaRouteActionProvider;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.mediarouter.app.MediaRouteDialogFactory;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzdg;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class CastButtonFactory {
    private static final zzdg zzbe = new zzdg("CastButtonFactory");
    private static final List<WeakReference<MenuItem>> zzgq = new ArrayList();
    private static final List<WeakReference<MediaRouteButton>> zzgr = new ArrayList();

    private CastButtonFactory() {
    }

    public static MenuItem setUpMediaRouteButton(Context context, Menu menu, int i) {
        return zza(context, menu, i, null);
    }

    private static MenuItem zza(Context context, Menu menu, int i, MediaRouteDialogFactory mediaRouteDialogFactory) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(menu);
        MenuItem findItem = menu.findItem(i);
        if (findItem != null) {
            try {
                zza(context, findItem, (MediaRouteDialogFactory) null);
                zzgq.add(new WeakReference(findItem));
                return findItem;
            } catch (IllegalArgumentException unused) {
                throw new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", new Object[]{Integer.valueOf(i)}));
            }
        } else {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", new Object[]{Integer.valueOf(i)}));
        }
    }

    public static void setUpMediaRouteButton(Context context, MediaRouteButton mediaRouteButton) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (mediaRouteButton != null) {
            zza(context, mediaRouteButton, (MediaRouteDialogFactory) null);
            zzgr.add(new WeakReference(mediaRouteButton));
        }
    }

    public static void zza(Context context) {
        for (WeakReference weakReference : zzgq) {
            try {
                if (weakReference.get() != null) {
                    zza(context, (MenuItem) weakReference.get(), (MediaRouteDialogFactory) null);
                }
            } catch (IllegalArgumentException e) {
                zzbe.w("Unexpected exception when refreshing MediaRouteSelectors for Cast buttons", e);
            }
        }
        for (WeakReference weakReference2 : zzgr) {
            if (weakReference2.get() != null) {
                zza(context, (MediaRouteButton) weakReference2.get(), (MediaRouteDialogFactory) null);
            }
        }
    }

    private static void zza(Context context, @NonNull MenuItem menuItem, MediaRouteDialogFactory mediaRouteDialogFactory) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) MenuItemCompat.getActionProvider(menuItem);
        if (mediaRouteActionProvider != null) {
            CastContext zzb = CastContext.zzb(context);
            if (zzb != null) {
                mediaRouteActionProvider.setRouteSelector(zzb.getMergedSelector());
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    private static void zza(Context context, @NonNull MediaRouteButton mediaRouteButton, MediaRouteDialogFactory mediaRouteDialogFactory) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext zzb = CastContext.zzb(context);
        if (zzb != null) {
            mediaRouteButton.setRouteSelector(zzb.getMergedSelector());
        }
    }
}
