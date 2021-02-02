package com.bumptech.glide.gifdecoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

public class GifDecoder {
    private static final Config BITMAP_CONFIG = Config.ARGB_8888;
    private static final int DISPOSAL_BACKGROUND = 2;
    private static final int DISPOSAL_NONE = 1;
    private static final int DISPOSAL_PREVIOUS = 3;
    private static final int DISPOSAL_UNSPECIFIED = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    private static final String TAG = "GifDecoder";
    public static final int TOTAL_ITERATION_COUNT_FOREVER = 0;
    private int[] act;
    private BitmapProvider bitmapProvider;
    private final byte[] block = new byte[256];
    private byte[] data;
    private int framePointer;
    private GifHeader header;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private final int[] pct = new int[256];
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Config config);

        void release(Bitmap bitmap);
    }

    public GifDecoder(BitmapProvider bitmapProvider2) {
        this.bitmapProvider = bitmapProvider2;
        this.header = new GifHeader();
    }

    public int getWidth() {
        return this.header.width;
    }

    public int getHeight() {
        return this.header.height;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getStatus() {
        return this.status;
    }

    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    public int getDelay(int i) {
        if (i < 0 || i >= this.header.frameCount) {
            return -1;
        }
        return ((GifFrame) this.header.frames.get(i)).delay;
    }

    public int getNextDelay() {
        if (this.header.frameCount > 0) {
            int i = this.framePointer;
            if (i >= 0) {
                return getDelay(i);
            }
        }
        return -1;
    }

    public int getFrameCount() {
        return this.header.frameCount;
    }

    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    @Deprecated
    public int getLoopCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        return this.header.loopCount;
    }

    public int getNetscapeLoopCount() {
        return this.header.loopCount;
    }

    public int getTotalIterationCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        if (this.header.loopCount == 0) {
            return 0;
        }
        return this.header.loopCount + 1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00c9, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.graphics.Bitmap getNextFrame() {
        /*
            r7 = this;
            monitor-enter(r7)
            com.bumptech.glide.gifdecoder.GifHeader r0 = r7.header     // Catch:{ all -> 0x00ca }
            int r0 = r0.frameCount     // Catch:{ all -> 0x00ca }
            r1 = 3
            r2 = 1
            if (r0 <= 0) goto L_0x000d
            int r0 = r7.framePointer     // Catch:{ all -> 0x00ca }
            if (r0 >= 0) goto L_0x003b
        L_0x000d:
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ca }
            if (r0 == 0) goto L_0x0039
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            r3.<init>()     // Catch:{ all -> 0x00ca }
            java.lang.String r4 = "unable to decode frame, frameCount="
            r3.append(r4)     // Catch:{ all -> 0x00ca }
            com.bumptech.glide.gifdecoder.GifHeader r4 = r7.header     // Catch:{ all -> 0x00ca }
            int r4 = r4.frameCount     // Catch:{ all -> 0x00ca }
            r3.append(r4)     // Catch:{ all -> 0x00ca }
            java.lang.String r4 = " framePointer="
            r3.append(r4)     // Catch:{ all -> 0x00ca }
            int r4 = r7.framePointer     // Catch:{ all -> 0x00ca }
            r3.append(r4)     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00ca }
            android.util.Log.d(r0, r3)     // Catch:{ all -> 0x00ca }
        L_0x0039:
            r7.status = r2     // Catch:{ all -> 0x00ca }
        L_0x003b:
            int r0 = r7.status     // Catch:{ all -> 0x00ca }
            r3 = 0
            if (r0 == r2) goto L_0x00a8
            int r0 = r7.status     // Catch:{ all -> 0x00ca }
            r4 = 2
            if (r0 != r4) goto L_0x0046
            goto L_0x00a8
        L_0x0046:
            r0 = 0
            r7.status = r0     // Catch:{ all -> 0x00ca }
            com.bumptech.glide.gifdecoder.GifHeader r4 = r7.header     // Catch:{ all -> 0x00ca }
            java.util.List<com.bumptech.glide.gifdecoder.GifFrame> r4 = r4.frames     // Catch:{ all -> 0x00ca }
            int r5 = r7.framePointer     // Catch:{ all -> 0x00ca }
            java.lang.Object r4 = r4.get(r5)     // Catch:{ all -> 0x00ca }
            com.bumptech.glide.gifdecoder.GifFrame r4 = (com.bumptech.glide.gifdecoder.GifFrame) r4     // Catch:{ all -> 0x00ca }
            int r5 = r7.framePointer     // Catch:{ all -> 0x00ca }
            int r5 = r5 - r2
            if (r5 < 0) goto L_0x0065
            com.bumptech.glide.gifdecoder.GifHeader r6 = r7.header     // Catch:{ all -> 0x00ca }
            java.util.List<com.bumptech.glide.gifdecoder.GifFrame> r6 = r6.frames     // Catch:{ all -> 0x00ca }
            java.lang.Object r5 = r6.get(r5)     // Catch:{ all -> 0x00ca }
            com.bumptech.glide.gifdecoder.GifFrame r5 = (com.bumptech.glide.gifdecoder.GifFrame) r5     // Catch:{ all -> 0x00ca }
            goto L_0x0066
        L_0x0065:
            r5 = r3
        L_0x0066:
            int[] r6 = r4.lct     // Catch:{ all -> 0x00ca }
            if (r6 == 0) goto L_0x006d
            int[] r6 = r4.lct     // Catch:{ all -> 0x00ca }
            goto L_0x0071
        L_0x006d:
            com.bumptech.glide.gifdecoder.GifHeader r6 = r7.header     // Catch:{ all -> 0x00ca }
            int[] r6 = r6.gct     // Catch:{ all -> 0x00ca }
        L_0x0071:
            r7.act = r6     // Catch:{ all -> 0x00ca }
            int[] r6 = r7.act     // Catch:{ all -> 0x00ca }
            if (r6 != 0) goto L_0x008a
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ca }
            if (r0 == 0) goto L_0x0086
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            java.lang.String r1 = "No Valid Color Table"
            android.util.Log.d(r0, r1)     // Catch:{ all -> 0x00ca }
        L_0x0086:
            r7.status = r2     // Catch:{ all -> 0x00ca }
            monitor-exit(r7)
            return r3
        L_0x008a:
            boolean r1 = r4.transparency     // Catch:{ all -> 0x00ca }
            if (r1 == 0) goto L_0x00a2
            int[] r1 = r7.act     // Catch:{ all -> 0x00ca }
            int[] r2 = r7.pct     // Catch:{ all -> 0x00ca }
            int[] r3 = r7.act     // Catch:{ all -> 0x00ca }
            int r3 = r3.length     // Catch:{ all -> 0x00ca }
            java.lang.System.arraycopy(r1, r0, r2, r0, r3)     // Catch:{ all -> 0x00ca }
            int[] r1 = r7.pct     // Catch:{ all -> 0x00ca }
            r7.act = r1     // Catch:{ all -> 0x00ca }
            int[] r1 = r7.act     // Catch:{ all -> 0x00ca }
            int r2 = r4.transIndex     // Catch:{ all -> 0x00ca }
            r1[r2] = r0     // Catch:{ all -> 0x00ca }
        L_0x00a2:
            android.graphics.Bitmap r0 = r7.setPixels(r4, r5)     // Catch:{ all -> 0x00ca }
            monitor-exit(r7)
            return r0
        L_0x00a8:
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ca }
            if (r0 == 0) goto L_0x00c8
            java.lang.String r0 = TAG     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            r1.<init>()     // Catch:{ all -> 0x00ca }
            java.lang.String r2 = "Unable to decode frame, status="
            r1.append(r2)     // Catch:{ all -> 0x00ca }
            int r2 = r7.status     // Catch:{ all -> 0x00ca }
            r1.append(r2)     // Catch:{ all -> 0x00ca }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00ca }
            android.util.Log.d(r0, r1)     // Catch:{ all -> 0x00ca }
        L_0x00c8:
            monitor-exit(r7)
            return r3
        L_0x00ca:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.getNextFrame():android.graphics.Bitmap");
    }

    public int read(InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Error reading data from stream", e);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Error closing stream", e2);
            }
        }
        return this.status;
    }

    public void clear() {
        this.header = null;
        this.data = null;
        this.mainPixels = null;
        this.mainScratch = null;
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
    }

    public void setData(GifHeader gifHeader, byte[] bArr) {
        this.header = gifHeader;
        this.data = bArr;
        this.status = 0;
        this.framePointer = -1;
        this.rawData = ByteBuffer.wrap(bArr);
        this.rawData.rewind();
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        Iterator it = gifHeader.frames.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((GifFrame) it.next()).dispose == 3) {
                    this.savePrevious = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.mainPixels = new byte[(gifHeader.width * gifHeader.height)];
        this.mainScratch = new int[(gifHeader.width * gifHeader.height)];
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    public int read(byte[] bArr) {
        this.data = bArr;
        this.header = getHeaderParser().setData(bArr).parseHeader();
        if (bArr != null) {
            this.rawData = ByteBuffer.wrap(bArr);
            this.rawData.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.mainPixels = new byte[(this.header.width * this.header.height)];
            this.mainScratch = new int[(this.header.width * this.header.height)];
            this.savePrevious = false;
            Iterator it = this.header.frames.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((GifFrame) it.next()).dispose == 3) {
                        this.savePrevious = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        return this.status;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (r0.header.bgIndex == r1.transIndex) goto L_0x0036;
     */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00e3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap setPixels(com.bumptech.glide.gifdecoder.GifFrame r18, com.bumptech.glide.gifdecoder.GifFrame r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            com.bumptech.glide.gifdecoder.GifHeader r3 = r0.header
            int r3 = r3.width
            com.bumptech.glide.gifdecoder.GifHeader r4 = r0.header
            int r12 = r4.height
            int[] r13 = r0.mainScratch
            r14 = 0
            if (r2 != 0) goto L_0x0016
            java.util.Arrays.fill(r13, r14)
        L_0x0016:
            r15 = 3
            r11 = 2
            if (r2 == 0) goto L_0x0066
            int r4 = r2.dispose
            if (r4 <= 0) goto L_0x0066
            int r4 = r2.dispose
            if (r4 != r11) goto L_0x0052
            boolean r4 = r1.transparency
            if (r4 != 0) goto L_0x0036
            com.bumptech.glide.gifdecoder.GifHeader r4 = r0.header
            int r4 = r4.bgColor
            int[] r5 = r1.lct
            if (r5 == 0) goto L_0x0037
            com.bumptech.glide.gifdecoder.GifHeader r5 = r0.header
            int r5 = r5.bgIndex
            int r6 = r1.transIndex
            if (r5 != r6) goto L_0x0037
        L_0x0036:
            r4 = 0
        L_0x0037:
            int r5 = r2.iy
            int r5 = r5 * r3
            int r6 = r2.ix
            int r5 = r5 + r6
            int r6 = r2.ih
            int r6 = r6 * r3
            int r6 = r6 + r5
        L_0x0043:
            if (r5 >= r6) goto L_0x0066
            int r7 = r2.iw
            int r7 = r7 + r5
            r8 = r5
        L_0x0049:
            if (r8 >= r7) goto L_0x0050
            r13[r8] = r4
            int r8 = r8 + 1
            goto L_0x0049
        L_0x0050:
            int r5 = r5 + r3
            goto L_0x0043
        L_0x0052:
            int r2 = r2.dispose
            if (r2 != r15) goto L_0x0066
            android.graphics.Bitmap r4 = r0.previousImage
            if (r4 == 0) goto L_0x0066
            r6 = 0
            r8 = 0
            r9 = 0
            r5 = r13
            r7 = r3
            r10 = r3
            r2 = 2
            r11 = r12
            r4.getPixels(r5, r6, r7, r8, r9, r10, r11)
            goto L_0x0067
        L_0x0066:
            r2 = 2
        L_0x0067:
            r17.decodeBitmapData(r18)
            r4 = 8
            r11 = 1
            r4 = 0
            r5 = 1
            r6 = 8
        L_0x0071:
            int r7 = r1.ih
            if (r14 >= r7) goto L_0x00d3
            boolean r7 = r1.interlace
            if (r7 == 0) goto L_0x0091
            int r7 = r1.ih
            r8 = 4
            if (r4 < r7) goto L_0x008e
            int r5 = r5 + 1
            if (r5 == r2) goto L_0x008d
            if (r5 == r15) goto L_0x008a
            if (r5 == r8) goto L_0x0087
            goto L_0x008e
        L_0x0087:
            r4 = 1
            r6 = 2
            goto L_0x008e
        L_0x008a:
            r4 = 2
            r6 = 4
            goto L_0x008e
        L_0x008d:
            r4 = 4
        L_0x008e:
            int r7 = r4 + r6
            goto L_0x0093
        L_0x0091:
            r7 = r4
            r4 = r14
        L_0x0093:
            int r8 = r1.iy
            int r4 = r4 + r8
            com.bumptech.glide.gifdecoder.GifHeader r8 = r0.header
            int r8 = r8.height
            if (r4 >= r8) goto L_0x00cf
            com.bumptech.glide.gifdecoder.GifHeader r8 = r0.header
            int r8 = r8.width
            int r4 = r4 * r8
            int r8 = r1.ix
            int r8 = r8 + r4
            int r9 = r1.iw
            int r9 = r9 + r8
            com.bumptech.glide.gifdecoder.GifHeader r10 = r0.header
            int r10 = r10.width
            int r10 = r10 + r4
            if (r10 >= r9) goto L_0x00b4
            com.bumptech.glide.gifdecoder.GifHeader r9 = r0.header
            int r9 = r9.width
            int r9 = r9 + r4
        L_0x00b4:
            int r4 = r1.iw
            int r4 = r4 * r14
        L_0x00b8:
            if (r8 >= r9) goto L_0x00cf
            byte[] r10 = r0.mainPixels
            int r16 = r4 + 1
            byte r4 = r10[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int[] r10 = r0.act
            r4 = r10[r4]
            if (r4 == 0) goto L_0x00ca
            r13[r8] = r4
        L_0x00ca:
            int r8 = r8 + 1
            r4 = r16
            goto L_0x00b8
        L_0x00cf:
            int r14 = r14 + 1
            r4 = r7
            goto L_0x0071
        L_0x00d3:
            boolean r2 = r0.savePrevious
            if (r2 == 0) goto L_0x00f5
            int r2 = r1.dispose
            if (r2 == 0) goto L_0x00df
            int r1 = r1.dispose
            if (r1 != r11) goto L_0x00f5
        L_0x00df:
            android.graphics.Bitmap r1 = r0.previousImage
            if (r1 != 0) goto L_0x00e9
            android.graphics.Bitmap r1 = r17.getNextBitmap()
            r0.previousImage = r1
        L_0x00e9:
            android.graphics.Bitmap r4 = r0.previousImage
            r6 = 0
            r8 = 0
            r9 = 0
            r5 = r13
            r7 = r3
            r10 = r3
            r11 = r12
            r4.setPixels(r5, r6, r7, r8, r9, r10, r11)
        L_0x00f5:
            android.graphics.Bitmap r1 = r17.getNextBitmap()
            r6 = 0
            r8 = 0
            r9 = 0
            r4 = r1
            r5 = r13
            r7 = r3
            r10 = r3
            r11 = r12
            r4.setPixels(r5, r6, r7, r8, r9, r10, r11)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.setPixels(com.bumptech.glide.gifdecoder.GifFrame, com.bumptech.glide.gifdecoder.GifFrame):android.graphics.Bitmap");
    }

    /* JADX WARNING: type inference failed for: r17v0 */
    /* JADX WARNING: type inference failed for: r17v1 */
    /* JADX WARNING: type inference failed for: r23v0 */
    /* JADX WARNING: type inference failed for: r23v1 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r17v2 */
    /* JADX WARNING: type inference failed for: r17v3 */
    /* JADX WARNING: type inference failed for: r15v4 */
    /* JADX WARNING: type inference failed for: r23v2 */
    /* JADX WARNING: type inference failed for: r17v4 */
    /* JADX WARNING: type inference failed for: r5v11, types: [short[]] */
    /* JADX WARNING: type inference failed for: r2v20, types: [short] */
    /* JADX WARNING: type inference failed for: r2v22, types: [int] */
    /* JADX WARNING: type inference failed for: r23v7 */
    /* JADX WARNING: type inference failed for: r17v5 */
    /* JADX WARNING: type inference failed for: r23v8 */
    /* JADX WARNING: type inference failed for: r17v6 */
    /* JADX WARNING: type inference failed for: r15v6 */
    /* JADX WARNING: type inference failed for: r23v9 */
    /* JADX WARNING: type inference failed for: r2v35 */
    /* JADX WARNING: type inference failed for: r23v10 */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short, code=int, for r2v20, types: [short] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short[], code=null, for r5v11, types: [short[]] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r17v3
      assigns: []
      uses: []
      mth insns count: 197
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
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0139 A[LOOP:4: B:58:0x0137->B:59:0x0139, LOOP_END] */
    /* JADX WARNING: Unknown variable types count: 11 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void decodeBitmapData(com.bumptech.glide.gifdecoder.GifFrame r28) {
        /*
            r27 = this;
            r0 = r27
            r1 = r28
            if (r1 == 0) goto L_0x000d
            java.nio.ByteBuffer r2 = r0.rawData
            int r3 = r1.bufferFrameStart
            r2.position(r3)
        L_0x000d:
            if (r1 != 0) goto L_0x001a
            com.bumptech.glide.gifdecoder.GifHeader r1 = r0.header
            int r1 = r1.width
            com.bumptech.glide.gifdecoder.GifHeader r2 = r0.header
            int r2 = r2.height
            int r1 = r1 * r2
            goto L_0x0020
        L_0x001a:
            int r2 = r1.iw
            int r1 = r1.ih
            int r1 = r1 * r2
        L_0x0020:
            byte[] r2 = r0.mainPixels
            if (r2 == 0) goto L_0x0027
            int r2 = r2.length
            if (r2 >= r1) goto L_0x002b
        L_0x0027:
            byte[] r2 = new byte[r1]
            r0.mainPixels = r2
        L_0x002b:
            short[] r2 = r0.prefix
            r3 = 4096(0x1000, float:5.74E-42)
            if (r2 != 0) goto L_0x0035
            short[] r2 = new short[r3]
            r0.prefix = r2
        L_0x0035:
            byte[] r2 = r0.suffix
            if (r2 != 0) goto L_0x003d
            byte[] r2 = new byte[r3]
            r0.suffix = r2
        L_0x003d:
            byte[] r2 = r0.pixelStack
            if (r2 != 0) goto L_0x0047
            r2 = 4097(0x1001, float:5.741E-42)
            byte[] r2 = new byte[r2]
            r0.pixelStack = r2
        L_0x0047:
            int r2 = r27.read()
            r4 = 1
            int r5 = r4 << r2
            int r6 = r5 + 1
            int r7 = r5 + 2
            int r2 = r2 + r4
            int r8 = r4 << r2
            int r8 = r8 - r4
            r9 = 0
            r10 = 0
        L_0x0058:
            if (r10 >= r5) goto L_0x0066
            short[] r11 = r0.prefix
            r11[r10] = r9
            byte[] r11 = r0.suffix
            byte r12 = (byte) r10
            r11[r10] = r12
            int r10 = r10 + 1
            goto L_0x0058
        L_0x0066:
            r10 = -1
            r21 = r2
            r19 = r7
            r20 = r8
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r22 = -1
        L_0x007a:
            if (r11 >= r1) goto L_0x0173
            r9 = 3
            if (r12 != 0) goto L_0x008a
            int r12 = r27.readBlock()
            if (r12 > 0) goto L_0x0089
            r0.status = r9
            goto L_0x0173
        L_0x0089:
            r14 = 0
        L_0x008a:
            byte[] r3 = r0.block
            byte r3 = r3[r14]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r15
            int r13 = r13 + r3
            int r15 = r15 + 8
            int r14 = r14 + r4
            int r12 = r12 + r10
            r23 = r17
            r3 = r21
            r4 = r22
            r26 = r16
            r16 = r11
            r11 = r19
            r19 = r18
            r18 = r26
        L_0x00a6:
            if (r15 < r3) goto L_0x0157
            r10 = r13 & r20
            int r13 = r13 >> r3
            int r15 = r15 - r3
            if (r10 != r5) goto L_0x00b5
            r3 = r2
            r11 = r7
            r20 = r8
            r4 = -1
        L_0x00b3:
            r10 = -1
            goto L_0x00a6
        L_0x00b5:
            if (r10 <= r11) goto L_0x00ba
            r0.status = r9
            goto L_0x00bc
        L_0x00ba:
            if (r10 != r6) goto L_0x00c9
        L_0x00bc:
            r21 = r3
            r22 = r4
            r17 = r23
            r3 = 4096(0x1000, float:5.74E-42)
            r4 = 1
            r9 = 0
            r10 = -1
            goto L_0x0167
        L_0x00c9:
            r9 = -1
            if (r4 != r9) goto L_0x00dd
            byte[] r4 = r0.pixelStack
            int r21 = r19 + 1
            byte[] r9 = r0.suffix
            byte r9 = r9[r10]
            r4[r19] = r9
            r4 = r10
            r23 = r4
            r19 = r21
            r9 = 3
            goto L_0x00b3
        L_0x00dd:
            if (r10 < r11) goto L_0x00ee
            byte[] r9 = r0.pixelStack
            int r21 = r19 + 1
            r24 = r2
            r2 = r23
            byte r2 = (byte) r2
            r9[r19] = r2
            r2 = r4
            r19 = r21
            goto L_0x00f1
        L_0x00ee:
            r24 = r2
            r2 = r10
        L_0x00f1:
            if (r2 < r5) goto L_0x0108
            byte[] r9 = r0.pixelStack
            int r21 = r19 + 1
            r23 = r5
            byte[] r5 = r0.suffix
            byte r5 = r5[r2]
            r9[r19] = r5
            short[] r5 = r0.prefix
            short r2 = r5[r2]
            r19 = r21
            r5 = r23
            goto L_0x00f1
        L_0x0108:
            r23 = r5
            byte[] r5 = r0.suffix
            byte r2 = r5[r2]
            r2 = r2 & 255(0xff, float:3.57E-43)
            byte[] r9 = r0.pixelStack
            int r21 = r19 + 1
            r25 = r6
            byte r6 = (byte) r2
            r9[r19] = r6
            r9 = 4096(0x1000, float:5.74E-42)
            if (r11 >= r9) goto L_0x0133
            short[] r9 = r0.prefix
            short r4 = (short) r4
            r9[r11] = r4
            r5[r11] = r6
            int r11 = r11 + 1
            r4 = r11 & r20
            if (r4 != 0) goto L_0x0133
            r5 = 4096(0x1000, float:5.74E-42)
            if (r11 >= r5) goto L_0x0135
            int r3 = r3 + 1
            int r20 = r20 + r11
            goto L_0x0135
        L_0x0133:
            r5 = 4096(0x1000, float:5.74E-42)
        L_0x0135:
            r19 = r21
        L_0x0137:
            if (r19 <= 0) goto L_0x014a
            int r19 = r19 + -1
            byte[] r4 = r0.mainPixels
            int r6 = r18 + 1
            byte[] r9 = r0.pixelStack
            byte r9 = r9[r19]
            r4[r18] = r9
            int r16 = r16 + 1
            r18 = r6
            goto L_0x0137
        L_0x014a:
            r4 = r10
            r5 = r23
            r6 = r25
            r9 = 3
            r10 = -1
            r23 = r2
            r2 = r24
            goto L_0x00a6
        L_0x0157:
            r24 = r2
            r2 = r23
            r17 = r2
            r21 = r3
            r22 = r4
            r2 = r24
            r3 = 4096(0x1000, float:5.74E-42)
            r4 = 1
            r9 = 0
        L_0x0167:
            r26 = r19
            r19 = r11
            r11 = r16
            r16 = r18
            r18 = r26
            goto L_0x007a
        L_0x0173:
            r2 = r16
        L_0x0175:
            if (r2 >= r1) goto L_0x017f
            byte[] r3 = r0.mainPixels
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x0175
        L_0x017f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.decodeBitmapData(com.bumptech.glide.gifdecoder.GifFrame):void");
    }

    private int read() {
        try {
            return this.rawData.get() & Draft_75.END_OF_FRAME;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    private int readBlock() {
        int read = read();
        int i = 0;
        if (read > 0) {
            while (i < read) {
                int i2 = read - i;
                try {
                    this.rawData.get(this.block, i, i2);
                    i += i2;
                } catch (Exception e) {
                    Log.w(TAG, "Error Reading Block", e);
                    this.status = 1;
                }
            }
        }
        return i;
    }

    private Bitmap getNextBitmap() {
        Bitmap obtain = this.bitmapProvider.obtain(this.header.width, this.header.height, BITMAP_CONFIG);
        if (obtain == null) {
            obtain = Bitmap.createBitmap(this.header.width, this.header.height, BITMAP_CONFIG);
        }
        setAlpha(obtain);
        return obtain;
    }

    @TargetApi(12)
    private static void setAlpha(Bitmap bitmap) {
        if (VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }
}
