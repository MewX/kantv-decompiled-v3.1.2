package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.util.LogTime;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class DecodeJob<A, T, Z> {
    private static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    private static final String TAG = "DecodeJob";
    private final DiskCacheProvider diskCacheProvider;
    private final DiskCacheStrategy diskCacheStrategy;
    private final DataFetcher<A> fetcher;
    /* access modifiers changed from: private */
    public final FileOpener fileOpener;
    private final int height;
    private volatile boolean isCancelled;
    private final DataLoadProvider<A, T> loadProvider;
    private final Priority priority;
    private final EngineKey resultKey;
    private final ResourceTranscoder<T, Z> transcoder;
    private final Transformation<T> transformation;
    private final int width;

    interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    static class FileOpener {
        FileOpener() {
        }

        public OutputStream open(File file) throws FileNotFoundException {
            return new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    class SourceWriter<DataType> implements Writer {
        private final DataType data;
        private final Encoder<DataType> encoder;

        public SourceWriter(Encoder<DataType> encoder2, DataType datatype) {
            this.encoder = encoder2;
            this.data = datatype;
        }

        public boolean write(File file) {
            String str = DecodeJob.TAG;
            OutputStream outputStream = null;
            try {
                outputStream = DecodeJob.this.fileOpener.open(file);
                boolean encode = this.encoder.encode(this.data, outputStream);
                if (outputStream == null) {
                    return encode;
                }
                try {
                    outputStream.close();
                    return encode;
                } catch (IOException unused) {
                    return encode;
                }
            } catch (FileNotFoundException e) {
                outputStream = Log.isLoggable(str, 3);
                if (outputStream) {
                    Log.d(str, "Failed to find file to write to disk cache", e);
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                return false;
            } finally {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused3) {
                    }
                }
            }
        }
    }

    public DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation2, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider2, DiskCacheStrategy diskCacheStrategy2, Priority priority2) {
        this(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation2, resourceTranscoder, diskCacheProvider2, diskCacheStrategy2, priority2, DEFAULT_FILE_OPENER);
    }

    DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation2, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider2, DiskCacheStrategy diskCacheStrategy2, Priority priority2, FileOpener fileOpener2) {
        this.resultKey = engineKey;
        this.width = i;
        this.height = i2;
        this.fetcher = dataFetcher;
        this.loadProvider = dataLoadProvider;
        this.transformation = transformation2;
        this.transcoder = resourceTranscoder;
        this.diskCacheProvider = diskCacheProvider2;
        this.diskCacheStrategy = diskCacheStrategy2;
        this.priority = priority2;
        this.fileOpener = fileOpener2;
    }

    public Resource<Z> decodeResultFromCache() throws Exception {
        if (!this.diskCacheStrategy.cacheResult()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey);
        String str = TAG;
        if (Log.isLoggable(str, 2)) {
            logWithTimeAndKey("Decoded transformed from cache", logTime);
        }
        long logTime2 = LogTime.getLogTime();
        Resource<Z> transcode = transcode(loadFromCache);
        if (Log.isLoggable(str, 2)) {
            logWithTimeAndKey("Transcoded transformed from cache", logTime2);
        }
        return transcode;
    }

    public Resource<Z> decodeSourceFromCache() throws Exception {
        if (!this.diskCacheStrategy.cacheSource()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Decoded source from cache", logTime);
        }
        return transformEncodeAndTranscode(loadFromCache);
    }

    public Resource<Z> decodeFromSource() throws Exception {
        return transformEncodeAndTranscode(decodeSource());
    }

    public void cancel() {
        this.isCancelled = true;
        this.fetcher.cancel();
    }

    private Resource<Z> transformEncodeAndTranscode(Resource<T> resource) {
        long logTime = LogTime.getLogTime();
        Resource transform = transform(resource);
        String str = TAG;
        if (Log.isLoggable(str, 2)) {
            logWithTimeAndKey("Transformed resource from source", logTime);
        }
        writeTransformedToCache(transform);
        long logTime2 = LogTime.getLogTime();
        Resource<Z> transcode = transcode(transform);
        if (Log.isLoggable(str, 2)) {
            logWithTimeAndKey("Transcoded transformed from source", logTime2);
        }
        return transcode;
    }

    private void writeTransformedToCache(Resource<T> resource) {
        if (resource != null && this.diskCacheStrategy.cacheResult()) {
            long logTime = LogTime.getLogTime();
            this.diskCacheProvider.getDiskCache().put(this.resultKey, new SourceWriter(this.loadProvider.getEncoder(), resource));
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Wrote transformed from source to cache", logTime);
            }
        }
    }

    private Resource<T> decodeSource() throws Exception {
        try {
            long logTime = LogTime.getLogTime();
            Object loadData = this.fetcher.loadData(this.priority);
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Fetched data", logTime);
            }
            if (this.isCancelled) {
                return null;
            }
            Resource<T> decodeFromSourceData = decodeFromSourceData(loadData);
            this.fetcher.cleanup();
            return decodeFromSourceData;
        } finally {
            this.fetcher.cleanup();
        }
    }

    private Resource<T> decodeFromSourceData(A a) throws IOException {
        if (this.diskCacheStrategy.cacheSource()) {
            return cacheAndDecodeSourceData(a);
        }
        long logTime = LogTime.getLogTime();
        Resource<T> decode = this.loadProvider.getSourceDecoder().decode(a, this.width, this.height);
        if (!Log.isLoggable(TAG, 2)) {
            return decode;
        }
        logWithTimeAndKey("Decoded from source", logTime);
        return decode;
    }

    private Resource<T> cacheAndDecodeSourceData(A a) throws IOException {
        long logTime = LogTime.getLogTime();
        this.diskCacheProvider.getDiskCache().put(this.resultKey.getOriginalKey(), new SourceWriter(this.loadProvider.getSourceEncoder(), a));
        String str = TAG;
        if (Log.isLoggable(str, 2)) {
            logWithTimeAndKey("Wrote source to cache", logTime);
        }
        long logTime2 = LogTime.getLogTime();
        Resource<T> loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(str, 2) && loadFromCache != null) {
            logWithTimeAndKey("Decoded source from cache", logTime2);
        }
        return loadFromCache;
    }

    private Resource<T> loadFromCache(Key key) throws IOException {
        File file = this.diskCacheProvider.getDiskCache().get(key);
        if (file == null) {
            return null;
        }
        try {
            Resource<T> decode = this.loadProvider.getCacheDecoder().decode(file, this.width, this.height);
            if (decode == null) {
            }
            return decode;
        } finally {
            this.diskCacheProvider.getDiskCache().delete(key);
        }
    }

    private Resource<T> transform(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        Resource<T> transform = this.transformation.transform(resource, this.width, this.height);
        if (!resource.equals(transform)) {
            resource.recycle();
        }
        return transform;
    }

    private Resource<Z> transcode(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        return this.transcoder.transcode(resource);
    }

    private void logWithTimeAndKey(String str, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(LogTime.getElapsedMillis(j));
        sb.append(", key: ");
        sb.append(this.resultKey);
        Log.v(TAG, sb.toString());
    }
}
