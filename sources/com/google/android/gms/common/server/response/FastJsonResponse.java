package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Objects.ToStringHelper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.VersionField;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
public abstract class FastJsonResponse {

    @ShowFirstParty
    @Class(creator = "FieldCreator")
    @VisibleForTesting
    @KeepForSdk
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zai CREATOR = new zai();
        @VersionField(getter = "getVersionCode", id = 1)
        private final int zale;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getTypeIn", id = 2)
        protected final int zapq;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "isTypeInArray", id = 3)
        protected final boolean zapr;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getTypeOut", id = 4)
        protected final int zaps;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "isTypeOutArray", id = 5)
        protected final boolean zapt;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getOutputFieldName", id = 6)
        protected final String zapu;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getSafeParcelableFieldId", id = 7)
        protected final int zapv;
        protected final Class<? extends FastJsonResponse> zapw;
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getConcreteTypeName", id = 8)
        private final String zapx;
        private zak zapy;
        /* access modifiers changed from: private */
        @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        public FieldConverter<I, O> zapz;

        @Constructor
        Field(@Param(id = 1) int i, @Param(id = 2) int i2, @Param(id = 3) boolean z, @Param(id = 4) int i3, @Param(id = 5) boolean z2, @Param(id = 6) String str, @Param(id = 7) int i4, @Param(id = 8) String str2, @Param(id = 9) zaa zaa) {
            this.zale = i;
            this.zapq = i2;
            this.zapr = z;
            this.zaps = i3;
            this.zapt = z2;
            this.zapu = str;
            this.zapv = i4;
            if (str2 == null) {
                this.zapw = null;
                this.zapx = null;
            } else {
                this.zapw = SafeParcelResponse.class;
                this.zapx = str2;
            }
            if (zaa == null) {
                this.zapz = null;
            } else {
                this.zapz = zaa.zaci();
            }
        }

        private Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.zale = 1;
            this.zapq = i;
            this.zapr = z;
            this.zaps = i2;
            this.zapt = z2;
            this.zapu = str;
            this.zapv = i3;
            this.zapw = cls;
            if (cls == null) {
                this.zapx = null;
            } else {
                this.zapx = cls.getCanonicalName();
            }
            this.zapz = fieldConverter;
        }

        public final Field<I, O> zacl() {
            Field field = new Field(this.zale, this.zapq, this.zapr, this.zaps, this.zapt, this.zapu, this.zapv, this.zapx, zaco());
            return field;
        }

        @KeepForSdk
        public int getSafeParcelableFieldId() {
            return this.zapv;
        }

        private final String zacm() {
            String str = this.zapx;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final boolean zacn() {
            return this.zapz != null;
        }

        public final void zaa(zak zak) {
            this.zapy = zak;
        }

        private final zaa zaco() {
            FieldConverter<I, O> fieldConverter = this.zapz;
            if (fieldConverter == null) {
                return null;
            }
            return zaa.zaa(fieldConverter);
        }

        public final FastJsonResponse zacp() throws InstantiationException, IllegalAccessException {
            Class<? extends FastJsonResponse> cls = this.zapw;
            if (cls != SafeParcelResponse.class) {
                return (FastJsonResponse) cls.newInstance();
            }
            Preconditions.checkNotNull(this.zapy, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new SafeParcelResponse(this.zapy, this.zapx);
        }

        public final Map<String, Field<?, ?>> zacq() {
            Preconditions.checkNotNull(this.zapx);
            Preconditions.checkNotNull(this.zapy);
            return this.zapy.zai(this.zapx);
        }

        public final O convert(I i) {
            return this.zapz.convert(i);
        }

        public final I convertBack(O o) {
            return this.zapz.convertBack(o);
        }

        @KeepForSdk
        @VisibleForTesting
        public static Field<Integer, Integer> forInteger(String str, int i) {
            Field field = new Field(0, false, 0, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<Long, Long> forLong(String str, int i) {
            Field field = new Field(2, false, 2, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<Float, Float> forFloat(String str, int i) {
            Field field = new Field(3, false, 3, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<Double, Double> forDouble(String str, int i) {
            Field field = new Field(4, false, 4, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            Field field = new Field(6, false, 6, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<String, String> forString(String str, int i) {
            Field field = new Field(7, false, 7, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            Field field = new Field(7, true, 7, true, str, i, null, null);
            return field;
        }

        @KeepForSdk
        @VisibleForTesting
        public static Field<byte[], byte[]> forBase64(String str, int i) {
            Field field = new Field(8, false, 8, false, str, i, null, null);
            return field;
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            Field field = new Field(11, false, 11, false, str, i, cls, null);
            return field;
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            Field field = new Field(11, true, 11, true, str, i, cls, null);
            return field;
        }

        @KeepForSdk
        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            Field field = new Field(fieldConverter.zacj(), z, fieldConverter.zack(), false, str, i, null, fieldConverter);
            return field;
        }

        public void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.zale);
            SafeParcelWriter.writeInt(parcel, 2, this.zapq);
            SafeParcelWriter.writeBoolean(parcel, 3, this.zapr);
            SafeParcelWriter.writeInt(parcel, 4, this.zaps);
            SafeParcelWriter.writeBoolean(parcel, 5, this.zapt);
            SafeParcelWriter.writeString(parcel, 6, this.zapu, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, zacm(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, zaco(), i, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        public String toString() {
            String str = "typeIn";
            String str2 = "typeInArray";
            String str3 = "typeOut";
            String str4 = "typeOutArray";
            String str5 = "outputFieldName";
            String str6 = "safeParcelFieldId";
            String str7 = "concreteTypeName";
            ToStringHelper add = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.zale)).add(str, Integer.valueOf(this.zapq)).add(str2, Boolean.valueOf(this.zapr)).add(str3, Integer.valueOf(this.zaps)).add(str4, Boolean.valueOf(this.zapt)).add(str5, this.zapu).add(str6, Integer.valueOf(this.zapv)).add(str7, zacm());
            Class<? extends FastJsonResponse> cls = this.zapw;
            if (cls != null) {
                add.add("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.zapz;
            if (fieldConverter != null) {
                add.add("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return add.toString();
        }
    }

    @ShowFirstParty
    public interface FieldConverter<I, O> {
        O convert(I i);

        I convertBack(O o);

        int zacj();

        int zack();
    }

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    /* access modifiers changed from: protected */
    @KeepForSdk
    public abstract Object getValueObject(String str);

    /* access modifiers changed from: protected */
    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(String str);

    /* access modifiers changed from: protected */
    @KeepForSdk
    public boolean isFieldSet(Field field) {
        if (field.zaps != 11) {
            return isPrimitiveFieldSet(field.zapu);
        }
        if (field.zapt) {
            String str = field.zapu;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        String str2 = field.zapu;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    private final <I, O> void zaa(Field<I, O> field, I i) {
        String str = field.zapu;
        Object convert = field.convert(i);
        switch (field.zaps) {
            case 0:
                if (zaa(str, (O) convert)) {
                    setIntegerInternal(field, str, ((Integer) convert).intValue());
                    break;
                }
                break;
            case 1:
                zaa(field, str, (BigInteger) convert);
                return;
            case 2:
                if (zaa(str, (O) convert)) {
                    setLongInternal(field, str, ((Long) convert).longValue());
                    return;
                }
                break;
            case 4:
                if (zaa(str, (O) convert)) {
                    zaa(field, str, ((Double) convert).doubleValue());
                    return;
                }
                break;
            case 5:
                zaa(field, str, (BigDecimal) convert);
                return;
            case 6:
                if (zaa(str, (O) convert)) {
                    setBooleanInternal(field, str, ((Boolean) convert).booleanValue());
                    return;
                }
                break;
            case 7:
                setStringInternal(field, str, (String) convert);
                return;
            case 8:
            case 9:
                if (zaa(str, (O) convert)) {
                    setDecodedBytesInternal(field, str, (byte[]) convert);
                    return;
                }
                break;
            default:
                int i2 = field.zaps;
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
        }
    }

    protected static <O, I> I zab(Field<I, O> field, Object obj) {
        return field.zapz != null ? field.convertBack(obj) : obj;
    }

    public final <O> void zaa(Field<Integer, O> field, int i) {
        if (field.zapz != null) {
            zaa(field, (I) Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zapu, i);
        }
    }

    public final <O> void zaa(Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zaa(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<BigInteger, O> field, BigInteger bigInteger) {
        if (field.zapz != null) {
            zaa(field, (I) bigInteger);
        } else {
            zaa(field, field.zapu, bigInteger);
        }
    }

    public final <O> void zab(Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zab(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<Long, O> field, long j) {
        if (field.zapz != null) {
            zaa(field, (I) Long.valueOf(j));
        } else {
            setLongInternal(field, field.zapu, j);
        }
    }

    public final <O> void zac(Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zac(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<Float, O> field, float f) {
        if (field.zapz != null) {
            zaa(field, (I) Float.valueOf(f));
        } else {
            zaa(field, field.zapu, f);
        }
    }

    public final <O> void zad(Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zad(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<Double, O> field, double d) {
        if (field.zapz != null) {
            zaa(field, (I) Double.valueOf(d));
        } else {
            zaa(field, field.zapu, d);
        }
    }

    public final <O> void zae(Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zae(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (field.zapz != null) {
            zaa(field, (I) bigDecimal);
        } else {
            zaa(field, field.zapu, bigDecimal);
        }
    }

    public final <O> void zaf(Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zaf(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<Boolean, O> field, boolean z) {
        if (field.zapz != null) {
            zaa(field, (I) Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zapu, z);
        }
    }

    public final <O> void zag(Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            zag(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<String, O> field, String str) {
        if (field.zapz != null) {
            zaa(field, (I) str);
        } else {
            setStringInternal(field, field.zapu, str);
        }
    }

    public final <O> void zah(Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (field.zapz != null) {
            zaa(field, (I) arrayList);
        } else {
            setStringsInternal(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<byte[], O> field, byte[] bArr) {
        if (field.zapz != null) {
            zaa(field, (I) bArr);
        } else {
            setDecodedBytesInternal(field, field.zapu, bArr);
        }
    }

    public final <O> void zaa(Field<Map<String, String>, O> field, Map<String, String> map) {
        if (field.zapz != null) {
            zaa(field, (I) map);
        } else {
            zaa(field, field.zapu, map);
        }
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setIntegerInternal(Field<?, ?> field, String str, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    /* access modifiers changed from: protected */
    public void zab(Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setLongInternal(Field<?, ?> field, String str, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    /* access modifiers changed from: protected */
    public void zac(Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    /* access modifiers changed from: protected */
    public void zad(Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    /* access modifiers changed from: protected */
    public void zae(Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    /* access modifiers changed from: protected */
    public void zaf(Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setBooleanInternal(Field<?, ?> field, String str, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    /* access modifiers changed from: protected */
    public void zag(Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setStringInternal(Field<?, ?> field, String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setStringsInternal(Field<?, ?> field, String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public void setDecodedBytesInternal(Field<?, ?> field, String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    /* access modifiers changed from: protected */
    public void zaa(Field<?, ?> field, String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    private static <O> boolean zaa(String str, O o) {
        if (o != null) {
            return true;
        }
        String str2 = "FastJsonResponse";
        if (Log.isLoggable(str2, 6)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
            sb.append("Output field (");
            sb.append(str);
            sb.append(") has a null value, but expected a primitive");
            Log.e(str2, sb.toString());
        }
        return false;
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field<?, ?> field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field<?, ?> field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @KeepForSdk
    public String toString() {
        Map fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field field = (Field) fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zab = zab(field, getFieldValue(field));
                String str2 = ",";
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(str2);
                }
                String str3 = "\"";
                sb.append(str3);
                sb.append(str);
                sb.append("\":");
                if (zab != null) {
                    switch (field.zaps) {
                        case 8:
                            sb.append(str3);
                            sb.append(Base64Utils.encode((byte[]) zab));
                            sb.append(str3);
                            break;
                        case 9:
                            sb.append(str3);
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) zab));
                            sb.append(str3);
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) zab);
                            break;
                        default:
                            if (!field.zapr) {
                                zaa(sb, field, zab);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) zab;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(str2);
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaa(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    @KeepForSdk
    public Object getFieldValue(Field field) {
        String str = field.zapu;
        if (field.zapw == null) {
            return getValueObject(field.zapu);
        }
        Preconditions.checkState(getValueObject(field.zapu) == null, "Concrete field shouldn't be value object: %s", field.zapu);
        boolean z = field.zapt;
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static void zaa(StringBuilder sb, Field field, Object obj) {
        if (field.zapq == 11) {
            sb.append(((FastJsonResponse) field.zapw.cast(obj)).toString());
        } else if (field.zapq == 7) {
            String str = "\"";
            sb.append(str);
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append(str);
        } else {
            sb.append(obj);
        }
    }
}
