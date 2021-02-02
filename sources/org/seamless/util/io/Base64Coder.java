package org.seamless.util.io;

import com.avos.avoscloud.AVException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import org.eclipse.jetty.http.HttpTokens;

public class Base64Coder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte[] _ORDERED_ALPHABET = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] _ORDERED_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, HttpTokens.SPACE, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _STANDARD_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] _STANDARD_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, HttpTokens.SPACE, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _URL_SAFE_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] _URL_SAFE_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, HttpTokens.SPACE, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        public InputStream(java.io.InputStream inputStream, int i) {
            super(inputStream);
            this.options = i;
            boolean z = true;
            this.breakLines = (i & 8) > 0;
            if ((i & 1) <= 0) {
                z = false;
            }
            this.encode = z;
            this.bufferLength = this.encode ? 4 : 3;
            this.buffer = new byte[this.bufferLength];
            this.position = -1;
            this.lineLength = 0;
            this.decodabet = Base64Coder.getDecodabet(i);
        }

        public int read() throws IOException {
            int read;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i = 0;
                    for (int i2 = 0; i2 < 3; i2++) {
                        int read2 = this.in.read();
                        if (read2 < 0) {
                            break;
                        }
                        bArr[i2] = (byte) read2;
                        i++;
                    }
                    if (i <= 0) {
                        return -1;
                    }
                    Base64Coder.encode3to4(bArr, 0, i, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i3 = 0;
                    while (i3 < 4) {
                        do {
                            read = this.in.read();
                            if (read < 0) {
                                break;
                            }
                        } while (this.decodabet[read & AVException.INVALID_PHONE_NUMBER] <= -5);
                        if (read < 0) {
                            break;
                        }
                        bArr2[i3] = (byte) read;
                        i3++;
                    }
                    if (i3 == 4) {
                        this.numSigBytes = Base64Coder.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                        this.position = 0;
                    } else if (i3 == 0) {
                        return -1;
                    } else {
                        throw new IOException("Improperly padded Base64 input.");
                    }
                }
            }
            int i4 = this.position;
            if (i4 < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            } else if (i4 >= this.numSigBytes) {
                return -1;
            } else {
                if (!this.encode || !this.breakLines || this.lineLength < 76) {
                    this.lineLength++;
                    byte[] bArr3 = this.buffer;
                    int i5 = this.position;
                    this.position = i5 + 1;
                    byte b = bArr3[i5];
                    if (this.position >= this.bufferLength) {
                        this.position = -1;
                    }
                    return b & 255;
                }
                this.lineLength = 0;
                return 10;
            }
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                int read = read();
                if (read >= 0) {
                    bArr[i + i3] = (byte) read;
                    i3++;
                } else if (i3 == 0) {
                    return -1;
                }
            }
            return i3;
        }
    }

    public static class OutputStream extends FilterOutputStream {
        private byte[] b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        public OutputStream(java.io.OutputStream outputStream, int i) {
            super(outputStream);
            boolean z = true;
            this.breakLines = (i & 8) != 0;
            if ((i & 1) == 0) {
                z = false;
            }
            this.encode = z;
            this.bufferLength = this.encode ? 3 : 4;
            this.buffer = new byte[this.bufferLength];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.b4 = new byte[4];
            this.options = i;
            this.decodabet = Base64Coder.getDecodabet(i);
        }

        public void write(int i) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(i);
                return;
            }
            if (this.encode) {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                if (this.position >= this.bufferLength) {
                    this.out.write(Base64Coder.encode3to4(this.b4, this.buffer, this.bufferLength, this.options));
                    this.lineLength += 4;
                    if (this.breakLines && this.lineLength >= 76) {
                        this.out.write(10);
                        this.lineLength = 0;
                    }
                    this.position = 0;
                }
            } else {
                byte[] bArr2 = this.decodabet;
                int i3 = i & AVException.INVALID_PHONE_NUMBER;
                if (bArr2[i3] > -5) {
                    byte[] bArr3 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    bArr3[i4] = (byte) i;
                    if (this.position >= this.bufferLength) {
                        this.out.write(this.b4, 0, Base64Coder.decode4to3(bArr3, 0, this.b4, 0, this.options));
                        this.position = 0;
                    }
                } else if (bArr2[i3] != -5) {
                    throw new IOException("Invalid character in Base64 data.");
                }
            }
        }

        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }

        public void flushBase64() throws IOException {
            if (this.position <= 0) {
                return;
            }
            if (this.encode) {
                this.out.write(Base64Coder.encode3to4(this.b4, this.buffer, this.position, this.options));
                this.position = 0;
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            this.out = null;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }
    }

    private static final byte[] getAlphabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_ALPHABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_ALPHABET;
        }
        return _STANDARD_ALPHABET;
    }

    /* access modifiers changed from: private */
    public static final byte[] getDecodabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_DECODABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_DECODABET;
        }
        return _STANDARD_DECODABET;
    }

    private Base64Coder() {
    }

    /* access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i, int i2) {
        encode3to4(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] alphabet = getAlphabet(i4);
        int i5 = 0;
        int i6 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0);
        if (i2 > 2) {
            i5 = (bArr[i + 2] << 24) >>> 24;
        }
        int i7 = i6 | i5;
        if (i2 == 1) {
            bArr2[i3] = alphabet[i7 >>> 18];
            bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = EQUALS_SIGN;
            bArr2[i3 + 3] = EQUALS_SIGN;
            return bArr2;
        } else if (i2 == 2) {
            bArr2[i3] = alphabet[i7 >>> 18];
            bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = alphabet[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = EQUALS_SIGN;
            return bArr2;
        } else if (i2 != 3) {
            return bArr2;
        } else {
            bArr2[i3] = alphabet[i7 >>> 18];
            bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = alphabet[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = alphabet[i7 & 63];
            return bArr2;
        }
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            byteBuffer2.put(bArr2);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            for (int i = 0; i < 4; i++) {
                charBuffer.put((char) (bArr2[i] & 255));
            }
        }
    }

    public static String encodeObject(Serializable serializable) throws IOException {
        return encodeObject(serializable, 0);
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r1v0, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r0v1, types: [java.io.ObjectOutputStream] */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r0v3 */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v5, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r0v6, types: [java.io.ObjectOutputStream] */
    /* JADX WARNING: type inference failed for: r6v14, types: [java.io.ObjectOutputStream] */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: type inference failed for: r0v11 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.io.ObjectOutputStream] */
    /* JADX WARNING: type inference failed for: r0v12 */
    /* JADX WARNING: type inference failed for: r0v13 */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r0v15 */
    /* JADX WARNING: type inference failed for: r0v16 */
    /* JADX WARNING: type inference failed for: r0v17 */
    /* JADX WARNING: type inference failed for: r0v18 */
    /* JADX WARNING: type inference failed for: r0v19 */
    /* JADX WARNING: type inference failed for: r0v20 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: type inference failed for: r0v21 */
    /* JADX WARNING: type inference failed for: r0v22 */
    /* JADX WARNING: type inference failed for: r0v23 */
    /* JADX WARNING: type inference failed for: r0v24 */
    /* JADX WARNING: type inference failed for: r0v25 */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:13|51|52|53|54|55|56|57|58|59) */
    /* JADX WARNING: Can't wrap try/catch for region: R(17:4|5|6|(5:8|9|10|11|12)(3:16|17|18)|19|20|21|22|23|24|25|26|27|28|29|30|31) */
    /* JADX WARNING: Can't wrap try/catch for region: R(19:2|3|4|5|6|(5:8|9|10|11|12)(3:16|17|18)|19|20|21|22|23|24|25|26|27|28|29|30|31) */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0053, code lost:
        return new java.lang.String(r1.toByteArray());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0038 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x003b */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x003e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:53:0x0077 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:55:0x007a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:57:0x007d */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v11
      assigns: []
      uses: []
      mth insns count: 81
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 14 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String encodeObject(java.io.Serializable r5, int r6) throws java.io.IOException {
        /*
            if (r5 == 0) goto L_0x0081
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x006b, all -> 0x0066 }
            r1.<init>()     // Catch:{ IOException -> 0x006b, all -> 0x0066 }
            org.seamless.util.io.Base64Coder$OutputStream r2 = new org.seamless.util.io.Base64Coder$OutputStream     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r3 = r6 | 1
            r2.<init>(r1, r3)     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r6 = r6 & 2
            if (r6 == 0) goto L_0x0027
            java.util.zip.GZIPOutputStream r6 = new java.util.zip.GZIPOutputStream     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r6.<init>(r2)     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            java.io.ObjectOutputStream r3 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r3.<init>(r6)     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r0 = r3
            goto L_0x002f
        L_0x001f:
            r5 = move-exception
            goto L_0x0074
        L_0x0022:
            r5 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x006f
        L_0x0027:
            java.io.ObjectOutputStream r6 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r6.<init>(r2)     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r4 = r0
            r0 = r6
            r6 = r4
        L_0x002f:
            r0.writeObject(r5)     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r0.close()     // Catch:{ Exception -> 0x0035 }
        L_0x0035:
            r6.close()     // Catch:{ Exception -> 0x0038 }
        L_0x0038:
            r2.close()     // Catch:{ Exception -> 0x003b }
        L_0x003b:
            r1.close()     // Catch:{ Exception -> 0x003e }
        L_0x003e:
            java.lang.String r5 = new java.lang.String     // Catch:{ UnsupportedEncodingException -> 0x004a }
            byte[] r6 = r1.toByteArray()     // Catch:{ UnsupportedEncodingException -> 0x004a }
            java.lang.String r0 = "US-ASCII"
            r5.<init>(r6, r0)     // Catch:{ UnsupportedEncodingException -> 0x004a }
            return r5
        L_0x004a:
            java.lang.String r5 = new java.lang.String
            byte[] r6 = r1.toByteArray()
            r5.<init>(r6)
            return r5
        L_0x0054:
            r5 = move-exception
            r6 = r0
            goto L_0x0074
        L_0x0057:
            r5 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L_0x006f
        L_0x005c:
            r5 = move-exception
            r6 = r0
            r2 = r6
            goto L_0x0074
        L_0x0060:
            r5 = move-exception
            r6 = r0
            r2 = r6
            r0 = r1
            r1 = r2
            goto L_0x006f
        L_0x0066:
            r5 = move-exception
            r6 = r0
            r1 = r6
            r2 = r1
            goto L_0x0074
        L_0x006b:
            r5 = move-exception
            r6 = r0
            r1 = r6
            r2 = r1
        L_0x006f:
            throw r5     // Catch:{ all -> 0x0070 }
        L_0x0070:
            r5 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0074:
            r0.close()     // Catch:{ Exception -> 0x0077 }
        L_0x0077:
            r6.close()     // Catch:{ Exception -> 0x007a }
        L_0x007a:
            r2.close()     // Catch:{ Exception -> 0x007d }
        L_0x007d:
            r1.close()     // Catch:{ Exception -> 0x0080 }
        L_0x0080:
            throw r5
        L_0x0081:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "Cannot serialize a null object."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.Base64Coder.encodeObject(java.io.Serializable, int):java.lang.String");
    }

    public static String encodeBytes(byte[] bArr) {
        try {
            return encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i) throws IOException {
        return encodeBytes(bArr, 0, bArr.length, i);
    }

    public static String encodeBytes(byte[] bArr, int i, int i2) {
        try {
            return encodeBytes(bArr, i, i2, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] encodeBytesToBytes = encodeBytesToBytes(bArr, i, i2, i3);
        try {
            return new String(encodeBytesToBytes, "US-ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new String(encodeBytesToBytes);
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        try {
            return encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r2v14, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r1v22, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r1v23 */
    /* JADX WARNING: type inference failed for: r4v3 */
    /* JADX WARNING: type inference failed for: r1v24 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r2v18, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r1v25 */
    /* JADX WARNING: type inference failed for: r4v6 */
    /* JADX WARNING: type inference failed for: r4v8 */
    /* JADX WARNING: type inference failed for: r4v9, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARNING: type inference failed for: r1v26 */
    /* JADX WARNING: type inference failed for: r1v27 */
    /* JADX WARNING: type inference failed for: r1v28 */
    /* JADX WARNING: type inference failed for: r1v29 */
    /* JADX WARNING: type inference failed for: r2v19 */
    /* JADX WARNING: type inference failed for: r4v10 */
    /* JADX WARNING: type inference failed for: r2v20 */
    /* JADX WARNING: type inference failed for: r2v21 */
    /* JADX WARNING: type inference failed for: r2v22 */
    /* JADX WARNING: type inference failed for: r4v11 */
    /* JADX WARNING: type inference failed for: r4v12 */
    /* JADX WARNING: type inference failed for: r4v13 */
    /* JADX WARNING: Can't wrap try/catch for region: R(12:13|14|15|16|17|18|19|20|21|22|23|25) */
    /* JADX WARNING: Can't wrap try/catch for region: R(17:8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|25) */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:31|32|45|46|47|48|49|50|51) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0032 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:47:0x005c */
    /* JADX WARNING: Missing exception handler attribute for start block: B:49:0x005f */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v15
      assigns: []
      uses: []
      mth insns count: 142
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 10 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] encodeBytesToBytes(byte[] r18, int r19, int r20, int r21) throws java.io.IOException {
        /*
            r0 = r18
            r7 = r19
            r8 = r20
            if (r0 == 0) goto L_0x011e
            if (r7 < 0) goto L_0x0107
            if (r8 < 0) goto L_0x00f0
            int r1 = r7 + r8
            int r2 = r0.length
            r9 = 1
            r10 = 0
            if (r1 > r2) goto L_0x00cd
            r1 = r21 & 2
            if (r1 == 0) goto L_0x0063
            r1 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0052, all -> 0x004e }
            r2.<init>()     // Catch:{ IOException -> 0x0052, all -> 0x004e }
            org.seamless.util.io.Base64Coder$OutputStream r3 = new org.seamless.util.io.Base64Coder$OutputStream     // Catch:{ IOException -> 0x0049, all -> 0x0046 }
            r4 = r21 | 1
            r3.<init>(r2, r4)     // Catch:{ IOException -> 0x0049, all -> 0x0046 }
            java.util.zip.GZIPOutputStream r4 = new java.util.zip.GZIPOutputStream     // Catch:{ IOException -> 0x0043, all -> 0x0041 }
            r4.<init>(r3)     // Catch:{ IOException -> 0x0043, all -> 0x0041 }
            r4.write(r0, r7, r8)     // Catch:{ IOException -> 0x003f, all -> 0x003d }
            r4.close()     // Catch:{ IOException -> 0x003f, all -> 0x003d }
            r4.close()     // Catch:{ Exception -> 0x0032 }
        L_0x0032:
            r3.close()     // Catch:{ Exception -> 0x0035 }
        L_0x0035:
            r2.close()     // Catch:{ Exception -> 0x0038 }
        L_0x0038:
            byte[] r0 = r2.toByteArray()
            return r0
        L_0x003d:
            r0 = move-exception
            goto L_0x0058
        L_0x003f:
            r0 = move-exception
            goto L_0x004c
        L_0x0041:
            r0 = move-exception
            goto L_0x0059
        L_0x0043:
            r0 = move-exception
            r4 = r1
            goto L_0x004c
        L_0x0046:
            r0 = move-exception
            r3 = r1
            goto L_0x0059
        L_0x0049:
            r0 = move-exception
            r3 = r1
            r4 = r3
        L_0x004c:
            r1 = r2
            goto L_0x0055
        L_0x004e:
            r0 = move-exception
            r2 = r1
            r3 = r2
            goto L_0x0059
        L_0x0052:
            r0 = move-exception
            r3 = r1
            r4 = r3
        L_0x0055:
            throw r0     // Catch:{ all -> 0x0056 }
        L_0x0056:
            r0 = move-exception
            r2 = r1
        L_0x0058:
            r1 = r4
        L_0x0059:
            r1.close()     // Catch:{ Exception -> 0x005c }
        L_0x005c:
            r3.close()     // Catch:{ Exception -> 0x005f }
        L_0x005f:
            r2.close()     // Catch:{ Exception -> 0x0062 }
        L_0x0062:
            throw r0
        L_0x0063:
            r1 = r21 & 8
            if (r1 == 0) goto L_0x0069
            r11 = 1
            goto L_0x006a
        L_0x0069:
            r11 = 0
        L_0x006a:
            int r1 = r8 / 3
            r12 = 4
            int r1 = r1 * 4
            int r2 = r8 % 3
            if (r2 <= 0) goto L_0x0075
            r2 = 4
            goto L_0x0076
        L_0x0075:
            r2 = 0
        L_0x0076:
            int r1 = r1 + r2
            if (r11 == 0) goto L_0x007c
            int r2 = r1 / 76
            int r1 = r1 + r2
        L_0x007c:
            byte[] r13 = new byte[r1]
            int r14 = r8 + -2
            r15 = 0
            r16 = 0
            r17 = 0
        L_0x0085:
            if (r15 >= r14) goto L_0x00ae
            int r2 = r15 + r7
            r3 = 3
            r1 = r18
            r4 = r13
            r5 = r16
            r6 = r21
            encode3to4(r1, r2, r3, r4, r5, r6)
            int r1 = r17 + 4
            if (r11 == 0) goto L_0x00a7
            r2 = 76
            if (r1 < r2) goto L_0x00a7
            int r1 = r16 + 4
            r2 = 10
            r13[r1] = r2
            int r16 = r16 + 1
            r17 = 0
            goto L_0x00a9
        L_0x00a7:
            r17 = r1
        L_0x00a9:
            int r15 = r15 + 3
            int r16 = r16 + 4
            goto L_0x0085
        L_0x00ae:
            if (r15 >= r8) goto L_0x00c0
            int r2 = r15 + r7
            int r3 = r8 - r15
            r1 = r18
            r4 = r13
            r5 = r16
            r6 = r21
            encode3to4(r1, r2, r3, r4, r5, r6)
            int r16 = r16 + 4
        L_0x00c0:
            r0 = r16
            int r1 = r13.length
            int r1 = r1 - r9
            if (r0 > r1) goto L_0x00cc
            byte[] r1 = new byte[r0]
            java.lang.System.arraycopy(r13, r10, r1, r10, r0)
            return r1
        L_0x00cc:
            return r13
        L_0x00cd:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r19)
            r2[r10] = r3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r20)
            r2[r9] = r3
            int r0 = r0.length
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r3 = 2
            r2[r3] = r0
            java.lang.String r0 = "Cannot have offset of %d and length of %d with array of length %d"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L_0x00f0:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot have length offset: "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0107:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot have negative offset: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x011e:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "Cannot serialize a null array."
            r0.<init>(r1)
            goto L_0x0127
        L_0x0126:
            throw r0
        L_0x0127:
            goto L_0x0126
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.Base64Coder.encodeBytesToBytes(byte[], int, int, int):byte[]");
    }

    /* access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        } else if (bArr2 != null) {
            if (i >= 0) {
                int i4 = i + 3;
                if (i4 < bArr.length) {
                    if (i2 >= 0) {
                        int i5 = i2 + 2;
                        if (i5 < bArr2.length) {
                            byte[] decodabet = getDecodabet(i3);
                            int i6 = i + 2;
                            if (bArr[i6] == 61) {
                                bArr2[i2] = (byte) ((((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18)) >>> 16);
                                return 1;
                            } else if (bArr[i4] == 61) {
                                int i7 = ((decodabet[bArr[i6]] & 255) << 6) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18);
                                bArr2[i2] = (byte) (i7 >>> 16);
                                bArr2[i2 + 1] = (byte) (i7 >>> 8);
                                return 2;
                            } else {
                                byte b = (decodabet[bArr[i4]] & 255) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i6]] & 255) << 6);
                                bArr2[i2] = (byte) (b >> 16);
                                bArr2[i2 + 1] = (byte) (b >> 8);
                                bArr2[i5] = (byte) b;
                                return 3;
                            }
                        }
                    }
                    throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", new Object[]{Integer.valueOf(bArr2.length), Integer.valueOf(i2)}));
                }
            }
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i)}));
        } else {
            throw new NullPointerException("Destination array was null.");
        }
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length, 0);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) throws IOException {
        if (bArr != null) {
            if (i >= 0) {
                int i4 = i + i2;
                if (i4 <= bArr.length) {
                    if (i2 == 0) {
                        return new byte[0];
                    }
                    if (i2 >= 4) {
                        byte[] decodabet = getDecodabet(i3);
                        byte[] bArr2 = new byte[((i2 * 3) / 4)];
                        byte[] bArr3 = new byte[4];
                        int i5 = 0;
                        int i6 = 0;
                        while (i < i4) {
                            byte b = decodabet[bArr[i] & 255];
                            if (b >= -5) {
                                if (b >= -1) {
                                    int i7 = i5 + 1;
                                    bArr3[i5] = bArr[i];
                                    if (i7 > 3) {
                                        i6 += decode4to3(bArr3, 0, bArr2, i6, i3);
                                        if (bArr[i] == 61) {
                                            break;
                                        }
                                        i5 = 0;
                                    } else {
                                        i5 = i7;
                                    }
                                }
                                i++;
                            } else {
                                throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", new Object[]{Integer.valueOf(bArr[i] & 255), Integer.valueOf(i)}));
                            }
                        }
                        byte[] bArr4 = new byte[i6];
                        System.arraycopy(bArr2, 0, bArr4, 0, i6);
                        return bArr4;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Base64-encoded string must have at least four characters, but length specified was ");
                    sb.append(i2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)}));
        }
        throw new NullPointerException("Cannot decode null source array.");
    }

    public static byte[] decode(String str) throws IOException {
        return decode(str, 0);
    }

    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r0v8, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r0v10, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r4v3, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r0v11 */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r4v6 */
    /* JADX WARNING: type inference failed for: r4v7, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r0v13 */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r0v15 */
    /* JADX WARNING: type inference failed for: r0v16 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r4v8 */
    /* JADX WARNING: type inference failed for: r4v9 */
    /* JADX WARNING: type inference failed for: r4v10 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r4v11 */
    /* JADX WARNING: type inference failed for: r4v12 */
    /* JADX WARNING: type inference failed for: r4v13 */
    /* JADX WARNING: type inference failed for: r4v14 */
    /* JADX WARNING: type inference failed for: r4v15 */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:16|17|18|19|20|(6:21|22|(3:23|24|(1:26)(1:67))|27|28|29)|30|31|32|33) */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:52|53|54|55|56|57|58|59|60|61) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x0059 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x005c */
    /* JADX WARNING: Missing exception handler attribute for start block: B:57:0x0085 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:59:0x0088 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v3
      assigns: []
      uses: []
      mth insns count: 82
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 11 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] decode(java.lang.String r5, int r6) throws java.io.IOException {
        /*
            if (r5 == 0) goto L_0x008d
            java.lang.String r0 = "US-ASCII"
            byte[] r5 = r5.getBytes(r0)     // Catch:{ UnsupportedEncodingException -> 0x0009 }
            goto L_0x000d
        L_0x0009:
            byte[] r5 = r5.getBytes()
        L_0x000d:
            int r0 = r5.length
            r1 = 0
            byte[] r5 = decode(r5, r1, r0, r6)
            r0 = 4
            r6 = r6 & r0
            r2 = 1
            if (r6 == 0) goto L_0x001a
            r6 = 1
            goto L_0x001b
        L_0x001a:
            r6 = 0
        L_0x001b:
            if (r5 == 0) goto L_0x008c
            int r3 = r5.length
            if (r3 < r0) goto L_0x008c
            if (r6 != 0) goto L_0x008c
            byte r6 = r5[r1]
            r6 = r6 & 255(0xff, float:3.57E-43)
            byte r0 = r5[r2]
            int r0 = r0 << 8
            r2 = 65280(0xff00, float:9.1477E-41)
            r0 = r0 & r2
            r6 = r6 | r0
            r0 = 35615(0x8b1f, float:4.9907E-41)
            if (r0 != r6) goto L_0x008c
            r6 = 2048(0x800, float:2.87E-42)
            byte[] r6 = new byte[r6]
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0075, all -> 0x0071 }
            r2.<init>()     // Catch:{ IOException -> 0x0075, all -> 0x0071 }
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ IOException -> 0x006c, all -> 0x0069 }
            r3.<init>(r5)     // Catch:{ IOException -> 0x006c, all -> 0x0069 }
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch:{ IOException -> 0x0066, all -> 0x0064 }
            r4.<init>(r3)     // Catch:{ IOException -> 0x0066, all -> 0x0064 }
        L_0x0048:
            int r0 = r4.read(r6)     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            if (r0 < 0) goto L_0x0052
            r2.write(r6, r1, r0)     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            goto L_0x0048
        L_0x0052:
            byte[] r5 = r2.toByteArray()     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            r2.close()     // Catch:{ Exception -> 0x0059 }
        L_0x0059:
            r4.close()     // Catch:{ Exception -> 0x005c }
        L_0x005c:
            r3.close()     // Catch:{ Exception -> 0x008c }
            goto L_0x008c
        L_0x0060:
            r5 = move-exception
            goto L_0x0081
        L_0x0062:
            r6 = move-exception
            goto L_0x006f
        L_0x0064:
            r5 = move-exception
            goto L_0x0082
        L_0x0066:
            r6 = move-exception
            r4 = r0
            goto L_0x006f
        L_0x0069:
            r5 = move-exception
            r3 = r0
            goto L_0x0082
        L_0x006c:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L_0x006f:
            r0 = r2
            goto L_0x0078
        L_0x0071:
            r5 = move-exception
            r2 = r0
            r3 = r2
            goto L_0x0082
        L_0x0075:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L_0x0078:
            r6.printStackTrace()     // Catch:{ all -> 0x007f }
            r0.close()     // Catch:{ Exception -> 0x0059 }
            goto L_0x0059
        L_0x007f:
            r5 = move-exception
            r2 = r0
        L_0x0081:
            r0 = r4
        L_0x0082:
            r2.close()     // Catch:{ Exception -> 0x0085 }
        L_0x0085:
            r0.close()     // Catch:{ Exception -> 0x0088 }
        L_0x0088:
            r3.close()     // Catch:{ Exception -> 0x008b }
        L_0x008b:
            throw r5
        L_0x008c:
            return r5
        L_0x008d:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "Input string was null."
            r5.<init>(r6)
            goto L_0x0096
        L_0x0095:
            throw r5
        L_0x0096:
            goto L_0x0095
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.Base64Coder.decode(java.lang.String, int):byte[]");
    }

    public static Object decodeToObject(String str) throws IOException, ClassNotFoundException {
        return decodeToObject(str, 0, null);
    }

    /* JADX WARNING: type inference failed for: r3v0, types: [java.lang.ClassLoader] */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ObjectInputStream] */
    /* JADX WARNING: type inference failed for: r0v0, types: [java.io.ByteArrayInputStream] */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r0v1 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r0v3, types: [java.io.ByteArrayInputStream, java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:14|30|31|32|33|34) */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:1|2|(2:4|5)(1:6)|7|8|9|10|11|12) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.ClassLoader, code=null, for r3v0, types: [java.lang.ClassLoader] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x001f */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x003c */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v3
      assigns: []
      uses: []
      mth insns count: 40
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 10 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object decodeToObject(java.lang.String r1, int r2, final java.lang.ClassLoader r3) throws java.io.IOException, java.lang.ClassNotFoundException {
        /*
            byte[] r1 = decode(r1, r2)
            r2 = 0
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch:{ IOException -> 0x0033, ClassNotFoundException -> 0x0030, all -> 0x002d }
            r0.<init>(r1)     // Catch:{ IOException -> 0x0033, ClassNotFoundException -> 0x0030, all -> 0x002d }
            if (r3 != 0) goto L_0x0012
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r1.<init>(r0)     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            goto L_0x0017
        L_0x0012:
            org.seamless.util.io.Base64Coder$1 r1 = new org.seamless.util.io.Base64Coder$1     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r1.<init>(r0, r3)     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
        L_0x0017:
            r2 = r1
            java.lang.Object r1 = r2.readObject()     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r0.close()     // Catch:{ Exception -> 0x001f }
        L_0x001f:
            r2.close()     // Catch:{ Exception -> 0x0022 }
        L_0x0022:
            return r1
        L_0x0023:
            r1 = move-exception
            goto L_0x0039
        L_0x0025:
            r1 = move-exception
            r3 = r2
            r2 = r0
            goto L_0x0032
        L_0x0029:
            r1 = move-exception
            r3 = r2
            r2 = r0
            goto L_0x0035
        L_0x002d:
            r1 = move-exception
            r0 = r2
            goto L_0x0039
        L_0x0030:
            r1 = move-exception
            r3 = r2
        L_0x0032:
            throw r1     // Catch:{ all -> 0x0036 }
        L_0x0033:
            r1 = move-exception
            r3 = r2
        L_0x0035:
            throw r1     // Catch:{ all -> 0x0036 }
        L_0x0036:
            r1 = move-exception
            r0 = r2
            r2 = r3
        L_0x0039:
            r0.close()     // Catch:{ Exception -> 0x003c }
        L_0x003c:
            r2.close()     // Catch:{ Exception -> 0x003f }
        L_0x003f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.Base64Coder.decodeToObject(java.lang.String, int, java.lang.ClassLoader):java.lang.Object");
    }

    public static void encodeToFile(byte[] bArr, String str) throws IOException {
        if (bArr != null) {
            OutputStream outputStream = null;
            try {
                OutputStream outputStream2 = new OutputStream(new FileOutputStream(str), 1);
                try {
                    outputStream2.write(bArr);
                    try {
                        outputStream2.close();
                    } catch (Exception unused) {
                    }
                } catch (IOException e) {
                    e = e;
                    outputStream = outputStream2;
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = outputStream2;
                    try {
                        outputStream.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                throw e;
            }
        } else {
            throw new NullPointerException("Data to encode was null.");
        }
    }

    public static void decodeToFile(String str, String str2) throws IOException {
        OutputStream outputStream = null;
        try {
            OutputStream outputStream2 = new OutputStream(new FileOutputStream(str2), 0);
            try {
                outputStream2.write(str.getBytes("US-ASCII"));
                try {
                    outputStream2.close();
                } catch (Exception unused) {
                }
            } catch (IOException e) {
                e = e;
                outputStream = outputStream2;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = outputStream2;
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            throw e;
        }
    }

    public static byte[] decodeFromFile(String str) throws IOException {
        InputStream inputStream = null;
        try {
            File file = new File(str);
            if (file.length() <= 2147483647L) {
                byte[] bArr = new byte[((int) file.length())];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                int i = 0;
                while (true) {
                    try {
                        int read = inputStream2.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e) {
                        e = e;
                        inputStream = inputStream2;
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
                return bArr2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("File is too big for this convenience method (");
            sb.append(file.length());
            sb.append(" bytes).");
            throw new IOException(sb.toString());
        } catch (IOException e2) {
            e = e2;
            throw e;
        }
    }

    public static String encodeFromFile(String str) throws IOException {
        InputStream inputStream = null;
        try {
            File file = new File(str);
            double length = (double) file.length();
            Double.isNaN(length);
            byte[] bArr = new byte[Math.max((int) ((length * 1.4d) + 1.0d), 40)];
            InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
            int i = 0;
            while (true) {
                try {
                    int read = inputStream2.read(bArr, i, 4096);
                    if (read < 0) {
                        break;
                    }
                    i += read;
                } catch (IOException e) {
                    e = e;
                    inputStream = inputStream2;
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                    throw th;
                }
            }
            String str2 = new String(bArr, 0, i, "US-ASCII");
            try {
                inputStream2.close();
            } catch (Exception unused2) {
            }
            return str2;
        } catch (IOException e2) {
            e = e2;
            throw e;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws IOException {
        String encodeFromFile = encodeFromFile(str);
        java.io.OutputStream outputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                bufferedOutputStream.write(encodeFromFile.getBytes("US-ASCII"));
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e) {
                e = e;
                outputStream = bufferedOutputStream;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = bufferedOutputStream;
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            throw e;
        }
    }

    public static void decodeFileToFile(String str, String str2) throws IOException {
        byte[] decodeFromFile = decodeFromFile(str);
        java.io.OutputStream outputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                bufferedOutputStream.write(decodeFromFile);
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e) {
                e = e;
                outputStream = bufferedOutputStream;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = bufferedOutputStream;
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            throw e;
        }
    }

    public static byte[] encode(byte[] bArr) {
        return encodeBytes(bArr).getBytes();
    }

    public static String encodeString(String str) {
        return encodeBytes(str.getBytes());
    }

    public static String decodeString(String str) {
        try {
            return new String(decode(str));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
