package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;

public abstract class SessionProvider {
    private final String category;
    private final Context zzip;
    private final zza zziq = new zza();

    private class zza extends zzaa {
        private zza() {
        }

        public final int zzm() {
            return 12451009;
        }

        public final IObjectWrapper zzj(String str) {
            Session createSession = SessionProvider.this.createSession(str);
            if (createSession == null) {
                return null;
            }
            return createSession.zzz();
        }

        public final boolean isSessionRecoverable() {
            return SessionProvider.this.isSessionRecoverable();
        }

        public final String getCategory() {
            return SessionProvider.this.getCategory();
        }
    }

    protected SessionProvider(Context context, String str) {
        this.zzip = ((Context) Preconditions.checkNotNull(context)).getApplicationContext();
        this.category = Preconditions.checkNotEmpty(str);
    }

    public abstract Session createSession(String str);

    public abstract boolean isSessionRecoverable();

    public final Context getContext() {
        return this.zzip;
    }

    public final String getCategory() {
        return this.category;
    }

    public final IBinder zzaj() {
        return this.zziq;
    }
}
