package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.executor.Prioritized;
import com.bumptech.glide.request.ResourceCallback;

class EngineRunnable implements Runnable, Prioritized {
    private static final String TAG = "EngineRunnable";
    private final DecodeJob<?, ?, ?> decodeJob;
    private volatile boolean isCancelled;
    private final EngineRunnableManager manager;
    private final Priority priority;
    private Stage stage = Stage.CACHE;

    interface EngineRunnableManager extends ResourceCallback {
        void submitForSource(EngineRunnable engineRunnable);
    }

    private enum Stage {
        CACHE,
        SOURCE
    }

    public EngineRunnable(EngineRunnableManager engineRunnableManager, DecodeJob<?, ?, ?> decodeJob2, Priority priority2) {
        this.manager = engineRunnableManager;
        this.decodeJob = decodeJob2;
        this.priority = priority2;
    }

    public void cancel() {
        this.isCancelled = true;
        this.decodeJob.cancel();
    }

    public void run() {
        Exception exc;
        String str = TAG;
        if (!this.isCancelled) {
            Resource resource = null;
            try {
                resource = decode();
                exc = null;
            } catch (OutOfMemoryError e) {
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Out Of Memory Error decoding", e);
                }
                exc = new ErrorWrappingGlideException(e);
            } catch (Exception e2) {
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Exception decoding", e2);
                }
                exc = e2;
            }
            if (this.isCancelled) {
                if (resource != null) {
                    resource.recycle();
                }
                return;
            }
            if (resource == null) {
                onLoadFailed(exc);
            } else {
                onLoadComplete(resource);
            }
        }
    }

    private boolean isDecodingFromCache() {
        return this.stage == Stage.CACHE;
    }

    private void onLoadComplete(Resource resource) {
        this.manager.onResourceReady(resource);
    }

    private void onLoadFailed(Exception exc) {
        if (isDecodingFromCache()) {
            this.stage = Stage.SOURCE;
            this.manager.submitForSource(this);
            return;
        }
        this.manager.onException(exc);
    }

    private Resource<?> decode() throws Exception {
        if (isDecodingFromCache()) {
            return decodeFromCache();
        }
        return decodeFromSource();
    }

    private Resource<?> decodeFromCache() throws Exception {
        Resource<?> resource;
        try {
            resource = this.decodeJob.decodeResultFromCache();
        } catch (Exception e) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Exception decoding result from cache: ");
                sb.append(e);
                Log.d(str, sb.toString());
            }
            resource = null;
        }
        return resource == null ? this.decodeJob.decodeSourceFromCache() : resource;
    }

    private Resource<?> decodeFromSource() throws Exception {
        return this.decodeJob.decodeFromSource();
    }

    public int getPriority() {
        return this.priority.ordinal();
    }
}
