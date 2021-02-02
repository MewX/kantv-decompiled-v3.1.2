package com.alibaba.fastjson.util;

import java.lang.ref.SoftReference;
import java.nio.charset.CharsetDecoder;

public class ThreadLocalCache {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BYTES_CACH_INIT_SIZE = 1024;
    public static final int BYTES_CACH_INIT_SIZE_EXP = 10;
    public static final int BYTES_CACH_MAX_SIZE = 131072;
    public static final int BYTES_CACH_MAX_SIZE_EXP = 17;
    public static final int CHARS_CACH_INIT_SIZE = 1024;
    public static final int CHARS_CACH_INIT_SIZE_EXP = 10;
    public static final int CHARS_CACH_MAX_SIZE = 131072;
    public static final int CHARS_CACH_MAX_SIZE_EXP = 17;
    private static final ThreadLocal<SoftReference<byte[]>> bytesBufLocal = new ThreadLocal<>();
    private static final ThreadLocal<SoftReference<char[]>> charsBufLocal = new ThreadLocal<>();
    private static final ThreadLocal<CharsetDecoder> decoderLocal = new ThreadLocal<>();

    public static CharsetDecoder getUTF8Decoder() {
        CharsetDecoder charsetDecoder = (CharsetDecoder) decoderLocal.get();
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        UTF8Decoder uTF8Decoder = new UTF8Decoder();
        decoderLocal.set(uTF8Decoder);
        return uTF8Decoder;
    }

    public static void clearChars() {
        charsBufLocal.set(null);
    }

    public static char[] getChars(int i) {
        SoftReference softReference = (SoftReference) charsBufLocal.get();
        if (softReference == null) {
            return allocate(i);
        }
        char[] cArr = (char[]) softReference.get();
        if (cArr == null) {
            return allocate(i);
        }
        if (cArr.length < i) {
            cArr = allocate(i);
        }
        return cArr;
    }

    private static char[] allocate(int i) {
        if (i > 131072) {
            return new char[i];
        }
        char[] cArr = new char[getAllocateLengthExp(10, 17, i)];
        charsBufLocal.set(new SoftReference(cArr));
        return cArr;
    }

    private static int getAllocateLengthExp(int i, int i2, int i3) {
        return (i3 >>> i) <= 0 ? 1 << i : 1 << (32 - Integer.numberOfLeadingZeros(i3 - 1));
    }

    public static void clearBytes() {
        bytesBufLocal.set(null);
    }

    public static byte[] getBytes(int i) {
        SoftReference softReference = (SoftReference) bytesBufLocal.get();
        if (softReference == null) {
            return allocateBytes(i);
        }
        byte[] bArr = (byte[]) softReference.get();
        if (bArr == null) {
            return allocateBytes(i);
        }
        if (bArr.length < i) {
            bArr = allocateBytes(i);
        }
        return bArr;
    }

    private static byte[] allocateBytes(int i) {
        if (i > 131072) {
            return new byte[i];
        }
        byte[] bArr = new byte[getAllocateLengthExp(10, 17, i)];
        bytesBufLocal.set(new SoftReference(bArr));
        return bArr;
    }
}
