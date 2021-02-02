package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public abstract class InputSource {

    public static class AssetFileDescriptorSource extends InputSource {
        private final AssetFileDescriptor mAssetFileDescriptor;

        public AssetFileDescriptorSource(@NonNull AssetFileDescriptor assetFileDescriptor) {
            super();
            this.mAssetFileDescriptor = assetFileDescriptor;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return new GifInfoHandle(this.mAssetFileDescriptor);
        }
    }

    public static final class AssetSource extends InputSource {
        private final AssetManager mAssetManager;
        private final String mAssetName;

        public AssetSource(@NonNull AssetManager assetManager, @NonNull String str) {
            super();
            this.mAssetManager = assetManager;
            this.mAssetName = str;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return new GifInfoHandle(this.mAssetManager.openFd(this.mAssetName));
        }
    }

    public static final class ByteArraySource extends InputSource {
        private final byte[] bytes;

        public ByteArraySource(@NonNull byte[] bArr) {
            super();
            this.bytes = bArr;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws GifIOException {
            return new GifInfoHandle(this.bytes);
        }
    }

    public static final class DirectByteBufferSource extends InputSource {
        private final ByteBuffer byteBuffer;

        public DirectByteBufferSource(@NonNull ByteBuffer byteBuffer2) {
            super();
            this.byteBuffer = byteBuffer2;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws GifIOException {
            return new GifInfoHandle(this.byteBuffer);
        }
    }

    public static final class FileDescriptorSource extends InputSource {
        private final FileDescriptor mFd;

        public FileDescriptorSource(@NonNull FileDescriptor fileDescriptor) {
            super();
            this.mFd = fileDescriptor;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return new GifInfoHandle(this.mFd);
        }
    }

    public static final class FileSource extends InputSource {
        private final String mPath;

        public FileSource(@NonNull File file) {
            super();
            this.mPath = file.getPath();
        }

        public FileSource(@NonNull String str) {
            super();
            this.mPath = str;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws GifIOException {
            return new GifInfoHandle(this.mPath);
        }
    }

    public static final class InputStreamSource extends InputSource {
        private final InputStream inputStream;

        public InputStreamSource(@NonNull InputStream inputStream2) {
            super();
            this.inputStream = inputStream2;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return new GifInfoHandle(this.inputStream);
        }
    }

    public static class ResourcesSource extends InputSource {
        private final int mResourceId;
        private final Resources mResources;

        public ResourcesSource(@NonNull Resources resources, @RawRes @DrawableRes int i) {
            super();
            this.mResources = resources;
            this.mResourceId = i;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return new GifInfoHandle(this.mResources.openRawResourceFd(this.mResourceId));
        }
    }

    public static final class UriSource extends InputSource {
        private final ContentResolver mContentResolver;
        private final Uri mUri;

        public UriSource(@Nullable ContentResolver contentResolver, @NonNull Uri uri) {
            super();
            this.mContentResolver = contentResolver;
            this.mUri = uri;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle open() throws IOException {
            return GifInfoHandle.openUri(this.mContentResolver, this.mUri);
        }
    }

    /* access modifiers changed from: 0000 */
    public abstract GifInfoHandle open() throws IOException;

    private InputSource() {
    }

    /* access modifiers changed from: 0000 */
    public final GifDrawable build(GifDrawable gifDrawable, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z, GifOptions gifOptions) throws IOException {
        return new GifDrawable(createHandleWith(gifOptions), gifDrawable, scheduledThreadPoolExecutor, z);
    }

    /* access modifiers changed from: 0000 */
    public final GifInfoHandle createHandleWith(@NonNull GifOptions gifOptions) throws IOException {
        GifInfoHandle open = open();
        open.setOptions(gifOptions.inSampleSize, gifOptions.inIsOpaque);
        return open;
    }
}