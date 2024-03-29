package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;
import master.flame.danmaku.controller.CacheManagingDrawTask.CacheManager;
import org.msgpack.core.MessagePack.Code;

public class IOUtils {
    public static final char[] ASCII_CHARS = {'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
    public static final char[] CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    public static final Properties DEFAULT_PROPERTIES = new Properties();
    public static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final char[] DigitOnes = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    static final char[] DigitTens = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
    public static final String FASTJSON_COMPATIBLEWITHFIELDNAME = "fastjson.compatibleWithFieldName";
    public static final String FASTJSON_COMPATIBLEWITHJAVABEAN = "fastjson.compatibleWithJavaBean";
    public static final String FASTJSON_PROPERTIES = "fastjson.properties";
    public static final int[] IA = new int[256];
    public static final Charset UTF8 = Charset.forName("UTF-8");
    static final char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    public static final boolean[] firstIdentifierFlags = new boolean[256];
    public static final boolean[] identifierFlags = new boolean[256];
    public static final char[] replaceChars = new char[93];
    static final int[] sizeTable = {9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
    public static final byte[] specicalFlags_doubleQuotes = new byte[161];
    public static final boolean[] specicalFlags_doubleQuotesFlags = new boolean[161];
    public static final byte[] specicalFlags_singleQuotes = new byte[161];
    public static final boolean[] specicalFlags_singleQuotesFlags = new boolean[161];

    public static int stringSize(long j) {
        long j2 = 10;
        for (int i = 1; i < 19; i++) {
            if (j < j2) {
                return i;
            }
            j2 *= 10;
        }
        return 19;
    }

    static {
        char c = 0;
        while (true) {
            boolean[] zArr = firstIdentifierFlags;
            if (c >= zArr.length) {
                break;
            }
            if (c >= 'A' && c <= 'Z') {
                zArr[c] = true;
            } else if (c >= 'a' && c <= 'z') {
                firstIdentifierFlags[c] = true;
            } else if (c == '_' || c == '$') {
                firstIdentifierFlags[c] = true;
            }
            c = (char) (c + 1);
        }
        char c2 = 0;
        while (true) {
            boolean[] zArr2 = identifierFlags;
            if (c2 < zArr2.length) {
                if (c2 >= 'A' && c2 <= 'Z') {
                    zArr2[c2] = true;
                } else if (c2 >= 'a' && c2 <= 'z') {
                    identifierFlags[c2] = true;
                } else if (c2 == '_') {
                    identifierFlags[c2] = true;
                } else if (c2 >= '0' && c2 <= '9') {
                    identifierFlags[c2] = true;
                }
                c2 = (char) (c2 + 1);
            } else {
                try {
                    break;
                } catch (Throwable unused) {
                }
            }
        }
        loadPropertiesFromFile();
        byte[] bArr = specicalFlags_doubleQuotes;
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        byte[] bArr2 = specicalFlags_singleQuotes;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i = 14; i <= 31; i++) {
            specicalFlags_doubleQuotes[i] = 4;
            specicalFlags_singleQuotes[i] = 4;
        }
        for (int i2 = AVException.INVALID_PHONE_NUMBER; i2 < 160; i2++) {
            specicalFlags_doubleQuotes[i2] = 4;
            specicalFlags_singleQuotes[i2] = 4;
        }
        for (int i3 = 0; i3 < 161; i3++) {
            specicalFlags_doubleQuotesFlags[i3] = specicalFlags_doubleQuotes[i3] != 0;
            specicalFlags_singleQuotesFlags[i3] = specicalFlags_singleQuotes[i3] != 0;
        }
        char[] cArr = replaceChars;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        Arrays.fill(IA, -1);
        int length = CA.length;
        for (int i4 = 0; i4 < length; i4++) {
            IA[CA[i4]] = i4;
        }
        IA[61] = 0;
    }

    public static String getStringProperty(String str) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException unused) {
            str2 = null;
        }
        return str2 == null ? DEFAULT_PROPERTIES.getProperty(str) : str2;
    }

    public static void loadPropertiesFromFile() {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() {
            public InputStream run() {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                String str = IOUtils.FASTJSON_PROPERTIES;
                if (contextClassLoader != null) {
                    return contextClassLoader.getResourceAsStream(str);
                }
                return ClassLoader.getSystemResourceAsStream(str);
            }
        });
        if (inputStream != null) {
            try {
                DEFAULT_PROPERTIES.load(inputStream);
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void getChars(long j, int i, char[] cArr) {
        char c;
        if (j < 0) {
            c = '-';
            j = -j;
        } else {
            c = 0;
        }
        while (j > 2147483647L) {
            long j2 = j / 100;
            int i2 = (int) (j - (((j2 << 6) + (j2 << 5)) + (j2 << 2)));
            int i3 = i - 1;
            cArr[i3] = DigitOnes[i2];
            i = i3 - 1;
            cArr[i] = DigitTens[i2];
            j = j2;
        }
        int i4 = (int) j;
        while (i4 >= 65536) {
            int i5 = i4 / 100;
            int i6 = i4 - (((i5 << 6) + (i5 << 5)) + (i5 << 2));
            int i7 = i - 1;
            cArr[i7] = DigitOnes[i6];
            i = i7 - 1;
            cArr[i] = DigitTens[i6];
            i4 = i5;
        }
        while (true) {
            int i8 = (52429 * i4) >>> 19;
            i--;
            cArr[i] = digits[i4 - ((i8 << 3) + (i8 << 1))];
            if (i8 == 0) {
                break;
            }
            i4 = i8;
        }
        if (c != 0) {
            cArr[i - 1] = c;
        }
    }

    public static void getChars(int i, int i2, char[] cArr) {
        char c;
        if (i < 0) {
            c = '-';
            i = -i;
        } else {
            c = 0;
        }
        while (i >= 65536) {
            int i3 = i / 100;
            int i4 = i - (((i3 << 6) + (i3 << 5)) + (i3 << 2));
            int i5 = i2 - 1;
            cArr[i5] = DigitOnes[i4];
            i2 = i5 - 1;
            cArr[i2] = DigitTens[i4];
            i = i3;
        }
        while (true) {
            int i6 = (52429 * i) >>> 19;
            i2--;
            cArr[i2] = digits[i - ((i6 << 3) + (i6 << 1))];
            if (i6 == 0) {
                break;
            }
            i = i6;
        }
        if (c != 0) {
            cArr[i2 - 1] = c;
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=byte, code=int, for r4v0, types: [byte, int] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void getChars(int r4, int r5, char[] r6) {
        /*
            if (r4 >= 0) goto L_0x0006
            r0 = 45
            int r4 = -r4
            goto L_0x0007
        L_0x0006:
            r0 = 0
        L_0x0007:
            r1 = 52429(0xcccd, float:7.3469E-41)
            int r1 = r1 * r4
            int r1 = r1 >>> 19
            int r2 = r1 << 3
            int r3 = r1 << 1
            int r2 = r2 + r3
            int r4 = r4 - r2
            int r5 = r5 + -1
            char[] r2 = digits
            char r4 = r2[r4]
            r6[r5] = r4
            if (r1 != 0) goto L_0x0025
            if (r0 == 0) goto L_0x0024
            int r5 = r5 + -1
            r6[r5] = r0
        L_0x0024:
            return
        L_0x0025:
            r4 = r1
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.IOUtils.getChars(byte, int, char[]):void");
    }

    public static int stringSize(int i) {
        int i2 = 0;
        while (i > sizeTable[i2]) {
            i2++;
        }
        return i2 + 1;
    }

    public static void decode(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) {
        try {
            CoderResult decode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!decode.isUnderflow()) {
                decode.throwException();
            }
            CoderResult flush = charsetDecoder.flush(charBuffer);
            if (!flush.isUnderflow()) {
                flush.throwException();
            }
        } catch (CharacterCodingException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("utf8 decode error, ");
            sb.append(e.getMessage());
            throw new JSONException(sb.toString(), e);
        }
    }

    public static boolean firstIdentifier(char c) {
        boolean[] zArr = firstIdentifierFlags;
        return c < zArr.length && zArr[c];
    }

    public static boolean isIdent(char c) {
        boolean[] zArr = identifierFlags;
        return c < zArr.length && zArr[c];
    }

    public static byte[] decodeBase64(char[] cArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (i2 == 0) {
            return new byte[0];
        }
        int i5 = (i + i2) - 1;
        while (i < i5 && IA[cArr[i]] < 0) {
            i++;
        }
        while (i5 > 0 && IA[cArr[i5]] < 0) {
            i5--;
        }
        int i6 = cArr[i5] == '=' ? cArr[i5 + -1] == '=' ? 2 : 1 : 0;
        int i7 = (i5 - i) + 1;
        if (i2 > 76) {
            i3 = (cArr[76] == 13 ? i7 / 78 : 0) << 1;
        } else {
            i3 = 0;
        }
        int i8 = (((i7 - i3) * 6) >> 3) - i6;
        byte[] bArr = new byte[i8];
        int i9 = (i8 / 3) * 3;
        int i10 = i;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i9) {
            int[] iArr = IA;
            int i13 = i10 + 1;
            int i14 = i13 + 1;
            int i15 = (iArr[cArr[i10]] << 18) | (iArr[cArr[i13]] << 12);
            int i16 = i14 + 1;
            int i17 = i15 | (iArr[cArr[i14]] << 6);
            int i18 = i16 + 1;
            int i19 = i17 | iArr[cArr[i16]];
            int i20 = i11 + 1;
            bArr[i11] = (byte) (i19 >> 16);
            int i21 = i20 + 1;
            bArr[i20] = (byte) (i19 >> 8);
            int i22 = i21 + 1;
            bArr[i21] = (byte) i19;
            if (i3 > 0) {
                i12++;
                if (i12 == 19) {
                    i10 = i18 + 2;
                    i12 = 0;
                    i11 = i22;
                }
            }
            i10 = i18;
            i11 = i22;
        }
        if (i11 < i8) {
            int i23 = 0;
            while (i10 <= i5 - i6) {
                i4 |= IA[cArr[i10]] << (18 - (i23 * 6));
                i23++;
                i10++;
            }
            int i24 = 16;
            while (i11 < i8) {
                int i25 = i11 + 1;
                bArr[i11] = (byte) (i4 >> i24);
                i24 -= 8;
                i11 = i25;
            }
        }
        return bArr;
    }

    public static byte[] decodeBase64(String str, int i, int i2) {
        int i3;
        int i4 = 0;
        if (i2 == 0) {
            return new byte[0];
        }
        int i5 = (i + i2) - 1;
        while (i < i5 && IA[str.charAt(i)] < 0) {
            i++;
        }
        while (i5 > 0 && IA[str.charAt(i5)] < 0) {
            i5--;
        }
        int i6 = str.charAt(i5) == '=' ? str.charAt(i5 + -1) == '=' ? 2 : 1 : 0;
        int i7 = (i5 - i) + 1;
        if (i2 > 76) {
            i3 = (str.charAt(76) == 13 ? i7 / 78 : 0) << 1;
        } else {
            i3 = 0;
        }
        int i8 = (((i7 - i3) * 6) >> 3) - i6;
        byte[] bArr = new byte[i8];
        int i9 = (i8 / 3) * 3;
        int i10 = i;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i9) {
            int i13 = i10 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            int i17 = (IA[str.charAt(i10)] << 18) | (IA[str.charAt(i13)] << 12) | (IA[str.charAt(i14)] << 6) | IA[str.charAt(i15)];
            int i18 = i11 + 1;
            bArr[i11] = (byte) (i17 >> 16);
            int i19 = i18 + 1;
            bArr[i18] = (byte) (i17 >> 8);
            int i20 = i19 + 1;
            bArr[i19] = (byte) i17;
            if (i3 > 0) {
                i12++;
                if (i12 == 19) {
                    i10 = i16 + 2;
                    i12 = 0;
                    i11 = i20;
                }
            }
            i10 = i16;
            i11 = i20;
        }
        if (i11 < i8) {
            int i21 = 0;
            while (i10 <= i5 - i6) {
                i4 |= IA[str.charAt(i10)] << (18 - (i21 * 6));
                i21++;
                i10++;
            }
            int i22 = 16;
            while (i11 < i8) {
                int i23 = i11 + 1;
                bArr[i11] = (byte) (i4 >> i22);
                i22 -= 8;
                i11 = i23;
            }
        }
        return bArr;
    }

    public static byte[] decodeBase64(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int i3 = length - 1;
        int i4 = 0;
        while (i4 < i3 && IA[str.charAt(i4) & 255] < 0) {
            i4++;
        }
        while (i3 > 0 && IA[str.charAt(i3) & 255] < 0) {
            i3--;
        }
        int i5 = str.charAt(i3) == '=' ? str.charAt(i3 + -1) == '=' ? 2 : 1 : 0;
        int i6 = (i3 - i4) + 1;
        if (length > 76) {
            i = (str.charAt(76) == 13 ? i6 / 78 : 0) << 1;
        } else {
            i = 0;
        }
        int i7 = (((i6 - i) * 6) >> 3) - i5;
        byte[] bArr = new byte[i7];
        int i8 = (i7 / 3) * 3;
        int i9 = i4;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i8) {
            int i12 = i9 + 1;
            int i13 = i12 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int i16 = (IA[str.charAt(i9)] << 18) | (IA[str.charAt(i12)] << 12) | (IA[str.charAt(i13)] << 6) | IA[str.charAt(i14)];
            int i17 = i10 + 1;
            bArr[i10] = (byte) (i16 >> 16);
            int i18 = i17 + 1;
            bArr[i17] = (byte) (i16 >> 8);
            int i19 = i18 + 1;
            bArr[i18] = (byte) i16;
            if (i > 0) {
                i11++;
                if (i11 == 19) {
                    i9 = i15 + 2;
                    i11 = 0;
                    i10 = i19;
                }
            }
            i9 = i15;
            i10 = i19;
        }
        if (i10 < i7) {
            int i20 = 0;
            while (i9 <= i3 - i5) {
                i2 |= IA[str.charAt(i9)] << (18 - (i20 * 6));
                i20++;
                i9++;
            }
            int i21 = 16;
            while (i10 < i7) {
                int i22 = i10 + 1;
                bArr[i10] = (byte) (i2 >> i21);
                i21 -= 8;
                i10 = i22;
            }
        }
        return bArr;
    }

    public static int encodeUTF8(char[] cArr, int i, int i2, byte[] bArr) {
        int i3;
        int i4;
        int i5;
        int i6 = i + i2;
        int i7 = 0;
        int min = Math.min(i2, bArr.length) + 0;
        while (i3 < min && cArr[r10] < 128) {
            int i8 = i3 + 1;
            int i9 = r10 + 1;
            bArr[i3] = (byte) cArr[r10];
            i7 = i8;
            i = i9;
        }
        while (r10 < i6) {
            int i10 = r10 + 1;
            char c = cArr[r10];
            if (c < 128) {
                i4 = i3 + 1;
                bArr[i3] = (byte) c;
            } else {
                if (c < 2048) {
                    int i11 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 6) | 192);
                    i3 = i11 + 1;
                    bArr[i11] = (byte) ((c & 63) | 128);
                } else if (c < 55296 || c >= 57344) {
                    int i12 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 12) | 224);
                    int i13 = i12 + 1;
                    bArr[i12] = (byte) ((63 & (c >> 6)) | 128);
                    i4 = i13 + 1;
                    bArr[i13] = (byte) ((c & 63) | 128);
                } else {
                    int i14 = i10 - 1;
                    String str = "encodeUTF8 error";
                    if (Character.isHighSurrogate(c)) {
                        if (i6 - i14 < 2) {
                            c = -1;
                        } else {
                            char c2 = cArr[i14 + 1];
                            if (Character.isLowSurrogate(c2)) {
                                c = Character.toCodePoint(c, c2);
                            } else {
                                throw new JSONException(str, new MalformedInputException(1));
                            }
                        }
                    } else if (Character.isLowSurrogate(c)) {
                        throw new JSONException(str, new MalformedInputException(1));
                    }
                    if (c < 0) {
                        i5 = i3 + 1;
                        bArr[i3] = 63;
                    } else {
                        int i15 = i3 + 1;
                        bArr[i3] = (byte) ((c >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        int i16 = i15 + 1;
                        bArr[i15] = (byte) (((c >> 12) & 63) | 128);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) ((63 & (c >> 6)) | 128);
                        int i18 = i17 + 1;
                        bArr[i17] = (byte) ((c & 63) | 128);
                        i10++;
                        i5 = i18;
                    }
                    i3 = i5;
                }
                r10 = i10;
            }
            r10 = i10;
            i3 = i4;
        }
        return i3;
    }

    public static int decodeUTF8(byte[] bArr, int i, int i2, char[] cArr) {
        int i3;
        int i4;
        int i5 = i + i2;
        int min = Math.min(i2, cArr.length);
        int i6 = i;
        int i7 = 0;
        while (i3 < min && bArr[i4] >= 0) {
            int i8 = i3 + 1;
            int i9 = i4 + 1;
            cArr[i3] = (char) bArr[i4];
            i7 = i8;
            i6 = i9;
        }
        while (i4 < i5) {
            int i10 = i4 + 1;
            byte b = bArr[i4];
            if (b >= 0) {
                int i11 = i3 + 1;
                cArr[i3] = (char) b;
                i4 = i10;
                i3 = i11;
            } else if ((b >> 5) != -2 || (b & 30) == 0) {
                if ((b >> 4) == -2) {
                    int i12 = i10 + 1;
                    if (i12 < i5) {
                        byte b2 = bArr[i10];
                        int i13 = i12 + 1;
                        byte b3 = bArr[i12];
                        if (!(b == -32 && (b2 & Code.NEGFIXINT_PREFIX) == 128) && (b2 & Code.NIL) == 128 && (b3 & Code.NIL) == 128) {
                            char c = (char) (((b2 << 6) ^ (b << 12)) ^ (-123008 ^ b3));
                            if (c >= 55296 && c < 57344) {
                                return -1;
                            }
                            int i14 = i3 + 1;
                            cArr[i3] = c;
                            i3 = i14;
                            i4 = i13;
                        }
                    }
                    return -1;
                }
                if ((b >> 3) == -2 && i10 + 2 < i5) {
                    int i15 = i10 + 1;
                    byte b4 = bArr[i10];
                    int i16 = i15 + 1;
                    byte b5 = bArr[i15];
                    int i17 = i16 + 1;
                    byte b6 = bArr[i16];
                    byte b7 = (((b << 18) ^ (b4 << 12)) ^ (b5 << 6)) ^ (3678080 ^ b6);
                    if ((b4 & Code.NIL) == 128 && (b5 & Code.NIL) == 128 && (b6 & Code.NIL) == 128 && Character.isSupplementaryCodePoint(b7)) {
                        int i18 = i3 + 1;
                        cArr[i3] = (char) ((b7 >>> 10) + 55232);
                        i3 = i18 + 1;
                        cArr[i18] = (char) ((b7 & Draft_75.END_OF_FRAME) + CacheManager.RESULT_SUCCESS);
                        i4 = i17;
                    }
                }
                return -1;
            } else if (i10 >= i5) {
                return -1;
            } else {
                int i19 = i10 + 1;
                byte b8 = bArr[i10];
                if ((b8 & Code.NIL) != 128) {
                    return -1;
                }
                int i20 = i3 + 1;
                cArr[i3] = (char) ((b8 ^ (b << 6)) ^ 3968);
                i4 = i19;
                i3 = i20;
            }
        }
        return i3;
    }

    public static String readAll(Reader reader) {
        StringBuilder sb = new StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int read = reader.read(cArr, 0, cArr.length);
                if (read < 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
            }
        } catch (Exception e) {
            throw new JSONException("read string from reader error", e);
        }
    }

    public static boolean isValidJsonpQueryParam(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '.' && !isIdent(charAt)) {
                return false;
            }
        }
        return true;
    }
}
