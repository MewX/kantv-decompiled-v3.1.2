package com.tencent.open.utils;

/* compiled from: ProGuard */
public final class l implements Cloneable {
    private long a;

    public l(long j) {
        this.a = j;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof l) || this.a != ((l) obj).b()) {
            return false;
        }
        return true;
    }

    public byte[] a() {
        long j = this.a;
        return new byte[]{(byte) ((int) (255 & j)), (byte) ((int) ((65280 & j) >> 8)), (byte) ((int) ((16711680 & j) >> 16)), (byte) ((int) ((j & 4278190080L) >> 24))};
    }

    public long b() {
        return this.a;
    }

    public int hashCode() {
        return (int) this.a;
    }
}
