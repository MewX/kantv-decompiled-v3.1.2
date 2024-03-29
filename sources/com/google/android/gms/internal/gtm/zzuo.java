package com.google.android.gms.internal.gtm;

import com.avos.avoscloud.AVException;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public final class zzuo {
    private final ByteBuffer zzawy;
    private zzqj zzbgz;
    private int zzbha;

    private zzuo(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzbj(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    private zzuo(ByteBuffer byteBuffer) {
        this.zzawy = byteBuffer;
        this.zzawy.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static zzuo zzl(byte[] bArr) {
        return zzk(bArr, 0, bArr.length);
    }

    public static zzuo zzk(byte[] bArr, int i, int i2) {
        return new zzuo(bArr, 0, i2);
    }

    private final zzqj zzrw() throws IOException {
        if (this.zzbgz == null) {
            this.zzbgz = zzqj.zza(this.zzawy);
            this.zzbha = this.zzawy.position();
        } else if (this.zzbha != this.zzawy.position()) {
            this.zzbgz.write(this.zzawy.array(), this.zzbha, this.zzawy.position() - this.zzbha);
            this.zzbha = this.zzawy.position();
        }
        return this.zzbgz;
    }

    public final void zzi(int i, long j) throws IOException {
        zzd(i, 0);
        zzab(j);
    }

    public final void zze(int i, int i2) throws IOException {
        zzd(i, 0);
        if (i2 >= 0) {
            zzcb(i2);
        } else {
            zzab((long) i2);
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        zzd(i, 0);
        byte b = z ? (byte) 1 : 0;
        if (this.zzawy.hasRemaining()) {
            this.zzawy.put(b);
            return;
        }
        throw new zzup(this.zzawy.position(), this.zzawy.limit());
    }

    public final void zza(int i, String str) throws IOException {
        zzd(i, 2);
        try {
            int zzbj = zzbj(str.length());
            if (zzbj == zzbj(str.length() * 3)) {
                int position = this.zzawy.position();
                if (this.zzawy.remaining() >= zzbj) {
                    this.zzawy.position(position + zzbj);
                    zzd((CharSequence) str, this.zzawy);
                    int position2 = this.zzawy.position();
                    this.zzawy.position(position);
                    zzcb((position2 - position) - zzbj);
                    this.zzawy.position(position2);
                    return;
                }
                throw new zzup(position + zzbj, this.zzawy.limit());
            }
            zzcb(zza(str));
            zzd((CharSequence) str, this.zzawy);
        } catch (BufferOverflowException e) {
            zzup zzup = new zzup(this.zzawy.position(), this.zzawy.limit());
            zzup.initCause(e);
            throw zzup;
        }
    }

    public final void zza(int i, zzuw zzuw) throws IOException {
        zzd(i, 2);
        zzb(zzuw);
    }

    public final void zze(int i, zzsk zzsk) throws IOException {
        zzqj zzrw = zzrw();
        zzrw.zza(i, zzsk);
        zzrw.flush();
        this.zzbha = this.zzawy.position();
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) >= 65536) {
                                i2++;
                            } else {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        long j = ((long) i3) + IjkMediaMeta.AV_CH_WIDE_RIGHT;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        if (!byteBuffer.isReadOnly()) {
            String str = "Unpaired surrogate at index ";
            int i3 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i4 = remaining + arrayOffset;
                    while (i3 < length) {
                        int i5 = i3 + arrayOffset;
                        if (i5 >= i4) {
                            break;
                        }
                        char charAt = charSequence.charAt(i3);
                        if (charAt >= 128) {
                            break;
                        }
                        array[i5] = (byte) charAt;
                        i3++;
                    }
                    if (i3 == length) {
                        i = arrayOffset + length;
                    } else {
                        i = arrayOffset + i3;
                        while (i3 < length) {
                            char charAt2 = charSequence.charAt(i3);
                            if (charAt2 < 128 && i < i4) {
                                i2 = i + 1;
                                array[i] = (byte) charAt2;
                            } else if (charAt2 < 2048 && i <= i4 - 2) {
                                int i6 = i + 1;
                                array[i] = (byte) ((charAt2 >>> 6) | 960);
                                i = i6 + 1;
                                array[i6] = (byte) ((charAt2 & '?') | 128);
                                i3++;
                            } else if ((charAt2 < 55296 || 57343 < charAt2) && i <= i4 - 3) {
                                int i7 = i + 1;
                                array[i] = (byte) ((charAt2 >>> 12) | 480);
                                int i8 = i7 + 1;
                                array[i7] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                i2 = i8 + 1;
                                array[i8] = (byte) ((charAt2 & '?') | 128);
                            } else if (i <= i4 - 4) {
                                int i9 = i3 + 1;
                                if (i9 != charSequence.length()) {
                                    char charAt3 = charSequence.charAt(i9);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        int i10 = i + 1;
                                        array[i] = (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                                        int i11 = i10 + 1;
                                        array[i10] = (byte) (((codePoint >>> 12) & 63) | 128);
                                        int i12 = i11 + 1;
                                        array[i11] = (byte) (((codePoint >>> 6) & 63) | 128);
                                        i = i12 + 1;
                                        array[i12] = (byte) ((codePoint & 63) | 128);
                                        i3 = i9;
                                        i3++;
                                    } else {
                                        i3 = i9;
                                    }
                                }
                                int i13 = i3 - 1;
                                StringBuilder sb = new StringBuilder(39);
                                sb.append(str);
                                sb.append(i13);
                                throw new IllegalArgumentException(sb.toString());
                            } else {
                                StringBuilder sb2 = new StringBuilder(37);
                                sb2.append("Failed writing ");
                                sb2.append(charAt2);
                                sb2.append(" at index ");
                                sb2.append(i);
                                throw new ArrayIndexOutOfBoundsException(sb2.toString());
                            }
                            i = i2;
                            i3++;
                        }
                    }
                    byteBuffer.position(i - byteBuffer.arrayOffset());
                } catch (ArrayIndexOutOfBoundsException e) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e);
                    throw bufferOverflowException;
                }
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt4 = charSequence.charAt(i3);
                    if (charAt4 < 128) {
                        byteBuffer.put((byte) charAt4);
                    } else if (charAt4 < 2048) {
                        byteBuffer.put((byte) ((charAt4 >>> 6) | 960));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else if (charAt4 < 55296 || 57343 < charAt4) {
                        byteBuffer.put((byte) ((charAt4 >>> 12) | 480));
                        byteBuffer.put((byte) (((charAt4 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else {
                        int i14 = i3 + 1;
                        if (i14 != charSequence.length()) {
                            char charAt5 = charSequence.charAt(i14);
                            if (Character.isSurrogatePair(charAt4, charAt5)) {
                                int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                byteBuffer.put((byte) ((codePoint2 >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                i3 = i14;
                            } else {
                                i3 = i14;
                            }
                        }
                        int i15 = i3 - 1;
                        StringBuilder sb3 = new StringBuilder(39);
                        sb3.append(str);
                        sb3.append(i15);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    i3++;
                }
            }
        } else {
            throw new ReadOnlyBufferException();
        }
    }

    public final void zzb(zzuw zzuw) throws IOException {
        zzcb(zzuw.zzse());
        zzuw.zza(this);
    }

    public static int zzd(int i, long j) {
        int zzbb = zzbb(i);
        int i2 = (-128 & j) == 0 ? 1 : (-16384 & j) == 0 ? 2 : (-2097152 & j) == 0 ? 3 : (-268435456 & j) == 0 ? 4 : (-34359738368L & j) == 0 ? 5 : (-4398046511104L & j) == 0 ? 6 : (-562949953421312L & j) == 0 ? 7 : (-72057594037927936L & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10;
        return zzbb + i2;
    }

    public static int zzi(int i, int i2) {
        return zzbb(i) + zzbc(i2);
    }

    public static int zzb(int i, String str) {
        return zzbb(i) + zzda(str);
    }

    public static int zzb(int i, zzuw zzuw) {
        int zzbb = zzbb(i);
        int zzpe = zzuw.zzpe();
        return zzbb + zzbj(zzpe) + zzpe;
    }

    public static int zzbc(int i) {
        if (i >= 0) {
            return zzbj(i);
        }
        return 10;
    }

    public static int zzda(String str) {
        int zza = zza(str);
        return zzbj(zza) + zza;
    }

    public final void zzrx() {
        if (this.zzawy.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", new Object[]{Integer.valueOf(this.zzawy.remaining())}));
        }
    }

    private final void zzca(int i) throws IOException {
        byte b = (byte) i;
        if (this.zzawy.hasRemaining()) {
            this.zzawy.put(b);
            return;
        }
        throw new zzup(this.zzawy.position(), this.zzawy.limit());
    }

    public final void zzm(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzawy.remaining() >= length) {
            this.zzawy.put(bArr, 0, length);
            return;
        }
        throw new zzup(this.zzawy.position(), this.zzawy.limit());
    }

    public final void zzd(int i, int i2) throws IOException {
        zzcb((i << 3) | i2);
    }

    public static int zzbb(int i) {
        return zzbj(i << 3);
    }

    public final void zzcb(int i) throws IOException {
        while ((i & -128) != 0) {
            zzca((i & AVException.INVALID_PHONE_NUMBER) | 128);
            i >>>= 7;
        }
        zzca(i);
    }

    private final void zzab(long j) throws IOException {
        while ((-128 & j) != 0) {
            zzca((((int) j) & AVException.INVALID_PHONE_NUMBER) | 128);
            j >>>= 7;
        }
        zzca((int) j);
    }

    public final void zzcc(int i) throws IOException {
        if (this.zzawy.remaining() >= 4) {
            this.zzawy.putInt(i);
            return;
        }
        throw new zzup(this.zzawy.position(), this.zzawy.limit());
    }
}
