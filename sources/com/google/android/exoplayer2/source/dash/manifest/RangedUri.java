package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.UriUtil;

public final class RangedUri {
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public RangedUri(@Nullable String str, long j, long j2) {
        if (str == null) {
            str = "";
        }
        this.referenceUri = str;
        this.start = j;
        this.length = j2;
    }

    public Uri resolveUri(String str) {
        return UriUtil.resolveToUri(str, this.referenceUri);
    }

    public String resolveUriString(String str) {
        return UriUtil.resolve(str, this.referenceUri);
    }

    @Nullable
    public RangedUri attemptMerge(@Nullable RangedUri rangedUri, String str) {
        String resolveUriString = resolveUriString(str);
        if (rangedUri != null && resolveUriString.equals(rangedUri.resolveUriString(str))) {
            long j = this.length;
            long j2 = -1;
            if (j != -1) {
                long j3 = this.start;
                if (j3 + j == rangedUri.start) {
                    long j4 = rangedUri.length;
                    if (j4 != -1) {
                        j2 = j + j4;
                    }
                    RangedUri rangedUri2 = new RangedUri(resolveUriString, j3, j2);
                    return rangedUri2;
                }
            }
            long j5 = rangedUri.length;
            if (j5 != -1) {
                long j6 = rangedUri.start;
                if (j6 + j5 == this.start) {
                    long j7 = this.length;
                    if (j7 != -1) {
                        j2 = j5 + j7;
                    }
                    RangedUri rangedUri3 = new RangedUri(resolveUriString, j6, j2);
                    return rangedUri3;
                }
            }
        }
        return null;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31) + this.referenceUri.hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RangedUri rangedUri = (RangedUri) obj;
        if (!(this.start == rangedUri.start && this.length == rangedUri.length && this.referenceUri.equals(rangedUri.referenceUri))) {
            z = false;
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("RangedUri(referenceUri=");
        sb.append(this.referenceUri);
        sb.append(", start=");
        sb.append(this.start);
        sb.append(", length=");
        sb.append(this.length);
        sb.append(")");
        return sb.toString();
    }
}
