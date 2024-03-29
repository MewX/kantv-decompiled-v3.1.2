package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;

public final class zzh {
    @NonNull
    private final String mPackageName;
    private final int zzdt = TsExtractor.TS_STREAM_TYPE_AC3;
    @NonNull
    private final String zzej;
    private final boolean zzek;

    public zzh(@NonNull String str, @NonNull String str2, boolean z, int i) {
        this.mPackageName = str;
        this.zzej = str2;
        this.zzek = z;
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public final String zzt() {
        return this.zzej;
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public final String getPackageName() {
        return this.mPackageName;
    }

    /* access modifiers changed from: 0000 */
    public final int zzq() {
        return this.zzdt;
    }
}
