package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.cast.zzch;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zze;
import com.google.android.gms.internal.cast.zzf;
import com.google.android.gms.internal.cast.zzj;
import com.google.android.gms.internal.cast.zzw;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CastContext {
    public static final String OPTIONS_PROVIDER_CLASS_NAME_KEY = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME";
    private static final zzdg zzbe = new zzdg("CastContext");
    private static CastContext zzgs;
    private final Context zzgt;
    private final zzj zzgu;
    private final SessionManager zzgv;
    private final zze zzgw;
    private final PrecacheManager zzgx;
    private final MediaNotificationManager zzgy;
    private final CastOptions zzgz;
    private zzw zzha = new zzw(MediaRouter.getInstance(this.zzgt));
    private zzf zzhb;
    private final List<SessionProvider> zzhc;

    public static CastContext getSharedInstance(@NonNull Context context) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (zzgs == null) {
            OptionsProvider zzc = zzc(context.getApplicationContext());
            zzgs = new CastContext(context, zzc.getCastOptions(context.getApplicationContext()), zzc.getAdditionalSessionProviders(context.getApplicationContext()));
        }
        return zzgs;
    }

    @Nullable
    public static CastContext getSharedInstance() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return zzgs;
    }

    @Nullable
    public static CastContext zzb(@NonNull Context context) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return getSharedInstance(context);
        } catch (RuntimeException e) {
            zzbe.e("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", e);
            return null;
        }
    }

    private static OptionsProvider zzc(Context context) throws IllegalStateException {
        try {
            Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                zzbe.e("Bundle is null", new Object[0]);
            }
            String string = bundle.getString(OPTIONS_PROVIDER_CLASS_NAME_KEY);
            if (string != null) {
                return (OptionsProvider) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    private CastContext(Context context, CastOptions castOptions, List<SessionProvider> list) {
        zzp zzp;
        zze zze;
        zzv zzv;
        SessionManager sessionManager;
        String str = "Unable to call %s on %s.";
        this.zzgt = context.getApplicationContext();
        this.zzgz = castOptions;
        this.zzhc = list;
        zzp();
        this.zzgu = zze.zza(this.zzgt, castOptions, (zzj) this.zzha, zzo());
        PrecacheManager precacheManager = null;
        try {
            zzp = this.zzgu.zzx();
        } catch (RemoteException e) {
            zzbe.zza(e, str, "getDiscoveryManagerImpl", zzj.class.getSimpleName());
            zzp = null;
        }
        if (zzp == null) {
            zze = null;
        } else {
            zze = new zze(zzp);
        }
        this.zzgw = zze;
        try {
            zzv = this.zzgu.zzw();
        } catch (RemoteException e2) {
            zzbe.zza(e2, str, "getSessionManagerImpl", zzj.class.getSimpleName());
            zzv = null;
        }
        if (zzv == null) {
            sessionManager = null;
        } else {
            sessionManager = new SessionManager(zzv, this.zzgt);
        }
        this.zzgv = sessionManager;
        this.zzgy = new MediaNotificationManager(this.zzgv);
        SessionManager sessionManager2 = this.zzgv;
        if (sessionManager2 != null) {
            precacheManager = new PrecacheManager(this.zzgz, sessionManager2, new zzch(this.zzgt));
        }
        this.zzgx = precacheManager;
    }

    private final Map<String, IBinder> zzo() {
        HashMap hashMap = new HashMap();
        zzf zzf = this.zzhb;
        if (zzf != null) {
            hashMap.put(zzf.getCategory(), this.zzhb.zzaj());
        }
        List<SessionProvider> list = this.zzhc;
        if (list != null) {
            for (SessionProvider sessionProvider : list) {
                Preconditions.checkNotNull(sessionProvider, "Additional SessionProvider must not be null.");
                String checkNotEmpty = Preconditions.checkNotEmpty(sessionProvider.getCategory(), "Category for SessionProvider must not be null or empty string.");
                Preconditions.checkArgument(!hashMap.containsKey(checkNotEmpty), String.format("SessionProvider for category %s already added", new Object[]{checkNotEmpty}));
                hashMap.put(checkNotEmpty, sessionProvider.zzaj());
            }
        }
        return hashMap;
    }

    private final void zzp() {
        if (!TextUtils.isEmpty(this.zzgz.getReceiverApplicationId())) {
            this.zzhb = new zzf(this.zzgt, this.zzgz, this.zzha);
        } else {
            this.zzhb = null;
        }
    }

    public CastOptions getCastOptions() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgz;
    }

    public SessionManager getSessionManager() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgv;
    }

    public MediaRouteSelector getMergedSelector() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return MediaRouteSelector.fromBundle(this.zzgu.zzv());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", zzj.class.getSimpleName());
            return null;
        }
    }

    public int getCastState() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgv.getCastState();
    }

    public PrecacheManager getPrecacheManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgx;
    }

    public boolean isAppVisible() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzgu.isAppVisible();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isApplicationVisible", zzj.class.getSimpleName());
            return false;
        }
    }

    public final boolean zzq() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzgu.zzq();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "hasActivityInRecents", zzj.class.getSimpleName());
            return false;
        }
    }

    public MediaNotificationManager getMediaNotificationManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgy;
    }

    @Deprecated
    public void addAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException, NullPointerException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(appVisibilityListener);
        try {
            this.zzgu.zza(new zza(appVisibilityListener));
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzj.class.getSimpleName());
        }
    }

    @Deprecated
    public void removeAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (appVisibilityListener != null) {
            try {
                this.zzgu.zzb(new zza(appVisibilityListener));
            } catch (RemoteException e) {
                zzbe.zza(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzj.class.getSimpleName());
            }
        }
    }

    public void addCastStateListener(CastStateListener castStateListener) throws IllegalStateException, NullPointerException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(castStateListener);
        this.zzgv.addCastStateListener(castStateListener);
    }

    public void removeCastStateListener(CastStateListener castStateListener) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (castStateListener != null) {
            this.zzgv.removeCastStateListener(castStateListener);
        }
    }

    public void setReceiverApplicationId(String str) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!TextUtils.equals(str, this.zzgz.getReceiverApplicationId())) {
            this.zzgz.setReceiverApplicationId(str);
            zzp();
            try {
                this.zzgu.zza(str, zzo());
            } catch (RemoteException e) {
                zzbe.zza(e, "Unable to call %s on %s.", "setReceiverApplicationId", zzj.class.getSimpleName());
            }
            CastButtonFactory.zza(this.zzgt);
        }
    }

    public final zze zzr() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzgw;
    }

    public boolean onDispatchVolumeKeyEventBeforeJellyBean(KeyEvent keyEvent) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (PlatformVersion.isAtLeastJellyBean()) {
            return false;
        }
        CastSession currentCastSession = this.zzgv.getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return false;
        }
        double volumeDeltaBeforeIceCreamSandwich = getCastOptions().getVolumeDeltaBeforeIceCreamSandwich();
        boolean z = keyEvent.getAction() == 0;
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 24) {
            zza(currentCastSession, volumeDeltaBeforeIceCreamSandwich, z);
            return true;
        } else if (keyCode != 25) {
            return false;
        } else {
            zza(currentCastSession, -volumeDeltaBeforeIceCreamSandwich, z);
            return true;
        }
    }

    private static boolean zza(CastSession castSession, double d, boolean z) {
        if (z) {
            try {
                double volume = castSession.getVolume() + d;
                double d2 = 1.0d;
                if (volume <= 1.0d) {
                    d2 = volume;
                }
                castSession.setVolume(d2);
            } catch (IOException | IllegalStateException e) {
                zzbe.e("Unable to call CastSession.setVolume(double).", e);
            }
        }
        return true;
    }
}
