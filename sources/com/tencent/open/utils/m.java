package com.tencent.open.utils;

import androidx.core.view.MotionEventCompat;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;

/* compiled from: ProGuard */
public final class m implements Cloneable {
    private int a;

    public m(byte[] bArr) {
        this(bArr, 0);
    }

    public m(byte[] bArr, int i) {
        this.a = (bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
        this.a += bArr[i] & Draft_75.END_OF_FRAME;
    }

    public m(int i) {
        this.a = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof m) || this.a != ((m) obj).b()) {
            return false;
        }
        return true;
    }

    public byte[] a() {
        int i = this.a;
        return new byte[]{(byte) (i & 255), (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }

    public int b() {
        return this.a;
    }

    public int hashCode() {
        return this.a;
    }
}
