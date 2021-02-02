package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zze;

public abstract class Session {
    private static final zzdg zzbe = new zzdg("Session");
    private final zzt zzii;
    private final zza zzij = new zza();

    private class zza extends zzac {
        private zza() {
        }

        public final int zzm() {
            return 12451009;
        }

        public final IObjectWrapper zzab() {
            return ObjectWrapper.wrap(Session.this);
        }

        public final void onStarting(Bundle bundle) {
            Session.this.onStarting(bundle);
        }

        public final void start(Bundle bundle) {
            Session.this.start(bundle);
        }

        public final void onResuming(Bundle bundle) {
            Session.this.onResuming(bundle);
        }

        public final void resume(Bundle bundle) {
            Session.this.resume(bundle);
        }

        public final void end(boolean z) {
            Session.this.end(z);
        }

        public final long getSessionRemainingTimeMs() {
            return Session.this.getSessionRemainingTimeMs();
        }
    }

    protected Session(Context context, String str, String str2) {
        this.zzii = zze.zza(context, str, str2, (zzab) this.zzij);
    }

    /* access modifiers changed from: protected */
    public abstract void end(boolean z);

    /* access modifiers changed from: protected */
    public void onResuming(Bundle bundle) {
    }

    /* access modifiers changed from: protected */
    public void onStarting(Bundle bundle) {
    }

    /* access modifiers changed from: protected */
    public abstract void resume(Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract void start(Bundle bundle);

    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return 0;
    }

    public final String getCategory() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.getCategory();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getCategory", zzt.class.getSimpleName());
            return null;
        }
    }

    public final String getSessionId() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.getSessionId();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getSessionId", zzt.class.getSimpleName());
            return null;
        }
    }

    public boolean isConnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isConnected();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isConnected", zzt.class.getSimpleName());
            return false;
        }
    }

    public boolean isConnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isConnecting();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isConnecting", zzt.class.getSimpleName());
            return false;
        }
    }

    public boolean isDisconnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isDisconnecting();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isDisconnecting", zzt.class.getSimpleName());
            return false;
        }
    }

    public boolean isDisconnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isDisconnected();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isDisconnected", zzt.class.getSimpleName());
            return true;
        }
    }

    public boolean isResuming() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isResuming();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isResuming", zzt.class.getSimpleName());
            return false;
        }
    }

    public boolean isSuspended() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return this.zzii.isSuspended();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "isSuspended", zzt.class.getSimpleName());
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public final void notifySessionStarted(String str) {
        try {
            this.zzii.notifySessionStarted(str);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifySessionStarted", zzt.class.getSimpleName());
        }
    }

    /* access modifiers changed from: protected */
    public final void notifyFailedToStartSession(int i) {
        try {
            this.zzii.notifyFailedToStartSession(i);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifyFailedToStartSession", zzt.class.getSimpleName());
        }
    }

    /* access modifiers changed from: protected */
    public final void notifySessionEnded(int i) {
        try {
            this.zzii.notifySessionEnded(i);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifySessionEnded", zzt.class.getSimpleName());
        }
    }

    /* access modifiers changed from: protected */
    public final void notifySessionResumed(boolean z) {
        try {
            this.zzii.notifySessionResumed(z);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifySessionResumed", zzt.class.getSimpleName());
        }
    }

    /* access modifiers changed from: protected */
    public final void notifyFailedToResumeSession(int i) {
        try {
            this.zzii.notifyFailedToResumeSession(i);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifyFailedToResumeSession", zzt.class.getSimpleName());
        }
    }

    /* access modifiers changed from: protected */
    public final void notifySessionSuspended(int i) {
        try {
            this.zzii.notifySessionSuspended(i);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "notifySessionSuspended", zzt.class.getSimpleName());
        }
    }

    public final IObjectWrapper zzz() {
        try {
            return this.zzii.zzz();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getWrappedObject", zzt.class.getSimpleName());
            return null;
        }
    }
}
