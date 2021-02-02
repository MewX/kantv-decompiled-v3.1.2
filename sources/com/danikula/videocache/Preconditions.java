package com.danikula.videocache;

public final class Preconditions {
    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static void checkAllNotNull(Object... objArr) {
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            if (objArr[i] != null) {
                i++;
            } else {
                throw new NullPointerException();
            }
        }
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    static void checkArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
