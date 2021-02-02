package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.view.accessibility.CaptioningManager;
import android.view.accessibility.CaptioningManager.CaptionStyle;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzcu;
import org.eclipse.jetty.util.security.Constraint;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "TextTrackStyleCreator")
@Reserved({1})
public final class TextTrackStyle extends AbstractSafeParcelable {
    public static final int COLOR_UNSPECIFIED = 0;
    public static final Creator<TextTrackStyle> CREATOR = new zzbs();
    public static final float DEFAULT_FONT_SCALE = 1.0f;
    public static final int EDGE_TYPE_DEPRESSED = 4;
    public static final int EDGE_TYPE_DROP_SHADOW = 2;
    public static final int EDGE_TYPE_NONE = 0;
    public static final int EDGE_TYPE_OUTLINE = 1;
    public static final int EDGE_TYPE_RAISED = 3;
    public static final int EDGE_TYPE_UNSPECIFIED = -1;
    public static final int FONT_FAMILY_CASUAL = 4;
    public static final int FONT_FAMILY_CURSIVE = 5;
    public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
    public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
    public static final int FONT_FAMILY_SANS_SERIF = 0;
    public static final int FONT_FAMILY_SERIF = 2;
    public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
    public static final int FONT_FAMILY_UNSPECIFIED = -1;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_BOLD_ITALIC = 3;
    public static final int FONT_STYLE_ITALIC = 2;
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_UNSPECIFIED = -1;
    public static final int WINDOW_TYPE_NONE = 0;
    public static final int WINDOW_TYPE_NORMAL = 1;
    public static final int WINDOW_TYPE_ROUNDED = 2;
    public static final int WINDOW_TYPE_UNSPECIFIED = -1;
    @Field(getter = "getBackgroundColor", id = 4)
    private int backgroundColor;
    @Field(getter = "getEdgeColor", id = 6)
    private int edgeColor;
    @Field(getter = "getEdgeType", id = 5)
    private int edgeType;
    @Field(getter = "getFontScale", id = 2)
    private float fontScale;
    @Field(getter = "getFontStyle", id = 12)
    private int fontStyle;
    @Field(getter = "getForegroundColor", id = 3)
    private int foregroundColor;
    @Field(getter = "getWindowColor", id = 8)
    private int windowColor;
    @Field(getter = "getWindowType", id = 7)
    private int zzgi;
    @Field(getter = "getWindowCornerRadius", id = 9)
    private int zzgj;
    @Field(getter = "getFontFamily", id = 10)
    private String zzgk;
    @Field(getter = "getFontGenericFamily", id = 11)
    private int zzgl;
    @Field(id = 13)
    private String zzj;
    private JSONObject zzp;

    @Constructor
    TextTrackStyle(@Param(id = 2) float f, @Param(id = 3) int i, @Param(id = 4) int i2, @Param(id = 5) int i3, @Param(id = 6) int i4, @Param(id = 7) int i5, @Param(id = 8) int i6, @Param(id = 9) int i7, @Param(id = 10) String str, @Param(id = 11) int i8, @Param(id = 12) int i9, @Param(id = 13) String str2) {
        this.fontScale = f;
        this.foregroundColor = i;
        this.backgroundColor = i2;
        this.edgeType = i3;
        this.edgeColor = i4;
        this.zzgi = i5;
        this.windowColor = i6;
        this.zzgj = i7;
        this.zzgk = str;
        this.zzgl = i8;
        this.fontStyle = i9;
        this.zzj = str2;
        String str3 = this.zzj;
        if (str3 != null) {
            try {
                this.zzp = new JSONObject(str3);
            } catch (JSONException unused) {
                this.zzp = null;
                this.zzj = null;
            }
        } else {
            this.zzp = null;
        }
    }

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    public final void setFontScale(float f) {
        this.fontScale = f;
    }

    public final float getFontScale() {
        return this.fontScale;
    }

    public final void setForegroundColor(int i) {
        this.foregroundColor = i;
    }

    public final int getForegroundColor() {
        return this.foregroundColor;
    }

    public final void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final void setEdgeType(int i) {
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("invalid edgeType");
        }
        this.edgeType = i;
    }

    public final int getEdgeType() {
        return this.edgeType;
    }

    public final void setEdgeColor(int i) {
        this.edgeColor = i;
    }

    public final int getEdgeColor() {
        return this.edgeColor;
    }

    public final void setWindowType(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("invalid windowType");
        }
        this.zzgi = i;
    }

    public final int getWindowType() {
        return this.zzgi;
    }

    public final void setWindowColor(int i) {
        this.windowColor = i;
    }

    public final int getWindowColor() {
        return this.windowColor;
    }

    public final void setWindowCornerRadius(int i) {
        if (i >= 0) {
            this.zzgj = i;
            return;
        }
        throw new IllegalArgumentException("invalid windowCornerRadius");
    }

    public final int getWindowCornerRadius() {
        return this.zzgj;
    }

    public final void setFontFamily(String str) {
        this.zzgk = str;
    }

    public final String getFontFamily() {
        return this.zzgk;
    }

    public final void setFontGenericFamily(int i) {
        if (i < 0 || i > 6) {
            throw new IllegalArgumentException("invalid fontGenericFamily");
        }
        this.zzgl = i;
    }

    public final int getFontGenericFamily() {
        return this.zzgl;
    }

    public final void setFontStyle(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("invalid fontStyle");
        }
        this.fontStyle = i;
    }

    public final int getFontStyle() {
        return this.fontStyle;
    }

    public final void setCustomData(JSONObject jSONObject) {
        this.zzp = jSONObject;
    }

    public final JSONObject getCustomData() {
        return this.zzp;
    }

    @TargetApi(19)
    public static TextTrackStyle fromSystemSettings(Context context) {
        TextTrackStyle textTrackStyle = new TextTrackStyle();
        if (!PlatformVersion.isAtLeastKitKat()) {
            return textTrackStyle;
        }
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        textTrackStyle.setFontScale(captioningManager.getFontScale());
        CaptionStyle userStyle = captioningManager.getUserStyle();
        textTrackStyle.setBackgroundColor(userStyle.backgroundColor);
        textTrackStyle.setForegroundColor(userStyle.foregroundColor);
        int i = userStyle.edgeType;
        if (i == 1) {
            textTrackStyle.setEdgeType(1);
        } else if (i != 2) {
            textTrackStyle.setEdgeType(0);
        } else {
            textTrackStyle.setEdgeType(2);
        }
        textTrackStyle.setEdgeColor(userStyle.edgeColor);
        Typeface typeface = userStyle.getTypeface();
        if (typeface != null) {
            if (Typeface.MONOSPACE.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(1);
            } else if (Typeface.SANS_SERIF.equals(typeface) || !Typeface.SERIF.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(0);
            } else {
                textTrackStyle.setFontGenericFamily(2);
            }
            boolean isBold = typeface.isBold();
            boolean isItalic = typeface.isItalic();
            if (isBold && isItalic) {
                textTrackStyle.setFontStyle(3);
            } else if (isBold) {
                textTrackStyle.setFontStyle(1);
            } else if (isItalic) {
                textTrackStyle.setFontStyle(2);
            } else {
                textTrackStyle.setFontStyle(0);
            }
        }
        return textTrackStyle;
    }

    public final void zze(JSONObject jSONObject) throws JSONException {
        this.fontScale = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.foregroundColor = zzh(jSONObject.optString("foregroundColor"));
        this.backgroundColor = zzh(jSONObject.optString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR));
        String str = "edgeType";
        boolean has = jSONObject.has(str);
        String str2 = Constraint.NONE;
        if (has) {
            String string = jSONObject.getString(str);
            if (str2.equals(string)) {
                this.edgeType = 0;
            } else if ("OUTLINE".equals(string)) {
                this.edgeType = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.edgeType = 2;
            } else if ("RAISED".equals(string)) {
                this.edgeType = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.edgeType = 4;
            }
        }
        this.edgeColor = zzh(jSONObject.optString("edgeColor"));
        String str3 = "windowType";
        String str4 = "NORMAL";
        if (jSONObject.has(str3)) {
            String string2 = jSONObject.getString(str3);
            if (str2.equals(string2)) {
                this.zzgi = 0;
            } else if (str4.equals(string2)) {
                this.zzgi = 1;
            } else if ("ROUNDED_CORNERS".equals(string2)) {
                this.zzgi = 2;
            }
        }
        this.windowColor = zzh(jSONObject.optString("windowColor"));
        if (this.zzgi == 2) {
            this.zzgj = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzgk = jSONObject.optString(TtmlNode.ATTR_TTS_FONT_FAMILY, null);
        String str5 = "fontGenericFamily";
        if (jSONObject.has(str5)) {
            String string3 = jSONObject.getString(str5);
            if ("SANS_SERIF".equals(string3)) {
                this.zzgl = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string3)) {
                this.zzgl = 1;
            } else if ("SERIF".equals(string3)) {
                this.zzgl = 2;
            } else if ("MONOSPACED_SERIF".equals(string3)) {
                this.zzgl = 3;
            } else if ("CASUAL".equals(string3)) {
                this.zzgl = 4;
            } else if ("CURSIVE".equals(string3)) {
                this.zzgl = 5;
            } else if ("SMALL_CAPITALS".equals(string3)) {
                this.zzgl = 6;
            }
        }
        String str6 = TtmlNode.ATTR_TTS_FONT_STYLE;
        if (jSONObject.has(str6)) {
            String string4 = jSONObject.getString(str6);
            if (str4.equals(string4)) {
                this.fontStyle = 0;
            } else if ("BOLD".equals(string4)) {
                this.fontStyle = 1;
            } else if ("ITALIC".equals(string4)) {
                this.fontStyle = 2;
            } else if ("BOLD_ITALIC".equals(string4)) {
                this.fontStyle = 3;
            }
        }
        this.zzp = jSONObject.optJSONObject("customData");
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final org.json.JSONObject toJson() {
        /*
            r8 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r1 = "fontScale"
            float r2 = r8.fontScale     // Catch:{ JSONException -> 0x0107 }
            double r2 = (double) r2     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
            int r1 = r8.foregroundColor     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x001c
            java.lang.String r1 = "foregroundColor"
            int r2 = r8.foregroundColor     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = zzd(r2)     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x001c:
            int r1 = r8.backgroundColor     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x002b
            java.lang.String r1 = "backgroundColor"
            int r2 = r8.backgroundColor     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = zzd(r2)     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x002b:
            int r1 = r8.edgeType     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = "NONE"
            r3 = 3
            r4 = 1
            r5 = 2
            java.lang.String r6 = "edgeType"
            if (r1 == 0) goto L_0x0058
            if (r1 == r4) goto L_0x0052
            if (r1 == r5) goto L_0x004c
            if (r1 == r3) goto L_0x0046
            r7 = 4
            if (r1 == r7) goto L_0x0040
            goto L_0x005b
        L_0x0040:
            java.lang.String r1 = "DEPRESSED"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x005b
        L_0x0046:
            java.lang.String r1 = "RAISED"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x005b
        L_0x004c:
            java.lang.String r1 = "DROP_SHADOW"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x005b
        L_0x0052:
            java.lang.String r1 = "OUTLINE"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x005b
        L_0x0058:
            r0.put(r6, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x005b:
            int r1 = r8.edgeColor     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x006a
            java.lang.String r1 = "edgeColor"
            int r6 = r8.edgeColor     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r6 = zzd(r6)     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r6)     // Catch:{ JSONException -> 0x0107 }
        L_0x006a:
            int r1 = r8.zzgi     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r6 = "NORMAL"
            java.lang.String r7 = "windowType"
            if (r1 == 0) goto L_0x0081
            if (r1 == r4) goto L_0x007d
            if (r1 == r5) goto L_0x0077
            goto L_0x0084
        L_0x0077:
            java.lang.String r1 = "ROUNDED_CORNERS"
            r0.put(r7, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x0084
        L_0x007d:
            r0.put(r7, r6)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x0084
        L_0x0081:
            r0.put(r7, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x0084:
            int r1 = r8.windowColor     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x0093
            java.lang.String r1 = "windowColor"
            int r2 = r8.windowColor     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = zzd(r2)     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x0093:
            int r1 = r8.zzgi     // Catch:{ JSONException -> 0x0107 }
            if (r1 != r5) goto L_0x009e
            java.lang.String r1 = "windowRoundedCornerRadius"
            int r2 = r8.zzgj     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x009e:
            java.lang.String r1 = r8.zzgk     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x00a9
            java.lang.String r1 = "fontFamily"
            java.lang.String r2 = r8.zzgk     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x00a9:
            int r1 = r8.zzgl     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = "fontGenericFamily"
            switch(r1) {
                case 0: goto L_0x00d5;
                case 1: goto L_0x00cf;
                case 2: goto L_0x00c9;
                case 3: goto L_0x00c3;
                case 4: goto L_0x00bd;
                case 5: goto L_0x00b7;
                case 6: goto L_0x00b1;
                default: goto L_0x00b0;
            }
        L_0x00b0:
            goto L_0x00da
        L_0x00b1:
            java.lang.String r1 = "SMALL_CAPITALS"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00b7:
            java.lang.String r1 = "CURSIVE"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00bd:
            java.lang.String r1 = "CASUAL"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00c3:
            java.lang.String r1 = "MONOSPACED_SERIF"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00c9:
            java.lang.String r1 = "SERIF"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00cf:
            java.lang.String r1 = "MONOSPACED_SANS_SERIF"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00da
        L_0x00d5:
            java.lang.String r1 = "SANS_SERIF"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
        L_0x00da:
            int r1 = r8.fontStyle     // Catch:{ JSONException -> 0x0107 }
            java.lang.String r2 = "fontStyle"
            if (r1 == 0) goto L_0x00f9
            if (r1 == r4) goto L_0x00f3
            if (r1 == r5) goto L_0x00ed
            if (r1 == r3) goto L_0x00e7
            goto L_0x00fc
        L_0x00e7:
            java.lang.String r1 = "BOLD_ITALIC"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00fc
        L_0x00ed:
            java.lang.String r1 = "ITALIC"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00fc
        L_0x00f3:
            java.lang.String r1 = "BOLD"
            r0.put(r2, r1)     // Catch:{ JSONException -> 0x0107 }
            goto L_0x00fc
        L_0x00f9:
            r0.put(r2, r6)     // Catch:{ JSONException -> 0x0107 }
        L_0x00fc:
            org.json.JSONObject r1 = r8.zzp     // Catch:{ JSONException -> 0x0107 }
            if (r1 == 0) goto L_0x0107
            java.lang.String r1 = "customData"
            org.json.JSONObject r2 = r8.zzp     // Catch:{ JSONException -> 0x0107 }
            r0.put(r1, r2)     // Catch:{ JSONException -> 0x0107 }
        L_0x0107:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.TextTrackStyle.toJson():org.json.JSONObject");
    }

    private static String zzd(int i) {
        return String.format("#%02X%02X%02X%02X", new Object[]{Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i))});
    }

    private static int zzh(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        if ((this.zzp == null) != (textTrackStyle.zzp == null)) {
            return false;
        }
        JSONObject jSONObject = this.zzp;
        if (jSONObject != null) {
            JSONObject jSONObject2 = textTrackStyle.zzp;
            if (jSONObject2 != null && !JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) {
                return false;
            }
        }
        return this.fontScale == textTrackStyle.fontScale && this.foregroundColor == textTrackStyle.foregroundColor && this.backgroundColor == textTrackStyle.backgroundColor && this.edgeType == textTrackStyle.edgeType && this.edgeColor == textTrackStyle.edgeColor && this.zzgi == textTrackStyle.zzgi && this.zzgj == textTrackStyle.zzgj && zzcu.zza(this.zzgk, textTrackStyle.zzgk) && this.zzgl == textTrackStyle.zzgl && this.fontStyle == textTrackStyle.fontStyle;
    }

    public final int hashCode() {
        return Objects.hashCode(Float.valueOf(this.fontScale), Integer.valueOf(this.foregroundColor), Integer.valueOf(this.backgroundColor), Integer.valueOf(this.edgeType), Integer.valueOf(this.edgeColor), Integer.valueOf(this.zzgi), Integer.valueOf(this.windowColor), Integer.valueOf(this.zzgj), this.zzgk, Integer.valueOf(this.zzgl), Integer.valueOf(this.fontStyle), String.valueOf(this.zzp));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzp;
        this.zzj = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, getFontScale());
        SafeParcelWriter.writeInt(parcel, 3, getForegroundColor());
        SafeParcelWriter.writeInt(parcel, 4, getBackgroundColor());
        SafeParcelWriter.writeInt(parcel, 5, getEdgeType());
        SafeParcelWriter.writeInt(parcel, 6, getEdgeColor());
        SafeParcelWriter.writeInt(parcel, 7, getWindowType());
        SafeParcelWriter.writeInt(parcel, 8, getWindowColor());
        SafeParcelWriter.writeInt(parcel, 9, getWindowCornerRadius());
        SafeParcelWriter.writeString(parcel, 10, getFontFamily(), false);
        SafeParcelWriter.writeInt(parcel, 11, getFontGenericFamily());
        SafeParcelWriter.writeInt(parcel, 12, getFontStyle());
        SafeParcelWriter.writeString(parcel, 13, this.zzj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
