package okhttp3.internal.publicsuffix;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.net.IDN;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PublicSuffixDatabase {
    private static final String[] EMPTY_RULE = new String[0];
    private static final byte EXCEPTION_MARKER = 33;
    private static final String[] PREVAILING_RULE = {"*"};
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private static final byte[] WILDCARD_LABEL = {42};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static PublicSuffixDatabase get() {
        return instance;
    }

    public String getEffectiveTldPlusOne(String str) {
        int i;
        int i2;
        if (str != null) {
            String str2 = "\\.";
            String[] split = IDN.toUnicode(str).split(str2);
            String[] findMatchingRule = findMatchingRule(split);
            if (split.length == findMatchingRule.length && findMatchingRule[0].charAt(0) != '!') {
                return null;
            }
            if (findMatchingRule[0].charAt(0) == '!') {
                i2 = split.length;
                i = findMatchingRule.length;
            } else {
                i2 = split.length;
                i = findMatchingRule.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split(str2);
            for (int i3 = i2 - i; i3 < split2.length; i3++) {
                sb.append(split2[i3]);
                sb.append('.');
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        throw new NullPointerException("domain == null");
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x009b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String[] findMatchingRule(java.lang.String[] r8) {
        /*
            r7 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.listRead
            boolean r0 = r0.get()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0016
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.listRead
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0016
            r7.readTheListUninterruptibly()
            goto L_0x0023
        L_0x0016:
            java.util.concurrent.CountDownLatch r0 = r7.readCompleteLatch     // Catch:{ InterruptedException -> 0x001c }
            r0.await()     // Catch:{ InterruptedException -> 0x001c }
            goto L_0x0023
        L_0x001c:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x0023:
            monitor-enter(r7)
            byte[] r0 = r7.publicSuffixListBytes     // Catch:{ all -> 0x00c7 }
            if (r0 == 0) goto L_0x00bf
            monitor-exit(r7)     // Catch:{ all -> 0x00c7 }
            int r0 = r8.length
            byte[][] r0 = new byte[r0][]
            r3 = 0
        L_0x002d:
            int r4 = r8.length
            if (r3 >= r4) goto L_0x003d
            r4 = r8[r3]
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r4 = r4.getBytes(r5)
            r0[r3] = r4
            int r3 = r3 + 1
            goto L_0x002d
        L_0x003d:
            r8 = 0
        L_0x003e:
            int r3 = r0.length
            r4 = 0
            if (r8 >= r3) goto L_0x004e
            byte[] r3 = r7.publicSuffixListBytes
            java.lang.String r3 = binarySearchBytes(r3, r0, r8)
            if (r3 == 0) goto L_0x004b
            goto L_0x004f
        L_0x004b:
            int r8 = r8 + 1
            goto L_0x003e
        L_0x004e:
            r3 = r4
        L_0x004f:
            int r8 = r0.length
            if (r8 <= r2) goto L_0x006d
            java.lang.Object r8 = r0.clone()
            byte[][] r8 = (byte[][]) r8
            r5 = 0
        L_0x0059:
            int r6 = r8.length
            int r6 = r6 - r2
            if (r5 >= r6) goto L_0x006d
            byte[] r6 = WILDCARD_LABEL
            r8[r5] = r6
            byte[] r6 = r7.publicSuffixListBytes
            java.lang.String r6 = binarySearchBytes(r6, r8, r5)
            if (r6 == 0) goto L_0x006a
            goto L_0x006e
        L_0x006a:
            int r5 = r5 + 1
            goto L_0x0059
        L_0x006d:
            r6 = r4
        L_0x006e:
            if (r6 == 0) goto L_0x0080
        L_0x0070:
            int r8 = r0.length
            int r8 = r8 - r2
            if (r1 >= r8) goto L_0x0080
            byte[] r8 = r7.publicSuffixExceptionListBytes
            java.lang.String r8 = binarySearchBytes(r8, r0, r1)
            if (r8 == 0) goto L_0x007d
            goto L_0x0081
        L_0x007d:
            int r1 = r1 + 1
            goto L_0x0070
        L_0x0080:
            r8 = r4
        L_0x0081:
            if (r8 == 0) goto L_0x009b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "!"
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            java.lang.String r0 = "\\."
            java.lang.String[] r8 = r8.split(r0)
            return r8
        L_0x009b:
            if (r3 != 0) goto L_0x00a2
            if (r6 != 0) goto L_0x00a2
            java.lang.String[] r8 = PREVAILING_RULE
            return r8
        L_0x00a2:
            if (r3 == 0) goto L_0x00ab
            java.lang.String r8 = "\\."
            java.lang.String[] r8 = r3.split(r8)
            goto L_0x00ad
        L_0x00ab:
            java.lang.String[] r8 = EMPTY_RULE
        L_0x00ad:
            if (r6 == 0) goto L_0x00b6
            java.lang.String r0 = "\\."
            java.lang.String[] r0 = r6.split(r0)
            goto L_0x00b8
        L_0x00b6:
            java.lang.String[] r0 = EMPTY_RULE
        L_0x00b8:
            int r1 = r8.length
            int r2 = r0.length
            if (r1 <= r2) goto L_0x00bd
            goto L_0x00be
        L_0x00bd:
            r8 = r0
        L_0x00be:
            return r8
        L_0x00bf:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00c7 }
            java.lang.String r0 = "Unable to load publicsuffixes.gz resource from the classpath."
            r8.<init>(r0)     // Catch:{ all -> 0x00c7 }
            throw r8     // Catch:{ all -> 0x00c7 }
        L_0x00c7:
            r8 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x00c7 }
            goto L_0x00cb
        L_0x00ca:
            throw r8
        L_0x00cb:
            goto L_0x00ca
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.findMatchingRule(java.lang.String[]):java.lang.String[]");
    }

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        byte b;
        int i3;
        byte[] bArr3 = bArr;
        byte[][] bArr4 = bArr2;
        int length = bArr3.length;
        int i4 = 0;
        while (i4 < length) {
            int i5 = (i4 + length) / 2;
            while (i5 > -1 && bArr3[i5] != 10) {
                i5--;
            }
            int i6 = i5 + 1;
            int i7 = 1;
            while (true) {
                i2 = i6 + i7;
                if (bArr3[i2] == 10) {
                    break;
                }
                i7++;
            }
            int i8 = i2 - i6;
            int i9 = i;
            boolean z = false;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (z) {
                    z = false;
                    b = 46;
                } else {
                    b = bArr4[i9][i10] & Draft_75.END_OF_FRAME;
                }
                i3 = b - (bArr3[i6 + i11] & Draft_75.END_OF_FRAME);
                if (i3 == 0) {
                    i11++;
                    i10++;
                    if (i11 == i8) {
                        break;
                    } else if (bArr4[i9].length == i10) {
                        if (i9 == bArr4.length - 1) {
                            break;
                        }
                        i9++;
                        z = true;
                        i10 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i3 >= 0) {
                if (i3 <= 0) {
                    int i12 = i8 - i11;
                    int length2 = bArr4[i9].length - i10;
                    while (true) {
                        i9++;
                        if (i9 >= bArr4.length) {
                            break;
                        }
                        length2 += bArr4[i9].length;
                    }
                    if (length2 >= i12) {
                        if (length2 <= i12) {
                            return new String(bArr3, i6, i8, StandardCharsets.UTF_8);
                        }
                    }
                }
                i4 = i2 + 1;
            }
            length = i6 - 1;
        }
        return null;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0025 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void readTheListUninterruptibly() {
        /*
            r5 = this;
            r0 = 0
        L_0x0001:
            r5.readTheList()     // Catch:{ InterruptedIOException -> 0x0025, IOException -> 0x0010 }
            if (r0 == 0) goto L_0x000d
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x000d:
            return
        L_0x000e:
            r1 = move-exception
            goto L_0x002a
        L_0x0010:
            r1 = move-exception
            okhttp3.internal.platform.Platform r2 = okhttp3.internal.platform.Platform.get()     // Catch:{ all -> 0x000e }
            r3 = 5
            java.lang.String r4 = "Failed to read public suffix list"
            r2.log(r3, r4, r1)     // Catch:{ all -> 0x000e }
            if (r0 == 0) goto L_0x0024
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x0024:
            return
        L_0x0025:
            java.lang.Thread.interrupted()     // Catch:{ all -> 0x000e }
            r0 = 1
            goto L_0x0001
        L_0x002a:
            if (r0 == 0) goto L_0x0033
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x0033:
            goto L_0x0035
        L_0x0034:
            throw r1
        L_0x0035:
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.readTheListUninterruptibly():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003f, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0043, code lost:
        if (r0 != null) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0045, code lost:
        if (r1 != null) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004c, code lost:
        r1.addSuppressed(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0050, code lost:
        r0.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void readTheList() throws java.io.IOException {
        /*
            r4 = this;
            java.lang.Class<okhttp3.internal.publicsuffix.PublicSuffixDatabase> r0 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.class
            java.lang.String r1 = "publicsuffixes.gz"
            java.io.InputStream r0 = r0.getResourceAsStream(r1)
            if (r0 != 0) goto L_0x000b
            return
        L_0x000b:
            okio.GzipSource r1 = new okio.GzipSource
            okio.Source r0 = okio.Okio.source(r0)
            r1.<init>(r0)
            okio.BufferedSource r0 = okio.Okio.buffer(r1)
            r1 = 0
            int r2 = r0.readInt()     // Catch:{ Throwable -> 0x0041 }
            byte[] r2 = new byte[r2]     // Catch:{ Throwable -> 0x0041 }
            r0.readFully(r2)     // Catch:{ Throwable -> 0x0041 }
            int r3 = r0.readInt()     // Catch:{ Throwable -> 0x0041 }
            byte[] r3 = new byte[r3]     // Catch:{ Throwable -> 0x0041 }
            r0.readFully(r3)     // Catch:{ Throwable -> 0x0041 }
            if (r0 == 0) goto L_0x0030
            r0.close()
        L_0x0030:
            monitor-enter(r4)
            r4.publicSuffixListBytes = r2     // Catch:{ all -> 0x003c }
            r4.publicSuffixExceptionListBytes = r3     // Catch:{ all -> 0x003c }
            monitor-exit(r4)     // Catch:{ all -> 0x003c }
            java.util.concurrent.CountDownLatch r0 = r4.readCompleteLatch
            r0.countDown()
            return
        L_0x003c:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x003c }
            throw r0
        L_0x003f:
            r2 = move-exception
            goto L_0x0043
        L_0x0041:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x003f }
        L_0x0043:
            if (r0 == 0) goto L_0x0053
            if (r1 == 0) goto L_0x0050
            r0.close()     // Catch:{ Throwable -> 0x004b }
            goto L_0x0053
        L_0x004b:
            r0 = move-exception
            r1.addSuppressed(r0)
            goto L_0x0053
        L_0x0050:
            r0.close()
        L_0x0053:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.readTheList():void");
    }

    /* access modifiers changed from: 0000 */
    public void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
