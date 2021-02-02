package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import pl.droidsonroids.gif.GifDrawableInit;
import pl.droidsonroids.gif.InputSource.AssetFileDescriptorSource;
import pl.droidsonroids.gif.InputSource.AssetSource;
import pl.droidsonroids.gif.InputSource.ByteArraySource;
import pl.droidsonroids.gif.InputSource.DirectByteBufferSource;
import pl.droidsonroids.gif.InputSource.FileDescriptorSource;
import pl.droidsonroids.gif.InputSource.FileSource;
import pl.droidsonroids.gif.InputSource.InputStreamSource;
import pl.droidsonroids.gif.InputSource.ResourcesSource;
import pl.droidsonroids.gif.InputSource.UriSource;
import pl.droidsonroids.gif.annotations.Beta;

public abstract class GifDrawableInit<T extends GifDrawableInit<T>> {
    private ScheduledThreadPoolExecutor mExecutor;
    private InputSource mInputSource;
    private boolean mIsRenderingTriggeredOnDraw = true;
    private GifDrawable mOldDrawable;
    private GifOptions mOptions = new GifOptions();

    /* access modifiers changed from: protected */
    public abstract T self();

    public T sampleSize(@IntRange(from = 1, to = 65535) int i) {
        this.mOptions.setInSampleSize(i);
        return self();
    }

    public GifDrawable build() throws IOException {
        InputSource inputSource = this.mInputSource;
        if (inputSource != null) {
            return inputSource.build(this.mOldDrawable, this.mExecutor, this.mIsRenderingTriggeredOnDraw, this.mOptions);
        }
        throw new NullPointerException("Source is not set");
    }

    public T with(GifDrawable gifDrawable) {
        this.mOldDrawable = gifDrawable;
        return self();
    }

    public T threadPoolSize(int i) {
        this.mExecutor = new ScheduledThreadPoolExecutor(i);
        return self();
    }

    public T taskExecutor(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.mExecutor = scheduledThreadPoolExecutor;
        return self();
    }

    public T renderingTriggeredOnDraw(boolean z) {
        this.mIsRenderingTriggeredOnDraw = z;
        return self();
    }

    public T setRenderingTriggeredOnDraw(boolean z) {
        return renderingTriggeredOnDraw(z);
    }

    @Beta
    public T options(@Nullable GifOptions gifOptions) {
        this.mOptions.setFrom(gifOptions);
        return self();
    }

    public T from(InputStream inputStream) {
        this.mInputSource = new InputStreamSource(inputStream);
        return self();
    }

    public T from(AssetFileDescriptor assetFileDescriptor) {
        this.mInputSource = new AssetFileDescriptorSource(assetFileDescriptor);
        return self();
    }

    public T from(FileDescriptor fileDescriptor) {
        this.mInputSource = new FileDescriptorSource(fileDescriptor);
        return self();
    }

    public T from(AssetManager assetManager, String str) {
        this.mInputSource = new AssetSource(assetManager, str);
        return self();
    }

    public T from(ContentResolver contentResolver, Uri uri) {
        this.mInputSource = new UriSource(contentResolver, uri);
        return self();
    }

    public T from(File file) {
        this.mInputSource = new FileSource(file);
        return self();
    }

    public T from(String str) {
        this.mInputSource = new FileSource(str);
        return self();
    }

    public T from(byte[] bArr) {
        this.mInputSource = new ByteArraySource(bArr);
        return self();
    }

    public T from(ByteBuffer byteBuffer) {
        this.mInputSource = new DirectByteBufferSource(byteBuffer);
        return self();
    }

    public T from(Resources resources, int i) {
        this.mInputSource = new ResourcesSource(resources, i);
        return self();
    }

    public InputSource getInputSource() {
        return this.mInputSource;
    }

    public GifDrawable getOldDrawable() {
        return this.mOldDrawable;
    }

    public ScheduledThreadPoolExecutor getExecutor() {
        return this.mExecutor;
    }

    public boolean isRenderingTriggeredOnDraw() {
        return this.mIsRenderingTriggeredOnDraw;
    }

    public GifOptions getOptions() {
        return this.mOptions;
    }
}
