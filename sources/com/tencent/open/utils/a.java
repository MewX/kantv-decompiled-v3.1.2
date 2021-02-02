package com.tencent.open.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;

/* compiled from: ProGuard */
public final class a {
    private static final l a = new l(101010256);
    /* access modifiers changed from: private */
    public static final m b = new m(38651);

    /* renamed from: com.tencent.open.utils.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    private static class C0013a {
        Properties a;
        byte[] b;

        private C0013a() {
            this.a = new Properties();
        }

        /* access modifiers changed from: 0000 */
        public void a(byte[] bArr) throws IOException {
            if (bArr != null) {
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                int length = a.b.a().length;
                byte[] bArr2 = new byte[length];
                wrap.get(bArr2);
                if (!a.b.equals(new m(bArr2))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("unknow protocl [");
                    sb.append(Arrays.toString(bArr));
                    sb.append("]");
                    throw new ProtocolException(sb.toString());
                } else if (bArr.length - length > 2) {
                    byte[] bArr3 = new byte[2];
                    wrap.get(bArr3);
                    int b2 = new m(bArr3).b();
                    if ((bArr.length - length) - 2 >= b2) {
                        byte[] bArr4 = new byte[b2];
                        wrap.get(bArr4);
                        this.a.load(new ByteArrayInputStream(bArr4));
                        int length2 = ((bArr.length - length) - b2) - 2;
                        if (length2 > 0) {
                            this.b = new byte[length2];
                            wrap.get(this.b);
                        }
                    }
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ApkExternalInfo [p=");
            sb.append(this.a);
            sb.append(", otherData=");
            sb.append(Arrays.toString(this.b));
            sb.append("]");
            return sb.toString();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.io.File r3, java.lang.String r4) throws java.io.IOException {
        /*
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch:{ all -> 0x0026 }
            java.lang.String r2 = "r"
            r1.<init>(r3, r2)     // Catch:{ all -> 0x0026 }
            byte[] r3 = a(r1)     // Catch:{ all -> 0x0024 }
            if (r3 != 0) goto L_0x0012
            r1.close()
            return r0
        L_0x0012:
            com.tencent.open.utils.a$a r2 = new com.tencent.open.utils.a$a     // Catch:{ all -> 0x0024 }
            r2.<init>()     // Catch:{ all -> 0x0024 }
            r2.a(r3)     // Catch:{ all -> 0x0024 }
            java.util.Properties r3 = r2.a     // Catch:{ all -> 0x0024 }
            java.lang.String r3 = r3.getProperty(r4)     // Catch:{ all -> 0x0024 }
            r1.close()
            return r3
        L_0x0024:
            r3 = move-exception
            goto L_0x0028
        L_0x0026:
            r3 = move-exception
            r1 = r0
        L_0x0028:
            if (r1 == 0) goto L_0x002d
            r1.close()
        L_0x002d:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.a.a(java.io.File, java.lang.String):java.lang.String");
    }

    public static String a(File file) throws IOException {
        return a(file, "channelNo");
    }

    private static byte[] a(RandomAccessFile randomAccessFile) throws IOException {
        boolean z;
        long length = randomAccessFile.length() - 22;
        randomAccessFile.seek(length);
        byte[] a2 = a.a();
        int read = randomAccessFile.read();
        while (true) {
            z = true;
            if (read != -1) {
                if (read == a2[0] && randomAccessFile.read() == a2[1] && randomAccessFile.read() == a2[2] && randomAccessFile.read() == a2[3]) {
                    break;
                }
                length--;
                randomAccessFile.seek(length);
                read = randomAccessFile.read();
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            randomAccessFile.seek(length + 16 + 4);
            byte[] bArr = new byte[2];
            randomAccessFile.readFully(bArr);
            int b2 = new m(bArr).b();
            if (b2 == 0) {
                return null;
            }
            byte[] bArr2 = new byte[b2];
            randomAccessFile.read(bArr2);
            return bArr2;
        }
        throw new ZipException("archive is not a ZIP archive");
    }
}
