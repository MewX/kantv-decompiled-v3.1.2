package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.Toast;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.cast.zzdg;

public class SessionManager {
    private static final zzdg zzbe = new zzdg("SessionManager");
    private final zzv zzil;
    private final Context zzim;

    public SessionManager(zzv zzv, Context context) {
        this.zzil = zzv;
        this.zzim = context;
    }

    public Session getCurrentSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return (Session) ObjectWrapper.unwrap(this.zzil.zzaa());
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getWrappedCurrentSession", zzv.class.getSimpleName());
            return null;
        }
    }

    public CastSession getCurrentCastSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Session currentSession = getCurrentSession();
        if (currentSession == null || !(currentSession instanceof CastSession)) {
            return null;
        }
        return (CastSession) currentSession;
    }

    public void endCurrentSession(boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            this.zzil.zza(true, z);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "endCurrentSession", zzv.class.getSimpleName());
        }
    }

    public void addSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) throws NullPointerException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        addSessionManagerListener(sessionManagerListener, Session.class);
    }

    public <T extends Session> void addSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) throws NullPointerException {
        Preconditions.checkNotNull(sessionManagerListener);
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            this.zzil.zza((zzx) new zzae(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "addSessionManagerListener", zzv.class.getSimpleName());
        }
    }

    public void removeSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        removeSessionManagerListener(sessionManagerListener, Session.class);
    }

    public <T extends Session> void removeSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class cls) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (sessionManagerListener != null) {
            try {
                this.zzil.zzb((zzx) new zzae(sessionManagerListener, cls));
            } catch (RemoteException e) {
                zzbe.zza(e, "Unable to call %s on %s.", "removeSessionManagerListener", zzv.class.getSimpleName());
            }
        }
    }

    public void startSession(Intent intent) {
        String str = "CAST_INTENT_TO_CAST_ROUTE_ID_KEY";
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (extras.getString(str) != null) {
                    String string = extras.getString("CAST_INTENT_TO_CAST_DEVICE_NAME_KEY");
                    if (!extras.getBoolean("CAST_INTENT_TO_CAST_NO_TOAST_KEY")) {
                        Toast.makeText(this.zzim, this.zzim.getString(R.string.cast_connecting_to_device, new Object[]{string}), 0).show();
                    }
                    this.zzil.zzc(new Bundle(extras));
                    intent.removeExtra(str);
                }
            }
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "startSession", zzv.class.getSimpleName());
        }
    }

    /* access modifiers changed from: 0000 */
    public final int getCastState() {
        try {
            return this.zzil.getCastState();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "addCastStateListener", zzv.class.getSimpleName());
            return 1;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void addCastStateListener(CastStateListener castStateListener) throws NullPointerException {
        Preconditions.checkNotNull(castStateListener);
        try {
            this.zzil.zza((zzn) new zzd(castStateListener));
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "addCastStateListener", zzv.class.getSimpleName());
        }
    }

    /* access modifiers changed from: 0000 */
    public final void removeCastStateListener(CastStateListener castStateListener) {
        if (castStateListener != null) {
            try {
                this.zzil.zzb((zzn) new zzd(castStateListener));
            } catch (RemoteException e) {
                zzbe.zza(e, "Unable to call %s on %s.", "removeCastStateListener", zzv.class.getSimpleName());
            }
        }
    }

    public final IObjectWrapper zzu() {
        try {
            return this.zzil.zzy();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getWrappedThis", zzv.class.getSimpleName());
            return null;
        }
    }
}
