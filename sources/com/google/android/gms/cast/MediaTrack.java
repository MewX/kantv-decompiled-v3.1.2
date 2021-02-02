package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
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
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@Class(creator = "MediaTrackCreator")
@Reserved({1})
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Creator<MediaTrack> CREATOR = new zzap();
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
    @Field(getter = "getId", id = 2)
    private long id;
    @Field(getter = "getName", id = 6)
    private String name;
    @Field(getter = "getType", id = 3)
    private int type;
    @Field(getter = "getLanguage", id = 7)
    private String zzdb;
    @Field(getter = "getContentType", id = 5)
    private String zzdd;
    @Field(getter = "getSubtype", id = 8)
    private int zzev;
    @Field(id = 9)
    private String zzj;
    @Field(getter = "getContentId", id = 4)
    private String zzk;
    private JSONObject zzp;

    @VisibleForTesting
    public static class Builder {
        private final MediaTrack zzew;

        public Builder(long j, int i) throws IllegalArgumentException {
            this.zzew = new MediaTrack(j, i);
        }

        public Builder setContentId(String str) {
            this.zzew.setContentId(str);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzew.setContentType(str);
            return this;
        }

        public Builder setName(String str) {
            this.zzew.setName(str);
            return this;
        }

        public Builder setLanguage(String str) {
            this.zzew.setLanguage(str);
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.zzew.setLanguage(zzcu.zza(locale));
            return this;
        }

        public Builder setSubtype(int i) throws IllegalArgumentException {
            this.zzew.zzb(i);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzew.setCustomData(jSONObject);
            return this;
        }

        public MediaTrack build() {
            return this.zzew;
        }
    }

    @Constructor
    MediaTrack(@Param(id = 2) long j, @Param(id = 3) int i, @Param(id = 4) String str, @Param(id = 5) String str2, @Param(id = 6) String str3, @Param(id = 7) String str4, @Param(id = 8) int i2, @Param(id = 9) String str5) {
        this.id = j;
        this.type = i;
        this.zzk = str;
        this.zzdd = str2;
        this.name = str3;
        this.zzdb = str4;
        this.zzev = i2;
        this.zzj = str5;
        String str6 = this.zzj;
        if (str6 != null) {
            try {
                this.zzp = new JSONObject(str6);
            } catch (JSONException unused) {
                this.zzp = null;
                this.zzj = null;
            }
        } else {
            this.zzp = null;
        }
    }

    MediaTrack(JSONObject jSONObject) throws JSONException {
        this(0, 0, null, null, null, null, -1, null);
        this.id = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.type = 1;
        } else if ("AUDIO".equals(string)) {
            this.type = 2;
        } else if ("VIDEO".equals(string)) {
            this.type = 3;
        } else {
            String str = "invalid type: ";
            String valueOf = String.valueOf(string);
            throw new JSONException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        this.zzk = jSONObject.optString("trackContentId", null);
        this.zzdd = jSONObject.optString("trackContentType", null);
        this.name = jSONObject.optString("name", null);
        this.zzdb = jSONObject.optString(IjkMediaMeta.IJKM_KEY_LANGUAGE, null);
        String str2 = "subtype";
        if (jSONObject.has(str2)) {
            String string2 = jSONObject.getString(str2);
            if ("SUBTITLES".equals(string2)) {
                this.zzev = 1;
            } else if ("CAPTIONS".equals(string2)) {
                this.zzev = 2;
            } else if ("DESCRIPTIONS".equals(string2)) {
                this.zzev = 3;
            } else if ("CHAPTERS".equals(string2)) {
                this.zzev = 4;
            } else if ("METADATA".equals(string2)) {
                this.zzev = 5;
            } else {
                this.zzev = -1;
            }
        } else {
            this.zzev = 0;
        }
        this.zzp = jSONObject.optJSONObject("customData");
    }

    MediaTrack(long j, int i) throws IllegalArgumentException {
        this(0, 0, null, null, null, null, -1, null);
        this.id = j;
        if (i <= 0 || i > 3) {
            StringBuilder sb = new StringBuilder(24);
            sb.append("invalid type ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        this.type = i;
    }

    public final long getId() {
        return this.id;
    }

    public final int getType() {
        return this.type;
    }

    public final String getContentId() {
        return this.zzk;
    }

    public final void setContentId(String str) {
        this.zzk = str;
    }

    public final String getContentType() {
        return this.zzdd;
    }

    public final void setContentType(String str) {
        this.zzdd = str;
    }

    public final String getName() {
        return this.name;
    }

    /* access modifiers changed from: 0000 */
    public final void setName(String str) {
        this.name = str;
    }

    public final String getLanguage() {
        return this.zzdb;
    }

    /* access modifiers changed from: 0000 */
    public final void setLanguage(String str) {
        this.zzdb = str;
    }

    public final int getSubtype() {
        return this.zzev;
    }

    /* access modifiers changed from: 0000 */
    public final void zzb(int i) throws IllegalArgumentException {
        if (i < 0 || i > 5) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("invalid subtype ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i == 0 || this.type == 1) {
            this.zzev = i;
        } else {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
    }

    public final JSONObject getCustomData() {
        return this.zzp;
    }

    /* access modifiers changed from: 0000 */
    public final void setCustomData(JSONObject jSONObject) {
        this.zzp = jSONObject;
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.id);
            int i = this.type;
            String str = "type";
            if (i == 1) {
                jSONObject.put(str, "TEXT");
            } else if (i == 2) {
                jSONObject.put(str, "AUDIO");
            } else if (i == 3) {
                jSONObject.put(str, "VIDEO");
            }
            if (this.zzk != null) {
                jSONObject.put("trackContentId", this.zzk);
            }
            if (this.zzdd != null) {
                jSONObject.put("trackContentType", this.zzdd);
            }
            if (this.name != null) {
                jSONObject.put("name", this.name);
            }
            if (!TextUtils.isEmpty(this.zzdb)) {
                jSONObject.put(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.zzdb);
            }
            int i2 = this.zzev;
            String str2 = "subtype";
            if (i2 == 1) {
                jSONObject.put(str2, "SUBTITLES");
            } else if (i2 == 2) {
                jSONObject.put(str2, "CAPTIONS");
            } else if (i2 == 3) {
                jSONObject.put(str2, "DESCRIPTIONS");
            } else if (i2 == 4) {
                jSONObject.put(str2, "CHAPTERS");
            } else if (i2 == 5) {
                jSONObject.put(str2, "METADATA");
            }
            if (this.zzp != null) {
                jSONObject.put("customData", this.zzp);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        if ((this.zzp == null) != (mediaTrack.zzp == null)) {
            return false;
        }
        JSONObject jSONObject = this.zzp;
        if (jSONObject != null) {
            JSONObject jSONObject2 = mediaTrack.zzp;
            if (jSONObject2 != null && !JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) {
                return false;
            }
        }
        return this.id == mediaTrack.id && this.type == mediaTrack.type && zzcu.zza(this.zzk, mediaTrack.zzk) && zzcu.zza(this.zzdd, mediaTrack.zzdd) && zzcu.zza(this.name, mediaTrack.name) && zzcu.zza(this.zzdb, mediaTrack.zzdb) && this.zzev == mediaTrack.zzev;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.id), Integer.valueOf(this.type), this.zzk, this.zzdd, this.name, this.zzdb, Integer.valueOf(this.zzev), String.valueOf(this.zzp));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzp;
        this.zzj = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getId());
        SafeParcelWriter.writeInt(parcel, 3, getType());
        SafeParcelWriter.writeString(parcel, 4, getContentId(), false);
        SafeParcelWriter.writeString(parcel, 5, getContentType(), false);
        SafeParcelWriter.writeString(parcel, 6, getName(), false);
        SafeParcelWriter.writeString(parcel, 7, getLanguage(), false);
        SafeParcelWriter.writeInt(parcel, 8, getSubtype());
        SafeParcelWriter.writeString(parcel, 9, this.zzj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
