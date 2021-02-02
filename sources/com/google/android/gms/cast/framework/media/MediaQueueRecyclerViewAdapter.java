package com.google.android.gms.cast.framework.media;

import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.MediaQueue.Callback;

public abstract class MediaQueueRecyclerViewAdapter<VH extends ViewHolder> extends Adapter<VH> {
    private final MediaQueue zzms;
    private final Callback zzmt = new zza();

    private class zza extends Callback {
        private zza() {
        }

        public final void mediaQueueChanged() {
        }

        public final void mediaQueueWillChange() {
        }

        public final void itemsReloaded() {
            MediaQueueRecyclerViewAdapter.this.notifyDataSetChanged();
        }

        public final void itemsInsertedInRange(int i, int i2) {
            MediaQueueRecyclerViewAdapter.this.notifyItemRangeInserted(i, i2);
        }

        public final void itemsUpdatedAtIndexes(int[] iArr) {
            for (int notifyItemChanged : iArr) {
                MediaQueueRecyclerViewAdapter.this.notifyItemChanged(notifyItemChanged);
            }
        }

        public final void itemsRemovedAtIndexes(int[] iArr) {
            if (iArr.length > 1) {
                MediaQueueRecyclerViewAdapter.this.notifyDataSetChanged();
                return;
            }
            for (int notifyItemRemoved : iArr) {
                MediaQueueRecyclerViewAdapter.this.notifyItemRemoved(notifyItemRemoved);
            }
        }
    }

    public MediaQueueRecyclerViewAdapter(MediaQueue mediaQueue) {
        this.zzms = mediaQueue;
        this.zzms.registerCallback(this.zzmt);
    }

    public void dispose() {
        this.zzms.unregisterCallback(this.zzmt);
    }

    public int getItemCount() {
        return this.zzms.getItemCount();
    }

    public long getItemId(int i) {
        return (long) this.zzms.itemIdAtIndex(i);
    }

    public MediaQueueItem getItem(int i) {
        return this.zzms.getItemAtIndex(i);
    }

    public MediaQueue getMediaQueue() {
        return this.zzms;
    }
}
