package com.avos.avoscloud.signature;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class Base64Decoder extends FilterInputStream {
    private static final char[] chars = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static final int[] ints = new int[128];
    private int carryOver;
    private int charCount;

    static {
        for (int i = 0; i < 64; i++) {
            ints[chars[i]] = i;
        }
    }

    public Base64Decoder(InputStream inputStream) {
        super(inputStream);
    }

    public int read() throws IOException {
        int read;
        do {
            read = this.in.read();
            if (read == -1) {
                return -1;
            }
        } while (Character.isWhitespace((char) read));
        this.charCount++;
        if (read == 61) {
            return -1;
        }
        int i = ints[read];
        int i2 = (this.charCount - 1) % 4;
        if (i2 == 0) {
            this.carryOver = i & 63;
            return read();
        } else if (i2 == 1) {
            int i3 = ((this.carryOver << 2) + (i >> 4)) & 255;
            this.carryOver = i & 15;
            return i3;
        } else if (i2 == 2) {
            int i4 = ((this.carryOver << 4) + (i >> 2)) & 255;
            this.carryOver = i & 3;
            return i4;
        } else if (i2 == 3) {
            return ((this.carryOver << 6) + i) & 255;
        } else {
            return -1;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr.length >= (i2 + i) - 1) {
            int i3 = 0;
            while (i3 < i2) {
                int read = read();
                if (read == -1 && i3 == 0) {
                    return -1;
                }
                if (read == -1) {
                    break;
                }
                bArr[i + i3] = (byte) read;
                i3++;
            }
            return i3;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The input buffer is too small: ");
        sb.append(i2);
        sb.append(" bytes requested starting at offset ");
        sb.append(i);
        sb.append(" while the buffer  is only ");
        sb.append(bArr.length);
        sb.append(" bytes long.");
        throw new IOException(sb.toString());
    }

    public static String decode(String str) {
        return new String(decodeToBytes(str));
    }

    public static byte[] decodeToBytes(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            bArr = null;
        }
        Base64Decoder base64Decoder = new Base64Decoder(new ByteArrayInputStream(bArr));
        double length = (double) bArr.length;
        Double.isNaN(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) (length * 0.67d));
        try {
            byte[] bArr2 = new byte[4096];
            while (true) {
                int read = base64Decoder.read(bArr2);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void main(java.lang.String[] r5) throws java.lang.Exception {
        /*
            int r0 = r5.length
            r1 = 1
            if (r0 == r1) goto L_0x000c
            java.io.PrintStream r5 = java.lang.System.err
            java.lang.String r0 = "Usage: java Base64Decoder fileToDecode"
            r5.println(r0)
            return
        L_0x000c:
            r0 = 0
            com.avos.avoscloud.signature.Base64Decoder r1 = new com.avos.avoscloud.signature.Base64Decoder     // Catch:{ all -> 0x0037 }
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch:{ all -> 0x0037 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ all -> 0x0037 }
            r4 = 0
            r5 = r5[r4]     // Catch:{ all -> 0x0037 }
            r3.<init>(r5)     // Catch:{ all -> 0x0037 }
            r2.<init>(r3)     // Catch:{ all -> 0x0037 }
            r1.<init>(r2)     // Catch:{ all -> 0x0037 }
            r5 = 4096(0x1000, float:5.74E-42)
            byte[] r5 = new byte[r5]     // Catch:{ all -> 0x0034 }
        L_0x0023:
            int r0 = r1.read(r5)     // Catch:{ all -> 0x0034 }
            r2 = -1
            if (r0 == r2) goto L_0x0030
            java.io.PrintStream r2 = java.lang.System.out     // Catch:{ all -> 0x0034 }
            r2.write(r5, r4, r0)     // Catch:{ all -> 0x0034 }
            goto L_0x0023
        L_0x0030:
            r1.close()
            return
        L_0x0034:
            r5 = move-exception
            r0 = r1
            goto L_0x0038
        L_0x0037:
            r5 = move-exception
        L_0x0038:
            if (r0 == 0) goto L_0x003d
            r0.close()
        L_0x003d:
            goto L_0x003f
        L_0x003e:
            throw r5
        L_0x003f:
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.signature.Base64Decoder.main(java.lang.String[]):void");
    }
}
