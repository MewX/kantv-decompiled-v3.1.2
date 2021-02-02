package pl.droidsonroids.gif;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import java.io.IOException;
import pl.droidsonroids.gif.annotations.Beta;

@Beta
public class GifTexImage2D {
    private final GifInfoHandle mGifInfoHandle;

    public GifTexImage2D(InputSource inputSource, @Nullable GifOptions gifOptions) throws IOException {
        if (gifOptions == null) {
            gifOptions = new GifOptions();
        }
        this.mGifInfoHandle = inputSource.open();
        this.mGifInfoHandle.setOptions(gifOptions.inSampleSize, gifOptions.inIsOpaque);
        this.mGifInfoHandle.initTexImageDescriptor();
    }

    public int getFrameDuration(@IntRange(from = 0) int i) {
        return this.mGifInfoHandle.getFrameDuration(i);
    }

    public void seekToFrame(@IntRange(from = 0) int i) {
        this.mGifInfoHandle.seekToFrameGL(i);
    }

    public int getNumberOfFrames() {
        return this.mGifInfoHandle.getNumberOfFrames();
    }

    public void glTexImage2D(int i, int i2) {
        this.mGifInfoHandle.glTexImage2D(i, i2);
    }

    public void glTexSubImage2D(int i, int i2) {
        this.mGifInfoHandle.glTexSubImage2D(i, i2);
    }

    public void startDecoderThread() {
        this.mGifInfoHandle.startDecoderThread();
    }

    public void stopDecoderThread() {
        this.mGifInfoHandle.stopDecoderThread();
    }

    public void recycle() {
        GifInfoHandle gifInfoHandle = this.mGifInfoHandle;
        if (gifInfoHandle != null) {
            gifInfoHandle.recycle();
        }
    }

    public int getWidth() {
        return this.mGifInfoHandle.getWidth();
    }

    public int getHeight() {
        return this.mGifInfoHandle.getHeight();
    }

    public int getDuration() {
        return this.mGifInfoHandle.getDuration();
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }
}
