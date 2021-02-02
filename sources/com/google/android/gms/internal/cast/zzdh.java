package com.google.android.gms.internal.cast;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadOptions;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.zzbq;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@VisibleForTesting
public final class zzdh extends zzcg {
    public static final String NAMESPACE = zzcu.zzp("com.google.cast.media");
    private long zzxk;
    private MediaStatus zzxl;
    /* access modifiers changed from: private */
    public Long zzxm;
    private zzdj zzxn;
    private final zzdn zzxo = new zzdn(86400000);
    private final zzdn zzxp = new zzdn(86400000);
    private final zzdn zzxq = new zzdn(86400000);
    private final zzdn zzxr = new zzdn(86400000);
    private final zzdn zzxs = new zzdn(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    private final zzdn zzxt = new zzdn(86400000);
    private final zzdn zzxu = new zzdn(86400000);
    private final zzdn zzxv = new zzdn(86400000);
    private final zzdn zzxw = new zzdn(86400000);
    private final zzdn zzxx = new zzdn(86400000);
    private final zzdn zzxy = new zzdn(86400000);
    private final zzdn zzxz = new zzdn(86400000);
    private final zzdn zzya = new zzdn(86400000);
    private final zzdn zzyb = new zzdn(86400000);
    private final zzdn zzyc = new zzdn(86400000);
    private final zzdn zzyd = new zzdn(86400000);
    private final zzdn zzye = new zzdn(86400000);
    private final zzdn zzyf = new zzdn(86400000);

    public zzdh(String str) {
        super(NAMESPACE, "MediaControlChannel", null);
        zza(this.zzxo);
        zza(this.zzxp);
        zza(this.zzxq);
        zza(this.zzxr);
        zza(this.zzxs);
        zza(this.zzxt);
        zza(this.zzxu);
        zza(this.zzxv);
        zza(this.zzxw);
        zza(this.zzxx);
        zza(this.zzxy);
        zza(this.zzxz);
        zza(this.zzya);
        zza(this.zzyb);
        zza(this.zzyc);
        zza(this.zzye);
        zza(this.zzye);
        zza(this.zzyf);
        zzdo();
    }

    public final void zza(zzdj zzdj) {
        this.zzxn = zzdj;
    }

    public final long zza(@NonNull zzdm zzdm, @NonNull MediaInfo mediaInfo, @NonNull MediaLoadOptions mediaLoadOptions) throws IllegalStateException, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzxo.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "LOAD");
            jSONObject.put("media", mediaInfo.toJson());
            jSONObject.put("autoplay", mediaLoadOptions.getAutoplay());
            String str = "currentTime";
            double playPosition = (double) mediaLoadOptions.getPlayPosition();
            Double.isNaN(playPosition);
            jSONObject.put(str, playPosition / 1000.0d);
            jSONObject.put("playbackRate", mediaLoadOptions.getPlaybackRate());
            if (mediaLoadOptions.getCredentials() != null) {
                jSONObject.put("credentials", mediaLoadOptions.getCredentials());
            }
            if (mediaLoadOptions.getCredentialsType() != null) {
                jSONObject.put("credentialsType", mediaLoadOptions.getCredentialsType());
            }
            long[] activeTrackIds = mediaLoadOptions.getActiveTrackIds();
            if (activeTrackIds != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < activeTrackIds.length; i++) {
                    jSONArray.put(i, activeTrackIds[i]);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject customData = mediaLoadOptions.getCustomData();
            if (customData != null) {
                jSONObject.put("customData", customData);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, JSONObject jSONObject) throws IllegalStateException, zzdk {
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxp.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzj());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zzb(zzdm zzdm, JSONObject jSONObject) throws IllegalStateException, zzdk {
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxr.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", zzj());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zzc(zzdm zzdm, JSONObject jSONObject) throws IllegalStateException, zzdk {
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxq.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzj());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, long j, int i, JSONObject jSONObject) throws IllegalStateException, zzdk {
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxm = Long.valueOf(j);
        this.zzxs.zza(zzde, (zzdm) new zzdi(this, zzdm));
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "SEEK");
            jSONObject2.put("mediaSessionId", zzj());
            String str = "currentTime";
            double d = (double) j;
            Double.isNaN(d);
            jSONObject2.put(str, d / 1000.0d);
            String str2 = "resumeState";
            if (i == 1) {
                jSONObject2.put(str2, "PLAYBACK_START");
            } else if (i == 2) {
                jSONObject2.put(str2, "PLAYBACK_PAUSE");
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm) throws IllegalStateException, zzdk {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzxt.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "SKIP_AD");
            jSONObject.put("mediaSessionId", zzj());
        } catch (JSONException e) {
            this.zzvq.w(String.format(Locale.ROOT, "Error creating SkipAd message: %s", new Object[]{e.getMessage()}), new Object[0]);
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, double d, JSONObject jSONObject) throws IllegalStateException, zzdk, IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxt.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzj());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(Param.LEVEL, d);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, boolean z, JSONObject jSONObject) throws IllegalStateException, zzdk {
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzxu.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzj());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zzb(zzdm zzdm, double d, JSONObject jSONObject) throws IllegalStateException, zzdk {
        if (this.zzxl != null) {
            JSONObject jSONObject2 = new JSONObject();
            long zzde = zzde();
            this.zzyf.zza(zzde, zzdm);
            try {
                jSONObject2.put("requestId", zzde);
                jSONObject2.put("type", "SET_PLAYBACK_RATE");
                jSONObject2.put("playbackRate", d);
                jSONObject2.put("mediaSessionId", this.zzxl.zzj());
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject2.toString(), zzde, null);
            return zzde;
        }
        throw new zzdk();
    }

    public final long zzb(zzdm zzdm) throws IllegalStateException {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzxv.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "GET_STATUS");
            if (this.zzxl != null) {
                jSONObject.put("mediaSessionId", this.zzxl.zzj());
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, long[] jArr) throws IllegalStateException, zzdk {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzxw.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzj());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, TextTrackStyle textTrackStyle) throws IllegalStateException, zzdk {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzxx.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.toJson());
            }
            jSONObject.put("mediaSessionId", zzj());
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null) {
            return 0;
        }
        Long l = this.zzxm;
        if (l != null) {
            return l.longValue();
        }
        if (this.zzxk == 0) {
            return 0;
        }
        double playbackRate = this.zzxl.getPlaybackRate();
        long streamPosition = this.zzxl.getStreamPosition();
        int playerState = this.zzxl.getPlayerState();
        if (playbackRate == 0.0d || playerState != 2) {
            return streamPosition;
        }
        return zza(playbackRate, streamPosition, mediaInfo.getStreamDuration());
    }

    public final long getApproximateAdBreakClipPositionMs() {
        if (this.zzxk != 0) {
            MediaStatus mediaStatus = this.zzxl;
            if (mediaStatus != null) {
                AdBreakStatus adBreakStatus = mediaStatus.getAdBreakStatus();
                if (adBreakStatus == null) {
                    return 0;
                }
                AdBreakClipInfo currentAdBreakClip = this.zzxl.getCurrentAdBreakClip();
                if (currentAdBreakClip == null) {
                    return 0;
                }
                double d = 0.0d;
                if (this.zzxl.getPlaybackRate() == 0.0d && this.zzxl.getPlayerState() == 2) {
                    d = 1.0d;
                }
                return zza(d, adBreakStatus.getCurrentBreakClipTimeInMs(), currentAdBreakClip.getDurationInMs());
            }
        }
        return 0;
    }

    private final long zza(double d, long j, long j2) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzxk;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return j;
        }
        double d2 = (double) elapsedRealtime;
        Double.isNaN(d2);
        long j3 = ((long) (d2 * d)) + j;
        if (j2 > 0 && j3 > j2) {
            j3 = j2;
        } else if (j3 < 0) {
            j3 = 0;
        }
        return j3;
    }

    public final long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.getStreamDuration();
        }
        return 0;
    }

    public final MediaStatus getMediaStatus() {
        return this.zzxl;
    }

    public final MediaInfo getMediaInfo() {
        MediaStatus mediaStatus = this.zzxl;
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getMediaInfo();
    }

    public final long zza(zzdm zzdm, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("items must not be null or empty.");
        } else if (i < 0 || i >= mediaQueueItemArr.length) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Invalid startIndex: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzde = zzde();
            this.zzxo.zza(zzde, zzdm);
            try {
                jSONObject2.put("requestId", zzde);
                jSONObject2.put("type", "QUEUE_LOAD");
                JSONArray jSONArray = new JSONArray();
                for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                    jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                }
                jSONObject2.put("items", jSONArray);
                String str = "repeatMode";
                if (i2 == 0) {
                    jSONObject2.put(str, "REPEAT_OFF");
                } else if (i2 == 1) {
                    jSONObject2.put(str, "REPEAT_ALL");
                } else if (i2 == 2) {
                    jSONObject2.put(str, "REPEAT_SINGLE");
                } else if (i2 == 3) {
                    jSONObject2.put(str, "REPEAT_ALL_AND_SHUFFLE");
                } else {
                    StringBuilder sb2 = new StringBuilder(32);
                    sb2.append("Invalid repeat mode: ");
                    sb2.append(i2);
                    throw new IllegalArgumentException(sb2.toString());
                }
                jSONObject2.put("startIndex", i);
                if (j != -1) {
                    String str2 = "currentTime";
                    double d = (double) j;
                    Double.isNaN(d);
                    jSONObject2.put(str2, d / 1000.0d);
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject2.toString(), zzde, null);
            return zzde;
        } else {
            StringBuilder sb3 = new StringBuilder(54);
            sb3.append("playPosition can not be negative: ");
            sb3.append(j);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    public final long zza(zzdm zzdm, MediaQueueItem[] mediaQueueItemArr, int i, int i2, int i3, long j, JSONObject jSONObject) throws IllegalStateException, zzdk, IllegalArgumentException {
        MediaQueueItem[] mediaQueueItemArr2 = mediaQueueItemArr;
        int i4 = i;
        int i5 = i3;
        long j2 = j;
        JSONObject jSONObject2 = jSONObject;
        if (mediaQueueItemArr2 == null || mediaQueueItemArr2.length == 0) {
            throw new IllegalArgumentException("itemsToInsert must not be null or empty.");
        }
        if (i5 != -1 && (i5 < 0 || i5 >= mediaQueueItemArr2.length)) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "currentItemIndexInItemsToInsert %d out of range [0, %d).", new Object[]{Integer.valueOf(i3), Integer.valueOf(mediaQueueItemArr2.length)}));
        } else if (j2 == -1 || j2 >= 0) {
            JSONObject jSONObject3 = new JSONObject();
            long zzde = zzde();
            this.zzxy.zza(zzde, zzdm);
            try {
                jSONObject3.put("requestId", zzde);
                jSONObject3.put("type", "QUEUE_INSERT");
                jSONObject3.put("mediaSessionId", zzj());
                JSONArray jSONArray = new JSONArray();
                for (int i6 = 0; i6 < mediaQueueItemArr2.length; i6++) {
                    jSONArray.put(i6, mediaQueueItemArr2[i6].toJson());
                }
                jSONObject3.put("items", jSONArray);
                if (i4 != 0) {
                    jSONObject3.put("insertBefore", i4);
                }
                if (i5 != -1) {
                    jSONObject3.put("currentItemIndex", i5);
                }
                if (j2 != -1) {
                    String str = "currentTime";
                    double d = (double) j2;
                    Double.isNaN(d);
                    jSONObject3.put(str, d / 1000.0d);
                }
                if (jSONObject2 != null) {
                    jSONObject3.put("customData", jSONObject2);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject3.toString(), zzde, null);
            return zzde;
        } else {
            StringBuilder sb = new StringBuilder(54);
            sb.append("playPosition can not be negative: ");
            sb.append(j2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public final long zza(zzdm zzdm, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IllegalStateException, zzdk {
        if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzde = zzde();
            this.zzxz.zza(zzde, zzdm);
            try {
                jSONObject2.put("requestId", zzde);
                jSONObject2.put("type", "QUEUE_UPDATE");
                jSONObject2.put("mediaSessionId", zzj());
                if (i != 0) {
                    jSONObject2.put("currentItemId", i);
                }
                if (i2 != 0) {
                    jSONObject2.put("jump", i2);
                }
                if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                        jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                    }
                    jSONObject2.put("items", jSONArray);
                }
                if (num != null) {
                    int intValue = num.intValue();
                    String str = "repeatMode";
                    if (intValue == 0) {
                        jSONObject2.put(str, "REPEAT_OFF");
                    } else if (intValue == 1) {
                        jSONObject2.put(str, "REPEAT_ALL");
                    } else if (intValue == 2) {
                        jSONObject2.put(str, "REPEAT_SINGLE");
                    } else if (intValue == 3) {
                        jSONObject2.put(str, "REPEAT_ALL_AND_SHUFFLE");
                    }
                }
                if (j != -1) {
                    String str2 = "currentTime";
                    double d = (double) j;
                    Double.isNaN(d);
                    jSONObject2.put(str2, d / 1000.0d);
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject2.toString(), zzde, null);
            return zzde;
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("playPosition cannot be negative: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    public final long zza(zzdm zzdm, int[] iArr, JSONObject jSONObject) throws IllegalStateException, zzdk, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToRemove must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzya.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "QUEUE_REMOVE");
            jSONObject2.put("mediaSessionId", zzj());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < iArr.length; i++) {
                jSONArray.put(i, iArr[i]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, int[] iArr, int i, JSONObject jSONObject) throws IllegalStateException, zzdk, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToReorder must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzde = zzde();
        this.zzyb.zza(zzde, zzdm);
        try {
            jSONObject2.put("requestId", zzde);
            jSONObject2.put("type", "QUEUE_REORDER");
            jSONObject2.put("mediaSessionId", zzj());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jSONArray.put(i2, iArr[i2]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzde, null);
        return zzde;
    }

    public final long zzc(zzdm zzdm) throws zzdk, IllegalStateException {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzyc.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "QUEUE_GET_ITEM_IDS");
            jSONObject.put("mediaSessionId", zzj());
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, int i, int i2, int i3) throws zzdk, IllegalArgumentException {
        if ((i2 <= 0 || i3 != 0) && (i2 != 0 || i3 <= 0)) {
            throw new IllegalArgumentException("Exactly one of nextCount and prevCount must be positive and the other must be zero");
        }
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzye.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "QUEUE_GET_ITEM_RANGE");
            jSONObject.put("mediaSessionId", zzj());
            jSONObject.put("itemId", i);
            if (i2 > 0) {
                jSONObject.put("nextCount", i2);
            }
            if (i3 > 0) {
                jSONObject.put("prevCount", i3);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zza(zzdm zzdm, int[] iArr) throws zzdk, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        long zzde = zzde();
        this.zzyd.zza(zzde, zzdm);
        try {
            jSONObject.put("requestId", zzde);
            jSONObject.put("type", "QUEUE_GET_ITEMS");
            jSONObject.put("mediaSessionId", zzj());
            JSONArray jSONArray = new JSONArray();
            for (int put : iArr) {
                jSONArray.put(put);
            }
            jSONObject.put("itemIds", jSONArray);
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzde, null);
        return zzde;
    }

    public final long zzb(String str, List<zzbq> list) throws IllegalStateException {
        long zzde = zzde();
        zza(zza(str, list, zzde), zzde, null);
        return zzde;
    }

    private static String zza(String str, List<zzbq> list, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("requestId", j);
            jSONObject.put("type", "PRECACHE");
            if (str != null) {
                jSONObject.put("precacheData", str);
            }
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    jSONArray.put(i, ((zzbq) list.get(i)).toJson());
                }
                jSONObject.put("requestItems", jSONArray);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:114:0x020c A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x0219 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0226 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0230 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x0237 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x023e A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x0245 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0258 A[Catch:{ JSONException -> 0x0289 }] */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x026f A[Catch:{ JSONException -> 0x0289 }, LOOP:3: B:139:0x0269->B:141:0x026f, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzn(java.lang.String r15) {
        /*
            r14 = this;
            com.google.android.gms.internal.cast.zzdg r0 = r14.zzvq
            r1 = 1
            java.lang.Object[] r2 = new java.lang.Object[r1]
            r3 = 0
            r2[r3] = r15
            java.lang.String r4 = "message received: %s"
            r0.d(r4, r2)
            r0 = 2
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch:{ JSONException -> 0x0289 }
            r2.<init>(r15)     // Catch:{ JSONException -> 0x0289 }
            java.lang.String r4 = "type"
            java.lang.String r4 = r2.getString(r4)     // Catch:{ JSONException -> 0x0289 }
            java.lang.String r5 = "requestId"
            r6 = -1
            long r5 = r2.optLong(r5, r6)     // Catch:{ JSONException -> 0x0289 }
            int r7 = r4.hashCode()     // Catch:{ JSONException -> 0x0289 }
            r8 = -1
            r9 = 4
            r10 = 3
            switch(r7) {
                case -1830647528: goto L_0x0072;
                case -1790231854: goto L_0x0068;
                case -1125000185: goto L_0x005e;
                case -262628938: goto L_0x0054;
                case 154411710: goto L_0x004a;
                case 431600379: goto L_0x0040;
                case 823510221: goto L_0x0036;
                case 2107149050: goto L_0x002c;
                default: goto L_0x002b;
            }     // Catch:{ JSONException -> 0x0289 }
        L_0x002b:
            goto L_0x007c
        L_0x002c:
            java.lang.String r7 = "QUEUE_ITEM_IDS"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 5
            goto L_0x007d
        L_0x0036:
            java.lang.String r7 = "MEDIA_STATUS"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 0
            goto L_0x007d
        L_0x0040:
            java.lang.String r7 = "INVALID_PLAYER_STATE"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 1
            goto L_0x007d
        L_0x004a:
            java.lang.String r7 = "QUEUE_CHANGE"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 6
            goto L_0x007d
        L_0x0054:
            java.lang.String r7 = "LOAD_FAILED"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 2
            goto L_0x007d
        L_0x005e:
            java.lang.String r7 = "INVALID_REQUEST"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 4
            goto L_0x007d
        L_0x0068:
            java.lang.String r7 = "QUEUE_ITEMS"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 7
            goto L_0x007d
        L_0x0072:
            java.lang.String r7 = "LOAD_CANCELLED"
            boolean r4 = r4.equals(r7)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x007c
            r4 = 3
            goto L_0x007d
        L_0x007c:
            r4 = -1
        L_0x007d:
            java.lang.String r7 = "itemIds"
            r11 = 2100(0x834, float:2.943E-42)
            java.lang.String r12 = "customData"
            r13 = 0
            switch(r4) {
                case 0: goto L_0x01b2;
                case 1: goto L_0x018c;
                case 2: goto L_0x0182;
                case 3: goto L_0x0176;
                case 4: goto L_0x0150;
                case 5: goto L_0x0137;
                case 6: goto L_0x00be;
                case 7: goto L_0x0089;
                default: goto L_0x0087;
            }
        L_0x0087:
            goto L_0x0288
        L_0x0089:
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzyd     // Catch:{ JSONException -> 0x0289 }
            r4.zzc(r5, r3, r13)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0288
            java.lang.String r4 = "items"
            org.json.JSONArray r2 = r2.getJSONArray(r4)     // Catch:{ JSONException -> 0x0289 }
            int r4 = r2.length()     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.cast.MediaQueueItem[] r4 = new com.google.android.gms.cast.MediaQueueItem[r4]     // Catch:{ JSONException -> 0x0289 }
            r5 = 0
        L_0x009f:
            int r6 = r2.length()     // Catch:{ JSONException -> 0x0289 }
            if (r5 >= r6) goto L_0x00b7
            com.google.android.gms.cast.MediaQueueItem$Builder r6 = new com.google.android.gms.cast.MediaQueueItem$Builder     // Catch:{ JSONException -> 0x0289 }
            org.json.JSONObject r7 = r2.getJSONObject(r5)     // Catch:{ JSONException -> 0x0289 }
            r6.<init>(r7)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.cast.MediaQueueItem r6 = r6.build()     // Catch:{ JSONException -> 0x0289 }
            r4[r5] = r6     // Catch:{ JSONException -> 0x0289 }
            int r5 = r5 + 1
            goto L_0x009f
        L_0x00b7:
            com.google.android.gms.internal.cast.zzdj r2 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r2.zzb(r4)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x0288
        L_0x00be:
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzye     // Catch:{ JSONException -> 0x0289 }
            r4.zzc(r5, r3, r13)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0136
            java.lang.String r4 = "changeType"
            java.lang.String r4 = r2.getString(r4)     // Catch:{ JSONException -> 0x0289 }
            org.json.JSONArray r5 = r2.getJSONArray(r7)     // Catch:{ JSONException -> 0x0289 }
            int[] r5 = zzb(r5)     // Catch:{ JSONException -> 0x0289 }
            java.lang.String r6 = "insertBefore"
            int r2 = r2.optInt(r6, r3)     // Catch:{ JSONException -> 0x0289 }
            if (r5 == 0) goto L_0x0136
            int r6 = r4.hashCode()     // Catch:{ JSONException -> 0x0289 }
            switch(r6) {
                case -2130463047: goto L_0x010d;
                case -1881281404: goto L_0x0103;
                case -1785516855: goto L_0x00f9;
                case 1122976047: goto L_0x00ef;
                case 1395699694: goto L_0x00e5;
                default: goto L_0x00e4;
            }     // Catch:{ JSONException -> 0x0289 }
        L_0x00e4:
            goto L_0x0116
        L_0x00e5:
            java.lang.String r6 = "NO_CHANGE"
            boolean r4 = r4.equals(r6)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0116
            r8 = 4
            goto L_0x0116
        L_0x00ef:
            java.lang.String r6 = "ITEMS_CHANGE"
            boolean r4 = r4.equals(r6)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0116
            r8 = 1
            goto L_0x0116
        L_0x00f9:
            java.lang.String r6 = "UPDATE"
            boolean r4 = r4.equals(r6)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0116
            r8 = 3
            goto L_0x0116
        L_0x0103:
            java.lang.String r6 = "REMOVE"
            boolean r4 = r4.equals(r6)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0116
            r8 = 2
            goto L_0x0116
        L_0x010d:
            java.lang.String r6 = "INSERT"
            boolean r4 = r4.equals(r6)     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0116
            r8 = 0
        L_0x0116:
            if (r8 == 0) goto L_0x0131
            if (r8 == r1) goto L_0x012b
            if (r8 == r0) goto L_0x0125
            if (r8 == r10) goto L_0x011f
            goto L_0x0136
        L_0x011f:
            com.google.android.gms.internal.cast.zzdj r2 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r2.zza(r5)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x0136
        L_0x0125:
            com.google.android.gms.internal.cast.zzdj r2 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r2.zzc(r5)     // Catch:{ JSONException -> 0x0289 }
            return
        L_0x012b:
            com.google.android.gms.internal.cast.zzdj r2 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r2.zzb(r5)     // Catch:{ JSONException -> 0x0289 }
            return
        L_0x0131:
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r4.zza(r5, r2)     // Catch:{ JSONException -> 0x0289 }
        L_0x0136:
            return
        L_0x0137:
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzyc     // Catch:{ JSONException -> 0x0289 }
            r4.zzc(r5, r3, r13)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x014f
            org.json.JSONArray r2 = r2.getJSONArray(r7)     // Catch:{ JSONException -> 0x0289 }
            int[] r2 = zzb(r2)     // Catch:{ JSONException -> 0x0289 }
            if (r2 == 0) goto L_0x014f
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r4.zza(r2)     // Catch:{ JSONException -> 0x0289 }
        L_0x014f:
            return
        L_0x0150:
            com.google.android.gms.internal.cast.zzdg r4 = r14.zzvq     // Catch:{ JSONException -> 0x0289 }
            java.lang.String r7 = "received unexpected error: Invalid Request."
            java.lang.Object[] r8 = new java.lang.Object[r3]     // Catch:{ JSONException -> 0x0289 }
            r4.w(r7, r8)     // Catch:{ JSONException -> 0x0289 }
            org.json.JSONObject r2 = r2.optJSONObject(r12)     // Catch:{ JSONException -> 0x0289 }
            java.util.List r4 = r14.zzdd()     // Catch:{ JSONException -> 0x0289 }
            java.util.Iterator r4 = r4.iterator()     // Catch:{ JSONException -> 0x0289 }
        L_0x0165:
            boolean r7 = r4.hasNext()     // Catch:{ JSONException -> 0x0289 }
            if (r7 == 0) goto L_0x0175
            java.lang.Object r7 = r4.next()     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r7 = (com.google.android.gms.internal.cast.zzdn) r7     // Catch:{ JSONException -> 0x0289 }
            r7.zzc(r5, r11, r2)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x0165
        L_0x0175:
            return
        L_0x0176:
            org.json.JSONObject r2 = r2.optJSONObject(r12)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzxo     // Catch:{ JSONException -> 0x0289 }
            r7 = 2101(0x835, float:2.944E-42)
            r4.zzc(r5, r7, r2)     // Catch:{ JSONException -> 0x0289 }
            return
        L_0x0182:
            org.json.JSONObject r2 = r2.optJSONObject(r12)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzxo     // Catch:{ JSONException -> 0x0289 }
            r4.zzc(r5, r11, r2)     // Catch:{ JSONException -> 0x0289 }
            return
        L_0x018c:
            com.google.android.gms.internal.cast.zzdg r4 = r14.zzvq     // Catch:{ JSONException -> 0x0289 }
            java.lang.String r7 = "received unexpected error: Invalid Player State."
            java.lang.Object[] r8 = new java.lang.Object[r3]     // Catch:{ JSONException -> 0x0289 }
            r4.w(r7, r8)     // Catch:{ JSONException -> 0x0289 }
            org.json.JSONObject r2 = r2.optJSONObject(r12)     // Catch:{ JSONException -> 0x0289 }
            java.util.List r4 = r14.zzdd()     // Catch:{ JSONException -> 0x0289 }
            java.util.Iterator r4 = r4.iterator()     // Catch:{ JSONException -> 0x0289 }
        L_0x01a1:
            boolean r7 = r4.hasNext()     // Catch:{ JSONException -> 0x0289 }
            if (r7 == 0) goto L_0x01b1
            java.lang.Object r7 = r4.next()     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r7 = (com.google.android.gms.internal.cast.zzdn) r7     // Catch:{ JSONException -> 0x0289 }
            r7.zzc(r5, r11, r2)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x01a1
        L_0x01b1:
            return
        L_0x01b2:
            java.lang.String r4 = "status"
            org.json.JSONArray r2 = r2.getJSONArray(r4)     // Catch:{ JSONException -> 0x0289 }
            int r4 = r2.length()     // Catch:{ JSONException -> 0x0289 }
            if (r4 <= 0) goto L_0x027a
            org.json.JSONObject r2 = r2.getJSONObject(r3)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r4 = r14.zzxo     // Catch:{ JSONException -> 0x0289 }
            boolean r4 = r4.test(r5)     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r7 = r14.zzxt     // Catch:{ JSONException -> 0x0289 }
            boolean r7 = r7.zzdp()     // Catch:{ JSONException -> 0x0289 }
            if (r7 == 0) goto L_0x01d8
            com.google.android.gms.internal.cast.zzdn r7 = r14.zzxt     // Catch:{ JSONException -> 0x0289 }
            boolean r7 = r7.test(r5)     // Catch:{ JSONException -> 0x0289 }
            if (r7 == 0) goto L_0x01e8
        L_0x01d8:
            com.google.android.gms.internal.cast.zzdn r7 = r14.zzxu     // Catch:{ JSONException -> 0x0289 }
            boolean r7 = r7.zzdp()     // Catch:{ JSONException -> 0x0289 }
            if (r7 == 0) goto L_0x01ea
            com.google.android.gms.internal.cast.zzdn r7 = r14.zzxu     // Catch:{ JSONException -> 0x0289 }
            boolean r7 = r7.test(r5)     // Catch:{ JSONException -> 0x0289 }
            if (r7 != 0) goto L_0x01ea
        L_0x01e8:
            r7 = 1
            goto L_0x01eb
        L_0x01ea:
            r7 = 0
        L_0x01eb:
            if (r4 != 0) goto L_0x01f9
            com.google.android.gms.cast.MediaStatus r4 = r14.zzxl     // Catch:{ JSONException -> 0x0289 }
            if (r4 != 0) goto L_0x01f2
            goto L_0x01f9
        L_0x01f2:
            com.google.android.gms.cast.MediaStatus r4 = r14.zzxl     // Catch:{ JSONException -> 0x0289 }
            int r2 = r4.zza(r2, r7)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x0208
        L_0x01f9:
            com.google.android.gms.cast.MediaStatus r4 = new com.google.android.gms.cast.MediaStatus     // Catch:{ JSONException -> 0x0289 }
            r4.<init>(r2)     // Catch:{ JSONException -> 0x0289 }
            r14.zzxl = r4     // Catch:{ JSONException -> 0x0289 }
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
            r2 = 127(0x7f, float:1.78E-43)
        L_0x0208:
            r4 = r2 & 1
            if (r4 == 0) goto L_0x0215
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
            r14.onStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0215:
            r4 = r2 & 2
            if (r4 == 0) goto L_0x0222
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
            r14.onStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0222:
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x022c
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
        L_0x022c:
            r4 = r2 & 4
            if (r4 == 0) goto L_0x0233
            r14.onMetadataUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0233:
            r4 = r2 & 8
            if (r4 == 0) goto L_0x023a
            r14.onQueueStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x023a:
            r4 = r2 & 16
            if (r4 == 0) goto L_0x0241
            r14.onPreloadStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0241:
            r4 = r2 & 32
            if (r4 == 0) goto L_0x0254
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0254
            com.google.android.gms.internal.cast.zzdj r4 = r14.zzxn     // Catch:{ JSONException -> 0x0289 }
            r4.onAdBreakStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0254:
            r2 = r2 & 64
            if (r2 == 0) goto L_0x0261
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch:{ JSONException -> 0x0289 }
            r14.zzxk = r7     // Catch:{ JSONException -> 0x0289 }
            r14.onStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0261:
            java.util.List r2 = r14.zzdd()     // Catch:{ JSONException -> 0x0289 }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ JSONException -> 0x0289 }
        L_0x0269:
            boolean r4 = r2.hasNext()     // Catch:{ JSONException -> 0x0289 }
            if (r4 == 0) goto L_0x0279
            java.lang.Object r4 = r2.next()     // Catch:{ JSONException -> 0x0289 }
            com.google.android.gms.internal.cast.zzdn r4 = (com.google.android.gms.internal.cast.zzdn) r4     // Catch:{ JSONException -> 0x0289 }
            r4.zzc(r5, r3, r13)     // Catch:{ JSONException -> 0x0289 }
            goto L_0x0269
        L_0x0279:
            return
        L_0x027a:
            r14.zzxl = r13     // Catch:{ JSONException -> 0x0289 }
            r14.onStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
            r14.onMetadataUpdated()     // Catch:{ JSONException -> 0x0289 }
            r14.onQueueStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
            r14.onPreloadStatusUpdated()     // Catch:{ JSONException -> 0x0289 }
        L_0x0288:
            return
        L_0x0289:
            r2 = move-exception
            com.google.android.gms.internal.cast.zzdg r4 = r14.zzvq
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.String r2 = r2.getMessage()
            r0[r3] = r2
            r0[r1] = r15
            java.lang.String r15 = "Message is malformed (%s); ignoring: %s"
            r4.w(r15, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzdh.zzn(java.lang.String):void");
    }

    private static int[] zzb(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            iArr[i] = jSONArray.getInt(i);
        }
        return iArr;
    }

    private final long zzj() throws zzdk {
        MediaStatus mediaStatus = this.zzxl;
        if (mediaStatus != null) {
            return mediaStatus.zzj();
        }
        throw new zzdk();
    }

    private final void onStatusUpdated() {
        zzdj zzdj = this.zzxn;
        if (zzdj != null) {
            zzdj.onStatusUpdated();
        }
    }

    private final void onMetadataUpdated() {
        zzdj zzdj = this.zzxn;
        if (zzdj != null) {
            zzdj.onMetadataUpdated();
        }
    }

    private final void onQueueStatusUpdated() {
        zzdj zzdj = this.zzxn;
        if (zzdj != null) {
            zzdj.onQueueStatusUpdated();
        }
    }

    private final void onPreloadStatusUpdated() {
        zzdj zzdj = this.zzxn;
        if (zzdj != null) {
            zzdj.onPreloadStatusUpdated();
        }
    }

    private final void zzdo() {
        this.zzxk = 0;
        this.zzxl = null;
        for (zzdn zzq : zzdd()) {
            zzq.zzq(CastStatusCodes.CANCELED);
        }
    }

    public final void zzdc() {
        super.zzdc();
        zzdo();
    }

    public final void zza(long j, int i) {
        for (zzdn zzc : zzdd()) {
            zzc.zzc(j, i, null);
        }
    }
}
