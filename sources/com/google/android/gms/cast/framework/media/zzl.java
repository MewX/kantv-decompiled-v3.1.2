package com.google.android.gms.cast.framework.media;

import android.util.LruCache;
import com.google.android.gms.cast.MediaQueueItem;

final class zzl extends LruCache<Integer, MediaQueueItem> {
    private final /* synthetic */ MediaQueue zzmr;

    zzl(MediaQueue mediaQueue, int i) {
        this.zzmr = mediaQueue;
        super(i);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z) {
            this.zzmr.zzmg.add(num);
        }
    }
}
