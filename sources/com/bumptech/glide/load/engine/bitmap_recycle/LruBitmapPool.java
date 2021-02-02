package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class LruBitmapPool implements BitmapPool {
    private static final Config DEFAULT_CONFIG = Config.ARGB_8888;
    private static final String TAG = "LruBitmapPool";
    private final Set<Config> allowedConfigs;
    private int currentSize;
    private int evictions;
    private int hits;
    private final int initialMaxSize;
    private int maxSize;
    private int misses;
    private int puts;
    private final LruPoolStrategy strategy;
    private final BitmapTracker tracker;

    private interface BitmapTracker {
        void add(Bitmap bitmap);

        void remove(Bitmap bitmap);
    }

    private static class NullBitmapTracker implements BitmapTracker {
        public void add(Bitmap bitmap) {
        }

        public void remove(Bitmap bitmap) {
        }

        private NullBitmapTracker() {
        }
    }

    private static class ThrowingBitmapTracker implements BitmapTracker {
        private final Set<Bitmap> bitmaps = Collections.synchronizedSet(new HashSet());

        private ThrowingBitmapTracker() {
        }

        public void add(Bitmap bitmap) {
            if (!this.bitmaps.contains(bitmap)) {
                this.bitmaps.add(bitmap);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Can't add already added bitmap: ");
            sb.append(bitmap);
            sb.append(" [");
            sb.append(bitmap.getWidth());
            sb.append("x");
            sb.append(bitmap.getHeight());
            sb.append("]");
            throw new IllegalStateException(sb.toString());
        }

        public void remove(Bitmap bitmap) {
            if (this.bitmaps.contains(bitmap)) {
                this.bitmaps.remove(bitmap);
                return;
            }
            throw new IllegalStateException("Cannot remove bitmap not in tracker");
        }
    }

    LruBitmapPool(int i, LruPoolStrategy lruPoolStrategy, Set<Config> set) {
        this.initialMaxSize = i;
        this.maxSize = i;
        this.strategy = lruPoolStrategy;
        this.allowedConfigs = set;
        this.tracker = new NullBitmapTracker();
    }

    public LruBitmapPool(int i) {
        this(i, getDefaultStrategy(), getDefaultAllowedConfigs());
    }

    public LruBitmapPool(int i, Set<Config> set) {
        this(i, getDefaultStrategy(), set);
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    public synchronized void setSizeMultiplier(float f) {
        this.maxSize = Math.round(((float) this.initialMaxSize) * f);
        evict();
    }

    public synchronized boolean put(Bitmap bitmap) {
        if (bitmap != null) {
            if (bitmap.isMutable() && this.strategy.getSize(bitmap) <= this.maxSize) {
                if (this.allowedConfigs.contains(bitmap.getConfig())) {
                    int size = this.strategy.getSize(bitmap);
                    this.strategy.put(bitmap);
                    this.tracker.add(bitmap);
                    this.puts++;
                    this.currentSize += size;
                    if (Log.isLoggable(TAG, 2)) {
                        String str = TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Put bitmap in pool=");
                        sb.append(this.strategy.logBitmap(bitmap));
                        Log.v(str, sb.toString());
                    }
                    dump();
                    evict();
                    return true;
                }
            }
            if (Log.isLoggable(TAG, 2)) {
                String str2 = TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Reject bitmap from pool, bitmap: ");
                sb2.append(this.strategy.logBitmap(bitmap));
                sb2.append(", is mutable: ");
                sb2.append(bitmap.isMutable());
                sb2.append(", is allowed config: ");
                sb2.append(this.allowedConfigs.contains(bitmap.getConfig()));
                Log.v(str2, sb2.toString());
            }
            return false;
        }
        throw new NullPointerException("Bitmap must not be null");
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    public synchronized Bitmap get(int i, int i2, Config config) {
        Bitmap dirty;
        dirty = getDirty(i, i2, config);
        if (dirty != null) {
            dirty.eraseColor(0);
        }
        return dirty;
    }

    @TargetApi(12)
    public synchronized Bitmap getDirty(int i, int i2, Config config) {
        Bitmap bitmap;
        bitmap = this.strategy.get(i, i2, config != null ? config : DEFAULT_CONFIG);
        if (bitmap == null) {
            if (Log.isLoggable(TAG, 3)) {
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Missing bitmap=");
                sb.append(this.strategy.logBitmap(i, i2, config));
                Log.d(str, sb.toString());
            }
            this.misses++;
        } else {
            this.hits++;
            this.currentSize -= this.strategy.getSize(bitmap);
            this.tracker.remove(bitmap);
            if (VERSION.SDK_INT >= 12) {
                bitmap.setHasAlpha(true);
            }
        }
        if (Log.isLoggable(TAG, 2)) {
            String str2 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Get bitmap=");
            sb2.append(this.strategy.logBitmap(i, i2, config));
            Log.v(str2, sb2.toString());
        }
        dump();
        return bitmap;
    }

    public void clearMemory() {
        String str = TAG;
        if (Log.isLoggable(str, 3)) {
            Log.d(str, "clearMemory");
        }
        trimToSize(0);
    }

    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i) {
        String str = TAG;
        if (Log.isLoggable(str, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("trimMemory, level=");
            sb.append(i);
            Log.d(str, sb.toString());
        }
        if (i >= 60) {
            clearMemory();
        } else if (i >= 40) {
            trimToSize(this.maxSize / 2);
        }
    }

    private synchronized void trimToSize(int i) {
        while (this.currentSize > i) {
            Bitmap removeLast = this.strategy.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Size mismatch, resetting");
                    dumpUnchecked();
                }
                this.currentSize = 0;
                return;
            }
            this.tracker.remove(removeLast);
            this.currentSize -= this.strategy.getSize(removeLast);
            removeLast.recycle();
            this.evictions++;
            if (Log.isLoggable(TAG, 3)) {
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Evicting bitmap=");
                sb.append(this.strategy.logBitmap(removeLast));
                Log.d(str, sb.toString());
            }
            dump();
        }
    }

    private void dump() {
        if (Log.isLoggable(TAG, 2)) {
            dumpUnchecked();
        }
    }

    private void dumpUnchecked() {
        StringBuilder sb = new StringBuilder();
        sb.append("Hits=");
        sb.append(this.hits);
        sb.append(", misses=");
        sb.append(this.misses);
        sb.append(", puts=");
        sb.append(this.puts);
        sb.append(", evictions=");
        sb.append(this.evictions);
        sb.append(", currentSize=");
        sb.append(this.currentSize);
        sb.append(", maxSize=");
        sb.append(this.maxSize);
        sb.append("\nStrategy=");
        sb.append(this.strategy);
        Log.v(TAG, sb.toString());
    }

    private static LruPoolStrategy getDefaultStrategy() {
        if (VERSION.SDK_INT >= 19) {
            return new SizeConfigStrategy();
        }
        return new AttributeStrategy();
    }

    private static Set<Config> getDefaultAllowedConfigs() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Config.values()));
        if (VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
