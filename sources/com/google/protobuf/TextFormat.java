package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor.JavaType;
import com.google.protobuf.Descriptors.FieldDescriptor.Type;
import com.google.protobuf.ExtensionRegistry.ExtensionInfo;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet.Field;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public final class TextFormat {
    private static final Parser PARSER = Parser.newBuilder().build();
    /* access modifiers changed from: private */
    public static final Logger logger = Logger.getLogger(TextFormat.class.getName());

    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        InvalidEscapeSequenceException(String str) {
            super(str);
        }
    }

    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(String str) {
            this(-1, -1, str);
        }

        public ParseException(int i, int i2, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toString(i));
            sb.append(":");
            sb.append(i2);
            sb.append(": ");
            sb.append(str);
            super(sb.toString());
            this.line = i;
            this.column = i2;
        }

        public int getLine() {
            return this.line;
        }

        public int getColumn() {
            return this.column;
        }
    }

    public static class Parser {
        private static final int BUFFER_SIZE = 4096;
        private final boolean allowUnknownFields;
        private com.google.protobuf.TextFormatParseInfoTree.Builder parseInfoTreeBuilder;
        private final SingularOverwritePolicy singularOverwritePolicy;

        public static class Builder {
            private boolean allowUnknownFields = false;
            private com.google.protobuf.TextFormatParseInfoTree.Builder parseInfoTreeBuilder = null;
            private SingularOverwritePolicy singularOverwritePolicy = SingularOverwritePolicy.ALLOW_SINGULAR_OVERWRITES;

            public Builder setSingularOverwritePolicy(SingularOverwritePolicy singularOverwritePolicy2) {
                this.singularOverwritePolicy = singularOverwritePolicy2;
                return this;
            }

            public Builder setParseInfoTreeBuilder(com.google.protobuf.TextFormatParseInfoTree.Builder builder) {
                this.parseInfoTreeBuilder = builder;
                return this;
            }

            public Parser build() {
                return new Parser(this.allowUnknownFields, this.singularOverwritePolicy, this.parseInfoTreeBuilder);
            }
        }

        public enum SingularOverwritePolicy {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        private Parser(boolean z, SingularOverwritePolicy singularOverwritePolicy2, com.google.protobuf.TextFormatParseInfoTree.Builder builder) {
            this.allowUnknownFields = z;
            this.singularOverwritePolicy = singularOverwritePolicy2;
            this.parseInfoTreeBuilder = builder;
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public void merge(Readable readable, com.google.protobuf.Message.Builder builder) throws IOException {
            merge(readable, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(CharSequence charSequence, com.google.protobuf.Message.Builder builder) throws ParseException {
            merge(charSequence, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(Readable readable, ExtensionRegistry extensionRegistry, com.google.protobuf.Message.Builder builder) throws IOException {
            merge((CharSequence) toStringBuilder(readable), extensionRegistry, builder);
        }

        private static StringBuilder toStringBuilder(Readable readable) throws IOException {
            StringBuilder sb = new StringBuilder();
            CharBuffer allocate = CharBuffer.allocate(4096);
            while (true) {
                int read = readable.read(allocate);
                if (read == -1) {
                    return sb;
                }
                allocate.flip();
                sb.append(allocate, 0, read);
            }
        }

        private void checkUnknownFields(List<String> list) throws ParseException {
            if (!list.isEmpty()) {
                StringBuilder sb = new StringBuilder("Input contains unknown fields and/or extensions:");
                for (String str : list) {
                    sb.append(10);
                    sb.append(str);
                }
                if (this.allowUnknownFields) {
                    TextFormat.logger.warning(sb.toString());
                } else {
                    String[] split = ((String) list.get(0)).split(":");
                    throw new ParseException(Integer.valueOf(split[0]).intValue(), Integer.valueOf(split[1]).intValue(), sb.toString());
                }
            }
        }

        public void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, com.google.protobuf.Message.Builder builder) throws ParseException {
            Tokenizer tokenizer = new Tokenizer(charSequence);
            BuilderAdapter builderAdapter = new BuilderAdapter(builder);
            ArrayList arrayList = new ArrayList();
            while (!tokenizer.atEnd()) {
                mergeField(tokenizer, extensionRegistry, builderAdapter, arrayList);
            }
            checkUnknownFields(arrayList);
        }

        private void mergeField(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, MergeTarget mergeTarget, List<String> list) throws ParseException {
            mergeField(tokenizer, extensionRegistry, mergeTarget, this.parseInfoTreeBuilder, list);
        }

        private void mergeField(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, MergeTarget mergeTarget, com.google.protobuf.TextFormatParseInfoTree.Builder builder, List<String> list) throws ParseException {
            ExtensionInfo extensionInfo;
            FieldDescriptor fieldDescriptor;
            Tokenizer tokenizer2 = tokenizer;
            com.google.protobuf.TextFormatParseInfoTree.Builder builder2 = builder;
            List<String> list2 = list;
            int line = tokenizer.getLine();
            int column = tokenizer.getColumn();
            Descriptor descriptorForType = mergeTarget.getDescriptorForType();
            String str = ":\t";
            String str2 = ".";
            FieldDescriptor fieldDescriptor2 = null;
            String str3 = ":";
            if (tokenizer2.tryConsume("[")) {
                StringBuilder sb = new StringBuilder(tokenizer.consumeIdentifier());
                while (tokenizer2.tryConsume(str2)) {
                    sb.append('.');
                    sb.append(tokenizer.consumeIdentifier());
                }
                MergeTarget mergeTarget2 = mergeTarget;
                ExtensionInfo findExtensionByName = mergeTarget2.findExtensionByName(extensionRegistry, sb.toString());
                String str4 = "]";
                if (findExtensionByName == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(tokenizer.getPreviousLine() + 1);
                    sb2.append(str3);
                    sb2.append(tokenizer.getPreviousColumn() + 1);
                    sb2.append(str);
                    sb2.append(descriptorForType.getFullName());
                    sb2.append(".[");
                    sb2.append(sb);
                    sb2.append(str4);
                    list2.add(sb2.toString());
                } else if (findExtensionByName.descriptor.getContainingType() == descriptorForType) {
                    fieldDescriptor2 = findExtensionByName.descriptor;
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Extension \"");
                    sb3.append(sb);
                    sb3.append("\" does not extend message type \"");
                    sb3.append(descriptorForType.getFullName());
                    sb3.append("\".");
                    throw tokenizer2.parseExceptionPreviousToken(sb3.toString());
                }
                tokenizer2.consume(str4);
                extensionInfo = findExtensionByName;
                fieldDescriptor = fieldDescriptor2;
            } else {
                ExtensionRegistry extensionRegistry2 = extensionRegistry;
                MergeTarget mergeTarget3 = mergeTarget;
                String consumeIdentifier = tokenizer.consumeIdentifier();
                fieldDescriptor = descriptorForType.findFieldByName(consumeIdentifier);
                if (fieldDescriptor == null) {
                    fieldDescriptor = descriptorForType.findFieldByName(consumeIdentifier.toLowerCase(Locale.US));
                    if (!(fieldDescriptor == null || fieldDescriptor.getType() == Type.GROUP)) {
                        fieldDescriptor = null;
                    }
                }
                if (fieldDescriptor != null && fieldDescriptor.getType() == Type.GROUP && !fieldDescriptor.getMessageType().getName().equals(consumeIdentifier)) {
                    fieldDescriptor = null;
                }
                if (fieldDescriptor == null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(tokenizer.getPreviousLine() + 1);
                    sb4.append(str3);
                    sb4.append(tokenizer.getPreviousColumn() + 1);
                    sb4.append(str);
                    sb4.append(descriptorForType.getFullName());
                    sb4.append(str2);
                    sb4.append(consumeIdentifier);
                    list2.add(sb4.toString());
                }
                extensionInfo = null;
            }
            if (fieldDescriptor == null) {
                if (!tokenizer2.tryConsume(str3) || tokenizer2.lookingAt("{") || tokenizer2.lookingAt("<")) {
                    skipFieldMessage(tokenizer);
                } else {
                    skipFieldValue(tokenizer);
                }
                return;
            }
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                tokenizer2.tryConsume(str3);
                if (builder2 != null) {
                    consumeFieldValues(tokenizer, extensionRegistry, mergeTarget, fieldDescriptor, extensionInfo, builder2.getBuilderForSubMessageField(fieldDescriptor), list);
                } else {
                    consumeFieldValues(tokenizer, extensionRegistry, mergeTarget, fieldDescriptor, extensionInfo, builder, list);
                }
            } else {
                tokenizer2.consume(str3);
                consumeFieldValues(tokenizer, extensionRegistry, mergeTarget, fieldDescriptor, extensionInfo, builder, list);
            }
            if (builder2 != null) {
                builder2.setLocation(fieldDescriptor, TextFormatParseLocation.create(line, column));
            }
            if (!tokenizer2.tryConsume(";")) {
                tokenizer2.tryConsume(",");
            }
        }

        private void consumeFieldValues(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, MergeTarget mergeTarget, FieldDescriptor fieldDescriptor, ExtensionInfo extensionInfo, com.google.protobuf.TextFormatParseInfoTree.Builder builder, List<String> list) throws ParseException {
            if (!fieldDescriptor.isRepeated() || !tokenizer.tryConsume("[")) {
                consumeFieldValue(tokenizer, extensionRegistry, mergeTarget, fieldDescriptor, extensionInfo, builder, list);
                return;
            }
            String str = "]";
            if (!tokenizer.tryConsume(str)) {
                while (true) {
                    consumeFieldValue(tokenizer, extensionRegistry, mergeTarget, fieldDescriptor, extensionInfo, builder, list);
                    if (!tokenizer.tryConsume(str)) {
                        tokenizer.consume(",");
                    } else {
                        return;
                    }
                }
            }
        }

        /* JADX WARNING: type inference failed for: r3v0 */
        /* JADX WARNING: type inference failed for: r3v1, types: [java.lang.Object] */
        /* JADX WARNING: type inference failed for: r3v2, types: [java.lang.Integer] */
        /* JADX WARNING: type inference failed for: r3v3, types: [java.lang.Long] */
        /* JADX WARNING: type inference failed for: r3v4, types: [java.lang.Boolean] */
        /* JADX WARNING: type inference failed for: r3v5, types: [java.lang.Float] */
        /* JADX WARNING: type inference failed for: r3v6, types: [java.lang.Double] */
        /* JADX WARNING: type inference failed for: r3v7, types: [java.lang.Integer] */
        /* JADX WARNING: type inference failed for: r3v8, types: [java.lang.Long] */
        /* JADX WARNING: type inference failed for: r3v9, types: [java.lang.String] */
        /* JADX WARNING: type inference failed for: r3v10, types: [com.google.protobuf.ByteString] */
        /* JADX WARNING: type inference failed for: r3v11, types: [com.google.protobuf.Descriptors$EnumValueDescriptor] */
        /* JADX WARNING: type inference failed for: r3v13, types: [com.google.protobuf.Descriptors$EnumValueDescriptor] */
        /* JADX WARNING: type inference failed for: r3v15, types: [com.google.protobuf.Message] */
        /* JADX WARNING: type inference failed for: r3v16, types: [java.lang.Object] */
        /* JADX WARNING: type inference failed for: r3v18, types: [com.google.protobuf.Message] */
        /* JADX WARNING: type inference failed for: r3v19 */
        /* JADX WARNING: type inference failed for: r3v20 */
        /* JADX WARNING: type inference failed for: r3v21 */
        /* JADX WARNING: type inference failed for: r3v22 */
        /* JADX WARNING: type inference failed for: r3v23 */
        /* JADX WARNING: type inference failed for: r3v24 */
        /* JADX WARNING: type inference failed for: r3v25 */
        /* JADX WARNING: type inference failed for: r3v26 */
        /* JADX WARNING: type inference failed for: r3v27 */
        /* JADX WARNING: type inference failed for: r3v28 */
        /* JADX WARNING: type inference failed for: r3v29 */
        /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v0
          assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], com.google.protobuf.Descriptors$EnumValueDescriptor, com.google.protobuf.Message, java.lang.Integer, java.lang.Long, java.lang.Boolean, java.lang.Float, java.lang.Double, java.lang.String, com.google.protobuf.ByteString, java.lang.Object]
          uses: [java.lang.Object, ?[int, boolean, OBJECT, ARRAY, byte, short, char], com.google.protobuf.Message]
          mth insns count: 156
        	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
         */
        /* JADX WARNING: Unknown variable types count: 12 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void consumeFieldValue(com.google.protobuf.TextFormat.Tokenizer r14, com.google.protobuf.ExtensionRegistry r15, com.google.protobuf.MessageReflection.MergeTarget r16, com.google.protobuf.Descriptors.FieldDescriptor r17, com.google.protobuf.ExtensionRegistry.ExtensionInfo r18, com.google.protobuf.TextFormatParseInfoTree.Builder r19, java.util.List<java.lang.String> r20) throws com.google.protobuf.TextFormat.ParseException {
            /*
                r13 = this;
                r6 = r13
                r7 = r14
                r8 = r16
                r9 = r17
                r0 = r18
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r1 = r17.getJavaType()
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r2 = com.google.protobuf.Descriptors.FieldDescriptor.JavaType.MESSAGE
                r3 = 0
                java.lang.String r10 = "\"."
                if (r1 != r2) goto L_0x0066
                java.lang.String r1 = "<"
                boolean r1 = r14.tryConsume(r1)
                if (r1 == 0) goto L_0x001e
                java.lang.String r1 = ">"
                goto L_0x0025
            L_0x001e:
                java.lang.String r1 = "{"
                r14.consume(r1)
                java.lang.String r1 = "}"
            L_0x0025:
                r11 = r1
                if (r0 != 0) goto L_0x0029
                goto L_0x002b
            L_0x0029:
                com.google.protobuf.Message r3 = r0.defaultInstance
            L_0x002b:
                com.google.protobuf.MessageReflection$MergeTarget r12 = r8.newMergeTargetForField(r9, r3)
            L_0x002f:
                boolean r0 = r14.tryConsume(r11)
                if (r0 != 0) goto L_0x0060
                boolean r0 = r14.atEnd()
                if (r0 != 0) goto L_0x0047
                r0 = r13
                r1 = r14
                r2 = r15
                r3 = r12
                r4 = r19
                r5 = r20
                r0.mergeField(r1, r2, r3, r4, r5)
                goto L_0x002f
            L_0x0047:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Expected \""
                r0.append(r1)
                r0.append(r11)
                r0.append(r10)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r14.parseException(r0)
                throw r0
            L_0x0060:
                java.lang.Object r3 = r12.finish()
                goto L_0x0132
            L_0x0066:
                int[] r0 = com.google.protobuf.TextFormat.AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type
                com.google.protobuf.Descriptors$FieldDescriptor$Type r1 = r17.getType()
                int r1 = r1.ordinal()
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x012a;
                    case 2: goto L_0x012a;
                    case 3: goto L_0x012a;
                    case 4: goto L_0x0121;
                    case 5: goto L_0x0121;
                    case 6: goto L_0x0121;
                    case 7: goto L_0x0118;
                    case 8: goto L_0x010f;
                    case 9: goto L_0x0106;
                    case 10: goto L_0x00fd;
                    case 11: goto L_0x00fd;
                    case 12: goto L_0x00f4;
                    case 13: goto L_0x00f4;
                    case 14: goto L_0x00ef;
                    case 15: goto L_0x00ea;
                    case 16: goto L_0x007f;
                    case 17: goto L_0x0077;
                    case 18: goto L_0x0077;
                    default: goto L_0x0075;
                }
            L_0x0075:
                goto L_0x0132
            L_0x0077:
                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                java.lang.String r1 = "Can't get here."
                r0.<init>(r1)
                throw r0
            L_0x007f:
                com.google.protobuf.Descriptors$EnumDescriptor r0 = r17.getEnumType()
                boolean r1 = r14.lookingAtInteger()
                java.lang.String r2 = "Enum type \""
                if (r1 == 0) goto L_0x00bc
                int r1 = r14.consumeInt32()
                com.google.protobuf.Descriptors$EnumValueDescriptor r3 = r0.findValueByNumber(r1)
                if (r3 == 0) goto L_0x0097
                goto L_0x0132
            L_0x0097:
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                r3.append(r2)
                java.lang.String r0 = r0.getFullName()
                r3.append(r0)
                java.lang.String r0 = "\" has no value with number "
                r3.append(r0)
                r3.append(r1)
                r0 = 46
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r14.parseExceptionPreviousToken(r0)
                throw r0
            L_0x00bc:
                java.lang.String r1 = r14.consumeIdentifier()
                com.google.protobuf.Descriptors$EnumValueDescriptor r3 = r0.findValueByName(r1)
                if (r3 == 0) goto L_0x00c7
                goto L_0x0132
            L_0x00c7:
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                r3.append(r2)
                java.lang.String r0 = r0.getFullName()
                r3.append(r0)
                java.lang.String r0 = "\" has no value named \""
                r3.append(r0)
                r3.append(r1)
                r3.append(r10)
                java.lang.String r0 = r3.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r14.parseExceptionPreviousToken(r0)
                throw r0
            L_0x00ea:
                com.google.protobuf.ByteString r3 = r14.consumeByteString()
                goto L_0x0132
            L_0x00ef:
                java.lang.String r3 = r14.consumeString()
                goto L_0x0132
            L_0x00f4:
                long r0 = r14.consumeUInt64()
                java.lang.Long r3 = java.lang.Long.valueOf(r0)
                goto L_0x0132
            L_0x00fd:
                int r0 = r14.consumeUInt32()
                java.lang.Integer r3 = java.lang.Integer.valueOf(r0)
                goto L_0x0132
            L_0x0106:
                double r0 = r14.consumeDouble()
                java.lang.Double r3 = java.lang.Double.valueOf(r0)
                goto L_0x0132
            L_0x010f:
                float r0 = r14.consumeFloat()
                java.lang.Float r3 = java.lang.Float.valueOf(r0)
                goto L_0x0132
            L_0x0118:
                boolean r0 = r14.consumeBoolean()
                java.lang.Boolean r3 = java.lang.Boolean.valueOf(r0)
                goto L_0x0132
            L_0x0121:
                long r0 = r14.consumeInt64()
                java.lang.Long r3 = java.lang.Long.valueOf(r0)
                goto L_0x0132
            L_0x012a:
                int r0 = r14.consumeInt32()
                java.lang.Integer r3 = java.lang.Integer.valueOf(r0)
            L_0x0132:
                boolean r0 = r17.isRepeated()
                if (r0 == 0) goto L_0x013d
                r8.addRepeatedField(r9, r3)
                goto L_0x01c0
            L_0x013d:
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r0 = r6.singularOverwritePolicy
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r1 = com.google.protobuf.TextFormat.Parser.SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES
                if (r0 != r1) goto L_0x0169
                boolean r0 = r16.hasField(r17)
                if (r0 != 0) goto L_0x014a
                goto L_0x0169
            L_0x014a:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Non-repeated field \""
                r0.append(r1)
                java.lang.String r1 = r17.getFullName()
                r0.append(r1)
                java.lang.String r1 = "\" cannot be overwritten."
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r14.parseExceptionPreviousToken(r0)
                throw r0
            L_0x0169:
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r0 = r6.singularOverwritePolicy
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r1 = com.google.protobuf.TextFormat.Parser.SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES
                if (r0 != r1) goto L_0x01bd
                com.google.protobuf.Descriptors$OneofDescriptor r0 = r17.getContainingOneof()
                if (r0 == 0) goto L_0x01bd
                com.google.protobuf.Descriptors$OneofDescriptor r0 = r17.getContainingOneof()
                boolean r0 = r8.hasOneof(r0)
                if (r0 != 0) goto L_0x0180
                goto L_0x01bd
            L_0x0180:
                com.google.protobuf.Descriptors$OneofDescriptor r0 = r17.getContainingOneof()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Field \""
                r1.append(r2)
                java.lang.String r2 = r17.getFullName()
                r1.append(r2)
                java.lang.String r2 = "\" is specified along with field \""
                r1.append(r2)
                com.google.protobuf.Descriptors$FieldDescriptor r2 = r8.getOneofFieldDescriptor(r0)
                java.lang.String r2 = r2.getFullName()
                r1.append(r2)
                java.lang.String r2 = "\", another member of oneof \""
                r1.append(r2)
                java.lang.String r0 = r0.getName()
                r1.append(r0)
                r1.append(r10)
                java.lang.String r0 = r1.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r14.parseExceptionPreviousToken(r0)
                throw r0
            L_0x01bd:
                r8.setField(r9, r3)
            L_0x01c0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.TextFormat.Parser.consumeFieldValue(com.google.protobuf.TextFormat$Tokenizer, com.google.protobuf.ExtensionRegistry, com.google.protobuf.MessageReflection$MergeTarget, com.google.protobuf.Descriptors$FieldDescriptor, com.google.protobuf.ExtensionRegistry$ExtensionInfo, com.google.protobuf.TextFormatParseInfoTree$Builder, java.util.List):void");
        }

        private void skipField(Tokenizer tokenizer) throws ParseException {
            if (tokenizer.tryConsume("[")) {
                do {
                    tokenizer.consumeIdentifier();
                } while (tokenizer.tryConsume("."));
                tokenizer.consume("]");
            } else {
                tokenizer.consumeIdentifier();
            }
            if (!tokenizer.tryConsume(":") || tokenizer.lookingAt("<") || tokenizer.lookingAt("{")) {
                skipFieldMessage(tokenizer);
            } else {
                skipFieldValue(tokenizer);
            }
            if (!tokenizer.tryConsume(";")) {
                tokenizer.tryConsume(",");
            }
        }

        private void skipFieldMessage(Tokenizer tokenizer) throws ParseException {
            String str;
            String str2 = ">";
            String str3 = "}";
            if (tokenizer.tryConsume("<")) {
                str = str2;
            } else {
                tokenizer.consume("{");
                str = str3;
            }
            while (!tokenizer.lookingAt(str2) && !tokenizer.lookingAt(str3)) {
                skipField(tokenizer);
            }
            tokenizer.consume(str);
        }

        private void skipFieldValue(Tokenizer tokenizer) throws ParseException {
            if (tokenizer.tryConsumeString()) {
                do {
                } while (tokenizer.tryConsumeString());
            } else if (!tokenizer.tryConsumeIdentifier() && !tokenizer.tryConsumeInt64() && !tokenizer.tryConsumeUInt64() && !tokenizer.tryConsumeDouble() && !tokenizer.tryConsumeFloat()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid field value: ");
                sb.append(tokenizer.currentToken);
                throw tokenizer.parseException(sb.toString());
            }
        }
    }

    private static final class Printer {
        static final Printer DEFAULT = new Printer(true);
        static final Printer UNICODE = new Printer(false);
        private final boolean escapeNonAscii;

        private Printer(boolean z) {
            this.escapeNonAscii = z;
        }

        /* access modifiers changed from: private */
        public void print(MessageOrBuilder messageOrBuilder, TextGenerator textGenerator) throws IOException {
            for (Entry entry : messageOrBuilder.getAllFields().entrySet()) {
                printField((FieldDescriptor) entry.getKey(), entry.getValue(), textGenerator);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), textGenerator);
        }

        /* access modifiers changed from: private */
        public void printField(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (fieldDescriptor.isRepeated()) {
                for (Object printSingleField : (List) obj) {
                    printSingleField(fieldDescriptor, printSingleField, textGenerator);
                }
                return;
            }
            printSingleField(fieldDescriptor, obj, textGenerator);
        }

        private void printSingleField(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (fieldDescriptor.isExtension()) {
                textGenerator.print("[");
                if (!fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() || fieldDescriptor.getType() != Type.MESSAGE || !fieldDescriptor.isOptional() || fieldDescriptor.getExtensionScope() != fieldDescriptor.getMessageType()) {
                    textGenerator.print(fieldDescriptor.getFullName());
                } else {
                    textGenerator.print(fieldDescriptor.getMessageType().getFullName());
                }
                textGenerator.print("]");
            } else if (fieldDescriptor.getType() == Type.GROUP) {
                textGenerator.print(fieldDescriptor.getMessageType().getName());
            } else {
                textGenerator.print(fieldDescriptor.getName());
            }
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                textGenerator.print(" {");
                textGenerator.eol();
                textGenerator.indent();
            } else {
                textGenerator.print(": ");
            }
            printFieldValue(fieldDescriptor, obj, textGenerator);
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                textGenerator.outdent();
                textGenerator.print("}");
            }
            textGenerator.eol();
        }

        /* access modifiers changed from: private */
        public void printFieldValue(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            String str;
            String str2 = "\"";
            switch (fieldDescriptor.getType()) {
                case INT32:
                case SINT32:
                case SFIXED32:
                    textGenerator.print(((Integer) obj).toString());
                    return;
                case INT64:
                case SINT64:
                case SFIXED64:
                    textGenerator.print(((Long) obj).toString());
                    return;
                case BOOL:
                    textGenerator.print(((Boolean) obj).toString());
                    return;
                case FLOAT:
                    textGenerator.print(((Float) obj).toString());
                    return;
                case DOUBLE:
                    textGenerator.print(((Double) obj).toString());
                    return;
                case UINT32:
                case FIXED32:
                    textGenerator.print(TextFormat.unsignedToString(((Integer) obj).intValue()));
                    return;
                case UINT64:
                case FIXED64:
                    textGenerator.print(TextFormat.unsignedToString(((Long) obj).longValue()));
                    return;
                case STRING:
                    textGenerator.print(str2);
                    if (this.escapeNonAscii) {
                        str = TextFormatEscaper.escapeText((String) obj);
                    } else {
                        str = TextFormat.escapeDoubleQuotesAndBackslashes((String) obj).replace("\n", "\\n");
                    }
                    textGenerator.print(str);
                    textGenerator.print(str2);
                    return;
                case BYTES:
                    textGenerator.print(str2);
                    if (obj instanceof ByteString) {
                        textGenerator.print(TextFormat.escapeBytes((ByteString) obj));
                    } else {
                        textGenerator.print(TextFormat.escapeBytes((byte[]) obj));
                    }
                    textGenerator.print(str2);
                    return;
                case ENUM:
                    textGenerator.print(((EnumValueDescriptor) obj).getName());
                    return;
                case MESSAGE:
                case GROUP:
                    print((Message) obj, textGenerator);
                    return;
                default:
                    return;
            }
        }

        /* access modifiers changed from: private */
        public void printUnknownFields(UnknownFieldSet unknownFieldSet, TextGenerator textGenerator) throws IOException {
            for (Entry entry : unknownFieldSet.asMap().entrySet()) {
                int intValue = ((Integer) entry.getKey()).intValue();
                Field field = (Field) entry.getValue();
                printUnknownField(intValue, 0, field.getVarintList(), textGenerator);
                printUnknownField(intValue, 5, field.getFixed32List(), textGenerator);
                printUnknownField(intValue, 1, field.getFixed64List(), textGenerator);
                printUnknownField(intValue, 2, field.getLengthDelimitedList(), textGenerator);
                for (UnknownFieldSet unknownFieldSet2 : field.getGroupList()) {
                    textGenerator.print(((Integer) entry.getKey()).toString());
                    textGenerator.print(" {");
                    textGenerator.eol();
                    textGenerator.indent();
                    printUnknownFields(unknownFieldSet2, textGenerator);
                    textGenerator.outdent();
                    textGenerator.print("}");
                    textGenerator.eol();
                }
            }
        }

        private void printUnknownField(int i, int i2, List<?> list, TextGenerator textGenerator) throws IOException {
            for (Object next : list) {
                textGenerator.print(String.valueOf(i));
                textGenerator.print(": ");
                TextFormat.printUnknownFieldValue(i2, next, textGenerator);
                textGenerator.eol();
            }
        }
    }

    private static final class TextGenerator {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;
        private final boolean singleLineMode;

        private TextGenerator(Appendable appendable, boolean z) {
            this.indent = new StringBuilder();
            this.atStartOfLine = false;
            this.output = appendable;
            this.singleLineMode = z;
        }

        public void indent() {
            this.indent.append("  ");
        }

        public void outdent() {
            int length = this.indent.length();
            if (length != 0) {
                this.indent.setLength(length - 2);
                return;
            }
            throw new IllegalArgumentException(" Outdent() without matching Indent().");
        }

        public void print(CharSequence charSequence) throws IOException {
            if (this.atStartOfLine) {
                this.atStartOfLine = false;
                this.output.append(this.singleLineMode ? " " : this.indent);
            }
            this.output.append(charSequence);
        }

        public void eol() throws IOException {
            if (!this.singleLineMode) {
                this.output.append("\n");
            }
            this.atStartOfLine = true;
        }
    }

    private static final class Tokenizer {
        private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
        private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
        private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);
        private static final Pattern TOKEN = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
        private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
        private int column;
        /* access modifiers changed from: private */
        public String currentToken;
        private int line;
        private final Matcher matcher;
        private int pos;
        private int previousColumn;
        private int previousLine;
        private final CharSequence text;

        private Tokenizer(CharSequence charSequence) {
            this.pos = 0;
            this.line = 0;
            this.column = 0;
            this.previousLine = 0;
            this.previousColumn = 0;
            this.text = charSequence;
            this.matcher = WHITESPACE.matcher(charSequence);
            skipWhitespace();
            nextToken();
        }

        /* access modifiers changed from: 0000 */
        public int getPreviousLine() {
            return this.previousLine;
        }

        /* access modifiers changed from: 0000 */
        public int getPreviousColumn() {
            return this.previousColumn;
        }

        /* access modifiers changed from: 0000 */
        public int getLine() {
            return this.line;
        }

        /* access modifiers changed from: 0000 */
        public int getColumn() {
            return this.column;
        }

        public boolean atEnd() {
            return this.currentToken.length() == 0;
        }

        public void nextToken() {
            this.previousLine = this.line;
            this.previousColumn = this.column;
            while (this.pos < this.matcher.regionStart()) {
                if (this.text.charAt(this.pos) == 10) {
                    this.line++;
                    this.column = 0;
                } else {
                    this.column++;
                }
                this.pos++;
            }
            if (this.matcher.regionStart() == this.matcher.regionEnd()) {
                this.currentToken = "";
                return;
            }
            this.matcher.usePattern(TOKEN);
            if (this.matcher.lookingAt()) {
                this.currentToken = this.matcher.group();
                Matcher matcher2 = this.matcher;
                matcher2.region(matcher2.end(), this.matcher.regionEnd());
            } else {
                this.currentToken = String.valueOf(this.text.charAt(this.pos));
                Matcher matcher3 = this.matcher;
                matcher3.region(this.pos + 1, matcher3.regionEnd());
            }
            skipWhitespace();
        }

        private void skipWhitespace() {
            this.matcher.usePattern(WHITESPACE);
            if (this.matcher.lookingAt()) {
                Matcher matcher2 = this.matcher;
                matcher2.region(matcher2.end(), this.matcher.regionEnd());
            }
        }

        public boolean tryConsume(String str) {
            if (!this.currentToken.equals(str)) {
                return false;
            }
            nextToken();
            return true;
        }

        public void consume(String str) throws ParseException {
            if (!tryConsume(str)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Expected \"");
                sb.append(str);
                sb.append("\".");
                throw parseException(sb.toString());
            }
        }

        public boolean lookingAtInteger() {
            boolean z = false;
            if (this.currentToken.length() == 0) {
                return false;
            }
            char charAt = this.currentToken.charAt(0);
            if (('0' <= charAt && charAt <= '9') || charAt == '-' || charAt == '+') {
                z = true;
            }
            return z;
        }

        public boolean lookingAt(String str) {
            return this.currentToken.equals(str);
        }

        public String consumeIdentifier() throws ParseException {
            for (int i = 0; i < this.currentToken.length(); i++) {
                char charAt = this.currentToken.charAt(i);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && !(('0' <= charAt && charAt <= '9') || charAt == '_' || charAt == '.'))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Expected identifier. Found '");
                    sb.append(this.currentToken);
                    sb.append("'");
                    throw parseException(sb.toString());
                }
            }
            String str = this.currentToken;
            nextToken();
            return str;
        }

        public boolean tryConsumeIdentifier() {
            try {
                consumeIdentifier();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public int consumeInt32() throws ParseException {
            try {
                int parseInt32 = TextFormat.parseInt32(this.currentToken);
                nextToken();
                return parseInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public int consumeUInt32() throws ParseException {
            try {
                int parseUInt32 = TextFormat.parseUInt32(this.currentToken);
                nextToken();
                return parseUInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public long consumeInt64() throws ParseException {
            try {
                long parseInt64 = TextFormat.parseInt64(this.currentToken);
                nextToken();
                return parseInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeInt64() {
            try {
                consumeInt64();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public long consumeUInt64() throws ParseException {
            try {
                long parseUInt64 = TextFormat.parseUInt64(this.currentToken);
                nextToken();
                return parseUInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeUInt64() {
            try {
                consumeUInt64();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public double consumeDouble() throws ParseException {
            if (DOUBLE_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            } else if (this.currentToken.equalsIgnoreCase("nan")) {
                nextToken();
                return Double.NaN;
            } else {
                try {
                    double parseDouble = Double.parseDouble(this.currentToken);
                    nextToken();
                    return parseDouble;
                } catch (NumberFormatException e) {
                    throw floatParseException(e);
                }
            }
        }

        public boolean tryConsumeDouble() {
            try {
                consumeDouble();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public float consumeFloat() throws ParseException {
            if (FLOAT_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            } else if (FLOAT_NAN.matcher(this.currentToken).matches()) {
                nextToken();
                return Float.NaN;
            } else {
                try {
                    float parseFloat = Float.parseFloat(this.currentToken);
                    nextToken();
                    return parseFloat;
                } catch (NumberFormatException e) {
                    throw floatParseException(e);
                }
            }
        }

        public boolean tryConsumeFloat() {
            try {
                consumeFloat();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean consumeBoolean() throws ParseException {
            if (this.currentToken.equals("true") || this.currentToken.equals("True") || this.currentToken.equals("t") || this.currentToken.equals("1")) {
                nextToken();
                return true;
            } else if (this.currentToken.equals("false") || this.currentToken.equals("False") || this.currentToken.equals("f") || this.currentToken.equals("0")) {
                nextToken();
                return false;
            } else {
                throw parseException("Expected \"true\" or \"false\".");
            }
        }

        public String consumeString() throws ParseException {
            return consumeByteString().toStringUtf8();
        }

        public boolean tryConsumeString() {
            try {
                consumeString();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public ByteString consumeByteString() throws ParseException {
            ArrayList arrayList = new ArrayList();
            consumeByteString(arrayList);
            while (true) {
                if (!this.currentToken.startsWith("'") && !this.currentToken.startsWith("\"")) {
                    return ByteString.copyFrom((Iterable<ByteString>) arrayList);
                }
                consumeByteString(arrayList);
            }
        }

        private void consumeByteString(List<ByteString> list) throws ParseException {
            char c = 0;
            if (this.currentToken.length() > 0) {
                c = this.currentToken.charAt(0);
            }
            if (c == '\"' || c == '\'') {
                if (this.currentToken.length() >= 2) {
                    String str = this.currentToken;
                    if (str.charAt(str.length() - 1) == c) {
                        try {
                            ByteString unescapeBytes = TextFormat.unescapeBytes(this.currentToken.substring(1, this.currentToken.length() - 1));
                            nextToken();
                            list.add(unescapeBytes);
                            return;
                        } catch (InvalidEscapeSequenceException e) {
                            throw parseException(e.getMessage());
                        }
                    }
                }
                throw parseException("String missing ending quote.");
            }
            throw parseException("Expected string.");
        }

        public ParseException parseException(String str) {
            return new ParseException(this.line + 1, this.column + 1, str);
        }

        public ParseException parseExceptionPreviousToken(String str) {
            return new ParseException(this.previousLine + 1, this.previousColumn + 1, str);
        }

        private ParseException integerParseException(NumberFormatException numberFormatException) {
            StringBuilder sb = new StringBuilder();
            sb.append("Couldn't parse integer: ");
            sb.append(numberFormatException.getMessage());
            return parseException(sb.toString());
        }

        private ParseException floatParseException(NumberFormatException numberFormatException) {
            StringBuilder sb = new StringBuilder();
            sb.append("Couldn't parse number: ");
            sb.append(numberFormatException.getMessage());
            return parseException(sb.toString());
        }

        public UnknownFieldParseException unknownFieldParseExceptionPreviousToken(String str, String str2) {
            return new UnknownFieldParseException(this.previousLine + 1, this.previousColumn + 1, str, str2);
        }
    }

    public static class UnknownFieldParseException extends ParseException {
        private final String unknownField;

        public UnknownFieldParseException(String str) {
            this(-1, -1, "", str);
        }

        public UnknownFieldParseException(int i, int i2, String str, String str2) {
            super(i, i2, str2);
            this.unknownField = str;
        }

        public String getUnknownField() {
            return this.unknownField;
        }
    }

    private static int digitValue(byte b) {
        if (48 <= b && b <= 57) {
            return b - 48;
        }
        return ((97 > b || b > 122) ? b - 65 : b - 97) + 10;
    }

    private static boolean isHex(byte b) {
        return (48 <= b && b <= 57) || (97 <= b && b <= 102) || (65 <= b && b <= 70);
    }

    private static boolean isOctal(byte b) {
        return 48 <= b && b <= 55;
    }

    private TextFormat() {
    }

    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        Printer.DEFAULT.print(messageOrBuilder, multiLineOutput(appendable));
    }

    public static void print(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        Printer.DEFAULT.printUnknownFields(unknownFieldSet, multiLineOutput(appendable));
    }

    public static void printUnicode(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        Printer.UNICODE.print(messageOrBuilder, multiLineOutput(appendable));
    }

    public static void printUnicode(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        Printer.UNICODE.printUnknownFields(unknownFieldSet, multiLineOutput(appendable));
    }

    public static String shortDebugString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            Printer.DEFAULT.print(messageOrBuilder, singleLineOutput(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String shortDebugString(FieldDescriptor fieldDescriptor, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            Printer.DEFAULT.printField(fieldDescriptor, obj, singleLineOutput(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String shortDebugString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            Printer.DEFAULT.printUnknownFields(unknownFieldSet, singleLineOutput(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            print(messageOrBuilder, (Appendable) sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            print(unknownFieldSet, (Appendable) sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            Printer.UNICODE.print(messageOrBuilder, multiLineOutput(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            Printer.UNICODE.printUnknownFields(unknownFieldSet, multiLineOutput(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printField(FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        Printer.DEFAULT.printField(fieldDescriptor, obj, multiLineOutput(appendable));
    }

    public static String printFieldToString(FieldDescriptor fieldDescriptor, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            printField(fieldDescriptor, obj, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printUnicodeFieldValue(FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        Printer.UNICODE.printFieldValue(fieldDescriptor, obj, multiLineOutput(appendable));
    }

    public static void printFieldValue(FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        Printer.DEFAULT.printFieldValue(fieldDescriptor, obj, multiLineOutput(appendable));
    }

    public static void printUnknownFieldValue(int i, Object obj, Appendable appendable) throws IOException {
        printUnknownFieldValue(i, obj, multiLineOutput(appendable));
    }

    /* access modifiers changed from: private */
    public static void printUnknownFieldValue(int i, Object obj, TextGenerator textGenerator) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            textGenerator.print(unsignedToString(((Long) obj).longValue()));
        } else if (tagWireType == 1) {
            textGenerator.print(String.format(null, "0x%016x", new Object[]{(Long) obj}));
        } else if (tagWireType == 2) {
            String str = "\"";
            textGenerator.print(str);
            textGenerator.print(escapeBytes((ByteString) obj));
            textGenerator.print(str);
        } else if (tagWireType == 3) {
            Printer.DEFAULT.printUnknownFields((UnknownFieldSet) obj, textGenerator);
        } else if (tagWireType == 5) {
            textGenerator.print(String.format(null, "0x%08x", new Object[]{(Integer) obj}));
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Bad tag: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public static String unsignedToString(int i) {
        if (i >= 0) {
            return Integer.toString(i);
        }
        return Long.toString(((long) i) & 4294967295L);
    }

    public static String unsignedToString(long j) {
        if (j >= 0) {
            return Long.toString(j);
        }
        return BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }

    private static TextGenerator multiLineOutput(Appendable appendable) {
        return new TextGenerator(appendable, false);
    }

    private static TextGenerator singleLineOutput(Appendable appendable) {
        return new TextGenerator(appendable, true);
    }

    public static Parser getParser() {
        return PARSER;
    }

    public static void merge(Readable readable, Builder builder) throws IOException {
        PARSER.merge(readable, builder);
    }

    public static void merge(CharSequence charSequence, Builder builder) throws ParseException {
        PARSER.merge(charSequence, builder);
    }

    public static void merge(Readable readable, ExtensionRegistry extensionRegistry, Builder builder) throws IOException {
        PARSER.merge(readable, extensionRegistry, builder);
    }

    public static void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, Builder builder) throws ParseException {
        PARSER.merge(charSequence, extensionRegistry, builder);
    }

    public static String escapeBytes(ByteString byteString) {
        return TextFormatEscaper.escapeBytes(byteString);
    }

    public static String escapeBytes(byte[] bArr) {
        return TextFormatEscaper.escapeBytes(bArr);
    }

    public static ByteString unescapeBytes(CharSequence charSequence) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        int i3;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        byte[] bArr = new byte[copyFromUtf8.size()];
        int i4 = 0;
        int i5 = 0;
        while (i < copyFromUtf8.size()) {
            byte byteAt = copyFromUtf8.byteAt(i);
            if (byteAt == 92) {
                i++;
                if (i < copyFromUtf8.size()) {
                    byte byteAt2 = copyFromUtf8.byteAt(i);
                    if (isOctal(byteAt2)) {
                        int digitValue = digitValue(byteAt2);
                        int i6 = i + 1;
                        if (i6 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i6))) {
                            digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i6));
                            i = i6;
                        }
                        int i7 = i + 1;
                        if (i7 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i7))) {
                            digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i7));
                            i = i7;
                        }
                        i2 = i5 + 1;
                        bArr[i5] = (byte) digitValue;
                    } else {
                        if (byteAt2 == 34) {
                            i3 = i5 + 1;
                            bArr[i5] = 34;
                        } else if (byteAt2 == 39) {
                            i3 = i5 + 1;
                            bArr[i5] = 39;
                        } else if (byteAt2 == 92) {
                            i3 = i5 + 1;
                            bArr[i5] = 92;
                        } else if (byteAt2 == 102) {
                            i3 = i5 + 1;
                            bArr[i5] = 12;
                        } else if (byteAt2 == 110) {
                            i3 = i5 + 1;
                            bArr[i5] = 10;
                        } else if (byteAt2 == 114) {
                            i3 = i5 + 1;
                            bArr[i5] = 13;
                        } else if (byteAt2 == 116) {
                            i3 = i5 + 1;
                            bArr[i5] = 9;
                        } else if (byteAt2 == 118) {
                            i3 = i5 + 1;
                            bArr[i5] = 11;
                        } else if (byteAt2 == 120) {
                            i++;
                            if (i >= copyFromUtf8.size() || !isHex(copyFromUtf8.byteAt(i))) {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                            }
                            int digitValue2 = digitValue(copyFromUtf8.byteAt(i));
                            int i8 = i + 1;
                            if (i8 < copyFromUtf8.size() && isHex(copyFromUtf8.byteAt(i8))) {
                                digitValue2 = (digitValue2 * 16) + digitValue(copyFromUtf8.byteAt(i8));
                                i = i8;
                            }
                            i2 = i5 + 1;
                            bArr[i5] = (byte) digitValue2;
                        } else if (byteAt2 == 97) {
                            i3 = i5 + 1;
                            bArr[i5] = 7;
                        } else if (byteAt2 == 98) {
                            i3 = i5 + 1;
                            bArr[i5] = 8;
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Invalid escape sequence: '\\");
                            sb.append((char) byteAt2);
                            sb.append('\'');
                            throw new InvalidEscapeSequenceException(sb.toString());
                        }
                        i5 = i3;
                        i4 = i + 1;
                    }
                } else {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
            } else {
                i2 = i5 + 1;
                bArr[i5] = byteAt;
            }
            i5 = i2;
            i4 = i + 1;
        }
        if (bArr.length == i5) {
            return ByteString.wrap(bArr);
        }
        return ByteString.copyFrom(bArr, 0, i5);
    }

    static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }

    public static String escapeDoubleQuotesAndBackslashes(String str) {
        return TextFormatEscaper.escapeDoubleQuotesAndBackslashes(str);
    }

    static String unescapeText(String str) throws InvalidEscapeSequenceException {
        return unescapeBytes(str).toStringUtf8();
    }

    static int parseInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, true, false);
    }

    static int parseUInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, false, false);
    }

    static long parseInt64(String str) throws NumberFormatException {
        return parseInteger(str, true, true);
    }

    static long parseUInt64(String str) throws NumberFormatException {
        return parseInteger(str, false, true);
    }

    private static long parseInteger(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else if (z) {
            i = 1;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Number must be positive: ");
            sb.append(str);
            throw new NumberFormatException(sb.toString());
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String substring = str.substring(i);
        String str2 = "Number out of range for 32-bit signed integer: ";
        String str3 = "Number out of range for 32-bit unsigned integer: ";
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i2);
            if (z3) {
                parseLong = -parseLong;
            }
            if (z2) {
                return parseLong;
            }
            if (z) {
                if (parseLong <= 2147483647L && parseLong >= -2147483648L) {
                    return parseLong;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(str);
                throw new NumberFormatException(sb2.toString());
            } else if (parseLong < IjkMediaMeta.AV_CH_WIDE_RIGHT && parseLong >= 0) {
                return parseLong;
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str3);
                sb3.append(str);
                throw new NumberFormatException(sb3.toString());
            }
        } else {
            BigInteger bigInteger = new BigInteger(substring, i2);
            if (z3) {
                bigInteger = bigInteger.negate();
            }
            if (!z2) {
                if (z) {
                    if (bigInteger.bitLength() > 31) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str2);
                        sb4.append(str);
                        throw new NumberFormatException(sb4.toString());
                    }
                } else if (bigInteger.bitLength() > 32) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(str3);
                    sb5.append(str);
                    throw new NumberFormatException(sb5.toString());
                }
            } else if (z) {
                if (bigInteger.bitLength() > 63) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Number out of range for 64-bit signed integer: ");
                    sb6.append(str);
                    throw new NumberFormatException(sb6.toString());
                }
            } else if (bigInteger.bitLength() > 64) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append("Number out of range for 64-bit unsigned integer: ");
                sb7.append(str);
                throw new NumberFormatException(sb7.toString());
            }
            return bigInteger.longValue();
        }
    }
}
