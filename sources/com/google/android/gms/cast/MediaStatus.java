package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.cast.zzcu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "MediaStatusCreator")
@Reserved({1})
@VisibleForTesting
public class MediaStatus extends AbstractSafeParcelable {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final Creator<MediaStatus> CREATOR = new zzao();
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int REPEAT_MODE_REPEAT_ALL = 1;
    public static final int REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE = 3;
    public static final int REPEAT_MODE_REPEAT_OFF = 0;
    public static final int REPEAT_MODE_REPEAT_SINGLE = 2;
    @Field(getter = "getMediaInfo", id = 2)
    private MediaInfo zzdl;
    @Field(getter = "getPlaybackRate", id = 5)
    private double zzdo;
    @Field(getter = "getActiveTrackIds", id = 12)
    private long[] zzdp;
    @Field(getter = "getMediaSessionId", id = 3)
    private long zzef;
    @Field(getter = "getCurrentItemId", id = 4)
    private int zzeg;
    @Field(getter = "getPlayerState", id = 6)
    private int zzeh;
    @Field(getter = "getIdleReason", id = 7)
    private int zzei;
    @Field(getter = "getStreamPosition", id = 8)
    private long zzej;
    @Field(id = 9)
    private long zzek;
    @Field(getter = "getStreamVolume", id = 10)
    private double zzel;
    @Field(getter = "isMute", id = 11)
    private boolean zzem;
    @Field(getter = "getLoadingItemId", id = 13)
    private int zzen;
    @Field(getter = "getPreloadedItemId", id = 14)
    private int zzeo;
    @Field(id = 16)
    private int zzep;
    @Field(id = 17)
    private final ArrayList<MediaQueueItem> zzeq;
    @Field(getter = "isPlayingAd", id = 18)
    private boolean zzer;
    @Field(getter = "getAdBreakStatus", id = 19)
    private AdBreakStatus zzes;
    @Field(getter = "getVideoInfo", id = 20)
    private VideoInfo zzet;
    private final SparseArray<Integer> zzeu;
    @Field(id = 15)
    private String zzj;
    private JSONObject zzp;

    @Constructor
    MediaStatus(@Param(id = 2) MediaInfo mediaInfo, @Param(id = 3) long j, @Param(id = 4) int i, @Param(id = 5) double d, @Param(id = 6) int i2, @Param(id = 7) int i3, @Param(id = 8) long j2, @Param(id = 9) long j3, @Param(id = 10) double d2, @Param(id = 11) boolean z, @Param(id = 12) long[] jArr, @Param(id = 13) int i4, @Param(id = 14) int i5, @Param(id = 15) String str, @Param(id = 16) int i6, @Param(id = 17) List<MediaQueueItem> list, @Param(id = 18) boolean z2, @Param(id = 19) AdBreakStatus adBreakStatus, @Param(id = 20) VideoInfo videoInfo) {
        List<MediaQueueItem> list2 = list;
        this.zzeq = new ArrayList<>();
        this.zzeu = new SparseArray<>();
        this.zzdl = mediaInfo;
        this.zzef = j;
        this.zzeg = i;
        this.zzdo = d;
        this.zzeh = i2;
        this.zzei = i3;
        this.zzej = j2;
        this.zzek = j3;
        this.zzel = d2;
        this.zzem = z;
        this.zzdp = jArr;
        this.zzen = i4;
        this.zzeo = i5;
        this.zzj = str;
        String str2 = this.zzj;
        if (str2 != null) {
            try {
                this.zzp = new JSONObject(str2);
            } catch (JSONException unused) {
                this.zzp = null;
                this.zzj = null;
            }
        } else {
            this.zzp = null;
        }
        this.zzep = i6;
        if (list2 != null && !list.isEmpty()) {
            zza((MediaQueueItem[]) list2.toArray(new MediaQueueItem[list.size()]));
        }
        this.zzer = z2;
        this.zzes = adBreakStatus;
        this.zzet = videoInfo;
    }

    private static boolean zza(int i, int i2, int i3, int i4) {
        if (i != 1) {
            return false;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return i4 != 2;
            }
            if (i2 != 3) {
                return true;
            }
        }
        return i3 == 0;
    }

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(null, 0, 0, 0.0d, 0, 0, 0, 0, 0.0d, false, null, 0, 0, null, 0, null, false, null, null);
        zza(jSONObject, 0);
    }

    public final long zzj() {
        return this.zzef;
    }

    public int getPlayerState() {
        return this.zzeh;
    }

    public int getIdleReason() {
        return this.zzei;
    }

    public double getPlaybackRate() {
        return this.zzdo;
    }

    public MediaInfo getMediaInfo() {
        return this.zzdl;
    }

    public long getStreamPosition() {
        return this.zzej;
    }

    public boolean isMediaCommandSupported(long j) {
        return (j & this.zzek) != 0;
    }

    public double getStreamVolume() {
        return this.zzel;
    }

    public boolean isMute() {
        return this.zzem;
    }

    public long[] getActiveTrackIds() {
        return this.zzdp;
    }

    public JSONObject getCustomData() {
        return this.zzp;
    }

    public int getCurrentItemId() {
        return this.zzeg;
    }

    public int getLoadingItemId() {
        return this.zzen;
    }

    public int getPreloadedItemId() {
        return this.zzeo;
    }

    public int getQueueRepeatMode() {
        return this.zzep;
    }

    public List<MediaQueueItem> getQueueItems() {
        return this.zzeq;
    }

    public int getQueueItemCount() {
        return this.zzeq.size();
    }

    public MediaQueueItem getQueueItemById(int i) {
        return getItemById(i);
    }

    public MediaQueueItem getQueueItem(int i) {
        return getItemByIndex(i);
    }

    public boolean isPlayingAd() {
        return this.zzer;
    }

    public final void zzf(boolean z) {
        this.zzer = z;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.zzes;
    }

    public VideoInfo getVideoInfo() {
        return this.zzet;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:173:0x02cb, code lost:
        if (r15 == false) goto L_0x02ea;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:184:0x0302, code lost:
        if (r1.equals(r15) == false) goto L_0x0304;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:194:0x0325, code lost:
        if (r1.equals(r15) == false) goto L_0x0327;
     */
    /* JADX WARNING: Removed duplicated region for block: B:151:0x023f  */
    /* JADX WARNING: Removed duplicated region for block: B:183:0x02fe  */
    /* JADX WARNING: Removed duplicated region for block: B:193:0x0321  */
    /* JADX WARNING: Removed duplicated region for block: B:198:0x0333  */
    /* JADX WARNING: Removed duplicated region for block: B:209:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(org.json.JSONObject r14, int r15) throws org.json.JSONException {
        /*
            r13 = this;
            java.lang.String r0 = "mediaSessionId"
            long r0 = r14.getLong(r0)
            long r2 = r13.zzef
            r4 = 0
            r5 = 1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L_0x0012
            r13.zzef = r0
            r0 = 1
            goto L_0x0013
        L_0x0012:
            r0 = 0
        L_0x0013:
            java.lang.String r1 = "playerState"
            boolean r2 = r14.has(r1)
            r3 = 3
            r6 = 2
            if (r2 == 0) goto L_0x0091
            java.lang.String r1 = r14.getString(r1)
            java.lang.String r2 = "IDLE"
            boolean r2 = r1.equals(r2)
            r7 = 4
            if (r2 == 0) goto L_0x002c
            r1 = 1
            goto L_0x004b
        L_0x002c:
            java.lang.String r2 = "PLAYING"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x0036
            r1 = 2
            goto L_0x004b
        L_0x0036:
            java.lang.String r2 = "PAUSED"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x0040
            r1 = 3
            goto L_0x004b
        L_0x0040:
            java.lang.String r2 = "BUFFERING"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x004a
            r1 = 4
            goto L_0x004b
        L_0x004a:
            r1 = 0
        L_0x004b:
            int r2 = r13.zzeh
            if (r1 == r2) goto L_0x0053
            r13.zzeh = r1
            r0 = r0 | 2
        L_0x0053:
            if (r1 != r5) goto L_0x0091
            java.lang.String r1 = "idleReason"
            boolean r2 = r14.has(r1)
            if (r2 == 0) goto L_0x0091
            java.lang.String r1 = r14.getString(r1)
            java.lang.String r2 = "CANCELLED"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x006b
            r7 = 2
            goto L_0x0089
        L_0x006b:
            java.lang.String r2 = "INTERRUPTED"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x0075
            r7 = 3
            goto L_0x0089
        L_0x0075:
            java.lang.String r2 = "FINISHED"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x007f
            r7 = 1
            goto L_0x0089
        L_0x007f:
            java.lang.String r2 = "ERROR"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0088
            goto L_0x0089
        L_0x0088:
            r7 = 0
        L_0x0089:
            int r1 = r13.zzei
            if (r7 == r1) goto L_0x0091
            r13.zzei = r7
            r0 = r0 | 2
        L_0x0091:
            java.lang.String r1 = "playbackRate"
            boolean r2 = r14.has(r1)
            if (r2 == 0) goto L_0x00a7
            double r1 = r14.getDouble(r1)
            double r7 = r13.zzdo
            int r9 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r9 == 0) goto L_0x00a7
            r13.zzdo = r1
            r0 = r0 | 2
        L_0x00a7:
            java.lang.String r1 = "currentTime"
            boolean r2 = r14.has(r1)
            if (r2 == 0) goto L_0x00c7
            double r1 = r14.getDouble(r1)
            r7 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r1 = r1 * r7
            long r1 = (long) r1
            long r7 = r13.zzej
            int r9 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x00c5
            r13.zzej = r1
            r0 = r0 | 2
        L_0x00c5:
            r0 = r0 | 128(0x80, float:1.794E-43)
        L_0x00c7:
            java.lang.String r1 = "supportedMediaCommands"
            boolean r2 = r14.has(r1)
            if (r2 == 0) goto L_0x00dd
            long r1 = r14.getLong(r1)
            long r7 = r13.zzek
            int r9 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x00dd
            r13.zzek = r1
            r0 = r0 | 2
        L_0x00dd:
            java.lang.String r1 = "volume"
            boolean r2 = r14.has(r1)
            if (r2 == 0) goto L_0x010a
            r15 = r15 & r5
            if (r15 != 0) goto L_0x010a
            org.json.JSONObject r15 = r14.getJSONObject(r1)
            java.lang.String r1 = "level"
            double r1 = r15.getDouble(r1)
            double r7 = r13.zzel
            int r9 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x00fc
            r13.zzel = r1
            r0 = r0 | 2
        L_0x00fc:
            java.lang.String r1 = "muted"
            boolean r15 = r15.getBoolean(r1)
            boolean r1 = r13.zzem
            if (r15 == r1) goto L_0x010a
            r13.zzem = r15
            r0 = r0 | 2
        L_0x010a:
            java.lang.String r15 = "activeTrackIds"
            boolean r1 = r14.has(r15)
            r2 = 0
            if (r1 == 0) goto L_0x014a
            org.json.JSONArray r15 = r14.getJSONArray(r15)
            int r1 = r15.length()
            long[] r7 = new long[r1]
            r8 = 0
        L_0x011e:
            if (r8 >= r1) goto L_0x0129
            long r9 = r15.getLong(r8)
            r7[r8] = r9
            int r8 = r8 + 1
            goto L_0x011e
        L_0x0129:
            long[] r15 = r13.zzdp
            if (r15 != 0) goto L_0x012f
        L_0x012d:
            r15 = 1
            goto L_0x0145
        L_0x012f:
            int r15 = r15.length
            if (r15 == r1) goto L_0x0133
            goto L_0x012d
        L_0x0133:
            r15 = 0
        L_0x0134:
            if (r15 >= r1) goto L_0x0144
            long[] r8 = r13.zzdp
            r9 = r8[r15]
            r11 = r7[r15]
            int r8 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r8 == 0) goto L_0x0141
            goto L_0x012d
        L_0x0141:
            int r15 = r15 + 1
            goto L_0x0134
        L_0x0144:
            r15 = 0
        L_0x0145:
            if (r15 == 0) goto L_0x0153
            r13.zzdp = r7
            goto L_0x0153
        L_0x014a:
            long[] r15 = r13.zzdp
            if (r15 == 0) goto L_0x0151
            r7 = r2
            r15 = 1
            goto L_0x0153
        L_0x0151:
            r7 = r2
            r15 = 0
        L_0x0153:
            if (r15 == 0) goto L_0x0159
            r13.zzdp = r7
            r0 = r0 | 2
        L_0x0159:
            java.lang.String r15 = "customData"
            boolean r1 = r14.has(r15)
            if (r1 == 0) goto L_0x016b
            org.json.JSONObject r15 = r14.getJSONObject(r15)
            r13.zzp = r15
            r13.zzj = r2
            r0 = r0 | 2
        L_0x016b:
            java.lang.String r15 = "media"
            boolean r1 = r14.has(r15)
            if (r1 == 0) goto L_0x0196
            org.json.JSONObject r15 = r14.getJSONObject(r15)
            com.google.android.gms.cast.MediaInfo r1 = new com.google.android.gms.cast.MediaInfo
            r1.<init>(r15)
            com.google.android.gms.cast.MediaInfo r2 = r13.zzdl
            if (r2 == 0) goto L_0x0188
            if (r2 == 0) goto L_0x018c
            boolean r2 = r2.equals(r1)
            if (r2 != 0) goto L_0x018c
        L_0x0188:
            r13.zzdl = r1
            r0 = r0 | 2
        L_0x018c:
            java.lang.String r1 = "metadata"
            boolean r15 = r15.has(r1)
            if (r15 == 0) goto L_0x0196
            r0 = r0 | 4
        L_0x0196:
            java.lang.String r15 = "currentItemId"
            boolean r15 = r14.has(r15)
            if (r15 == 0) goto L_0x01ac
            java.lang.String r15 = "currentItemId"
            int r15 = r14.getInt(r15)
            int r1 = r13.zzeg
            if (r1 == r15) goto L_0x01ac
            r13.zzeg = r15
            r0 = r0 | 2
        L_0x01ac:
            java.lang.String r15 = "preloadedItemId"
            int r15 = r14.optInt(r15, r4)
            int r1 = r13.zzeo
            if (r1 == r15) goto L_0x01ba
            r13.zzeo = r15
            r0 = r0 | 16
        L_0x01ba:
            java.lang.String r15 = "loadingItemId"
            int r15 = r14.optInt(r15, r4)
            int r1 = r13.zzen
            if (r1 == r15) goto L_0x01c8
            r13.zzen = r15
            r0 = r0 | 2
        L_0x01c8:
            com.google.android.gms.cast.MediaInfo r15 = r13.zzdl
            if (r15 != 0) goto L_0x01ce
            r15 = -1
            goto L_0x01d2
        L_0x01ce:
            int r15 = r15.getStreamType()
        L_0x01d2:
            int r1 = r13.zzeh
            int r2 = r13.zzei
            int r7 = r13.zzen
            boolean r15 = zza(r1, r2, r7, r15)
            if (r15 != 0) goto L_0x02ce
            java.lang.String r15 = "repeatMode"
            boolean r15 = r14.has(r15)
            if (r15 == 0) goto L_0x0236
            int r15 = r13.zzep
            java.lang.String r1 = "repeatMode"
            java.lang.String r1 = r14.getString(r1)
            r2 = -1
            int r7 = r1.hashCode()
            switch(r7) {
                case -1118317585: goto L_0x0215;
                case -962896020: goto L_0x020b;
                case 1645938909: goto L_0x0201;
                case 1645952171: goto L_0x01f7;
                default: goto L_0x01f6;
            }
        L_0x01f6:
            goto L_0x021e
        L_0x01f7:
            java.lang.String r7 = "REPEAT_OFF"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L_0x021e
            r2 = 0
            goto L_0x021e
        L_0x0201:
            java.lang.String r7 = "REPEAT_ALL"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L_0x021e
            r2 = 1
            goto L_0x021e
        L_0x020b:
            java.lang.String r7 = "REPEAT_SINGLE"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L_0x021e
            r2 = 2
            goto L_0x021e
        L_0x0215:
            java.lang.String r7 = "REPEAT_ALL_AND_SHUFFLE"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L_0x021e
            r2 = 3
        L_0x021e:
            if (r2 == 0) goto L_0x022d
            if (r2 == r5) goto L_0x022b
            if (r2 == r6) goto L_0x0229
            if (r2 == r3) goto L_0x0227
            goto L_0x022e
        L_0x0227:
            r15 = 3
            goto L_0x022e
        L_0x0229:
            r15 = 2
            goto L_0x022e
        L_0x022b:
            r15 = 1
            goto L_0x022e
        L_0x022d:
            r15 = 0
        L_0x022e:
            int r1 = r13.zzep
            if (r1 == r15) goto L_0x0236
            r13.zzep = r15
            r15 = 1
            goto L_0x0237
        L_0x0236:
            r15 = 0
        L_0x0237:
            java.lang.String r1 = "items"
            boolean r1 = r14.has(r1)
            if (r1 == 0) goto L_0x02cb
            java.lang.String r1 = "items"
            org.json.JSONArray r1 = r14.getJSONArray(r1)
            int r2 = r1.length()
            android.util.SparseArray r3 = new android.util.SparseArray
            r3.<init>()
            r6 = 0
        L_0x024f:
            if (r6 >= r2) goto L_0x0265
            org.json.JSONObject r7 = r1.getJSONObject(r6)
            java.lang.String r8 = "itemId"
            int r7 = r7.getInt(r8)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r3.put(r6, r7)
            int r6 = r6 + 1
            goto L_0x024f
        L_0x0265:
            com.google.android.gms.cast.MediaQueueItem[] r6 = new com.google.android.gms.cast.MediaQueueItem[r2]
            r7 = r15
            r15 = 0
        L_0x0269:
            if (r15 >= r2) goto L_0x02bd
            java.lang.Object r8 = r3.get(r15)
            java.lang.Integer r8 = (java.lang.Integer) r8
            org.json.JSONObject r9 = r1.getJSONObject(r15)
            int r10 = r8.intValue()
            com.google.android.gms.cast.MediaQueueItem r10 = r13.getItemById(r10)
            if (r10 == 0) goto L_0x0295
            boolean r9 = r10.zzf(r9)
            r7 = r7 | r9
            r6[r15] = r10
            int r8 = r8.intValue()
            java.lang.Integer r8 = r13.getIndexById(r8)
            int r8 = r8.intValue()
            if (r15 == r8) goto L_0x02ba
            goto L_0x02b9
        L_0x0295:
            int r7 = r8.intValue()
            int r8 = r13.zzeg
            if (r7 != r8) goto L_0x02b2
            com.google.android.gms.cast.MediaInfo r7 = r13.zzdl
            if (r7 == 0) goto L_0x02b2
            com.google.android.gms.cast.MediaQueueItem$Builder r8 = new com.google.android.gms.cast.MediaQueueItem$Builder
            r8.<init>(r7)
            com.google.android.gms.cast.MediaQueueItem r7 = r8.build()
            r6[r15] = r7
            r7 = r6[r15]
            r7.zzf(r9)
            goto L_0x02b9
        L_0x02b2:
            com.google.android.gms.cast.MediaQueueItem r7 = new com.google.android.gms.cast.MediaQueueItem
            r7.<init>(r9)
            r6[r15] = r7
        L_0x02b9:
            r7 = 1
        L_0x02ba:
            int r15 = r15 + 1
            goto L_0x0269
        L_0x02bd:
            java.util.ArrayList<com.google.android.gms.cast.MediaQueueItem> r15 = r13.zzeq
            int r15 = r15.size()
            if (r15 == r2) goto L_0x02c7
            r15 = 1
            goto L_0x02c8
        L_0x02c7:
            r15 = r7
        L_0x02c8:
            r13.zza(r6)
        L_0x02cb:
            if (r15 == 0) goto L_0x02ea
            goto L_0x02e8
        L_0x02ce:
            r13.zzeg = r4
            r13.zzen = r4
            r13.zzeo = r4
            java.util.ArrayList<com.google.android.gms.cast.MediaQueueItem> r15 = r13.zzeq
            boolean r15 = r15.isEmpty()
            if (r15 != 0) goto L_0x02ea
            r13.zzep = r4
            java.util.ArrayList<com.google.android.gms.cast.MediaQueueItem> r15 = r13.zzeq
            r15.clear()
            android.util.SparseArray<java.lang.Integer> r15 = r13.zzeu
            r15.clear()
        L_0x02e8:
            r0 = r0 | 8
        L_0x02ea:
            java.lang.String r15 = "breakStatus"
            org.json.JSONObject r15 = r14.optJSONObject(r15)
            com.google.android.gms.cast.AdBreakStatus r15 = com.google.android.gms.cast.AdBreakStatus.zzc(r15)
            com.google.android.gms.cast.AdBreakStatus r1 = r13.zzes
            if (r1 != 0) goto L_0x02fa
            if (r15 != 0) goto L_0x0304
        L_0x02fa:
            com.google.android.gms.cast.AdBreakStatus r1 = r13.zzes
            if (r1 == 0) goto L_0x030d
            boolean r1 = r1.equals(r15)
            if (r1 != 0) goto L_0x030d
        L_0x0304:
            if (r15 == 0) goto L_0x0307
            r4 = 1
        L_0x0307:
            r13.zzer = r4
            r13.zzes = r15
            r0 = r0 | 32
        L_0x030d:
            java.lang.String r15 = "videoInfo"
            org.json.JSONObject r15 = r14.optJSONObject(r15)
            com.google.android.gms.cast.VideoInfo r15 = com.google.android.gms.cast.VideoInfo.zzg(r15)
            com.google.android.gms.cast.VideoInfo r1 = r13.zzet
            if (r1 != 0) goto L_0x031d
            if (r15 != 0) goto L_0x0327
        L_0x031d:
            com.google.android.gms.cast.VideoInfo r1 = r13.zzet
            if (r1 == 0) goto L_0x032b
            boolean r1 = r1.equals(r15)
            if (r1 != 0) goto L_0x032b
        L_0x0327:
            r13.zzet = r15
            r0 = r0 | 64
        L_0x032b:
            java.lang.String r15 = "breakInfo"
            boolean r15 = r14.has(r15)
            if (r15 == 0) goto L_0x0342
            com.google.android.gms.cast.MediaInfo r15 = r13.zzdl
            if (r15 == 0) goto L_0x0342
            java.lang.String r1 = "breakInfo"
            org.json.JSONObject r14 = r14.getJSONObject(r1)
            r15.zzd(r14)
            r0 = r0 | 2
        L_0x0342:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza(org.json.JSONObject, int):int");
    }

    public final boolean zzk() {
        MediaInfo mediaInfo = this.zzdl;
        return zza(this.zzeh, this.zzei, this.zzen, mediaInfo == null ? -1 : mediaInfo.getStreamType());
    }

    public MediaQueueItem getItemById(int i) {
        Integer num = (Integer) this.zzeu.get(i);
        if (num == null) {
            return null;
        }
        return (MediaQueueItem) this.zzeq.get(num.intValue());
    }

    public MediaQueueItem getItemByIndex(int i) {
        if (i < 0 || i >= this.zzeq.size()) {
            return null;
        }
        return (MediaQueueItem) this.zzeq.get(i);
    }

    public Integer getIndexById(int i) {
        return (Integer) this.zzeu.get(i);
    }

    private final void zza(MediaQueueItem[] mediaQueueItemArr) {
        this.zzeq.clear();
        this.zzeu.clear();
        for (int i = 0; i < mediaQueueItemArr.length; i++) {
            MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
            this.zzeq.add(mediaQueueItem);
            this.zzeu.put(mediaQueueItem.getItemId(), Integer.valueOf(i));
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        if ((this.zzp == null) == (mediaStatus.zzp == null) && this.zzef == mediaStatus.zzef && this.zzeg == mediaStatus.zzeg && this.zzdo == mediaStatus.zzdo && this.zzeh == mediaStatus.zzeh && this.zzei == mediaStatus.zzei && this.zzej == mediaStatus.zzej && this.zzel == mediaStatus.zzel && this.zzem == mediaStatus.zzem && this.zzen == mediaStatus.zzen && this.zzeo == mediaStatus.zzeo && this.zzep == mediaStatus.zzep && Arrays.equals(this.zzdp, mediaStatus.zzdp) && zzcu.zza(Long.valueOf(this.zzek), Long.valueOf(mediaStatus.zzek)) && zzcu.zza(this.zzeq, mediaStatus.zzeq) && zzcu.zza(this.zzdl, mediaStatus.zzdl)) {
            JSONObject jSONObject = this.zzp;
            if (jSONObject != null) {
                JSONObject jSONObject2 = mediaStatus.zzp;
                if (jSONObject2 != null && !JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) {
                    z = false;
                    return !z && this.zzer == mediaStatus.isPlayingAd();
                }
            }
            z = true;
            if (!z) {
            }
        }
    }

    public int hashCode() {
        return Objects.hashCode(this.zzdl, Long.valueOf(this.zzef), Integer.valueOf(this.zzeg), Double.valueOf(this.zzdo), Integer.valueOf(this.zzeh), Integer.valueOf(this.zzei), Long.valueOf(this.zzej), Long.valueOf(this.zzek), Double.valueOf(this.zzel), Boolean.valueOf(this.zzem), Integer.valueOf(Arrays.hashCode(this.zzdp)), Integer.valueOf(this.zzen), Integer.valueOf(this.zzeo), String.valueOf(this.zzp), Integer.valueOf(this.zzep), this.zzeq, Boolean.valueOf(this.zzer));
    }

    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzp;
        this.zzj = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMediaInfo(), i, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzef);
        SafeParcelWriter.writeInt(parcel, 4, getCurrentItemId());
        SafeParcelWriter.writeDouble(parcel, 5, getPlaybackRate());
        SafeParcelWriter.writeInt(parcel, 6, getPlayerState());
        SafeParcelWriter.writeInt(parcel, 7, getIdleReason());
        SafeParcelWriter.writeLong(parcel, 8, getStreamPosition());
        SafeParcelWriter.writeLong(parcel, 9, this.zzek);
        SafeParcelWriter.writeDouble(parcel, 10, getStreamVolume());
        SafeParcelWriter.writeBoolean(parcel, 11, isMute());
        SafeParcelWriter.writeLongArray(parcel, 12, getActiveTrackIds(), false);
        SafeParcelWriter.writeInt(parcel, 13, getLoadingItemId());
        SafeParcelWriter.writeInt(parcel, 14, getPreloadedItemId());
        SafeParcelWriter.writeString(parcel, 15, this.zzj, false);
        SafeParcelWriter.writeInt(parcel, 16, this.zzep);
        SafeParcelWriter.writeTypedList(parcel, 17, this.zzeq, false);
        SafeParcelWriter.writeBoolean(parcel, 18, isPlayingAd());
        SafeParcelWriter.writeParcelable(parcel, 19, getAdBreakStatus(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 20, getVideoInfo(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public AdBreakInfo getCurrentAdBreak() {
        AdBreakStatus adBreakStatus = this.zzes;
        if (!(adBreakStatus == null || this.zzdl == null)) {
            String breakId = adBreakStatus.getBreakId();
            if (TextUtils.isEmpty(breakId)) {
                return null;
            }
            List<AdBreakInfo> adBreaks = this.zzdl.getAdBreaks();
            if (adBreaks != null && !adBreaks.isEmpty()) {
                for (AdBreakInfo adBreakInfo : adBreaks) {
                    if (breakId.equals(adBreakInfo.getId())) {
                        return adBreakInfo;
                    }
                }
            }
        }
        return null;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        AdBreakStatus adBreakStatus = this.zzes;
        if (!(adBreakStatus == null || this.zzdl == null)) {
            String breakClipId = adBreakStatus.getBreakClipId();
            if (TextUtils.isEmpty(breakClipId)) {
                return null;
            }
            List<AdBreakClipInfo> adBreakClips = this.zzdl.getAdBreakClips();
            if (adBreakClips != null && !adBreakClips.isEmpty()) {
                for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
                    if (breakClipId.equals(adBreakClipInfo.getId())) {
                        return adBreakClipInfo;
                    }
                }
            }
        }
        return null;
    }
}
