package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.widget.ArrayAdapter;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.MediaQueue.Callback;

public class MediaQueueArrayAdapter extends ArrayAdapter<MediaQueueItem> {
    private final MediaQueue zzms;
    private final Callback zzmt = new zza();

    private class zza extends Callback {
        private zza() {
        }

        public final void mediaQueueWillChange() {
        }

        public final void mediaQueueChanged() {
            MediaQueueArrayAdapter.this.notifyDataSetChanged();
        }

        public final void itemsReloaded() {
            MediaQueueArrayAdapter.this.notifyDataSetChanged();
        }

        public final void itemsInsertedInRange(int i, int i2) {
            MediaQueueArrayAdapter.this.notifyDataSetChanged();
        }

        public final void itemsUpdatedAtIndexes(int[] iArr) {
            MediaQueueArrayAdapter.this.notifyDataSetChanged();
        }

        public final void itemsRemovedAtIndexes(int[] iArr) {
            MediaQueueArrayAdapter.this.notifyDataSetChanged();
        }
    }

    public MediaQueueArrayAdapter(MediaQueue mediaQueue, Context context, int i) {
        super(context, i);
        this.zzms = mediaQueue;
        this.zzms.registerCallback(this.zzmt);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public boolean hasStableIds() {
        return true;
    }

    public void dispose() {
        this.zzms.unregisterCallback(this.zzmt);
    }

    public boolean isEnabled(int i) {
        return this.zzms.getItemAtIndex(i, false) != null;
    }

    public int getCount() {
        return this.zzms.getItemCount();
    }

    public MediaQueueItem getItem(int i) {
        return this.zzms.getItemAtIndex(i);
    }

    public long getItemId(int i) {
        return (long) this.zzms.itemIdAtIndex(i);
    }

    public boolean isEmpty() {
        return this.zzms.getItemCount() == 0;
    }

    public MediaQueue getMediaQueue() {
        return this.zzms;
    }
}
