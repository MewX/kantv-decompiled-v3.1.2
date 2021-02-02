package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
final class zzco implements ApplicationConnectionResult {
    private final Status zzgf;
    private final ApplicationMetadata zzwm;
    private final String zzwn;
    private final String zzwo;
    private final boolean zzwp;

    public zzco(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        this.zzgf = status;
        this.zzwm = applicationMetadata;
        this.zzwn = str;
        this.zzwo = str2;
        this.zzwp = z;
    }

    public zzco(Status status) {
        this(status, null, null, null, false);
    }

    public final Status getStatus() {
        return this.zzgf;
    }

    public final ApplicationMetadata getApplicationMetadata() {
        return this.zzwm;
    }

    public final String getApplicationStatus() {
        return this.zzwn;
    }

    public final String getSessionId() {
        return this.zzwo;
    }

    public final boolean getWasLaunched() {
        return this.zzwp;
    }
}
