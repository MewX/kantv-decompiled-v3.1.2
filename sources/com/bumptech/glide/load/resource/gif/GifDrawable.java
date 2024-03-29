package com.bumptech.glide.load.resource.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback;

public class GifDrawable extends GlideDrawable implements FrameCallback {
    private boolean applyGravity;
    private final GifDecoder decoder;
    private final Rect destRect;
    private final GifFrameLoader frameLoader;
    private boolean isRecycled;
    private boolean isRunning;
    private boolean isStarted;
    private boolean isVisible;
    private int loopCount;
    private int maxLoopCount;
    private final Paint paint;
    private final GifState state;

    static class GifState extends ConstantState {
        private static final int GRAVITY = 119;
        BitmapPool bitmapPool;
        BitmapProvider bitmapProvider;
        Context context;
        byte[] data;
        Bitmap firstFrame;
        Transformation<Bitmap> frameTransformation;
        GifHeader gifHeader;
        int targetHeight;
        int targetWidth;

        public int getChangingConfigurations() {
            return 0;
        }

        public GifState(GifHeader gifHeader2, byte[] bArr, Context context2, Transformation<Bitmap> transformation, int i, int i2, BitmapProvider bitmapProvider2, BitmapPool bitmapPool2, Bitmap bitmap) {
            if (bitmap != null) {
                this.gifHeader = gifHeader2;
                this.data = bArr;
                this.bitmapPool = bitmapPool2;
                this.firstFrame = bitmap;
                this.context = context2.getApplicationContext();
                this.frameTransformation = transformation;
                this.targetWidth = i;
                this.targetHeight = i2;
                this.bitmapProvider = bitmapProvider2;
                return;
            }
            throw new NullPointerException("The first frame of the GIF must not be null");
        }

        public GifState(GifState gifState) {
            if (gifState != null) {
                this.gifHeader = gifState.gifHeader;
                this.data = gifState.data;
                this.context = gifState.context;
                this.frameTransformation = gifState.frameTransformation;
                this.targetWidth = gifState.targetWidth;
                this.targetHeight = gifState.targetHeight;
                this.bitmapProvider = gifState.bitmapProvider;
                this.bitmapPool = gifState.bitmapPool;
                this.firstFrame = gifState.firstFrame;
            }
        }

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    public int getOpacity() {
        return -2;
    }

    public boolean isAnimated() {
        return true;
    }

    public GifDrawable(Context context, BitmapProvider bitmapProvider, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i, int i2, GifHeader gifHeader, byte[] bArr, Bitmap bitmap) {
        GifState gifState = new GifState(gifHeader, bArr, context, transformation, i, i2, bitmapProvider, bitmapPool, bitmap);
        this(gifState);
    }

    public GifDrawable(GifDrawable gifDrawable, Bitmap bitmap, Transformation<Bitmap> transformation) {
        GifState gifState = new GifState(gifDrawable.state.gifHeader, gifDrawable.state.data, gifDrawable.state.context, transformation, gifDrawable.state.targetWidth, gifDrawable.state.targetHeight, gifDrawable.state.bitmapProvider, gifDrawable.state.bitmapPool, bitmap);
        this(gifState);
    }

    GifDrawable(GifState gifState) {
        this.destRect = new Rect();
        this.isVisible = true;
        this.maxLoopCount = -1;
        if (gifState != null) {
            this.state = gifState;
            this.decoder = new GifDecoder(gifState.bitmapProvider);
            this.paint = new Paint();
            this.decoder.setData(gifState.gifHeader, gifState.data);
            GifFrameLoader gifFrameLoader = new GifFrameLoader(gifState.context, this, this.decoder, gifState.targetWidth, gifState.targetHeight);
            this.frameLoader = gifFrameLoader;
            this.frameLoader.setFrameTransformation(gifState.frameTransformation);
            return;
        }
        throw new NullPointerException("GifState must not be null");
    }

    GifDrawable(GifDecoder gifDecoder, GifFrameLoader gifFrameLoader, Bitmap bitmap, BitmapPool bitmapPool, Paint paint2) {
        this.destRect = new Rect();
        this.isVisible = true;
        this.maxLoopCount = -1;
        this.decoder = gifDecoder;
        this.frameLoader = gifFrameLoader;
        this.state = new GifState(null);
        this.paint = paint2;
        GifState gifState = this.state;
        gifState.bitmapPool = bitmapPool;
        gifState.firstFrame = bitmap;
    }

    public Bitmap getFirstFrame() {
        return this.state.firstFrame;
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("The first frame of the GIF must not be null");
        } else if (transformation != null) {
            GifState gifState = this.state;
            gifState.frameTransformation = transformation;
            gifState.firstFrame = bitmap;
            this.frameLoader.setFrameTransformation(transformation);
        } else {
            throw new NullPointerException("The frame transformation must not be null");
        }
    }

    public GifDecoder getDecoder() {
        return this.decoder;
    }

    public Transformation<Bitmap> getFrameTransformation() {
        return this.state.frameTransformation;
    }

    public byte[] getData() {
        return this.state.data;
    }

    public int getFrameCount() {
        return this.decoder.getFrameCount();
    }

    private void resetLoopCount() {
        this.loopCount = 0;
    }

    public void start() {
        this.isStarted = true;
        resetLoopCount();
        if (this.isVisible) {
            startRunning();
        }
    }

    public void stop() {
        this.isStarted = false;
        stopRunning();
        if (VERSION.SDK_INT < 11) {
            reset();
        }
    }

    private void reset() {
        this.frameLoader.clear();
        invalidateSelf();
    }

    private void startRunning() {
        if (this.decoder.getFrameCount() == 1) {
            invalidateSelf();
        } else if (!this.isRunning) {
            this.isRunning = true;
            this.frameLoader.start();
            invalidateSelf();
        }
    }

    private void stopRunning() {
        this.isRunning = false;
        this.frameLoader.stop();
    }

    public boolean setVisible(boolean z, boolean z2) {
        this.isVisible = z;
        if (!z) {
            stopRunning();
        } else if (this.isStarted) {
            startRunning();
        }
        return super.setVisible(z, z2);
    }

    public int getIntrinsicWidth() {
        return this.state.firstFrame.getWidth();
    }

    public int getIntrinsicHeight() {
        return this.state.firstFrame.getHeight();
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    /* access modifiers changed from: 0000 */
    public void setIsRunning(boolean z) {
        this.isRunning = z;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    public void draw(Canvas canvas) {
        if (!this.isRecycled) {
            if (this.applyGravity) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.destRect);
                this.applyGravity = false;
            }
            Bitmap currentFrame = this.frameLoader.getCurrentFrame();
            if (currentFrame == null) {
                currentFrame = this.state.firstFrame;
            }
            canvas.drawBitmap(currentFrame, null, this.destRect, this.paint);
        }
    }

    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @TargetApi(11)
    public void onFrameReady(int i) {
        if (VERSION.SDK_INT < 11 || getCallback() != null) {
            invalidateSelf();
            if (i == this.decoder.getFrameCount() - 1) {
                this.loopCount++;
            }
            int i2 = this.maxLoopCount;
            if (i2 != -1 && this.loopCount >= i2) {
                stop();
            }
            return;
        }
        stop();
        reset();
    }

    public ConstantState getConstantState() {
        return this.state;
    }

    public void recycle() {
        this.isRecycled = true;
        this.state.bitmapPool.put(this.state.firstFrame);
        this.frameLoader.clear();
        this.frameLoader.stop();
    }

    /* access modifiers changed from: 0000 */
    public boolean isRecycled() {
        return this.isRecycled;
    }

    public void setLoopCount(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i == 0) {
            int totalIterationCount = this.decoder.getTotalIterationCount();
            if (totalIterationCount == 0) {
                totalIterationCount = -1;
            }
            this.maxLoopCount = totalIterationCount;
        } else {
            this.maxLoopCount = i;
        }
    }
}
