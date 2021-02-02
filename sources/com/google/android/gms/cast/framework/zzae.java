package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zzae<T extends Session> extends zzy {
    private final SessionManagerListener<T> zzin;
    private final Class<T> zzio;

    public zzae(@NonNull SessionManagerListener<T> sessionManagerListener, @NonNull Class<T> cls) {
        this.zzin = sessionManagerListener;
        this.zzio = cls;
    }

    public final int zzm() {
        return 12451009;
    }

    public final IObjectWrapper zzn() {
        return ObjectWrapper.wrap(this.zzin);
    }

    public final void zza(@NonNull IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionStarting((Session) this.zzio.cast(session));
            }
        }
    }

    public final void zza(@NonNull IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionStarted((Session) this.zzio.cast(session), str);
            }
        }
    }

    public final void zza(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionStartFailed((Session) this.zzio.cast(session), i);
            }
        }
    }

    public final void zzb(@NonNull IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionEnding((Session) this.zzio.cast(session));
            }
        }
    }

    public final void zzb(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionEnded((Session) this.zzio.cast(session), i);
            }
        }
    }

    public final void zzb(@NonNull IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionResuming((Session) this.zzio.cast(session), str);
            }
        }
    }

    public final void zza(@NonNull IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionResumed((Session) this.zzio.cast(session), z);
            }
        }
    }

    public final void zzc(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionResumeFailed((Session) this.zzio.cast(session), i);
            }
        }
    }

    public final void zzd(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zzio.isInstance(session)) {
            SessionManagerListener<T> sessionManagerListener = this.zzin;
            if (sessionManagerListener != null) {
                sessionManagerListener.onSessionSuspended((Session) this.zzio.cast(session), i);
            }
        }
    }
}
