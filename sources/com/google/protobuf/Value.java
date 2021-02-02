package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.OneofDescriptor;
import com.google.protobuf.GeneratedMessageV3.FieldAccessorTable;
import com.google.protobuf.Internal.EnumLite;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class Value extends GeneratedMessageV3 implements ValueOrBuilder {
    public static final int BOOL_VALUE_FIELD_NUMBER = 4;
    private static final Value DEFAULT_INSTANCE = new Value();
    public static final int LIST_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int NUMBER_VALUE_FIELD_NUMBER = 2;
    /* access modifiers changed from: private */
    public static final Parser<Value> PARSER = new AbstractParser<Value>() {
        public Value parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Value(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int STRING_VALUE_FIELD_NUMBER = 3;
    public static final int STRUCT_VALUE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    /* access modifiers changed from: private */
    public int kindCase_;
    /* access modifiers changed from: private */
    public Object kind_;
    private byte memoizedIsInitialized;

    public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements ValueOrBuilder {
        private int kindCase_;
        private Object kind_;
        private SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> listValueBuilder_;
        private SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> structValueBuilder_;

        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptor getDescriptor() {
            return StructProto.internal_static_google_protobuf_Value_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return StructProto.internal_static_google_protobuf_Value_fieldAccessorTable.ensureFieldAccessorsInitialized(Value.class, Builder.class);
        }

        private Builder() {
            this.kindCase_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(BuilderParent builderParent) {
            super(builderParent);
            this.kindCase_ = 0;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clear() {
            super.clear();
            this.kindCase_ = 0;
            this.kind_ = null;
            return this;
        }

        public Descriptor getDescriptorForType() {
            return StructProto.internal_static_google_protobuf_Value_descriptor;
        }

        public Value getDefaultInstanceForType() {
            return Value.getDefaultInstance();
        }

        public Value build() {
            Value buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException(buildPartial);
        }

        public Value buildPartial() {
            Value value = new Value((com.google.protobuf.GeneratedMessageV3.Builder) this);
            if (this.kindCase_ == 1) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 2) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 3) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 4) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 5) {
                SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.kind_ = this.kind_;
                } else {
                    value.kind_ = singleFieldBuilderV3.build();
                }
            }
            if (this.kindCase_ == 6) {
                SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV32 = this.listValueBuilder_;
                if (singleFieldBuilderV32 == null) {
                    value.kind_ = this.kind_;
                } else {
                    value.kind_ = singleFieldBuilderV32.build();
                }
            }
            value.kindCase_ = this.kindCase_;
            onBuilt();
            return value;
        }

        public Builder clone() {
            return (Builder) super.clone();
        }

        public Builder setField(FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public Builder clearField(FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public Builder clearOneof(OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public Builder setRepeatedField(FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public Builder addRepeatedField(FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        public Builder mergeFrom(Message message) {
            if (message instanceof Value) {
                return mergeFrom((Value) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Value value) {
            if (value == Value.getDefaultInstance()) {
                return this;
            }
            switch (value.getKindCase()) {
                case NULL_VALUE:
                    setNullValueValue(value.getNullValueValue());
                    break;
                case NUMBER_VALUE:
                    setNumberValue(value.getNumberValue());
                    break;
                case STRING_VALUE:
                    this.kindCase_ = 3;
                    this.kind_ = value.kind_;
                    onChanged();
                    break;
                case BOOL_VALUE:
                    setBoolValue(value.getBoolValue());
                    break;
                case STRUCT_VALUE:
                    mergeStructValue(value.getStructValue());
                    break;
                case LIST_VALUE:
                    mergeListValue(value.getListValue());
                    break;
            }
            mergeUnknownFields(value.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0023  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.google.protobuf.Value.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.Parser r1 = com.google.protobuf.Value.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x0013 }
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch:{ InvalidProtocolBufferException -> 0x0013 }
                com.google.protobuf.Value r3 = (com.google.protobuf.Value) r3     // Catch:{ InvalidProtocolBufferException -> 0x0013 }
                if (r3 == 0) goto L_0x0010
                r2.mergeFrom(r3)
            L_0x0010:
                return r2
            L_0x0011:
                r3 = move-exception
                goto L_0x0021
            L_0x0013:
                r3 = move-exception
                com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch:{ all -> 0x0011 }
                com.google.protobuf.Value r4 = (com.google.protobuf.Value) r4     // Catch:{ all -> 0x0011 }
                java.io.IOException r3 = r3.unwrapIOException()     // Catch:{ all -> 0x001f }
                throw r3     // Catch:{ all -> 0x001f }
            L_0x001f:
                r3 = move-exception
                r0 = r4
            L_0x0021:
                if (r0 == 0) goto L_0x0026
                r2.mergeFrom(r0)
            L_0x0026:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Value.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.protobuf.Value$Builder");
        }

        public KindCase getKindCase() {
            return KindCase.forNumber(this.kindCase_);
        }

        public Builder clearKind() {
            this.kindCase_ = 0;
            this.kind_ = null;
            onChanged();
            return this;
        }

        public int getNullValueValue() {
            if (this.kindCase_ == 1) {
                return ((Integer) this.kind_).intValue();
            }
            return 0;
        }

        public Builder setNullValueValue(int i) {
            this.kindCase_ = 1;
            this.kind_ = Integer.valueOf(i);
            onChanged();
            return this;
        }

        public NullValue getNullValue() {
            if (this.kindCase_ != 1) {
                return NullValue.NULL_VALUE;
            }
            NullValue valueOf = NullValue.valueOf(((Integer) this.kind_).intValue());
            if (valueOf == null) {
                valueOf = NullValue.UNRECOGNIZED;
            }
            return valueOf;
        }

        public Builder setNullValue(NullValue nullValue) {
            if (nullValue != null) {
                this.kindCase_ = 1;
                this.kind_ = Integer.valueOf(nullValue.getNumber());
                onChanged();
                return this;
            }
            throw new NullPointerException();
        }

        public Builder clearNullValue() {
            if (this.kindCase_ == 1) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public double getNumberValue() {
            if (this.kindCase_ == 2) {
                return ((Double) this.kind_).doubleValue();
            }
            return 0.0d;
        }

        public Builder setNumberValue(double d) {
            this.kindCase_ = 2;
            this.kind_ = Double.valueOf(d);
            onChanged();
            return this;
        }

        public Builder clearNumberValue() {
            if (this.kindCase_ == 2) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public String getStringValue() {
            Object obj = this.kindCase_ == 3 ? this.kind_ : "";
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            if (this.kindCase_ == 3) {
                this.kind_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getStringValueBytes() {
            Object obj = this.kindCase_ == 3 ? this.kind_ : "";
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            if (this.kindCase_ == 3) {
                this.kind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }

        public Builder setStringValue(String str) {
            if (str != null) {
                this.kindCase_ = 3;
                this.kind_ = str;
                onChanged();
                return this;
            }
            throw new NullPointerException();
        }

        public Builder clearStringValue() {
            if (this.kindCase_ == 3) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public Builder setStringValueBytes(ByteString byteString) {
            if (byteString != null) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.kindCase_ = 3;
                this.kind_ = byteString;
                onChanged();
                return this;
            }
            throw new NullPointerException();
        }

        public boolean getBoolValue() {
            if (this.kindCase_ == 4) {
                return ((Boolean) this.kind_).booleanValue();
            }
            return false;
        }

        public Builder setBoolValue(boolean z) {
            this.kindCase_ = 4;
            this.kind_ = Boolean.valueOf(z);
            onChanged();
            return this;
        }

        public Builder clearBoolValue() {
            if (this.kindCase_ == 4) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public boolean hasStructValue() {
            return this.kindCase_ == 5;
        }

        public Struct getStructValue() {
            SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.kindCase_ == 5) {
                    return (Struct) this.kind_;
                }
                return Struct.getDefaultInstance();
            } else if (this.kindCase_ == 5) {
                return (Struct) singleFieldBuilderV3.getMessage();
            } else {
                return Struct.getDefaultInstance();
            }
        }

        public Builder setStructValue(Struct struct) {
            SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.setMessage(struct);
            } else if (struct != null) {
                this.kind_ = struct;
                onChanged();
            } else {
                throw new NullPointerException();
            }
            this.kindCase_ = 5;
            return this;
        }

        public Builder setStructValue(com.google.protobuf.Struct.Builder builder) {
            SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.kind_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.kindCase_ = 5;
            return this;
        }

        public Builder mergeStructValue(Struct struct) {
            SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.kindCase_ != 5 || this.kind_ == Struct.getDefaultInstance()) {
                    this.kind_ = struct;
                } else {
                    this.kind_ = Struct.newBuilder((Struct) this.kind_).mergeFrom(struct).buildPartial();
                }
                onChanged();
            } else {
                if (this.kindCase_ == 5) {
                    singleFieldBuilderV3.mergeFrom(struct);
                }
                this.structValueBuilder_.setMessage(struct);
            }
            this.kindCase_ = 5;
            return this;
        }

        public Builder clearStructValue() {
            if (this.structValueBuilder_ != null) {
                if (this.kindCase_ == 5) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                }
                this.structValueBuilder_.clear();
            } else if (this.kindCase_ == 5) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public com.google.protobuf.Struct.Builder getStructValueBuilder() {
            return (com.google.protobuf.Struct.Builder) getStructValueFieldBuilder().getBuilder();
        }

        public StructOrBuilder getStructValueOrBuilder() {
            if (this.kindCase_ == 5) {
                SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.structValueBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (StructOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
            }
            if (this.kindCase_ == 5) {
                return (Struct) this.kind_;
            }
            return Struct.getDefaultInstance();
        }

        private SingleFieldBuilderV3<Struct, com.google.protobuf.Struct.Builder, StructOrBuilder> getStructValueFieldBuilder() {
            if (this.structValueBuilder_ == null) {
                if (this.kindCase_ != 5) {
                    this.kind_ = Struct.getDefaultInstance();
                }
                this.structValueBuilder_ = new SingleFieldBuilderV3<>((Struct) this.kind_, getParentForChildren(), isClean());
                this.kind_ = null;
            }
            this.kindCase_ = 5;
            onChanged();
            return this.structValueBuilder_;
        }

        public boolean hasListValue() {
            return this.kindCase_ == 6;
        }

        public ListValue getListValue() {
            SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV3 = this.listValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.kindCase_ == 6) {
                    return (ListValue) this.kind_;
                }
                return ListValue.getDefaultInstance();
            } else if (this.kindCase_ == 6) {
                return (ListValue) singleFieldBuilderV3.getMessage();
            } else {
                return ListValue.getDefaultInstance();
            }
        }

        public Builder setListValue(ListValue listValue) {
            SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV3 = this.listValueBuilder_;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.setMessage(listValue);
            } else if (listValue != null) {
                this.kind_ = listValue;
                onChanged();
            } else {
                throw new NullPointerException();
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder setListValue(com.google.protobuf.ListValue.Builder builder) {
            SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV3 = this.listValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.kind_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder mergeListValue(ListValue listValue) {
            SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV3 = this.listValueBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.kindCase_ != 6 || this.kind_ == ListValue.getDefaultInstance()) {
                    this.kind_ = listValue;
                } else {
                    this.kind_ = ListValue.newBuilder((ListValue) this.kind_).mergeFrom(listValue).buildPartial();
                }
                onChanged();
            } else {
                if (this.kindCase_ == 6) {
                    singleFieldBuilderV3.mergeFrom(listValue);
                }
                this.listValueBuilder_.setMessage(listValue);
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder clearListValue() {
            if (this.listValueBuilder_ != null) {
                if (this.kindCase_ == 6) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                }
                this.listValueBuilder_.clear();
            } else if (this.kindCase_ == 6) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public com.google.protobuf.ListValue.Builder getListValueBuilder() {
            return (com.google.protobuf.ListValue.Builder) getListValueFieldBuilder().getBuilder();
        }

        public ListValueOrBuilder getListValueOrBuilder() {
            if (this.kindCase_ == 6) {
                SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> singleFieldBuilderV3 = this.listValueBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ListValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
            }
            if (this.kindCase_ == 6) {
                return (ListValue) this.kind_;
            }
            return ListValue.getDefaultInstance();
        }

        private SingleFieldBuilderV3<ListValue, com.google.protobuf.ListValue.Builder, ListValueOrBuilder> getListValueFieldBuilder() {
            if (this.listValueBuilder_ == null) {
                if (this.kindCase_ != 6) {
                    this.kind_ = ListValue.getDefaultInstance();
                }
                this.listValueBuilder_ = new SingleFieldBuilderV3<>((ListValue) this.kind_, getParentForChildren(), isClean());
                this.kind_ = null;
            }
            this.kindCase_ = 6;
            onChanged();
            return this.listValueBuilder_;
        }

        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFieldsProto3(unknownFieldSet);
        }

        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public enum KindCase implements EnumLite {
        NULL_VALUE(1),
        NUMBER_VALUE(2),
        STRING_VALUE(3),
        BOOL_VALUE(4),
        STRUCT_VALUE(5),
        LIST_VALUE(6),
        KIND_NOT_SET(0);
        
        private final int value;

        private KindCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static KindCase valueOf(int i) {
            return forNumber(i);
        }

        public static KindCase forNumber(int i) {
            switch (i) {
                case 0:
                    return KIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return NUMBER_VALUE;
                case 3:
                    return STRING_VALUE;
                case 4:
                    return BOOL_VALUE;
                case 5:
                    return STRUCT_VALUE;
                case 6:
                    return LIST_VALUE;
                default:
                    return null;
            }
        }

        public int getNumber() {
            return this.value;
        }
    }

    private Value(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = -1;
    }

    private Value() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = -1;
    }

    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARNING: type inference failed for: r5v0 */
    /* JADX WARNING: type inference failed for: r5v1, types: [com.google.protobuf.Struct$Builder] */
    /* JADX WARNING: type inference failed for: r5v2, types: [com.google.protobuf.Struct$Builder] */
    /* JADX WARNING: type inference failed for: r5v3, types: [com.google.protobuf.ListValue$Builder] */
    /* JADX WARNING: type inference failed for: r5v4, types: [com.google.protobuf.ListValue$Builder] */
    /* JADX WARNING: type inference failed for: r5v5 */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v0
      assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], com.google.protobuf.ListValue$Builder, com.google.protobuf.Struct$Builder]
      uses: [?[int, boolean, OBJECT, ARRAY, byte, short, char], com.google.protobuf.Struct$Builder, com.google.protobuf.ListValue$Builder]
      mth insns count: 85
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private Value(com.google.protobuf.CodedInputStream r7, com.google.protobuf.ExtensionRegistryLite r8) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            r6 = this;
            r6.<init>()
            com.google.protobuf.UnknownFieldSet$Builder r0 = com.google.protobuf.UnknownFieldSet.newBuilder()
            r1 = 0
        L_0x0008:
            if (r1 != 0) goto L_0x00db
            int r2 = r7.readTag()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r3 = 1
            if (r2 == 0) goto L_0x00bb
            r4 = 8
            if (r2 == r4) goto L_0x00ad
            r4 = 17
            if (r2 == r4) goto L_0x009e
            r4 = 26
            if (r2 == r4) goto L_0x0093
            r4 = 32
            if (r2 == r4) goto L_0x0084
            r4 = 42
            r5 = 0
            if (r2 == r4) goto L_0x005b
            r4 = 50
            if (r2 == r4) goto L_0x0032
            boolean r2 = r6.parseUnknownFieldProto3(r7, r0, r8, r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            if (r2 != 0) goto L_0x0008
            goto L_0x00bb
        L_0x0032:
            int r2 = r6.kindCase_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r3 = 6
            if (r2 != r3) goto L_0x003f
            java.lang.Object r2 = r6.kind_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.ListValue r2 = (com.google.protobuf.ListValue) r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.ListValue$Builder r5 = r2.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
        L_0x003f:
            com.google.protobuf.Parser r2 = com.google.protobuf.ListValue.parser()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.MessageLite r2 = r7.readMessage(r2, r8)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            if (r5 == 0) goto L_0x0058
            java.lang.Object r2 = r6.kind_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.ListValue r2 = (com.google.protobuf.ListValue) r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r5.mergeFrom(r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.ListValue r2 = r5.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
        L_0x0058:
            r6.kindCase_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x005b:
            int r2 = r6.kindCase_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r3 = 5
            if (r2 != r3) goto L_0x0068
            java.lang.Object r2 = r6.kind_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.Struct r2 = (com.google.protobuf.Struct) r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.Struct$Builder r5 = r2.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
        L_0x0068:
            com.google.protobuf.Parser r2 = com.google.protobuf.Struct.parser()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.MessageLite r2 = r7.readMessage(r2, r8)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            if (r5 == 0) goto L_0x0081
            java.lang.Object r2 = r6.kind_     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.Struct r2 = (com.google.protobuf.Struct) r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r5.mergeFrom(r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            com.google.protobuf.Struct r2 = r5.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
        L_0x0081:
            r6.kindCase_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x0084:
            r2 = 4
            r6.kindCase_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            boolean r2 = r7.readBool()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x0093:
            java.lang.String r2 = r7.readStringRequireUtf8()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r3 = 3
            r6.kindCase_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x009e:
            r2 = 2
            r6.kindCase_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            double r2 = r7.readDouble()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            java.lang.Double r2 = java.lang.Double.valueOf(r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x00ad:
            int r2 = r7.readEnum()     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kindCase_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            r6.kind_ = r2     // Catch:{ InvalidProtocolBufferException -> 0x00cb, IOException -> 0x00c0 }
            goto L_0x0008
        L_0x00bb:
            r1 = 1
            goto L_0x0008
        L_0x00be:
            r7 = move-exception
            goto L_0x00d1
        L_0x00c0:
            r7 = move-exception
            com.google.protobuf.InvalidProtocolBufferException r8 = new com.google.protobuf.InvalidProtocolBufferException     // Catch:{ all -> 0x00be }
            r8.<init>(r7)     // Catch:{ all -> 0x00be }
            com.google.protobuf.InvalidProtocolBufferException r7 = r8.setUnfinishedMessage(r6)     // Catch:{ all -> 0x00be }
            throw r7     // Catch:{ all -> 0x00be }
        L_0x00cb:
            r7 = move-exception
            com.google.protobuf.InvalidProtocolBufferException r7 = r7.setUnfinishedMessage(r6)     // Catch:{ all -> 0x00be }
            throw r7     // Catch:{ all -> 0x00be }
        L_0x00d1:
            com.google.protobuf.UnknownFieldSet r8 = r0.build()
            r6.unknownFields = r8
            r6.makeExtensionsImmutable()
            throw r7
        L_0x00db:
            com.google.protobuf.UnknownFieldSet r7 = r0.build()
            r6.unknownFields = r7
            r6.makeExtensionsImmutable()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Value.<init>(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):void");
    }

    public static final Descriptor getDescriptor() {
        return StructProto.internal_static_google_protobuf_Value_descriptor;
    }

    /* access modifiers changed from: protected */
    public FieldAccessorTable internalGetFieldAccessorTable() {
        return StructProto.internal_static_google_protobuf_Value_fieldAccessorTable.ensureFieldAccessorsInitialized(Value.class, Builder.class);
    }

    public KindCase getKindCase() {
        return KindCase.forNumber(this.kindCase_);
    }

    public int getNullValueValue() {
        if (this.kindCase_ == 1) {
            return ((Integer) this.kind_).intValue();
        }
        return 0;
    }

    public NullValue getNullValue() {
        if (this.kindCase_ != 1) {
            return NullValue.NULL_VALUE;
        }
        NullValue valueOf = NullValue.valueOf(((Integer) this.kind_).intValue());
        if (valueOf == null) {
            valueOf = NullValue.UNRECOGNIZED;
        }
        return valueOf;
    }

    public double getNumberValue() {
        if (this.kindCase_ == 2) {
            return ((Double) this.kind_).doubleValue();
        }
        return 0.0d;
    }

    public String getStringValue() {
        Object obj = this.kindCase_ == 3 ? this.kind_ : "";
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        if (this.kindCase_ == 3) {
            this.kind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getStringValueBytes() {
        Object obj = this.kindCase_ == 3 ? this.kind_ : "";
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        if (this.kindCase_ == 3) {
            this.kind_ = copyFromUtf8;
        }
        return copyFromUtf8;
    }

    public boolean getBoolValue() {
        if (this.kindCase_ == 4) {
            return ((Boolean) this.kind_).booleanValue();
        }
        return false;
    }

    public boolean hasStructValue() {
        return this.kindCase_ == 5;
    }

    public Struct getStructValue() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    public StructOrBuilder getStructValueOrBuilder() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    public boolean hasListValue() {
        return this.kindCase_ == 6;
    }

    public ListValue getListValue() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public ListValueOrBuilder getListValueOrBuilder() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = 1;
        return true;
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kindCase_ == 1) {
            codedOutputStream.writeEnum(1, ((Integer) this.kind_).intValue());
        }
        if (this.kindCase_ == 2) {
            codedOutputStream.writeDouble(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            codedOutputStream.writeBool(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            codedOutputStream.writeMessage(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            codedOutputStream.writeMessage(6, (ListValue) this.kind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.kindCase_ == 1) {
            i2 = 0 + CodedOutputStream.computeEnumSize(1, ((Integer) this.kind_).intValue());
        }
        if (this.kindCase_ == 2) {
            i2 += CodedOutputStream.computeDoubleSize(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            i2 += GeneratedMessageV3.computeStringSize(3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            i2 += CodedOutputStream.computeBoolSize(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            i2 += CodedOutputStream.computeMessageSize(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            i2 += CodedOutputStream.computeMessageSize(6, (ListValue) this.kind_);
        }
        int serializedSize = i2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0039, code lost:
        if (getListValue().equals(r8.getListValue()) != false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003b, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003d, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x004d, code lost:
        if (getStructValue().equals(r8.getStructValue()) != false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005a, code lost:
        if (getBoolValue() == r8.getBoolValue()) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006b, code lost:
        if (getStringValue().equals(r8.getStringValue()) != false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0082, code lost:
        if (java.lang.Double.doubleToLongBits(getNumberValue()) == java.lang.Double.doubleToLongBits(r8.getNumberValue())) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008f, code lost:
        if (getNullValueValue() == r8.getNullValueValue()) goto L_0x003b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r8 instanceof com.google.protobuf.Value
            if (r1 != 0) goto L_0x000d
            boolean r8 = super.equals(r8)
            return r8
        L_0x000d:
            com.google.protobuf.Value r8 = (com.google.protobuf.Value) r8
            com.google.protobuf.Value$KindCase r1 = r7.getKindCase()
            com.google.protobuf.Value$KindCase r2 = r8.getKindCase()
            boolean r1 = r1.equals(r2)
            r2 = 0
            if (r1 == 0) goto L_0x0020
            r1 = 1
            goto L_0x0021
        L_0x0020:
            r1 = 0
        L_0x0021:
            if (r1 != 0) goto L_0x0024
            return r2
        L_0x0024:
            int r3 = r7.kindCase_
            switch(r3) {
                case 1: goto L_0x0085;
                case 2: goto L_0x006e;
                case 3: goto L_0x005d;
                case 4: goto L_0x0050;
                case 5: goto L_0x003f;
                case 6: goto L_0x002b;
                default: goto L_0x0029;
            }
        L_0x0029:
            goto L_0x0092
        L_0x002b:
            if (r1 == 0) goto L_0x003d
            com.google.protobuf.ListValue r1 = r7.getListValue()
            com.google.protobuf.ListValue r3 = r8.getListValue()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x003d
        L_0x003b:
            r1 = 1
            goto L_0x0092
        L_0x003d:
            r1 = 0
            goto L_0x0092
        L_0x003f:
            if (r1 == 0) goto L_0x003d
            com.google.protobuf.Struct r1 = r7.getStructValue()
            com.google.protobuf.Struct r3 = r8.getStructValue()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x003d
            goto L_0x003b
        L_0x0050:
            if (r1 == 0) goto L_0x003d
            boolean r1 = r7.getBoolValue()
            boolean r3 = r8.getBoolValue()
            if (r1 != r3) goto L_0x003d
            goto L_0x003b
        L_0x005d:
            if (r1 == 0) goto L_0x003d
            java.lang.String r1 = r7.getStringValue()
            java.lang.String r3 = r8.getStringValue()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x003d
            goto L_0x003b
        L_0x006e:
            if (r1 == 0) goto L_0x003d
            double r3 = r7.getNumberValue()
            long r3 = java.lang.Double.doubleToLongBits(r3)
            double r5 = r8.getNumberValue()
            long r5 = java.lang.Double.doubleToLongBits(r5)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L_0x003d
            goto L_0x003b
        L_0x0085:
            if (r1 == 0) goto L_0x003d
            int r1 = r7.getNullValueValue()
            int r3 = r8.getNullValueValue()
            if (r1 != r3) goto L_0x003d
            goto L_0x003b
        L_0x0092:
            if (r1 == 0) goto L_0x009f
            com.google.protobuf.UnknownFieldSet r1 = r7.unknownFields
            com.google.protobuf.UnknownFieldSet r8 = r8.unknownFields
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L_0x009f
            goto L_0x00a0
        L_0x009f:
            r0 = 0
        L_0x00a0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Value.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i;
        int i2;
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        switch (this.kindCase_) {
            case 1:
                i2 = ((hashCode * 37) + 1) * 53;
                i = getNullValueValue();
                break;
            case 2:
                i2 = ((hashCode * 37) + 2) * 53;
                i = Internal.hashLong(Double.doubleToLongBits(getNumberValue()));
                break;
            case 3:
                i2 = ((hashCode * 37) + 3) * 53;
                i = getStringValue().hashCode();
                break;
            case 4:
                i2 = ((hashCode * 37) + 4) * 53;
                i = Internal.hashBoolean(getBoolValue());
                break;
            case 5:
                i2 = ((hashCode * 37) + 5) * 53;
                i = getStructValue().hashCode();
                break;
            case 6:
                i2 = ((hashCode * 37) + 6) * 53;
                i = getListValue().hashCode();
                break;
            default:
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
        }
        hashCode = i2 + i;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    public static Value parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(byteBuffer);
    }

    public static Value parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Value parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(byteString);
    }

    public static Value parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Value parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(bArr);
    }

    public static Value parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Value) PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Value parseFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Value parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Value parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Value parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Value parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Value parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Value value) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(value);
    }

    public Builder toBuilder() {
        if (this == DEFAULT_INSTANCE) {
            return new Builder();
        }
        return new Builder().mergeFrom(this);
    }

    /* access modifiers changed from: protected */
    public Builder newBuilderForType(BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static Value getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Value> parser() {
        return PARSER;
    }

    public Parser<Value> getParserForType() {
        return PARSER;
    }

    public Value getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
