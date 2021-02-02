package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import com.bumptech.glide.util.ByteArrayPool;
import com.bumptech.glide.util.ExceptionCatchingInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class Downsampler implements BitmapDecoder<InputStream> {
    public static final Downsampler AT_LEAST = new Downsampler() {
        public String getId() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }

        public /* bridge */ /* synthetic */ Bitmap decode(Object obj, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) throws Exception {
            return Downsampler.super.decode((InputStream) obj, bitmapPool, i, i2, decodeFormat);
        }

        /* access modifiers changed from: protected */
        public int getSampleSize(int i, int i2, int i3, int i4) {
            return Math.min(i2 / i4, i / i3);
        }
    };
    public static final Downsampler AT_MOST = new Downsampler() {
        public String getId() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }

        public /* bridge */ /* synthetic */ Bitmap decode(Object obj, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) throws Exception {
            return Downsampler.super.decode((InputStream) obj, bitmapPool, i, i2, decodeFormat);
        }

        /* access modifiers changed from: protected */
        public int getSampleSize(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil((double) Math.max(((float) i2) / ((float) i4), ((float) i) / ((float) i3)));
            int i5 = 1;
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i5 = 0;
            }
            return max << i5;
        }
    };
    private static final int MARK_POSITION = 5242880;
    public static final Downsampler NONE = new Downsampler() {
        public String getId() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }

        /* access modifiers changed from: protected */
        public int getSampleSize(int i, int i2, int i3, int i4) {
            return 0;
        }

        public /* bridge */ /* synthetic */ Bitmap decode(Object obj, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) throws Exception {
            return Downsampler.super.decode((InputStream) obj, bitmapPool, i, i2, decodeFormat);
        }
    };
    private static final Queue<Options> OPTIONS_QUEUE = Util.createQueue(0);
    private static final String TAG = "Downsampler";
    private static final Set<ImageType> TYPES_THAT_USE_POOL = EnumSet.of(ImageType.JPEG, ImageType.PNG_A, ImageType.PNG);

    /* access modifiers changed from: protected */
    public abstract int getSampleSize(int i, int i2, int i3, int i4);

    public Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
        int i3;
        int orientation;
        BitmapPool bitmapPool2 = bitmapPool;
        String str = "Cannot reset the input stream";
        String str2 = TAG;
        ByteArrayPool byteArrayPool = ByteArrayPool.get();
        byte[] bytes = byteArrayPool.getBytes();
        byte[] bytes2 = byteArrayPool.getBytes();
        Options defaultOptions = getDefaultOptions();
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, bytes2);
        ExceptionCatchingInputStream obtain = ExceptionCatchingInputStream.obtain(recyclableBufferedInputStream);
        MarkEnforcingInputStream markEnforcingInputStream = new MarkEnforcingInputStream(obtain);
        try {
            obtain.mark(MARK_POSITION);
            try {
                orientation = new ImageHeaderParser(obtain).getOrientation();
                obtain.reset();
            } catch (IOException e) {
                if (Log.isLoggable(str2, 5)) {
                    Log.w(str2, "Cannot determine the image orientation from header", e);
                }
                try {
                    obtain.reset();
                } catch (IOException e2) {
                    IOException iOException = e2;
                    if (Log.isLoggable(str2, 5)) {
                        Log.w(str2, str, iOException);
                    }
                }
                i3 = 0;
            }
        } catch (IOException e3) {
            IOException iOException2 = e3;
            if (Log.isLoggable(str2, 5)) {
                Log.w(str2, str, iOException2);
            }
        } catch (Throwable th) {
            byteArrayPool.releaseBytes(bytes);
            byteArrayPool.releaseBytes(bytes2);
            obtain.release();
            releaseOptions(defaultOptions);
            throw th;
        }
        i3 = orientation;
        defaultOptions.inTempStorage = bytes;
        int[] dimensions = getDimensions(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
        int i4 = dimensions[0];
        int i5 = dimensions[1];
        MarkEnforcingInputStream markEnforcingInputStream2 = markEnforcingInputStream;
        Options options = defaultOptions;
        BitmapPool bitmapPool3 = bitmapPool;
        Bitmap downsampleWithSize = downsampleWithSize(markEnforcingInputStream2, recyclableBufferedInputStream, options, bitmapPool3, i4, i5, getRoundedSampleSize(TransformationUtils.getExifOrientationDegrees(i3), i4, i5, i, i2), decodeFormat);
        IOException exception = obtain.getException();
        if (exception == null) {
            Bitmap bitmap = null;
            if (downsampleWithSize != null) {
                bitmap = TransformationUtils.rotateImageExif(downsampleWithSize, bitmapPool2, i3);
                if (!downsampleWithSize.equals(bitmap) && !bitmapPool2.put(downsampleWithSize)) {
                    downsampleWithSize.recycle();
                }
            }
            byteArrayPool.releaseBytes(bytes);
            byteArrayPool.releaseBytes(bytes2);
            obtain.release();
            releaseOptions(defaultOptions);
            return bitmap;
        }
        throw new RuntimeException(exception);
    }

    private int getRoundedSampleSize(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (i5 == Integer.MIN_VALUE) {
            i5 = i3;
        }
        if (i4 == Integer.MIN_VALUE) {
            i4 = i2;
        }
        if (i == 90 || i == 270) {
            i6 = getSampleSize(i3, i2, i4, i5);
        } else {
            i6 = getSampleSize(i2, i3, i4, i5);
        }
        if (i6 == 0) {
            i7 = 0;
        } else {
            i7 = Integer.highestOneBit(i6);
        }
        return Math.max(1, i7);
    }

    private Bitmap downsampleWithSize(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, Options options, BitmapPool bitmapPool, int i, int i2, int i3, DecodeFormat decodeFormat) {
        Config config = getConfig(markEnforcingInputStream, decodeFormat);
        options.inSampleSize = i3;
        options.inPreferredConfig = config;
        if ((options.inSampleSize == 1 || 19 <= VERSION.SDK_INT) && shouldUsePool(markEnforcingInputStream)) {
            double d = (double) i;
            double d2 = (double) i3;
            Double.isNaN(d);
            Double.isNaN(d2);
            int ceil = (int) Math.ceil(d / d2);
            double d3 = (double) i2;
            Double.isNaN(d3);
            Double.isNaN(d2);
            setInBitmap(options, bitmapPool.getDirty(ceil, (int) Math.ceil(d3 / d2), config));
        }
        return decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
    }

    private static boolean shouldUsePool(InputStream inputStream) {
        String str = "Cannot reset the input stream";
        String str2 = TAG;
        if (19 <= VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        try {
            boolean contains = TYPES_THAT_USE_POOL.contains(new ImageHeaderParser(inputStream).getType());
            try {
            } catch (IOException e) {
                if (Log.isLoggable(str2, 5)) {
                    Log.w(str2, str, e);
                }
            }
            return contains;
        } catch (IOException e2) {
            if (Log.isLoggable(str2, 5)) {
                Log.w(str2, "Cannot determine the image type from header", e2);
            }
            try {
            } catch (IOException e3) {
                if (Log.isLoggable(str2, 5)) {
                    Log.w(str2, str, e3);
                }
            }
            return false;
        } finally {
            try {
                inputStream.reset();
            } catch (IOException e4) {
                if (Log.isLoggable(str2, 5)) {
                    Log.w(str2, str, e4);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002c, code lost:
        if (android.util.Log.isLoggable(r1, 5) == false) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        android.util.Log.w(r1, r0, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0058, code lost:
        if (android.util.Log.isLoggable(r1, 5) == false) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Bitmap.Config getConfig(java.io.InputStream r7, com.bumptech.glide.load.DecodeFormat r8) {
        /*
            java.lang.String r0 = "Cannot reset the input stream"
            java.lang.String r1 = "Downsampler"
            com.bumptech.glide.load.DecodeFormat r2 = com.bumptech.glide.load.DecodeFormat.ALWAYS_ARGB_8888
            if (r8 == r2) goto L_0x0072
            com.bumptech.glide.load.DecodeFormat r2 = com.bumptech.glide.load.DecodeFormat.PREFER_ARGB_8888
            if (r8 == r2) goto L_0x0072
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 16
            if (r2 != r3) goto L_0x0013
            goto L_0x0072
        L_0x0013:
            r2 = 0
            r3 = 1024(0x400, float:1.435E-42)
            r7.mark(r3)
            r3 = 5
            com.bumptech.glide.load.resource.bitmap.ImageHeaderParser r4 = new com.bumptech.glide.load.resource.bitmap.ImageHeaderParser     // Catch:{ IOException -> 0x0034 }
            r4.<init>(r7)     // Catch:{ IOException -> 0x0034 }
            boolean r2 = r4.hasAlpha()     // Catch:{ IOException -> 0x0034 }
            r7.reset()     // Catch:{ IOException -> 0x0027 }
            goto L_0x005b
        L_0x0027:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L_0x005b
        L_0x002e:
            android.util.Log.w(r1, r0, r7)
            goto L_0x005b
        L_0x0032:
            r8 = move-exception
            goto L_0x0063
        L_0x0034:
            r4 = move-exception
            boolean r5 = android.util.Log.isLoggable(r1, r3)     // Catch:{ all -> 0x0032 }
            if (r5 == 0) goto L_0x004f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0032 }
            r5.<init>()     // Catch:{ all -> 0x0032 }
            java.lang.String r6 = "Cannot determine whether the image has alpha or not from header for format "
            r5.append(r6)     // Catch:{ all -> 0x0032 }
            r5.append(r8)     // Catch:{ all -> 0x0032 }
            java.lang.String r8 = r5.toString()     // Catch:{ all -> 0x0032 }
            android.util.Log.w(r1, r8, r4)     // Catch:{ all -> 0x0032 }
        L_0x004f:
            r7.reset()     // Catch:{ IOException -> 0x0053 }
            goto L_0x005b
        L_0x0053:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L_0x005b
            goto L_0x002e
        L_0x005b:
            if (r2 == 0) goto L_0x0060
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            goto L_0x0062
        L_0x0060:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.RGB_565
        L_0x0062:
            return r7
        L_0x0063:
            r7.reset()     // Catch:{ IOException -> 0x0067 }
            goto L_0x0071
        L_0x0067:
            r7 = move-exception
            boolean r2 = android.util.Log.isLoggable(r1, r3)
            if (r2 == 0) goto L_0x0071
            android.util.Log.w(r1, r0, r7)
        L_0x0071:
            throw r8
        L_0x0072:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.getConfig(java.io.InputStream, com.bumptech.glide.load.DecodeFormat):android.graphics.Bitmap$Config");
    }

    public int[] getDimensions(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, Options options) {
        options.inJustDecodeBounds = true;
        decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static Bitmap decodeStream(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, Options options) {
        if (options.inJustDecodeBounds) {
            markEnforcingInputStream.mark(MARK_POSITION);
        } else {
            recyclableBufferedInputStream.fixMarkLimit();
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(markEnforcingInputStream, null, options);
        try {
            if (options.inJustDecodeBounds) {
                markEnforcingInputStream.reset();
            }
        } catch (IOException e) {
            String str = TAG;
            if (Log.isLoggable(str, 6)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Exception loading inDecodeBounds=");
                sb.append(options.inJustDecodeBounds);
                sb.append(" sample=");
                sb.append(options.inSampleSize);
                Log.e(str, sb.toString(), e);
            }
        }
        return decodeStream;
    }

    @TargetApi(11)
    private static void setInBitmap(Options options, Bitmap bitmap) {
        if (11 <= VERSION.SDK_INT) {
            options.inBitmap = bitmap;
        }
    }

    @TargetApi(11)
    private static synchronized Options getDefaultOptions() {
        Options options;
        synchronized (Downsampler.class) {
            synchronized (OPTIONS_QUEUE) {
                options = (Options) OPTIONS_QUEUE.poll();
            }
            if (options == null) {
                options = new Options();
                resetOptions(options);
            }
        }
        return options;
    }

    private static void releaseOptions(Options options) {
        resetOptions(options);
        synchronized (OPTIONS_QUEUE) {
            OPTIONS_QUEUE.offer(options);
        }
    }

    @TargetApi(11)
    private static void resetOptions(Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }
}