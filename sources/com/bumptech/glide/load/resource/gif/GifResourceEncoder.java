package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifencoder.AnimatedGifEncoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.OutputStream;

public class GifResourceEncoder implements ResourceEncoder<GifDrawable> {
    private static final Factory FACTORY = new Factory();
    private static final String TAG = "GifEncoder";
    private final BitmapPool bitmapPool;
    private final Factory factory;
    private final BitmapProvider provider;

    static class Factory {
        Factory() {
        }

        public GifDecoder buildDecoder(BitmapProvider bitmapProvider) {
            return new GifDecoder(bitmapProvider);
        }

        public GifHeaderParser buildParser() {
            return new GifHeaderParser();
        }

        public AnimatedGifEncoder buildEncoder() {
            return new AnimatedGifEncoder();
        }

        public Resource<Bitmap> buildFrameResource(Bitmap bitmap, BitmapPool bitmapPool) {
            return new BitmapResource(bitmap, bitmapPool);
        }
    }

    public String getId() {
        return "";
    }

    public GifResourceEncoder(BitmapPool bitmapPool2) {
        this(bitmapPool2, FACTORY);
    }

    GifResourceEncoder(BitmapPool bitmapPool2, Factory factory2) {
        this.bitmapPool = bitmapPool2;
        this.provider = new GifBitmapProvider(bitmapPool2);
        this.factory = factory2;
    }

    /* JADX INFO: finally extract failed */
    public boolean encode(Resource<GifDrawable> resource, OutputStream outputStream) {
        long logTime = LogTime.getLogTime();
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        Transformation frameTransformation = gifDrawable.getFrameTransformation();
        if (frameTransformation instanceof UnitTransformation) {
            return writeDataDirect(gifDrawable.getData(), outputStream);
        }
        GifDecoder decodeHeaders = decodeHeaders(gifDrawable.getData());
        AnimatedGifEncoder buildEncoder = this.factory.buildEncoder();
        if (!buildEncoder.start(outputStream)) {
            return false;
        }
        int i = 0;
        while (i < decodeHeaders.getFrameCount()) {
            Resource transformedFrame = getTransformedFrame(decodeHeaders.getNextFrame(), frameTransformation, gifDrawable);
            try {
                if (!buildEncoder.addFrame((Bitmap) transformedFrame.get())) {
                    transformedFrame.recycle();
                    return false;
                }
                buildEncoder.setDelay(decodeHeaders.getDelay(decodeHeaders.getCurrentFrameIndex()));
                decodeHeaders.advance();
                transformedFrame.recycle();
                i++;
            } catch (Throwable th) {
                transformedFrame.recycle();
                throw th;
            }
        }
        boolean finish = buildEncoder.finish();
        String str = TAG;
        if (Log.isLoggable(str, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Encoded gif with ");
            sb.append(decodeHeaders.getFrameCount());
            sb.append(" frames and ");
            sb.append(gifDrawable.getData().length);
            sb.append(" bytes in ");
            sb.append(LogTime.getElapsedMillis(logTime));
            sb.append(" ms");
            Log.v(str, sb.toString());
        }
        return finish;
    }

    private boolean writeDataDirect(byte[] bArr, OutputStream outputStream) {
        try {
            outputStream.write(bArr);
            return true;
        } catch (IOException e) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Failed to write data to output stream in GifResourceEncoder", e);
            }
            return false;
        }
    }

    private GifDecoder decodeHeaders(byte[] bArr) {
        GifHeaderParser buildParser = this.factory.buildParser();
        buildParser.setData(bArr);
        GifHeader parseHeader = buildParser.parseHeader();
        GifDecoder buildDecoder = this.factory.buildDecoder(this.provider);
        buildDecoder.setData(parseHeader, bArr);
        buildDecoder.advance();
        return buildDecoder;
    }

    private Resource<Bitmap> getTransformedFrame(Bitmap bitmap, Transformation<Bitmap> transformation, GifDrawable gifDrawable) {
        Resource buildFrameResource = this.factory.buildFrameResource(bitmap, this.bitmapPool);
        Resource<Bitmap> transform = transformation.transform(buildFrameResource, gifDrawable.getIntrinsicWidth(), gifDrawable.getIntrinsicHeight());
        if (!buildFrameResource.equals(transform)) {
            buildFrameResource.recycle();
        }
        return transform;
    }
}
