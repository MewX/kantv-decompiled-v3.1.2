package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;

public final class zzf extends SessionProvider {
    private final CastOptions zzgz;
    private final zzw zzis;

    public zzf(Context context, CastOptions castOptions, zzw zzw) {
        String str;
        if (castOptions.getSupportedNamespaces().isEmpty()) {
            str = CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId());
        } else {
            str = CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces());
        }
        super(context, str);
        this.zzgz = castOptions;
        this.zzis = zzw;
    }

    public final Session createSession(String str) {
        CastSession castSession = new CastSession(getContext(), getCategory(), str, this.zzgz, Cast.CastApi, new zzg(), new zzai(getContext(), this.zzgz, this.zzis));
        return castSession;
    }

    public final boolean isSessionRecoverable() {
        return this.zzgz.getResumeSavedSession();
    }
}
