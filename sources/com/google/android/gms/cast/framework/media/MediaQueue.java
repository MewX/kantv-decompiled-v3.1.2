package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import android.util.SparseIntArray;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzcu;
import com.google.android.gms.internal.cast.zzdg;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimerTask;

@MainThread
public class MediaQueue {
    private final Handler handler;
    @VisibleForTesting
    long zzef;
    /* access modifiers changed from: private */
    public final RemoteMediaClient zzhs;
    /* access modifiers changed from: private */
    public final zzdg zzmb;
    @VisibleForTesting
    private boolean zzmc;
    @VisibleForTesting
    List<Integer> zzmd;
    @VisibleForTesting
    final SparseIntArray zzme;
    @VisibleForTesting
    LruCache<Integer, MediaQueueItem> zzmf;
    @VisibleForTesting
    final List<Integer> zzmg;
    @VisibleForTesting
    final Deque<Integer> zzmh;
    private final int zzmi;
    private TimerTask zzmj;
    @VisibleForTesting
    PendingResult<MediaChannelResult> zzmk;
    @VisibleForTesting
    PendingResult<MediaChannelResult> zzml;
    @VisibleForTesting
    private ResultCallback<MediaChannelResult> zzmm;
    @VisibleForTesting
    private ResultCallback<MediaChannelResult> zzmn;
    @VisibleForTesting
    private zzd zzmo;
    @VisibleForTesting
    private SessionManagerListener<CastSession> zzmp;
    private Set<Callback> zzmq;

    public static abstract class Callback {
        public void itemsInsertedInRange(int i, int i2) {
        }

        public void itemsReloaded() {
        }

        public void itemsRemovedAtIndexes(int[] iArr) {
        }

        public void itemsUpdatedAtIndexes(int[] iArr) {
        }

        public void mediaQueueChanged() {
        }

        public void mediaQueueWillChange() {
        }
    }

    private class zza implements ResultCallback<MediaChannelResult> {
        private zza() {
        }

        public final /* synthetic */ void onResult(@NonNull Result result) {
            Status status = ((MediaChannelResult) result).getStatus();
            int statusCode = status.getStatusCode();
            if (statusCode != 0) {
                MediaQueue.this.zzmb.w(String.format("Error fetching queue item ids, statusCode=%s, statusMessage=%s", new Object[]{Integer.valueOf(statusCode), status.getStatusMessage()}), new Object[0]);
            }
            MediaQueue mediaQueue = MediaQueue.this;
            mediaQueue.zzml = null;
            if (!mediaQueue.zzmh.isEmpty()) {
                MediaQueue.this.zzbb();
            }
        }

        /* synthetic */ zza(MediaQueue mediaQueue, zzk zzk) {
            this();
        }
    }

    private class zzb implements ResultCallback<MediaChannelResult> {
        private zzb() {
        }

        public final /* synthetic */ void onResult(@NonNull Result result) {
            Status status = ((MediaChannelResult) result).getStatus();
            int statusCode = status.getStatusCode();
            if (statusCode != 0) {
                MediaQueue.this.zzmb.w(String.format("Error fetching queue items, statusCode=%s, statusMessage=%s", new Object[]{Integer.valueOf(statusCode), status.getStatusMessage()}), new Object[0]);
            }
            MediaQueue mediaQueue = MediaQueue.this;
            mediaQueue.zzmk = null;
            if (!mediaQueue.zzmh.isEmpty()) {
                MediaQueue.this.zzbb();
            }
        }

        /* synthetic */ zzb(MediaQueue mediaQueue, zzk zzk) {
            this();
        }
    }

    private class zzc implements SessionManagerListener<CastSession> {
        private zzc() {
        }

        public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        }

        public final /* synthetic */ void onSessionSuspended(Session session, int i) {
            MediaQueue.this.zzbf();
        }

        public final /* synthetic */ void onSessionResumed(Session session, boolean z) {
            CastSession castSession = (CastSession) session;
            if (castSession.getRemoteMediaClient() != null) {
                MediaQueue.this.zza(castSession.getRemoteMediaClient());
            }
        }

        public final /* synthetic */ void onSessionEnded(Session session, int i) {
            MediaQueue.this.zzbf();
            MediaQueue.this.clear();
        }

        public final /* synthetic */ void onSessionEnding(Session session) {
            MediaQueue.this.zzbf();
            MediaQueue.this.clear();
        }

        public final /* synthetic */ void onSessionStarted(Session session, String str) {
            MediaQueue.this.zza(((CastSession) session).getRemoteMediaClient());
        }

        /* synthetic */ zzc(MediaQueue mediaQueue, zzk zzk) {
            this();
        }
    }

    @VisibleForTesting
    class zzd extends com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback {
        zzd() {
        }

        public final void zza(int[] iArr) {
            List<Integer> zzg = zzcu.zzg(iArr);
            if (!MediaQueue.this.zzmd.equals(zzg)) {
                MediaQueue.this.zzbi();
                MediaQueue.this.zzmf.evictAll();
                MediaQueue.this.zzmg.clear();
                MediaQueue mediaQueue = MediaQueue.this;
                mediaQueue.zzmd = zzg;
                mediaQueue.zzbh();
                MediaQueue.this.zzbk();
                MediaQueue.this.zzbj();
            }
        }

        public final void zza(int[] iArr, int i) {
            int i2;
            int length = iArr.length;
            if (i == 0) {
                i2 = MediaQueue.this.zzmd.size();
            } else {
                i2 = MediaQueue.this.zzme.get(i, -1);
                if (i2 == -1) {
                    MediaQueue.this.reload();
                    return;
                }
            }
            MediaQueue.this.zzbi();
            MediaQueue.this.zzmd.addAll(i2, zzcu.zzg(iArr));
            MediaQueue.this.zzbh();
            MediaQueue.this.zzb(i2, length);
            MediaQueue.this.zzbj();
        }

        public final void zzb(int[] iArr) {
            ArrayList arrayList = new ArrayList();
            int length = iArr.length;
            int i = 0;
            while (i < length) {
                int i2 = iArr[i];
                MediaQueue.this.zzmf.remove(Integer.valueOf(i2));
                int i3 = MediaQueue.this.zzme.get(i2, -1);
                if (i3 == -1) {
                    MediaQueue.this.reload();
                    return;
                } else {
                    arrayList.add(Integer.valueOf(i3));
                    i++;
                }
            }
            Collections.sort(arrayList);
            MediaQueue.this.zzbi();
            MediaQueue.this.zzd(zzcu.zza((Collection<Integer>) arrayList));
            MediaQueue.this.zzbj();
        }

        public final void zzc(int[] iArr) {
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                MediaQueue.this.zzmf.remove(Integer.valueOf(i));
                int i2 = MediaQueue.this.zzme.get(i, -1);
                if (i2 == -1) {
                    MediaQueue.this.reload();
                    return;
                }
                MediaQueue.this.zzme.delete(i);
                arrayList.add(Integer.valueOf(i2));
            }
            if (!arrayList.isEmpty()) {
                Collections.sort(arrayList);
                MediaQueue.this.zzbi();
                MediaQueue.this.zzmd.removeAll(zzcu.zzg(iArr));
                MediaQueue.this.zzbh();
                MediaQueue.this.zze(zzcu.zza((Collection<Integer>) arrayList));
                MediaQueue.this.zzbj();
            }
        }

        public final void zzb(MediaQueueItem[] mediaQueueItemArr) {
            HashSet hashSet = new HashSet();
            MediaQueue.this.zzmg.clear();
            int length = mediaQueueItemArr.length;
            int i = 0;
            while (i < length) {
                MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
                int itemId = mediaQueueItem.getItemId();
                MediaQueue.this.zzmf.put(Integer.valueOf(itemId), mediaQueueItem);
                int i2 = MediaQueue.this.zzme.get(itemId, -1);
                if (i2 == -1) {
                    MediaQueue.this.reload();
                    return;
                } else {
                    hashSet.add(Integer.valueOf(i2));
                    i++;
                }
            }
            for (Integer intValue : MediaQueue.this.zzmg) {
                int i3 = MediaQueue.this.zzme.get(intValue.intValue(), -1);
                if (i3 != -1) {
                    hashSet.add(Integer.valueOf(i3));
                }
            }
            MediaQueue.this.zzmg.clear();
            ArrayList arrayList = new ArrayList(hashSet);
            Collections.sort(arrayList);
            MediaQueue.this.zzbi();
            MediaQueue.this.zzd(zzcu.zza((Collection<Integer>) arrayList));
            MediaQueue.this.zzbj();
        }

        public final void onStatusUpdated() {
            MediaQueue mediaQueue = MediaQueue.this;
            long zza = MediaQueue.zzb(mediaQueue.zzhs);
            if (zza != MediaQueue.this.zzef) {
                MediaQueue mediaQueue2 = MediaQueue.this;
                mediaQueue2.zzef = zza;
                mediaQueue2.clear();
                if (MediaQueue.this.zzef != 0) {
                    MediaQueue.this.reload();
                }
            }
        }
    }

    MediaQueue(@NonNull RemoteMediaClient remoteMediaClient) {
        this(remoteMediaClient, 20, 20);
    }

    @VisibleForTesting
    private MediaQueue(@NonNull RemoteMediaClient remoteMediaClient, int i, int i2) {
        this.zzmq = new HashSet();
        this.zzmb = new zzdg("MediaQueue");
        this.zzhs = remoteMediaClient;
        this.zzmi = Math.max(20, 1);
        CastSession currentCastSession = CastContext.getSharedInstance().getSessionManager().getCurrentCastSession();
        this.zzmd = new ArrayList();
        this.zzme = new SparseIntArray();
        this.zzmg = new ArrayList();
        this.zzmh = new ArrayDeque(20);
        this.handler = new Handler(Looper.getMainLooper());
        zzh(20);
        this.zzmj = new zzk(this);
        this.zzmm = new zzb(this, null);
        this.zzmn = new zza(this, null);
        this.zzmo = new zzd();
        this.zzmp = new zzc(this, null);
        CastContext.getSharedInstance().getSessionManager().addSessionManagerListener(this.zzmp, CastSession.class);
        if (currentCastSession != null && currentCastSession.isConnected()) {
            zza(currentCastSession.getRemoteMediaClient());
        }
    }

    private final void zzh(int i) {
        this.zzmf = new zzl(this, i);
    }

    public void registerCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzmq.add(callback);
    }

    public void unregisterCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzmq.remove(callback);
    }

    public int getItemCount() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzmd.size();
    }

    public int[] getItemIds() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return zzcu.zza((Collection<Integer>) this.zzmd);
    }

    public void setCacheCapacity(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        LruCache<Integer, MediaQueueItem> lruCache = this.zzmf;
        ArrayList arrayList = new ArrayList();
        zzh(i);
        int size = lruCache.size();
        for (Entry entry : lruCache.snapshot().entrySet()) {
            if (size > i) {
                int i2 = this.zzme.get(((Integer) entry.getKey()).intValue(), -1);
                if (i2 != -1) {
                    arrayList.add(Integer.valueOf(i2));
                }
            } else {
                this.zzmf.put((Integer) entry.getKey(), (MediaQueueItem) entry.getValue());
            }
            size--;
        }
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            zzbi();
            zzd(zzcu.zza((Collection<Integer>) arrayList));
            zzbj();
        }
    }

    @Nullable
    public MediaQueueItem getItemAtIndex(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return getItemAtIndex(i, true);
    }

    @Nullable
    public MediaQueueItem getItemAtIndex(int i, boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (i < 0 || i >= this.zzmd.size()) {
            return null;
        }
        int intValue = ((Integer) this.zzmd.get(i)).intValue();
        MediaQueueItem mediaQueueItem = (MediaQueueItem) this.zzmf.get(Integer.valueOf(intValue));
        if (mediaQueueItem == null && z && !this.zzmh.contains(Integer.valueOf(intValue))) {
            while (this.zzmh.size() >= this.zzmi) {
                this.zzmh.removeFirst();
            }
            this.zzmh.add(Integer.valueOf(intValue));
            zzbb();
        }
        return mediaQueueItem;
    }

    public int itemIdAtIndex(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (i < 0 || i >= this.zzmd.size()) {
            return 0;
        }
        return ((Integer) this.zzmd.get(i)).intValue();
    }

    public int indexOfItemWithId(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzme.get(i, -1);
    }

    public PendingResult<MediaChannelResult> fetchMoreItemsRelativeToIndex(int i, int i2, int i3) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!this.zzmc || this.zzef == 0) {
            return RemoteMediaClient.zza(2100, "No active media session");
        }
        int itemIdAtIndex = itemIdAtIndex(i);
        if (itemIdAtIndex == 0) {
            return RemoteMediaClient.zza((int) CastStatusCodes.INVALID_REQUEST, "index out of bound");
        }
        return this.zzhs.zza(itemIdAtIndex, i2, i3);
    }

    @VisibleForTesting
    public final void clear() {
        zzbi();
        this.zzmd.clear();
        this.zzme.clear();
        this.zzmf.evictAll();
        this.zzmg.clear();
        zzbc();
        this.zzmh.clear();
        zzbd();
        zzbe();
        zzbk();
        zzbj();
    }

    public final void reload() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.zzmc && this.zzef != 0 && this.zzml == null) {
            zzbd();
            zzbe();
            this.zzml = this.zzhs.zzcc();
            this.zzml.setResultCallback(this.zzmn);
        }
    }

    public final void zzbb() {
        zzbc();
        this.handler.postDelayed(this.zzmj, 500);
    }

    private final void zzbc() {
        this.handler.removeCallbacks(this.zzmj);
    }

    private final void zzbd() {
        PendingResult<MediaChannelResult> pendingResult = this.zzml;
        if (pendingResult != null) {
            pendingResult.cancel();
            this.zzml = null;
        }
    }

    private final void zzbe() {
        PendingResult<MediaChannelResult> pendingResult = this.zzmk;
        if (pendingResult != null) {
            pendingResult.cancel();
            this.zzmk = null;
        }
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public final void zza(RemoteMediaClient remoteMediaClient) {
        if (remoteMediaClient != null && this.zzhs == remoteMediaClient) {
            this.zzmc = true;
            remoteMediaClient.registerCallback(this.zzmo);
            long zzb2 = zzb(remoteMediaClient);
            this.zzef = zzb2;
            if (zzb2 != 0) {
                reload();
            }
        }
    }

    /* access modifiers changed from: private */
    public static long zzb(RemoteMediaClient remoteMediaClient) {
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        if (mediaStatus == null || mediaStatus.zzk()) {
            return 0;
        }
        return mediaStatus.zzj();
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public final void zzbf() {
        this.zzhs.unregisterCallback(this.zzmo);
        this.zzmc = false;
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public final void zzbg() {
        if (!this.zzmh.isEmpty() && this.zzmk == null && this.zzmc && this.zzef != 0) {
            this.zzmk = this.zzhs.zzf(zzcu.zza((Collection<Integer>) this.zzmh));
            this.zzmk.setResultCallback(this.zzmm);
            this.zzmh.clear();
        }
    }

    /* access modifiers changed from: private */
    public final void zzbh() {
        this.zzme.clear();
        for (int i = 0; i < this.zzmd.size(); i++) {
            this.zzme.put(((Integer) this.zzmd.get(i)).intValue(), i);
        }
    }

    /* access modifiers changed from: private */
    public final void zzbi() {
        for (Callback mediaQueueWillChange : this.zzmq) {
            mediaQueueWillChange.mediaQueueWillChange();
        }
    }

    /* access modifiers changed from: private */
    public final void zzbj() {
        for (Callback mediaQueueChanged : this.zzmq) {
            mediaQueueChanged.mediaQueueChanged();
        }
    }

    /* access modifiers changed from: private */
    public final void zzbk() {
        for (Callback itemsReloaded : this.zzmq) {
            itemsReloaded.itemsReloaded();
        }
    }

    /* access modifiers changed from: private */
    public final void zzb(int i, int i2) {
        for (Callback itemsInsertedInRange : this.zzmq) {
            itemsInsertedInRange.itemsInsertedInRange(i, i2);
        }
    }

    /* access modifiers changed from: private */
    public final void zzd(int[] iArr) {
        for (Callback itemsUpdatedAtIndexes : this.zzmq) {
            itemsUpdatedAtIndexes.itemsUpdatedAtIndexes(iArr);
        }
    }

    /* access modifiers changed from: private */
    public final void zze(int[] iArr) {
        for (Callback itemsRemovedAtIndexes : this.zzmq) {
            itemsRemovedAtIndexes.itemsRemovedAtIndexes(iArr);
        }
    }
}
