package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.asm.Type;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.avos.avoscloud.AVException;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Group;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public class ASMSerializerFactory implements Opcodes {
    static final String JSONSerializer = ASMUtils.type(JSONSerializer.class);
    static final String JavaBeanSerializer = ASMUtils.type(JavaBeanSerializer.class);
    static final String JavaBeanSerializer_desc;
    static final String ObjectSerializer = ASMUtils.type(ObjectSerializer.class);
    static final String ObjectSerializer_desc;
    static final String SerialContext_desc = ASMUtils.desc(SerialContext.class);
    static final String SerializeFilterable_desc = ASMUtils.desc(SerializeFilterable.class);
    static final String SerializeWriter = ASMUtils.type(SerializeWriter.class);
    static final String SerializeWriter_desc;
    protected final ASMClassLoader classLoader = new ASMClassLoader();
    private final AtomicLong seed = new AtomicLong();

    static class Context {
        static final int features = 5;
        static int fieldName = 6;
        static final int obj = 2;
        static int original = 7;
        static final int paramFieldName = 3;
        static final int paramFieldType = 4;
        static int processValue = 8;
        static final int serializer = 1;
        /* access modifiers changed from: private */
        public final SerializeBeanInfo beanInfo;
        /* access modifiers changed from: private */
        public final String className;
        private final FieldInfo[] getters;
        /* access modifiers changed from: private */
        public final boolean nonContext;
        /* access modifiers changed from: private */
        public int variantIndex = 9;
        private Map<String, Integer> variants = new HashMap();
        /* access modifiers changed from: private */
        public final boolean writeDirect;

        public Context(FieldInfo[] fieldInfoArr, SerializeBeanInfo serializeBeanInfo, String str, boolean z, boolean z2) {
            this.getters = fieldInfoArr;
            this.className = str;
            this.beanInfo = serializeBeanInfo;
            this.writeDirect = z;
            this.nonContext = z2 || serializeBeanInfo.beanType.isEnum();
        }

        public int var(String str) {
            if (((Integer) this.variants.get(str)) == null) {
                Map<String, Integer> map = this.variants;
                int i = this.variantIndex;
                this.variantIndex = i + 1;
                map.put(str, Integer.valueOf(i));
            }
            return ((Integer) this.variants.get(str)).intValue();
        }

        public int var(String str, int i) {
            if (((Integer) this.variants.get(str)) == null) {
                this.variants.put(str, Integer.valueOf(this.variantIndex));
                this.variantIndex += i;
            }
            return ((Integer) this.variants.get(str)).intValue();
        }

        public int getFieldOrinal(String str) {
            int length = this.getters.length;
            for (int i = 0; i < length; i++) {
                if (this.getters[i].name.equals(str)) {
                    return i;
                }
            }
            return -1;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        String str = "L";
        sb.append(str);
        sb.append(ObjectSerializer);
        String str2 = ";";
        sb.append(str2);
        ObjectSerializer_desc = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(SerializeWriter);
        sb2.append(str2);
        SerializeWriter_desc = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(ASMUtils.type(JavaBeanSerializer.class));
        sb3.append(str2);
        JavaBeanSerializer_desc = sb3.toString();
    }

    public JavaBeanSerializer createJavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) throws Exception {
        boolean z;
        String str;
        String str2;
        String str3;
        String str4;
        FieldInfo[] fieldInfoArr;
        String str5;
        String str6;
        boolean z2;
        boolean z3;
        boolean z4;
        String str7;
        boolean z5;
        String str8;
        boolean z6;
        JSONType jSONType;
        ClassWriter classWriter;
        int i;
        SerializeBeanInfo serializeBeanInfo2 = serializeBeanInfo;
        Class<?> cls = serializeBeanInfo2.beanType;
        if (!cls.isPrimitive()) {
            JSONType jSONType2 = (JSONType) TypeUtils.getAnnotation(cls, JSONType.class);
            FieldInfo[] fieldInfoArr2 = serializeBeanInfo2.fields;
            for (FieldInfo fieldInfo : fieldInfoArr2) {
                if (fieldInfo.field == null && fieldInfo.method != null && fieldInfo.method.getDeclaringClass().isInterface()) {
                    return new JavaBeanSerializer(serializeBeanInfo2);
                }
            }
            FieldInfo[] fieldInfoArr3 = serializeBeanInfo2.sortedFields;
            boolean z7 = serializeBeanInfo2.sortedFields == serializeBeanInfo2.fields;
            if (fieldInfoArr3.length > 256) {
                return new JavaBeanSerializer(serializeBeanInfo2);
            }
            for (FieldInfo member : fieldInfoArr3) {
                if (!ASMUtils.checkName(member.getMember().getName())) {
                    return new JavaBeanSerializer(serializeBeanInfo2);
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("ASMSerializer_");
            sb.append(this.seed.incrementAndGet());
            sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(cls.getSimpleName());
            String sb2 = sb.toString();
            String name = ASMSerializerFactory.class.getPackage().getName();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(name.replace('.', '/'));
            sb3.append("/");
            sb3.append(sb2);
            String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(name);
            sb5.append(".");
            sb5.append(sb2);
            String sb6 = sb5.toString();
            ClassWriter classWriter2 = new ClassWriter();
            classWriter2.visit(49, 33, sb4, JavaBeanSerializer, new String[]{ObjectSerializer});
            int length = fieldInfoArr3.length;
            int i2 = 0;
            while (i2 < length) {
                FieldInfo fieldInfo2 = fieldInfoArr3[i2];
                if (fieldInfo2.fieldClass.isPrimitive() || fieldInfo2.fieldClass == String.class) {
                    i = length;
                } else {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(fieldInfo2.name);
                    sb7.append("_asm_fieldType");
                    i = length;
                    new FieldWriter(classWriter2, 1, sb7.toString(), "Ljava/lang/reflect/Type;").visitEnd();
                    if (List.class.isAssignableFrom(fieldInfo2.fieldClass)) {
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(fieldInfo2.name);
                        sb8.append("_asm_list_item_ser_");
                        new FieldWriter(classWriter2, 1, sb8.toString(), ObjectSerializer_desc).visitEnd();
                    }
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append(fieldInfo2.name);
                    sb9.append("_asm_ser_");
                    new FieldWriter(classWriter2, 1, sb9.toString(), ObjectSerializer_desc).visitEnd();
                }
                i2++;
                length = i;
            }
            StringBuilder sb10 = new StringBuilder();
            sb10.append("(");
            sb10.append(ASMUtils.desc(SerializeBeanInfo.class));
            sb10.append(")V");
            MethodWriter methodWriter = new MethodWriter(classWriter2, 1, "<init>", sb10.toString(), null, null);
            int i3 = 25;
            methodWriter.visitVarInsn(25, 0);
            methodWriter.visitVarInsn(25, 1);
            String str9 = JavaBeanSerializer;
            StringBuilder sb11 = new StringBuilder();
            sb11.append("(");
            sb11.append(ASMUtils.desc(SerializeBeanInfo.class));
            sb11.append(")V");
            methodWriter.visitMethodInsn(183, str9, "<init>", sb11.toString());
            int i4 = 0;
            while (i4 < fieldInfoArr3.length) {
                FieldInfo fieldInfo3 = fieldInfoArr3[i4];
                if (fieldInfo3.fieldClass.isPrimitive() || fieldInfo3.fieldClass == String.class) {
                    classWriter = classWriter2;
                } else {
                    methodWriter.visitVarInsn(i3, 0);
                    if (fieldInfo3.method != null) {
                        methodWriter.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo3.declaringClass)));
                        methodWriter.visitLdcInsn(fieldInfo3.method.getName());
                        classWriter = classWriter2;
                        methodWriter.visitMethodInsn(184, ASMUtils.type(ASMUtils.class), "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
                    } else {
                        classWriter = classWriter2;
                        methodWriter.visitVarInsn(i3, 0);
                        methodWriter.visitLdcInsn(Integer.valueOf(i4));
                        methodWriter.visitMethodInsn(183, JavaBeanSerializer, "getFieldType", "(I)Ljava/lang/reflect/Type;");
                    }
                    StringBuilder sb12 = new StringBuilder();
                    sb12.append(fieldInfo3.name);
                    sb12.append("_asm_fieldType");
                    methodWriter.visitFieldInsn(181, sb4, sb12.toString(), "Ljava/lang/reflect/Type;");
                }
                i4++;
                classWriter2 = classWriter;
                i3 = 25;
            }
            ClassWriter classWriter3 = classWriter2;
            methodWriter.visitInsn(Opcodes.RETURN);
            methodWriter.visitMaxs(4, 4);
            methodWriter.visitEnd();
            if (jSONType2 != null) {
                SerializerFeature[] serialzeFeatures = jSONType2.serialzeFeatures();
                int length2 = serialzeFeatures.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length2) {
                        break;
                    } else if (serialzeFeatures[i5] == SerializerFeature.DisableCircularReferenceDetect) {
                        z = true;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            z = false;
            int i6 = 0;
            while (true) {
                str = "java/io/IOException";
                str2 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
                str3 = "(L";
                str4 = "out";
                fieldInfoArr = fieldInfoArr2;
                if (i6 >= 3) {
                    break;
                }
                if (i6 == 0) {
                    str7 = "write";
                    z4 = z;
                    z5 = true;
                } else if (i6 == 1) {
                    str7 = "writeNormal";
                    z4 = z;
                    z5 = false;
                } else {
                    str7 = "writeDirectNonContext";
                    z5 = true;
                    z4 = true;
                }
                Context context = r1;
                ClassWriter classWriter4 = classWriter3;
                String str10 = sb6;
                String str11 = sb4;
                Context context2 = new Context(fieldInfoArr3, serializeBeanInfo, sb4, z5, z4);
                StringBuilder sb13 = new StringBuilder();
                sb13.append(str3);
                sb13.append(JSONSerializer);
                sb13.append(str2);
                int i7 = i6;
                MethodWriter methodWriter2 = new MethodWriter(classWriter3, 1, str7, sb13.toString(), null, new String[]{str});
                Label label = new Label();
                methodWriter2.visitVarInsn(25, 2);
                methodWriter2.visitJumpInsn(Opcodes.IFNONNULL, label);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitMethodInsn(182, JSONSerializer, "writeNull", "()V");
                methodWriter2.visitInsn(Opcodes.RETURN);
                methodWriter2.visitLabel(label);
                methodWriter2.visitVarInsn(25, 1);
                methodWriter2.visitFieldInsn(180, JSONSerializer, str4, SerializeWriter_desc);
                Context context3 = context;
                methodWriter2.visitVarInsn(58, context3.var(str4));
                if (z7 || context3.writeDirect || (jSONType2 != null && !jSONType2.alphabetic())) {
                    str8 = str11;
                } else {
                    Label label2 = new Label();
                    methodWriter2.visitVarInsn(25, context3.var(str4));
                    methodWriter2.visitMethodInsn(182, SerializeWriter, "isSortField", "()Z");
                    methodWriter2.visitJumpInsn(Opcodes.IFNE, label2);
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, 1);
                    methodWriter2.visitVarInsn(25, 2);
                    methodWriter2.visitVarInsn(25, 3);
                    methodWriter2.visitVarInsn(25, 4);
                    methodWriter2.visitVarInsn(21, 5);
                    StringBuilder sb14 = new StringBuilder();
                    sb14.append(str3);
                    sb14.append(JSONSerializer);
                    sb14.append(str2);
                    str8 = str11;
                    methodWriter2.visitMethodInsn(182, str8, "writeUnsorted", sb14.toString());
                    methodWriter2.visitInsn(Opcodes.RETURN);
                    methodWriter2.visitLabel(label2);
                }
                if (!context3.writeDirect || z4) {
                    jSONType = jSONType2;
                    z6 = z7;
                } else {
                    Label label3 = new Label();
                    Label label4 = new Label();
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, 1);
                    String str12 = JavaBeanSerializer;
                    StringBuilder sb15 = new StringBuilder();
                    sb15.append(str3);
                    jSONType = jSONType2;
                    sb15.append(JSONSerializer);
                    sb15.append(";)Z");
                    z6 = z7;
                    methodWriter2.visitMethodInsn(182, str12, "writeDirect", sb15.toString());
                    methodWriter2.visitJumpInsn(Opcodes.IFNE, label4);
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, 1);
                    methodWriter2.visitVarInsn(25, 2);
                    methodWriter2.visitVarInsn(25, 3);
                    methodWriter2.visitVarInsn(25, 4);
                    methodWriter2.visitVarInsn(21, 5);
                    StringBuilder sb16 = new StringBuilder();
                    sb16.append(str3);
                    sb16.append(JSONSerializer);
                    sb16.append(str2);
                    methodWriter2.visitMethodInsn(182, str8, "writeNormal", sb16.toString());
                    methodWriter2.visitInsn(Opcodes.RETURN);
                    methodWriter2.visitLabel(label4);
                    methodWriter2.visitVarInsn(25, context3.var(str4));
                    methodWriter2.visitLdcInsn(Integer.valueOf(SerializerFeature.DisableCircularReferenceDetect.mask));
                    methodWriter2.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
                    methodWriter2.visitJumpInsn(153, label3);
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, 1);
                    methodWriter2.visitVarInsn(25, 2);
                    methodWriter2.visitVarInsn(25, 3);
                    methodWriter2.visitVarInsn(25, 4);
                    methodWriter2.visitVarInsn(21, 5);
                    StringBuilder sb17 = new StringBuilder();
                    sb17.append(str3);
                    sb17.append(JSONSerializer);
                    sb17.append(str2);
                    methodWriter2.visitMethodInsn(182, str8, "writeDirectNonContext", sb17.toString());
                    methodWriter2.visitInsn(Opcodes.RETURN);
                    methodWriter2.visitLabel(label3);
                }
                methodWriter2.visitVarInsn(25, 2);
                methodWriter2.visitTypeInsn(192, ASMUtils.type(cls));
                methodWriter2.visitVarInsn(58, context3.var("entity"));
                generateWriteMethod(cls, methodWriter2, fieldInfoArr3, context3);
                methodWriter2.visitInsn(Opcodes.RETURN);
                methodWriter2.visitMaxs(7, context3.variantIndex + 2);
                methodWriter2.visitEnd();
                i6 = i7 + 1;
                SerializeBeanInfo serializeBeanInfo3 = serializeBeanInfo;
                sb4 = str8;
                jSONType2 = jSONType;
                z7 = z6;
                fieldInfoArr2 = fieldInfoArr;
                classWriter3 = classWriter4;
                sb6 = str10;
            }
            String str13 = sb6;
            String str14 = sb4;
            ClassWriter classWriter5 = classWriter3;
            int i8 = 3;
            if (!z7) {
                str5 = str14;
                Context context4 = new Context(fieldInfoArr3, serializeBeanInfo, str14, false, z);
                StringBuilder sb18 = new StringBuilder();
                sb18.append(str3);
                sb18.append(JSONSerializer);
                sb18.append(str2);
                i8 = 3;
                MethodWriter methodWriter3 = new MethodWriter(classWriter5, 1, "writeUnsorted", sb18.toString(), null, new String[]{str});
                methodWriter3.visitVarInsn(25, 1);
                methodWriter3.visitFieldInsn(180, JSONSerializer, str4, SerializeWriter_desc);
                methodWriter3.visitVarInsn(58, context4.var(str4));
                methodWriter3.visitVarInsn(25, 2);
                methodWriter3.visitTypeInsn(192, ASMUtils.type(cls));
                methodWriter3.visitVarInsn(58, context4.var("entity"));
                generateWriteMethod(cls, methodWriter3, fieldInfoArr, context4);
                methodWriter3.visitInsn(Opcodes.RETURN);
                methodWriter3.visitMaxs(7, context4.variantIndex + 2);
                methodWriter3.visitEnd();
            } else {
                str5 = str14;
            }
            int i9 = 0;
            while (i9 < i8) {
                if (i9 == 0) {
                    str6 = "writeAsArray";
                    z2 = z;
                    z3 = true;
                } else if (i9 == 1) {
                    str6 = "writeAsArrayNormal";
                    z2 = z;
                    z3 = false;
                } else {
                    str6 = "writeAsArrayNonContext";
                    z3 = true;
                    z2 = true;
                }
                Context context5 = r1;
                Context context6 = new Context(fieldInfoArr3, serializeBeanInfo, str5, z3, z2);
                StringBuilder sb19 = new StringBuilder();
                sb19.append(str3);
                sb19.append(JSONSerializer);
                sb19.append(str2);
                MethodWriter methodWriter4 = new MethodWriter(classWriter5, 1, str6, sb19.toString(), null, new String[]{str});
                methodWriter4.visitVarInsn(25, 1);
                methodWriter4.visitFieldInsn(180, JSONSerializer, str4, SerializeWriter_desc);
                methodWriter4.visitVarInsn(58, context5.var(str4));
                methodWriter4.visitVarInsn(25, 2);
                methodWriter4.visitTypeInsn(192, ASMUtils.type(cls));
                methodWriter4.visitVarInsn(58, context5.var("entity"));
                generateWriteAsArray(cls, methodWriter4, fieldInfoArr3, context5);
                methodWriter4.visitInsn(Opcodes.RETURN);
                methodWriter4.visitMaxs(7, context5.variantIndex + 2);
                methodWriter4.visitEnd();
                i9++;
                i8 = 3;
            }
            byte[] byteArray = classWriter5.toByteArray();
            return (JavaBeanSerializer) this.classLoader.defineClassPublic(str13, byteArray, 0, byteArray.length).getConstructor(new Class[]{SerializeBeanInfo.class}).newInstance(new Object[]{serializeBeanInfo});
        }
        StringBuilder sb20 = new StringBuilder();
        sb20.append("unsupportd class ");
        sb20.append(cls.getName());
        throw new JSONException(sb20.toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x01a3, code lost:
        if (r14 == java.lang.Object.class) goto L_0x01a5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void generateWriteAsArray(java.lang.Class<?> r26, com.alibaba.fastjson.asm.MethodVisitor r27, com.alibaba.fastjson.util.FieldInfo[] r28, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context r29) throws java.lang.Exception {
        /*
            r25 = this;
            r0 = r25
            r1 = r27
            r2 = r28
            r3 = r29
            java.lang.String r4 = "out"
            int r5 = r3.var(r4)
            r6 = 25
            r1.visitVarInsn(r6, r5)
            r5 = 16
            r7 = 91
            r1.visitVarInsn(r5, r7)
            java.lang.String r7 = SerializeWriter
            java.lang.String r8 = "(I)V"
            java.lang.String r9 = "write"
            r10 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r10, r7, r9, r8)
            int r7 = r2.length
            if (r7 != 0) goto L_0x003a
            int r2 = r3.var(r4)
            r1.visitVarInsn(r6, r2)
            r2 = 93
            r1.visitVarInsn(r5, r2)
            java.lang.String r2 = SerializeWriter
            r1.visitMethodInsn(r10, r2, r9, r8)
            return
        L_0x003a:
            r11 = 0
        L_0x003b:
            if (r11 >= r7) goto L_0x07f4
            int r12 = r7 + -1
            if (r11 != r12) goto L_0x0044
            r12 = 93
            goto L_0x0046
        L_0x0044:
            r12 = 44
        L_0x0046:
            r13 = r2[r11]
            java.lang.Class<?> r14 = r13.fieldClass
            java.lang.String r15 = r13.name
            r1.visitLdcInsn(r15)
            int r15 = com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName
            r5 = 58
            r1.visitVarInsn(r5, r15)
            java.lang.Class r15 = java.lang.Byte.TYPE
            r5 = 89
            if (r14 == r15) goto L_0x07b7
            java.lang.Class r15 = java.lang.Short.TYPE
            if (r14 == r15) goto L_0x07b7
            java.lang.Class r15 = java.lang.Integer.TYPE
            if (r14 != r15) goto L_0x0066
            goto L_0x07b7
        L_0x0066:
            java.lang.Class r15 = java.lang.Long.TYPE
            if (r14 != r15) goto L_0x0099
            int r14 = r3.var(r4)
            r1.visitVarInsn(r6, r14)
            r1.visitInsn(r5)
            r0._get(r1, r3, r13)
            java.lang.String r5 = SerializeWriter
            java.lang.String r13 = "writeLong"
            java.lang.String r14 = "(J)V"
            r1.visitMethodInsn(r10, r5, r13, r14)
            r5 = 16
            r1.visitVarInsn(r5, r12)
            java.lang.String r5 = SerializeWriter
            r1.visitMethodInsn(r10, r5, r9, r8)
        L_0x008a:
            r2 = r0
            r0 = r4
            r18 = r7
            r5 = r8
            r19 = r11
            r4 = 25
            r6 = 16
            r8 = 182(0xb6, float:2.55E-43)
            goto L_0x07e3
        L_0x0099:
            java.lang.Class r15 = java.lang.Float.TYPE
            if (r14 != r15) goto L_0x00c2
            int r14 = r3.var(r4)
            r1.visitVarInsn(r6, r14)
            r1.visitInsn(r5)
            r0._get(r1, r3, r13)
            r5 = 4
            r1.visitInsn(r5)
            java.lang.String r5 = SerializeWriter
            java.lang.String r13 = "writeFloat"
            java.lang.String r14 = "(FZ)V"
            r1.visitMethodInsn(r10, r5, r13, r14)
            r5 = 16
            r1.visitVarInsn(r5, r12)
            java.lang.String r5 = SerializeWriter
            r1.visitMethodInsn(r10, r5, r9, r8)
            goto L_0x008a
        L_0x00c2:
            java.lang.Class r15 = java.lang.Double.TYPE
            if (r14 != r15) goto L_0x00eb
            int r14 = r3.var(r4)
            r1.visitVarInsn(r6, r14)
            r1.visitInsn(r5)
            r0._get(r1, r3, r13)
            r5 = 4
            r1.visitInsn(r5)
            java.lang.String r5 = SerializeWriter
            java.lang.String r13 = "writeDouble"
            java.lang.String r14 = "(DZ)V"
            r1.visitMethodInsn(r10, r5, r13, r14)
            r5 = 16
            r1.visitVarInsn(r5, r12)
            java.lang.String r5 = SerializeWriter
            r1.visitMethodInsn(r10, r5, r9, r8)
            goto L_0x008a
        L_0x00eb:
            java.lang.Class r15 = java.lang.Boolean.TYPE
            if (r14 != r15) goto L_0x010f
            int r14 = r3.var(r4)
            r1.visitVarInsn(r6, r14)
            r1.visitInsn(r5)
            r0._get(r1, r3, r13)
            java.lang.String r5 = SerializeWriter
            java.lang.String r13 = "(Z)V"
            r1.visitMethodInsn(r10, r5, r9, r13)
            r5 = 16
            r1.visitVarInsn(r5, r12)
            java.lang.String r5 = SerializeWriter
            r1.visitMethodInsn(r10, r5, r9, r8)
            goto L_0x008a
        L_0x010f:
            java.lang.Class r15 = java.lang.Character.TYPE
            if (r14 != r15) goto L_0x0138
            int r5 = r3.var(r4)
            r1.visitVarInsn(r6, r5)
            r0._get(r1, r3, r13)
            r5 = 184(0xb8, float:2.58E-43)
            java.lang.String r13 = "java/lang/Character"
            java.lang.String r14 = "toString"
            java.lang.String r15 = "(C)Ljava/lang/String;"
            r1.visitMethodInsn(r5, r13, r14, r15)
            r15 = 16
            r1.visitVarInsn(r15, r12)
            java.lang.String r5 = SerializeWriter
            java.lang.String r12 = "writeString"
            java.lang.String r13 = "(Ljava/lang/String;C)V"
            r1.visitMethodInsn(r10, r5, r12, r13)
            goto L_0x008a
        L_0x0138:
            r15 = 16
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            if (r14 != r5) goto L_0x0156
            int r5 = r3.var(r4)
            r1.visitVarInsn(r6, r5)
            r0._get(r1, r3, r13)
            r1.visitVarInsn(r15, r12)
            java.lang.String r5 = SerializeWriter
            java.lang.String r12 = "writeString"
            java.lang.String r13 = "(Ljava/lang/String;C)V"
            r1.visitMethodInsn(r10, r5, r12, r13)
            goto L_0x008a
        L_0x0156:
            boolean r5 = r14.isEnum()
            if (r5 == 0) goto L_0x0180
            int r5 = r3.var(r4)
            r1.visitVarInsn(r6, r5)
            r5 = 89
            r1.visitInsn(r5)
            r0._get(r1, r3, r13)
            java.lang.String r5 = SerializeWriter
            java.lang.String r13 = "writeEnum"
            java.lang.String r14 = "(Ljava/lang/Enum;)V"
            r1.visitMethodInsn(r10, r5, r13, r14)
            r5 = 16
            r1.visitVarInsn(r5, r12)
            java.lang.String r5 = SerializeWriter
            r1.visitMethodInsn(r10, r5, r9, r8)
            goto L_0x008a
        L_0x0180:
            java.lang.Class<java.util.List> r5 = java.util.List.class
            boolean r5 = r5.isAssignableFrom(r14)
            if (r5 == 0) goto L_0x053d
            java.lang.reflect.Type r5 = r13.fieldType
            boolean r14 = r5 instanceof java.lang.Class
            if (r14 == 0) goto L_0x0191
            java.lang.Class<java.lang.Object> r5 = java.lang.Object.class
            goto L_0x019a
        L_0x0191:
            java.lang.reflect.ParameterizedType r5 = (java.lang.reflect.ParameterizedType) r5
            java.lang.reflect.Type[] r5 = r5.getActualTypeArguments()
            r14 = 0
            r5 = r5[r14]
        L_0x019a:
            boolean r14 = r5 instanceof java.lang.Class
            if (r14 == 0) goto L_0x01a5
            r14 = r5
            java.lang.Class r14 = (java.lang.Class) r14
            java.lang.Class<java.lang.Object> r15 = java.lang.Object.class
            if (r14 != r15) goto L_0x01a6
        L_0x01a5:
            r14 = 0
        L_0x01a6:
            r0._get(r1, r3, r13)
            r15 = 192(0xc0, float:2.69E-43)
            java.lang.String r10 = "java/util/List"
            r1.visitTypeInsn(r15, r10)
            java.lang.String r10 = "list"
            int r15 = r3.var(r10)
            r6 = 58
            r1.visitVarInsn(r6, r15)
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            if (r14 != r6) goto L_0x01ee
            boolean r6 = r29.writeDirect
            if (r6 == 0) goto L_0x01ee
            int r5 = r3.var(r4)
            r6 = 25
            r1.visitVarInsn(r6, r5)
            int r5 = r3.var(r10)
            r1.visitVarInsn(r6, r5)
            java.lang.String r5 = SerializeWriter
            java.lang.String r6 = "(Ljava/util/List;)V"
            r10 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r10, r5, r9, r6)
            r0 = r4
            r18 = r7
            r6 = r8
            r19 = r11
            r20 = r12
            r4 = 25
            r5 = 16
            r7 = 182(0xb6, float:2.55E-43)
            goto L_0x0521
        L_0x01ee:
            com.alibaba.fastjson.asm.Label r6 = new com.alibaba.fastjson.asm.Label
            r6.<init>()
            com.alibaba.fastjson.asm.Label r15 = new com.alibaba.fastjson.asm.Label
            r15.<init>()
            int r2 = r3.var(r10)
            r18 = r7
            r7 = 25
            r1.visitVarInsn(r7, r2)
            r2 = 199(0xc7, float:2.79E-43)
            r1.visitJumpInsn(r2, r15)
            int r2 = r3.var(r4)
            r1.visitVarInsn(r7, r2)
            java.lang.String r2 = SerializeWriter
            java.lang.String r7 = "writeNull"
            r19 = r11
            java.lang.String r11 = "()V"
            r20 = r12
            r12 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r12, r2, r7, r11)
            r2 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r2, r6)
            r1.visitLabel(r15)
            int r2 = r3.var(r10)
            r7 = 25
            r1.visitVarInsn(r7, r2)
            r2 = 185(0xb9, float:2.59E-43)
            java.lang.String r11 = "java/util/List"
            java.lang.String r12 = "size"
            java.lang.String r15 = "()I"
            r1.visitMethodInsn(r2, r11, r12, r15)
            r2 = 54
            java.lang.String r11 = "size"
            int r11 = r3.var(r11)
            r1.visitVarInsn(r2, r11)
            int r2 = r3.var(r4)
            r1.visitVarInsn(r7, r2)
            r2 = 91
            r7 = 16
            r1.visitVarInsn(r7, r2)
            java.lang.String r2 = SerializeWriter
            r7 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r7, r2, r9, r8)
            com.alibaba.fastjson.asm.Label r2 = new com.alibaba.fastjson.asm.Label
            r2.<init>()
            com.alibaba.fastjson.asm.Label r7 = new com.alibaba.fastjson.asm.Label
            r7.<init>()
            com.alibaba.fastjson.asm.Label r11 = new com.alibaba.fastjson.asm.Label
            r11.<init>()
            r12 = 3
            r1.visitInsn(r12)
            r12 = 54
            java.lang.String r15 = "i"
            r17 = r6
            int r6 = r3.var(r15)
            r1.visitVarInsn(r12, r6)
            r1.visitLabel(r2)
            int r6 = r3.var(r15)
            r12 = 21
            r1.visitVarInsn(r12, r6)
            java.lang.String r6 = "size"
            int r6 = r3.var(r6)
            r1.visitVarInsn(r12, r6)
            r6 = 162(0xa2, float:2.27E-43)
            r1.visitJumpInsn(r6, r11)
            int r6 = r3.var(r15)
            r1.visitVarInsn(r12, r6)
            r6 = 153(0x99, float:2.14E-43)
            r1.visitJumpInsn(r6, r7)
            int r6 = r3.var(r4)
            r12 = 25
            r1.visitVarInsn(r12, r6)
            r6 = 44
            r12 = 16
            r1.visitVarInsn(r12, r6)
            java.lang.String r6 = SerializeWriter
            r12 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r12, r6, r9, r8)
            r1.visitLabel(r7)
            int r6 = r3.var(r10)
            r7 = 25
            r1.visitVarInsn(r7, r6)
            int r6 = r3.var(r15)
            r7 = 21
            r1.visitVarInsn(r7, r6)
            r6 = 185(0xb9, float:2.59E-43)
            java.lang.String r7 = "java/util/List"
            java.lang.String r10 = "get"
            java.lang.String r12 = "(I)Ljava/lang/Object;"
            r1.visitMethodInsn(r6, r7, r10, r12)
            java.lang.String r6 = "list_item"
            int r7 = r3.var(r6)
            r10 = 58
            r1.visitVarInsn(r10, r7)
            com.alibaba.fastjson.asm.Label r7 = new com.alibaba.fastjson.asm.Label
            r7.<init>()
            com.alibaba.fastjson.asm.Label r10 = new com.alibaba.fastjson.asm.Label
            r10.<init>()
            int r12 = r3.var(r6)
            r21 = r8
            r8 = 25
            r1.visitVarInsn(r8, r12)
            r12 = 199(0xc7, float:2.79E-43)
            r1.visitJumpInsn(r12, r10)
            int r12 = r3.var(r4)
            r1.visitVarInsn(r8, r12)
            java.lang.String r8 = SerializeWriter
            java.lang.String r12 = "writeNull"
            r22 = r4
            java.lang.String r4 = "()V"
            r23 = r11
            r11 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r11, r8, r12, r4)
            r4 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r4, r7)
            r1.visitLabel(r10)
            com.alibaba.fastjson.asm.Label r4 = new com.alibaba.fastjson.asm.Label
            r4.<init>()
            com.alibaba.fastjson.asm.Label r8 = new com.alibaba.fastjson.asm.Label
            r8.<init>()
            if (r14 == 0) goto L_0x047a
            int r10 = r14.getModifiers()
            boolean r10 = java.lang.reflect.Modifier.isPublic(r10)
            if (r10 == 0) goto L_0x047a
            int r10 = r3.var(r6)
            r11 = 25
            r1.visitVarInsn(r11, r10)
            java.lang.String r10 = "java/lang/Object"
            java.lang.String r11 = "getClass"
            java.lang.String r12 = "()Ljava/lang/Class;"
            r24 = r2
            r2 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r2, r10, r11, r12)
            java.lang.String r2 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r2 = com.alibaba.fastjson.asm.Type.getType(r2)
            r1.visitLdcInsn(r2)
            r2 = 166(0xa6, float:2.33E-43)
            r1.visitJumpInsn(r2, r8)
            r0._getListFieldItemSer(r3, r1, r13, r14)
            java.lang.String r2 = "list_item_desc"
            int r2 = r3.var(r2)
            r10 = 58
            r1.visitVarInsn(r10, r2)
            com.alibaba.fastjson.asm.Label r2 = new com.alibaba.fastjson.asm.Label
            r2.<init>()
            com.alibaba.fastjson.asm.Label r10 = new com.alibaba.fastjson.asm.Label
            r10.<init>()
            boolean r11 = r29.writeDirect
            if (r11 == 0) goto L_0x0408
            java.lang.String r11 = "list_item_desc"
            int r11 = r3.var(r11)
            r12 = 25
            r1.visitVarInsn(r12, r11)
            r11 = 193(0xc1, float:2.7E-43)
            java.lang.String r12 = JavaBeanSerializer
            r1.visitTypeInsn(r11, r12)
            r11 = 153(0x99, float:2.14E-43)
            r1.visitJumpInsn(r11, r2)
            java.lang.String r11 = "list_item_desc"
            int r11 = r3.var(r11)
            r12 = 25
            r1.visitVarInsn(r12, r11)
            r11 = 192(0xc0, float:2.69E-43)
            java.lang.String r0 = JavaBeanSerializer
            r1.visitTypeInsn(r11, r0)
            r0 = 1
            r1.visitVarInsn(r12, r0)
            int r11 = r3.var(r6)
            r1.visitVarInsn(r12, r11)
            boolean r11 = r29.nonContext
            if (r11 == 0) goto L_0x03b4
            r1.visitInsn(r0)
            r16 = r7
            goto L_0x03ca
        L_0x03b4:
            int r0 = r3.var(r15)
            r11 = 21
            r1.visitVarInsn(r11, r0)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Integer"
            java.lang.String r12 = "valueOf"
            r16 = r7
            java.lang.String r7 = "(I)Ljava/lang/Integer;"
            r1.visitMethodInsn(r0, r11, r12, r7)
        L_0x03ca:
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r0 = com.alibaba.fastjson.asm.Type.getType(r0)
            r1.visitLdcInsn(r0)
            int r0 = r13.serialzeFeatures
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1.visitLdcInsn(r0)
            java.lang.String r0 = JavaBeanSerializer
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r11 = "(L"
            r7.append(r11)
            java.lang.String r11 = JSONSerializer
            r7.append(r11)
            java.lang.String r11 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r7.append(r11)
            java.lang.String r7 = r7.toString()
            java.lang.String r11 = "writeAsArrayNonContext"
            r12 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r12, r0, r11, r7)
            r0 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r0, r10)
            r1.visitLabel(r2)
            goto L_0x040a
        L_0x0408:
            r16 = r7
        L_0x040a:
            java.lang.String r0 = "list_item_desc"
            int r0 = r3.var(r0)
            r2 = 25
            r1.visitVarInsn(r2, r0)
            r0 = 1
            r1.visitVarInsn(r2, r0)
            int r7 = r3.var(r6)
            r1.visitVarInsn(r2, r7)
            boolean r2 = r29.nonContext
            if (r2 == 0) goto L_0x042a
            r1.visitInsn(r0)
            goto L_0x043e
        L_0x042a:
            int r0 = r3.var(r15)
            r2 = 21
            r1.visitVarInsn(r2, r0)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r2 = "java/lang/Integer"
            java.lang.String r7 = "valueOf"
            java.lang.String r11 = "(I)Ljava/lang/Integer;"
            r1.visitMethodInsn(r0, r2, r7, r11)
        L_0x043e:
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r0 = com.alibaba.fastjson.asm.Type.getType(r0)
            r1.visitLdcInsn(r0)
            int r0 = r13.serialzeFeatures
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1.visitLdcInsn(r0)
            r0 = 185(0xb9, float:2.59E-43)
            java.lang.String r2 = ObjectSerializer
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r11 = "(L"
            r7.append(r11)
            java.lang.String r11 = JSONSerializer
            r7.append(r11)
            java.lang.String r11 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r7.append(r11)
            java.lang.String r7 = r7.toString()
            r1.visitMethodInsn(r0, r2, r9, r7)
            r1.visitLabel(r10)
            r0 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r0, r4)
            goto L_0x047e
        L_0x047a:
            r24 = r2
            r16 = r7
        L_0x047e:
            r1.visitLabel(r8)
            r0 = 1
            r2 = 25
            r1.visitVarInsn(r2, r0)
            int r6 = r3.var(r6)
            r1.visitVarInsn(r2, r6)
            boolean r2 = r29.nonContext
            if (r2 == 0) goto L_0x0498
            r1.visitInsn(r0)
            goto L_0x04ac
        L_0x0498:
            int r0 = r3.var(r15)
            r2 = 21
            r1.visitVarInsn(r2, r0)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r2 = "java/lang/Integer"
            java.lang.String r6 = "valueOf"
            java.lang.String r7 = "(I)Ljava/lang/Integer;"
            r1.visitMethodInsn(r0, r2, r6, r7)
        L_0x04ac:
            if (r14 == 0) goto L_0x04da
            int r0 = r14.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 == 0) goto L_0x04da
            java.lang.Class r5 = (java.lang.Class) r5
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.desc(r5)
            com.alibaba.fastjson.asm.Type r0 = com.alibaba.fastjson.asm.Type.getType(r0)
            r1.visitLdcInsn(r0)
            int r0 = r13.serialzeFeatures
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1.visitLdcInsn(r0)
            java.lang.String r0 = JSONSerializer
            java.lang.String r2 = "writeWithFieldName"
            java.lang.String r5 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r6 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r6, r0, r2, r5)
            goto L_0x04e5
        L_0x04da:
            r6 = 182(0xb6, float:2.55E-43)
            java.lang.String r0 = JSONSerializer
            java.lang.String r2 = "writeWithFieldName"
            java.lang.String r5 = "(Ljava/lang/Object;Ljava/lang/Object;)V"
            r1.visitMethodInsn(r6, r0, r2, r5)
        L_0x04e5:
            r1.visitLabel(r4)
            r0 = r16
            r1.visitLabel(r0)
            int r0 = r3.var(r15)
            r2 = 1
            r1.visitIincInsn(r0, r2)
            r0 = r24
            r2 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r2, r0)
            r0 = r23
            r1.visitLabel(r0)
            r0 = r22
            int r2 = r3.var(r0)
            r4 = 25
            r1.visitVarInsn(r4, r2)
            r2 = 93
            r5 = 16
            r1.visitVarInsn(r5, r2)
            java.lang.String r2 = SerializeWriter
            r6 = r21
            r7 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r7, r2, r9, r6)
            r2 = r17
            r1.visitLabel(r2)
        L_0x0521:
            int r2 = r3.var(r0)
            r1.visitVarInsn(r4, r2)
            r12 = r20
            r1.visitVarInsn(r5, r12)
            java.lang.String r2 = SerializeWriter
            r1.visitMethodInsn(r7, r2, r9, r6)
            r4 = 25
            r8 = 182(0xb6, float:2.55E-43)
            r2 = r25
            r5 = r6
            r6 = 16
            goto L_0x07e3
        L_0x053d:
            r0 = r4
            r18 = r7
            r6 = r8
            r19 = r11
            com.alibaba.fastjson.asm.Label r2 = new com.alibaba.fastjson.asm.Label
            r2.<init>()
            com.alibaba.fastjson.asm.Label r4 = new com.alibaba.fastjson.asm.Label
            r4.<init>()
            r5 = r25
            r5._get(r1, r3, r13)
            r7 = 89
            r1.visitInsn(r7)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "field_"
            r7.append(r8)
            java.lang.Class<?> r10 = r13.fieldClass
            java.lang.String r10 = r10.getName()
            r7.append(r10)
            java.lang.String r7 = r7.toString()
            int r7 = r3.var(r7)
            r10 = 58
            r1.visitVarInsn(r10, r7)
            r7 = 199(0xc7, float:2.79E-43)
            r1.visitJumpInsn(r7, r4)
            int r7 = r3.var(r0)
            r10 = 25
            r1.visitVarInsn(r10, r7)
            java.lang.String r7 = SerializeWriter
            java.lang.String r10 = "writeNull"
            java.lang.String r11 = "()V"
            r15 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r15, r7, r10, r11)
            r7 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r7, r2)
            r1.visitLabel(r4)
            com.alibaba.fastjson.asm.Label r4 = new com.alibaba.fastjson.asm.Label
            r4.<init>()
            com.alibaba.fastjson.asm.Label r7 = new com.alibaba.fastjson.asm.Label
            r7.<init>()
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r8)
            java.lang.Class<?> r11 = r13.fieldClass
            java.lang.String r11 = r11.getName()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            int r10 = r3.var(r10)
            r11 = 25
            r1.visitVarInsn(r11, r10)
            java.lang.String r10 = "java/lang/Object"
            java.lang.String r11 = "getClass"
            java.lang.String r15 = "()Ljava/lang/Class;"
            r21 = r6
            r6 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r6, r10, r11, r15)
            java.lang.String r6 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r6 = com.alibaba.fastjson.asm.Type.getType(r6)
            r1.visitLdcInsn(r6)
            r6 = 166(0xa6, float:2.33E-43)
            r1.visitJumpInsn(r6, r7)
            r5._getFieldSer(r3, r1, r13)
            java.lang.String r6 = "fied_ser"
            int r6 = r3.var(r6)
            r10 = 58
            r1.visitVarInsn(r10, r6)
            com.alibaba.fastjson.asm.Label r6 = new com.alibaba.fastjson.asm.Label
            r6.<init>()
            com.alibaba.fastjson.asm.Label r10 = new com.alibaba.fastjson.asm.Label
            r10.<init>()
            boolean r11 = r29.writeDirect
            if (r11 == 0) goto L_0x0693
            int r11 = r14.getModifiers()
            boolean r11 = java.lang.reflect.Modifier.isPublic(r11)
            if (r11 == 0) goto L_0x0693
            java.lang.String r11 = "fied_ser"
            int r11 = r3.var(r11)
            r15 = 25
            r1.visitVarInsn(r15, r11)
            r11 = 193(0xc1, float:2.7E-43)
            java.lang.String r15 = JavaBeanSerializer
            r1.visitTypeInsn(r11, r15)
            r11 = 153(0x99, float:2.14E-43)
            r1.visitJumpInsn(r11, r6)
            java.lang.String r11 = "fied_ser"
            int r11 = r3.var(r11)
            r15 = 25
            r1.visitVarInsn(r15, r11)
            r11 = 192(0xc0, float:2.69E-43)
            java.lang.String r5 = JavaBeanSerializer
            r1.visitTypeInsn(r11, r5)
            r5 = 1
            r1.visitVarInsn(r15, r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r8)
            java.lang.Class<?> r11 = r13.fieldClass
            java.lang.String r11 = r11.getName()
            r5.append(r11)
            java.lang.String r5 = r5.toString()
            int r5 = r3.var(r5)
            r1.visitVarInsn(r15, r5)
            int r5 = com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName
            r1.visitVarInsn(r15, r5)
            java.lang.String r5 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r5 = com.alibaba.fastjson.asm.Type.getType(r5)
            r1.visitLdcInsn(r5)
            int r5 = r13.serialzeFeatures
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.visitLdcInsn(r5)
            java.lang.String r5 = JavaBeanSerializer
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r15 = "(L"
            r11.append(r15)
            java.lang.String r15 = JSONSerializer
            r11.append(r15)
            java.lang.String r15 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r11.append(r15)
            java.lang.String r11 = r11.toString()
            java.lang.String r15 = "writeAsArrayNonContext"
            r20 = r12
            r12 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r12, r5, r15, r11)
            r5 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r5, r10)
            r1.visitLabel(r6)
            goto L_0x0695
        L_0x0693:
            r20 = r12
        L_0x0695:
            java.lang.String r5 = "fied_ser"
            int r5 = r3.var(r5)
            r6 = 25
            r1.visitVarInsn(r6, r5)
            r5 = 1
            r1.visitVarInsn(r6, r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r8)
            java.lang.Class<?> r11 = r13.fieldClass
            java.lang.String r11 = r11.getName()
            r5.append(r11)
            java.lang.String r5 = r5.toString()
            int r5 = r3.var(r5)
            r1.visitVarInsn(r6, r5)
            int r5 = com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName
            r1.visitVarInsn(r6, r5)
            java.lang.String r5 = com.alibaba.fastjson.util.ASMUtils.desc(r14)
            com.alibaba.fastjson.asm.Type r5 = com.alibaba.fastjson.asm.Type.getType(r5)
            r1.visitLdcInsn(r5)
            int r5 = r13.serialzeFeatures
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.visitLdcInsn(r5)
            r5 = 185(0xb9, float:2.59E-43)
            java.lang.String r6 = ObjectSerializer
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "(L"
            r11.append(r12)
            java.lang.String r12 = JSONSerializer
            r11.append(r12)
            java.lang.String r12 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r1.visitMethodInsn(r5, r6, r9, r11)
            r1.visitLabel(r10)
            r5 = 167(0xa7, float:2.34E-43)
            r1.visitJumpInsn(r5, r4)
            r1.visitLabel(r7)
            java.lang.String r5 = r13.getFormat()
            r6 = 1
            r7 = 25
            r1.visitVarInsn(r7, r6)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r8)
            java.lang.Class<?> r8 = r13.fieldClass
            java.lang.String r8 = r8.getName()
            r6.append(r8)
            java.lang.String r6 = r6.toString()
            int r6 = r3.var(r6)
            r1.visitVarInsn(r7, r6)
            if (r5 == 0) goto L_0x073c
            r1.visitLdcInsn(r5)
            java.lang.String r5 = JSONSerializer
            java.lang.String r6 = "writeWithFormat"
            java.lang.String r8 = "(Ljava/lang/Object;Ljava/lang/String;)V"
            r10 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r10, r5, r6, r8)
            r8 = 182(0xb6, float:2.55E-43)
            goto L_0x0795
        L_0x073c:
            int r5 = com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName
            r1.visitVarInsn(r7, r5)
            java.lang.reflect.Type r5 = r13.fieldType
            boolean r5 = r5 instanceof java.lang.Class
            if (r5 == 0) goto L_0x075d
            java.lang.reflect.Type r5 = r13.fieldType
            java.lang.Class r5 = (java.lang.Class) r5
            boolean r5 = r5.isPrimitive()
            if (r5 == 0) goto L_0x075d
            java.lang.String r5 = JSONSerializer
            java.lang.String r6 = "writeWithFieldName"
            java.lang.String r7 = "(Ljava/lang/Object;Ljava/lang/Object;)V"
            r8 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r8, r5, r6, r7)
            goto L_0x0795
        L_0x075d:
            r5 = 0
            r6 = 25
            r1.visitVarInsn(r6, r5)
            r5 = 180(0xb4, float:2.52E-43)
            java.lang.String r6 = r29.className
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = r13.name
            r7.append(r8)
            java.lang.String r8 = "_asm_fieldType"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            java.lang.String r8 = "Ljava/lang/reflect/Type;"
            r1.visitFieldInsn(r5, r6, r7, r8)
            int r5 = r13.serialzeFeatures
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.visitLdcInsn(r5)
            java.lang.String r5 = JSONSerializer
            java.lang.String r6 = "writeWithFieldName"
            java.lang.String r7 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"
            r8 = 182(0xb6, float:2.55E-43)
            r1.visitMethodInsn(r8, r5, r6, r7)
        L_0x0795:
            r1.visitLabel(r4)
            r1.visitLabel(r2)
            int r2 = r3.var(r0)
            r4 = 25
            r1.visitVarInsn(r4, r2)
            r12 = r20
            r2 = 16
            r1.visitVarInsn(r2, r12)
            java.lang.String r2 = SerializeWriter
            r5 = r21
            r1.visitMethodInsn(r8, r2, r9, r5)
            r6 = 16
            r2 = r25
            goto L_0x07e3
        L_0x07b7:
            r0 = r4
            r18 = r7
            r5 = r8
            r19 = r11
            r4 = 25
            r8 = 182(0xb6, float:2.55E-43)
            int r2 = r3.var(r0)
            r1.visitVarInsn(r4, r2)
            r2 = 89
            r1.visitInsn(r2)
            r2 = r25
            r2._get(r1, r3, r13)
            java.lang.String r6 = SerializeWriter
            java.lang.String r7 = "writeInt"
            r1.visitMethodInsn(r8, r6, r7, r5)
            r6 = 16
            r1.visitVarInsn(r6, r12)
            java.lang.String r7 = SerializeWriter
            r1.visitMethodInsn(r8, r7, r9, r5)
        L_0x07e3:
            int r11 = r19 + 1
            r4 = r0
            r0 = r2
            r8 = r5
            r7 = r18
            r5 = 16
            r6 = 25
            r10 = 182(0xb6, float:2.55E-43)
            r2 = r28
            goto L_0x003b
        L_0x07f4:
            r2 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ASMSerializerFactory.generateWriteAsArray(java.lang.Class, com.alibaba.fastjson.asm.MethodVisitor, com.alibaba.fastjson.util.FieldInfo[], com.alibaba.fastjson.serializer.ASMSerializerFactory$Context):void");
    }

    private void generateWriteMethod(Class<?> cls, MethodVisitor methodVisitor, FieldInfo[] fieldInfoArr, Context context) throws Exception {
        int i;
        Class<?> cls2 = cls;
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo[] fieldInfoArr2 = fieldInfoArr;
        Context context2 = context;
        Label label = new Label();
        int length = fieldInfoArr2.length;
        String str = "(L";
        String str2 = "out";
        if (!context.writeDirect) {
            Label label2 = new Label();
            Label label3 = new Label();
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitLdcInsn(Integer.valueOf(SerializerFeature.PrettyFormat.mask));
            methodVisitor2.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor2.visitJumpInsn(Opcodes.IFNE, label3);
            boolean z = false;
            for (FieldInfo fieldInfo : fieldInfoArr2) {
                if (fieldInfo.method != null) {
                    z = true;
                }
            }
            if (z) {
                methodVisitor2.visitVarInsn(25, context2.var(str2));
                methodVisitor2.visitLdcInsn(Integer.valueOf(SerializerFeature.IgnoreErrorGetter.mask));
                methodVisitor2.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
                methodVisitor2.visitJumpInsn(153, label2);
            } else {
                methodVisitor2.visitJumpInsn(167, label2);
            }
            methodVisitor2.visitLabel(label3);
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitVarInsn(25, 3);
            methodVisitor2.visitVarInsn(25, 4);
            methodVisitor2.visitVarInsn(21, 5);
            String str3 = JavaBeanSerializer;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(JSONSerializer);
            sb.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor2.visitMethodInsn(183, str3, "write", sb.toString());
            methodVisitor2.visitInsn(Opcodes.RETURN);
            methodVisitor2.visitLabel(label2);
        }
        if (!context.nonContext) {
            Label label4 = new Label();
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitVarInsn(21, 5);
            String str4 = JavaBeanSerializer;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(JSONSerializer);
            sb2.append(";Ljava/lang/Object;I)Z");
            methodVisitor2.visitMethodInsn(182, str4, "writeReference", sb2.toString());
            methodVisitor2.visitJumpInsn(153, label4);
            methodVisitor2.visitInsn(Opcodes.RETURN);
            methodVisitor2.visitLabel(label4);
        }
        String str5 = context.writeDirect ? context.nonContext ? "writeAsArrayNonContext" : "writeAsArray" : "writeAsArrayNormal";
        if ((context.beanInfo.features & SerializerFeature.BeanToArray.mask) == 0) {
            Label label5 = new Label();
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitLdcInsn(Integer.valueOf(SerializerFeature.BeanToArray.mask));
            methodVisitor2.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor2.visitJumpInsn(153, label5);
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitVarInsn(25, 3);
            methodVisitor2.visitVarInsn(25, 4);
            methodVisitor2.visitVarInsn(21, 5);
            String access$300 = context.className;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(JSONSerializer);
            sb3.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor2.visitMethodInsn(182, access$300, str5, sb3.toString());
            methodVisitor2.visitInsn(Opcodes.RETURN);
            methodVisitor2.visitLabel(label5);
        } else {
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitVarInsn(25, 3);
            methodVisitor2.visitVarInsn(25, 4);
            methodVisitor2.visitVarInsn(21, 5);
            String access$3002 = context.className;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append(JSONSerializer);
            sb4.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            methodVisitor2.visitMethodInsn(182, access$3002, str5, sb4.toString());
            methodVisitor2.visitInsn(Opcodes.RETURN);
        }
        if (!context.nonContext) {
            methodVisitor2.visitVarInsn(25, 1);
            String str6 = JSONSerializer;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("()");
            sb5.append(SerialContext_desc);
            methodVisitor2.visitMethodInsn(182, str6, "getContext", sb5.toString());
            methodVisitor2.visitVarInsn(58, context2.var("parent"));
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var("parent"));
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitVarInsn(25, 3);
            methodVisitor2.visitLdcInsn(Integer.valueOf(context.beanInfo.features));
            String str7 = JSONSerializer;
            StringBuilder sb6 = new StringBuilder();
            sb6.append("(");
            sb6.append(SerialContext_desc);
            sb6.append("Ljava/lang/Object;Ljava/lang/Object;I)V");
            methodVisitor2.visitMethodInsn(182, str7, "setContext", sb6.toString());
        }
        boolean z2 = (context.beanInfo.features & SerializerFeature.WriteClassName.mask) != 0;
        if (z2 || !context.writeDirect) {
            Label label6 = new Label();
            Label label7 = new Label();
            Label label8 = new Label();
            if (!z2) {
                methodVisitor2.visitVarInsn(25, 1);
                methodVisitor2.visitVarInsn(25, 4);
                methodVisitor2.visitVarInsn(25, 2);
                i = 182;
                methodVisitor2.visitMethodInsn(182, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                methodVisitor2.visitJumpInsn(153, label7);
            } else {
                i = 182;
            }
            methodVisitor2.visitVarInsn(25, 4);
            methodVisitor2.visitVarInsn(25, 2);
            methodVisitor2.visitMethodInsn(i, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor2.visitJumpInsn(165, label7);
            methodVisitor2.visitLabel(label8);
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitVarInsn(16, 123);
            methodVisitor2.visitMethodInsn(i, SerializeWriter, "write", "(I)V");
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitVarInsn(25, 1);
            if (context.beanInfo.typeKey != null) {
                methodVisitor2.visitLdcInsn(context.beanInfo.typeKey);
            } else {
                methodVisitor2.visitInsn(1);
            }
            methodVisitor2.visitVarInsn(25, 2);
            String str8 = JavaBeanSerializer;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str);
            sb7.append(JSONSerializer);
            sb7.append(";Ljava/lang/String;Ljava/lang/Object;)V");
            methodVisitor2.visitMethodInsn(182, str8, "writeClassName", sb7.toString());
            methodVisitor2.visitVarInsn(16, 44);
            methodVisitor2.visitJumpInsn(167, label6);
            methodVisitor2.visitLabel(label7);
            methodVisitor2.visitVarInsn(16, 123);
            methodVisitor2.visitLabel(label6);
        } else {
            methodVisitor2.visitVarInsn(16, 123);
        }
        methodVisitor2.visitVarInsn(54, context2.var("seperator"));
        if (!context.writeDirect) {
            _before(methodVisitor2, context2);
        }
        if (!context.writeDirect) {
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitMethodInsn(182, SerializeWriter, "isNotWriteDefaultValue", "()Z");
            methodVisitor2.visitVarInsn(54, context2.var("notWriteDefaultValue"));
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 0);
            String str9 = JSONSerializer;
            StringBuilder sb8 = new StringBuilder();
            sb8.append("(");
            sb8.append(SerializeFilterable_desc);
            sb8.append(")Z");
            methodVisitor2.visitMethodInsn(182, str9, "checkValue", sb8.toString());
            methodVisitor2.visitVarInsn(54, context2.var("checkValue"));
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, 0);
            String str10 = JSONSerializer;
            StringBuilder sb9 = new StringBuilder();
            sb9.append("(");
            sb9.append(SerializeFilterable_desc);
            sb9.append(")Z");
            methodVisitor2.visitMethodInsn(182, str10, "hasNameFilters", sb9.toString());
            methodVisitor2.visitVarInsn(54, context2.var("hasNameFilters"));
        }
        int i2 = 0;
        while (i2 < length) {
            FieldInfo fieldInfo2 = fieldInfoArr2[i2];
            Class<?> cls3 = fieldInfo2.fieldClass;
            methodVisitor2.visitLdcInsn(fieldInfo2.name);
            methodVisitor2.visitVarInsn(58, Context.fieldName);
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                _int(cls, methodVisitor, fieldInfo2, context, context2.var(cls3.getName()), 'I');
            } else if (cls3 == Long.TYPE) {
                _long(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (cls3 == Float.TYPE) {
                _float(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (cls3 == Double.TYPE) {
                _double(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (cls3 == Boolean.TYPE) {
                _int(cls, methodVisitor, fieldInfo2, context, context2.var("boolean"), 'Z');
            } else if (cls3 == Character.TYPE) {
                _int(cls, methodVisitor, fieldInfo2, context, context2.var("char"), 'C');
            } else if (cls3 == String.class) {
                _string(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (cls3 == BigDecimal.class) {
                _decimal(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (List.class.isAssignableFrom(cls3)) {
                _list(cls2, methodVisitor2, fieldInfo2, context2);
            } else if (cls3.isEnum()) {
                _enum(cls2, methodVisitor2, fieldInfo2, context2);
            } else {
                _object(cls2, methodVisitor2, fieldInfo2, context2);
            }
            i2++;
            fieldInfoArr2 = fieldInfoArr;
        }
        if (!context.writeDirect) {
            _after(methodVisitor2, context2);
        }
        Label label9 = new Label();
        Label label10 = new Label();
        methodVisitor2.visitVarInsn(21, context2.var("seperator"));
        methodVisitor2.visitIntInsn(16, 123);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label9);
        methodVisitor2.visitVarInsn(25, context2.var(str2));
        methodVisitor2.visitVarInsn(16, 123);
        methodVisitor2.visitMethodInsn(182, SerializeWriter, "write", "(I)V");
        methodVisitor2.visitLabel(label9);
        methodVisitor2.visitVarInsn(25, context2.var(str2));
        methodVisitor2.visitVarInsn(16, AVException.INVALID_EMAIL_ADDRESS);
        methodVisitor2.visitMethodInsn(182, SerializeWriter, "write", "(I)V");
        methodVisitor2.visitLabel(label10);
        methodVisitor2.visitLabel(label);
        if (!context.nonContext) {
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var("parent"));
            String str11 = JSONSerializer;
            StringBuilder sb10 = new StringBuilder();
            sb10.append("(");
            sb10.append(SerialContext_desc);
            sb10.append(")V");
            methodVisitor2.visitMethodInsn(182, str11, "setContext", sb10.toString());
        }
    }

    private void _object(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("object"));
        _filters(methodVisitor, fieldInfo, context, label);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitLabel(label);
    }

    private void _enum(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label3);
        _get(methodVisitor, context, fieldInfo);
        String str = "java/lang/Enum";
        methodVisitor.visitTypeInsn(192, str);
        String str2 = "enum";
        methodVisitor.visitVarInsn(58, context.var(str2));
        _filters(methodVisitor, fieldInfo, context, label3);
        methodVisitor.visitVarInsn(25, context.var(str2));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        String str3 = "seperator";
        String str4 = "out";
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var(str4));
            methodVisitor.visitVarInsn(21, context.var(str3));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var(str2));
            methodVisitor.visitMethodInsn(182, str, "name", "()Ljava/lang/String;");
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValueStringWithDoubleQuote", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, context.var(str4));
            methodVisitor.visitVarInsn(21, context.var(str3));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "write", "(I)V");
            methodVisitor.visitVarInsn(25, context.var(str4));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitInsn(3);
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var(str2));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
            methodVisitor.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
            methodVisitor.visitMethodInsn(182, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        }
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitLabel(label3);
    }

    private void _int(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, int i, char c) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(54, i);
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitVarInsn(21, i);
        String str = SerializeWriter;
        StringBuilder sb = new StringBuilder();
        sb.append("(CLjava/lang/String;");
        sb.append(c);
        sb.append(")V");
        methodVisitor.visitMethodInsn(182, str, "writeFieldValue", sb.toString());
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _long(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        String str = "long";
        methodVisitor.visitVarInsn(55, context.var(str, 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitVarInsn(22, context.var(str, 2));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;J)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _float(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        String str = "float";
        methodVisitor.visitVarInsn(56, context.var(str));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitVarInsn(23, context.var(str));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;F)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _double(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        String str = "double";
        methodVisitor.visitVarInsn(57, context.var(str, 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitVarInsn(24, context.var(str, 2));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;D)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _get(MethodVisitor methodVisitor, Context context, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        String str = "entity";
        if (method != null) {
            methodVisitor.visitVarInsn(25, context.var(str));
            Class declaringClass = method.getDeclaringClass();
            methodVisitor.visitMethodInsn(declaringClass.isInterface() ? 185 : 182, ASMUtils.type(declaringClass), method.getName(), ASMUtils.desc(method));
            if (!method.getReturnType().equals(fieldInfo.fieldClass)) {
                methodVisitor.visitTypeInsn(192, ASMUtils.type(fieldInfo.fieldClass));
                return;
            }
            return;
        }
        methodVisitor.visitVarInsn(25, context.var(str));
        Field field = fieldInfo.field;
        methodVisitor.visitFieldInsn(180, ASMUtils.type(fieldInfo.declaringClass), field.getName(), ASMUtils.desc(field.getType()));
        if (!field.getType().equals(fieldInfo.fieldClass)) {
            methodVisitor.visitTypeInsn(192, ASMUtils.type(fieldInfo.fieldClass));
        }
    }

    private void _decimal(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        String str = "decimal";
        methodVisitor.visitVarInsn(58, context.var(str));
        _filters(methodVisitor, fieldInfo, context, label);
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label3);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitLabel(label);
    }

    private void _string(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        if (fieldInfo.name.equals(context.beanInfo.typeKey)) {
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            methodVisitor.visitJumpInsn(Opcodes.IFNE, label);
        }
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        String str = "string";
        methodVisitor.visitVarInsn(58, context.var(str));
        _filters(methodVisitor, fieldInfo, context, label);
        Label label2 = new Label();
        Label label3 = new Label();
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label2);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label3);
        methodVisitor.visitLabel(label2);
        String str2 = "trim";
        if (str2.equals(fieldInfo.format)) {
            methodVisitor.visitVarInsn(25, context.var(str));
            methodVisitor.visitMethodInsn(182, "java/lang/String", str2, "()Ljava/lang/String;");
            methodVisitor.visitVarInsn(58, context.var(str));
        }
        String str3 = "(CLjava/lang/String;Ljava/lang/String;)V";
        String str4 = "seperator";
        String str5 = "out";
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var(str5));
            methodVisitor.visitVarInsn(21, context.var(str4));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var(str));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValueStringWithDoubleQuoteCheck", str3);
        } else {
            methodVisitor.visitVarInsn(25, context.var(str5));
            methodVisitor.visitVarInsn(21, context.var(str4));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var(str));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", str3);
        }
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitLabel(label);
    }

    private void _list(Class<?> cls, MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label;
        int i;
        int i2;
        int i3;
        Label label2;
        Label label3;
        Label label4;
        String str;
        Label label5;
        Label label6;
        String str2;
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo fieldInfo2 = fieldInfo;
        Context context2 = context;
        java.lang.reflect.Type collectionItemType = TypeUtils.getCollectionItemType(fieldInfo2.fieldType);
        Class<Serializable> cls2 = collectionItemType instanceof Class ? (Class) collectionItemType : null;
        if (cls2 == Object.class || cls2 == Serializable.class) {
            cls2 = null;
        }
        Label label7 = new Label();
        Label label8 = new Label();
        Label label9 = new Label();
        _nameApply(methodVisitor2, fieldInfo2, context2, label7);
        _get(methodVisitor2, context2, fieldInfo2);
        String str3 = "java/util/List";
        methodVisitor2.visitTypeInsn(192, str3);
        String str4 = Selection.LIST;
        methodVisitor2.visitVarInsn(58, context2.var(str4));
        _filters(methodVisitor2, fieldInfo2, context2, label7);
        methodVisitor2.visitVarInsn(25, context2.var(str4));
        methodVisitor2.visitJumpInsn(Opcodes.IFNONNULL, label8);
        _if_write_null(methodVisitor2, fieldInfo2, context2);
        methodVisitor2.visitJumpInsn(167, label9);
        methodVisitor2.visitLabel(label8);
        String str5 = "out";
        methodVisitor2.visitVarInsn(25, context2.var(str5));
        methodVisitor2.visitVarInsn(21, context2.var("seperator"));
        String str6 = "(I)V";
        String str7 = "write";
        methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, str6);
        _writeFieldName(methodVisitor2, context2);
        methodVisitor2.visitVarInsn(25, context2.var(str4));
        String str8 = "size";
        methodVisitor2.visitMethodInsn(185, str3, str8, "()I");
        methodVisitor2.visitVarInsn(54, context2.var(str8));
        Label label10 = new Label();
        Label label11 = new Label();
        Label label12 = label7;
        Label label13 = label9;
        methodVisitor2.visitVarInsn(21, context2.var(str8));
        methodVisitor2.visitInsn(3);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label10);
        methodVisitor2.visitVarInsn(25, context2.var(str5));
        methodVisitor2.visitLdcInsn("[]");
        methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, "(Ljava/lang/String;)V");
        methodVisitor2.visitJumpInsn(167, label11);
        methodVisitor2.visitLabel(label10);
        if (!context.nonContext) {
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var(str4));
            methodVisitor2.visitVarInsn(25, Context.fieldName);
            methodVisitor2.visitMethodInsn(182, JSONSerializer, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (collectionItemType != String.class || !context.writeDirect) {
            methodVisitor2.visitVarInsn(25, context2.var(str5));
            methodVisitor2.visitVarInsn(16, 91);
            methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, str6);
            Label label14 = new Label();
            Label label15 = new Label();
            Label label16 = new Label();
            methodVisitor2.visitInsn(3);
            label = label11;
            String str9 = "i";
            java.lang.reflect.Type type = collectionItemType;
            methodVisitor2.visitVarInsn(54, context2.var(str9));
            methodVisitor2.visitLabel(label14);
            methodVisitor2.visitVarInsn(21, context2.var(str9));
            methodVisitor2.visitVarInsn(21, context2.var(str8));
            methodVisitor2.visitJumpInsn(162, label16);
            methodVisitor2.visitVarInsn(21, context2.var(str9));
            methodVisitor2.visitJumpInsn(153, label15);
            methodVisitor2.visitVarInsn(25, context2.var(str5));
            methodVisitor2.visitVarInsn(16, 44);
            methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, str6);
            methodVisitor2.visitLabel(label15);
            methodVisitor2.visitVarInsn(25, context2.var(str4));
            methodVisitor2.visitVarInsn(21, context2.var(str9));
            methodVisitor2.visitMethodInsn(185, str3, "get", "(I)Ljava/lang/Object;");
            String str10 = "list_item";
            methodVisitor2.visitVarInsn(58, context2.var(str10));
            Label label17 = new Label();
            Label label18 = new Label();
            methodVisitor2.visitVarInsn(25, context2.var(str10));
            methodVisitor2.visitJumpInsn(Opcodes.IFNONNULL, label18);
            methodVisitor2.visitVarInsn(25, context2.var(str5));
            String str11 = str6;
            methodVisitor2.visitMethodInsn(182, SerializeWriter, "writeNull", "()V");
            methodVisitor2.visitJumpInsn(167, label17);
            methodVisitor2.visitLabel(label18);
            Label label19 = new Label();
            Label label20 = new Label();
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                label4 = label14;
                label3 = label17;
                str = str5;
                label2 = label16;
                label5 = label20;
            } else {
                methodVisitor2.visitVarInsn(25, context2.var(str10));
                str = str5;
                methodVisitor2.visitMethodInsn(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
                methodVisitor2.visitJumpInsn(Opcodes.IF_ACMPNE, label20);
                _getListFieldItemSer(context2, methodVisitor2, fieldInfo2, cls2);
                String str12 = "list_item_desc";
                methodVisitor2.visitVarInsn(58, context2.var(str12));
                Label label21 = new Label();
                Label label22 = new Label();
                if (context.writeDirect) {
                    if (!context.nonContext || !context.writeDirect) {
                        label2 = label16;
                        str2 = str7;
                    } else {
                        label2 = label16;
                        str2 = "writeDirectNonContext";
                    }
                    label4 = label14;
                    methodVisitor2.visitVarInsn(25, context2.var(str12));
                    methodVisitor2.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
                    methodVisitor2.visitJumpInsn(153, label21);
                    methodVisitor2.visitVarInsn(25, context2.var(str12));
                    label3 = label17;
                    methodVisitor2.visitTypeInsn(192, JavaBeanSerializer);
                    methodVisitor2.visitVarInsn(25, 1);
                    methodVisitor2.visitVarInsn(25, context2.var(str10));
                    if (context.nonContext) {
                        methodVisitor2.visitInsn(1);
                        label6 = label20;
                    } else {
                        methodVisitor2.visitVarInsn(21, context2.var(str9));
                        label6 = label20;
                        methodVisitor2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
                    methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
                    String str13 = JavaBeanSerializer;
                    StringBuilder sb = new StringBuilder();
                    sb.append("(L");
                    sb.append(JSONSerializer);
                    sb.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    methodVisitor2.visitMethodInsn(182, str13, str2, sb.toString());
                    methodVisitor2.visitJumpInsn(167, label22);
                    methodVisitor2.visitLabel(label21);
                } else {
                    label4 = label14;
                    label3 = label17;
                    label2 = label16;
                    label6 = label20;
                }
                methodVisitor2.visitVarInsn(25, context2.var(str12));
                methodVisitor2.visitVarInsn(25, 1);
                methodVisitor2.visitVarInsn(25, context2.var(str10));
                if (context.nonContext) {
                    methodVisitor2.visitInsn(1);
                } else {
                    methodVisitor2.visitVarInsn(21, context2.var(str9));
                    methodVisitor2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
                methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
                String str14 = ObjectSerializer;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("(L");
                sb2.append(JSONSerializer);
                sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodVisitor2.visitMethodInsn(185, str14, str7, sb2.toString());
                methodVisitor2.visitLabel(label22);
                methodVisitor2.visitJumpInsn(167, label19);
                label5 = label6;
            }
            methodVisitor2.visitLabel(label5);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var(str10));
            if (context.nonContext) {
                methodVisitor2.visitInsn(1);
            } else {
                methodVisitor2.visitVarInsn(21, context2.var(str9));
                methodVisitor2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                methodVisitor2.visitMethodInsn(182, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc((Class) type)));
                methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
                methodVisitor2.visitMethodInsn(182, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            methodVisitor2.visitLabel(label19);
            methodVisitor2.visitLabel(label3);
            i3 = 1;
            methodVisitor2.visitIincInsn(context2.var(str9), 1);
            methodVisitor2.visitJumpInsn(167, label4);
            methodVisitor2.visitLabel(label2);
            i2 = 25;
            methodVisitor2.visitVarInsn(25, context2.var(str));
            methodVisitor2.visitVarInsn(16, 93);
            i = 182;
            methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, str11);
        } else {
            methodVisitor2.visitVarInsn(25, context2.var(str5));
            methodVisitor2.visitVarInsn(25, context2.var(str4));
            methodVisitor2.visitMethodInsn(182, SerializeWriter, str7, "(Ljava/util/List;)V");
            label = label11;
            i3 = 1;
            i2 = 25;
            i = 182;
        }
        methodVisitor2.visitVarInsn(i2, i3);
        methodVisitor2.visitMethodInsn(i, JSONSerializer, "popContext", "()V");
        methodVisitor2.visitLabel(label);
        _seperator(methodVisitor2, context2);
        methodVisitor2.visitLabel(label13);
        methodVisitor2.visitLabel(label12);
    }

    private void _filters(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        if (fieldInfo.fieldTransient) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(Integer.valueOf(SerializerFeature.SkipTransientField.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(Opcodes.IFNE, label);
        }
        _notWriteDefault(methodVisitor, fieldInfo, context, label);
        if (!context.writeDirect) {
            _apply(methodVisitor, fieldInfo, context);
            methodVisitor.visitJumpInsn(153, label);
            _processKey(methodVisitor, fieldInfo, context);
            _processValue(methodVisitor, fieldInfo, context, label);
        }
    }

    private void _nameApply(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        if (!context.writeDirect) {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, Context.fieldName);
            String str = JavaBeanSerializer;
            StringBuilder sb = new StringBuilder();
            sb.append("(L");
            sb.append(JSONSerializer);
            sb.append(";Ljava/lang/Object;Ljava/lang/String;)Z");
            methodVisitor.visitMethodInsn(182, str, "applyName", sb.toString());
            methodVisitor.visitJumpInsn(153, label);
            _labelApply(methodVisitor, fieldInfo, context, label);
        }
        if (fieldInfo.field == null) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(Integer.valueOf(SerializerFeature.IgnoreNonFieldGetter.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(Opcodes.IFNE, label);
        }
    }

    private void _labelApply(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(fieldInfo.label);
        String str = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(JSONSerializer);
        sb.append(";Ljava/lang/String;)Z");
        methodVisitor.visitMethodInsn(182, str, "applyLabel", sb.toString());
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _writeObject(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        String str;
        Label label2;
        Label label3;
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo fieldInfo2 = fieldInfo;
        Context context2 = context;
        String format = fieldInfo.getFormat();
        Class<?> cls = fieldInfo2.fieldClass;
        Label label4 = new Label();
        String str2 = "object";
        if (context.writeDirect) {
            methodVisitor2.visitVarInsn(25, context2.var(str2));
        } else {
            methodVisitor2.visitVarInsn(25, Context.processValue);
        }
        methodVisitor2.visitInsn(89);
        methodVisitor2.visitVarInsn(58, context2.var(str2));
        methodVisitor2.visitJumpInsn(Opcodes.IFNONNULL, label4);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor2.visitJumpInsn(167, label);
        methodVisitor2.visitLabel(label4);
        methodVisitor2.visitVarInsn(25, context2.var("out"));
        methodVisitor2.visitVarInsn(21, context2.var("seperator"));
        String str3 = "write";
        methodVisitor2.visitMethodInsn(182, SerializeWriter, str3, "(I)V");
        _writeFieldName(methodVisitor2, context2);
        Label label5 = new Label();
        Label label6 = new Label();
        String str4 = "Ljava/lang/reflect/Type;";
        String str5 = "_asm_fieldType";
        if (!Modifier.isPublic(cls.getModifiers()) || ParserConfig.isPrimitive2(cls)) {
            str = format;
            label3 = label5;
            label2 = label6;
        } else {
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitMethodInsn(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc(cls)));
            methodVisitor2.visitJumpInsn(Opcodes.IF_ACMPNE, label6);
            _getFieldSer(context2, methodVisitor2, fieldInfo2);
            String str6 = "fied_ser";
            methodVisitor2.visitVarInsn(58, context2.var(str6));
            Label label7 = new Label();
            Label label8 = new Label();
            methodVisitor2.visitVarInsn(25, context2.var(str6));
            methodVisitor2.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
            methodVisitor2.visitJumpInsn(153, label7);
            boolean z = (fieldInfo2.serialzeFeatures & SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
            boolean z2 = (SerializerFeature.BeanToArray.mask & fieldInfo2.serialzeFeatures) != 0;
            String str7 = (z || (context.nonContext && context.writeDirect)) ? z2 ? "writeAsArrayNonContext" : "writeDirectNonContext" : z2 ? "writeAsArray" : str3;
            methodVisitor2.visitVarInsn(25, context2.var(str6));
            str = format;
            methodVisitor2.visitTypeInsn(192, JavaBeanSerializer);
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitVarInsn(25, Context.fieldName);
            methodVisitor2.visitVarInsn(25, 0);
            String access$300 = context.className;
            StringBuilder sb = new StringBuilder();
            sb.append(fieldInfo2.name);
            sb.append(str5);
            methodVisitor2.visitFieldInsn(180, access$300, sb.toString(), str4);
            methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
            String str8 = JavaBeanSerializer;
            StringBuilder sb2 = new StringBuilder();
            String str9 = "(L";
            sb2.append(str9);
            Label label9 = label6;
            sb2.append(JSONSerializer);
            String str10 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
            sb2.append(str10);
            Label label10 = label5;
            methodVisitor2.visitMethodInsn(182, str8, str7, sb2.toString());
            methodVisitor2.visitJumpInsn(167, label8);
            methodVisitor2.visitLabel(label7);
            methodVisitor2.visitVarInsn(25, context2.var(str6));
            methodVisitor2.visitVarInsn(25, 1);
            methodVisitor2.visitVarInsn(25, context2.var(str2));
            methodVisitor2.visitVarInsn(25, Context.fieldName);
            methodVisitor2.visitVarInsn(25, 0);
            String access$3002 = context.className;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(fieldInfo2.name);
            sb3.append(str5);
            methodVisitor2.visitFieldInsn(180, access$3002, sb3.toString(), str4);
            methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
            String str11 = ObjectSerializer;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str9);
            sb4.append(JSONSerializer);
            sb4.append(str10);
            methodVisitor2.visitMethodInsn(185, str11, str3, sb4.toString());
            methodVisitor2.visitLabel(label8);
            label3 = label10;
            methodVisitor2.visitJumpInsn(167, label3);
            label2 = label9;
        }
        methodVisitor2.visitLabel(label2);
        methodVisitor2.visitVarInsn(25, 1);
        if (context.writeDirect) {
            methodVisitor2.visitVarInsn(25, context2.var(str2));
        } else {
            methodVisitor2.visitVarInsn(25, Context.processValue);
        }
        if (str != null) {
            methodVisitor2.visitLdcInsn(str);
            methodVisitor2.visitMethodInsn(182, JSONSerializer, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            methodVisitor2.visitVarInsn(25, Context.fieldName);
            String str12 = "writeWithFieldName";
            if (!(fieldInfo2.fieldType instanceof Class) || !((Class) fieldInfo2.fieldType).isPrimitive()) {
                if (fieldInfo2.fieldClass == String.class) {
                    methodVisitor2.visitLdcInsn(Type.getType(ASMUtils.desc(String.class)));
                } else {
                    methodVisitor2.visitVarInsn(25, 0);
                    String access$3003 = context.className;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(fieldInfo2.name);
                    sb5.append(str5);
                    methodVisitor2.visitFieldInsn(180, access$3003, sb5.toString(), str4);
                }
                methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.serialzeFeatures));
                methodVisitor2.visitMethodInsn(182, JSONSerializer, str12, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            } else {
                methodVisitor2.visitMethodInsn(182, JSONSerializer, str12, "(Ljava/lang/Object;Ljava/lang/Object;)V");
            }
        }
        methodVisitor2.visitLabel(label3);
        _seperator(methodVisitor2, context2);
    }

    private void _before(MethodVisitor methodVisitor, Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        String str = "seperator";
        methodVisitor.visitVarInsn(21, context.var(str));
        String str2 = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(JSONSerializer);
        sb.append(";Ljava/lang/Object;C)C");
        methodVisitor.visitMethodInsn(182, str2, "writeBefore", sb.toString());
        methodVisitor.visitVarInsn(54, context.var(str));
    }

    private void _after(MethodVisitor methodVisitor, Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        String str = "seperator";
        methodVisitor.visitVarInsn(21, context.var(str));
        String str2 = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(JSONSerializer);
        sb.append(";Ljava/lang/Object;C)C");
        methodVisitor.visitMethodInsn(182, str2, "writeAfter", sb.toString());
        methodVisitor.visitVarInsn(54, context.var(str));
    }

    private void _notWriteDefault(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        if (!context.writeDirect) {
            Label label2 = new Label();
            methodVisitor.visitVarInsn(21, context.var("notWriteDefaultValue"));
            methodVisitor.visitJumpInsn(153, label2);
            Class<?> cls = fieldInfo.fieldClass;
            if (cls == Boolean.TYPE) {
                methodVisitor.visitVarInsn(21, context.var("boolean"));
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Byte.TYPE) {
                methodVisitor.visitVarInsn(21, context.var("byte"));
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Short.TYPE) {
                methodVisitor.visitVarInsn(21, context.var("short"));
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Integer.TYPE) {
                methodVisitor.visitVarInsn(21, context.var("int"));
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Long.TYPE) {
                methodVisitor.visitVarInsn(22, context.var("long"));
                methodVisitor.visitInsn(9);
                methodVisitor.visitInsn(Opcodes.LCMP);
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Float.TYPE) {
                methodVisitor.visitVarInsn(23, context.var("float"));
                methodVisitor.visitInsn(11);
                methodVisitor.visitInsn(Opcodes.FCMPL);
                methodVisitor.visitJumpInsn(153, label);
            } else if (cls == Double.TYPE) {
                methodVisitor.visitVarInsn(24, context.var("double"));
                methodVisitor.visitInsn(14);
                methodVisitor.visitInsn(151);
                methodVisitor.visitJumpInsn(153, label);
            }
            methodVisitor.visitLabel(label2);
        }
    }

    private void _apply(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, Context.fieldName);
        String str = "valueOf";
        if (cls == Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitMethodInsn(184, "java/lang/Byte", str, "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitMethodInsn(184, "java/lang/Short", str, "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitMethodInsn(184, "java/lang/Integer", str, "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            methodVisitor.visitMethodInsn(184, "java/lang/Character", str, "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            methodVisitor.visitMethodInsn(184, "java/lang/Long", str, "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitMethodInsn(184, "java/lang/Float", str, "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            methodVisitor.visitMethodInsn(184, "java/lang/Double", str, "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitMethodInsn(184, "java/lang/Boolean", str, "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            methodVisitor.visitVarInsn(25, context.var("decimal"));
        } else if (cls == String.class) {
            methodVisitor.visitVarInsn(25, context.var("string"));
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var(Selection.LIST));
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
        }
        String str2 = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(JSONSerializer);
        sb.append(";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
        methodVisitor.visitMethodInsn(182, str2, Group.MEMBER_APPLY, sb.toString());
    }

    private void _processValue(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context, Label label) {
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo fieldInfo2 = fieldInfo;
        Context context2 = context;
        Label label2 = new Label();
        Class<?> cls = fieldInfo2.fieldClass;
        if (cls.isPrimitive()) {
            Label label3 = new Label();
            methodVisitor2.visitVarInsn(21, context2.var("checkValue"));
            methodVisitor2.visitJumpInsn(Opcodes.IFNE, label3);
            methodVisitor2.visitInsn(1);
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(58, Context.processValue);
            methodVisitor2.visitJumpInsn(167, label2);
            methodVisitor2.visitLabel(label3);
        }
        methodVisitor2.visitVarInsn(25, 0);
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitVarInsn(25, 0);
        methodVisitor2.visitLdcInsn(Integer.valueOf(context2.getFieldOrinal(fieldInfo2.name)));
        String str = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(I)");
        sb.append(ASMUtils.desc(BeanContext.class));
        methodVisitor2.visitMethodInsn(182, str, "getBeanContext", sb.toString());
        methodVisitor2.visitVarInsn(25, 2);
        methodVisitor2.visitVarInsn(25, Context.fieldName);
        String str2 = "valueOf";
        if (cls == Byte.TYPE) {
            methodVisitor2.visitVarInsn(21, context2.var("byte"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Byte", str2, "(B)Ljava/lang/Byte;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Short.TYPE) {
            methodVisitor2.visitVarInsn(21, context2.var("short"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Short", str2, "(S)Ljava/lang/Short;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Integer.TYPE) {
            methodVisitor2.visitVarInsn(21, context2.var("int"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Integer", str2, "(I)Ljava/lang/Integer;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Character.TYPE) {
            methodVisitor2.visitVarInsn(21, context2.var("char"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Character", str2, "(C)Ljava/lang/Character;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Long.TYPE) {
            methodVisitor2.visitVarInsn(22, context2.var("long", 2));
            methodVisitor2.visitMethodInsn(184, "java/lang/Long", str2, "(J)Ljava/lang/Long;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Float.TYPE) {
            methodVisitor2.visitVarInsn(23, context2.var("float"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Float", str2, "(F)Ljava/lang/Float;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Double.TYPE) {
            methodVisitor2.visitVarInsn(24, context2.var("double", 2));
            methodVisitor2.visitMethodInsn(184, "java/lang/Double", str2, "(D)Ljava/lang/Double;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == Boolean.TYPE) {
            methodVisitor2.visitVarInsn(21, context2.var("boolean"));
            methodVisitor2.visitMethodInsn(184, "java/lang/Boolean", str2, "(Z)Ljava/lang/Boolean;");
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitVarInsn(58, Context.original);
        } else if (cls == BigDecimal.class) {
            methodVisitor2.visitVarInsn(25, context2.var("decimal"));
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(25, Context.original);
        } else if (cls == String.class) {
            methodVisitor2.visitVarInsn(25, context2.var("string"));
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(25, Context.original);
        } else if (cls.isEnum()) {
            methodVisitor2.visitVarInsn(25, context2.var("enum"));
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(25, Context.original);
        } else if (List.class.isAssignableFrom(cls)) {
            methodVisitor2.visitVarInsn(25, context2.var(Selection.LIST));
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(25, Context.original);
        } else {
            methodVisitor2.visitVarInsn(25, context2.var("object"));
            methodVisitor2.visitVarInsn(58, Context.original);
            methodVisitor2.visitVarInsn(25, Context.original);
        }
        String str3 = JavaBeanSerializer;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(L");
        sb2.append(JSONSerializer);
        sb2.append(";");
        sb2.append(ASMUtils.desc(BeanContext.class));
        sb2.append("Ljava/lang/Object;Ljava/lang/String;");
        sb2.append("Ljava/lang/Object;");
        sb2.append(")Ljava/lang/Object;");
        methodVisitor2.visitMethodInsn(182, str3, "processValue", sb2.toString());
        methodVisitor2.visitVarInsn(58, Context.processValue);
        methodVisitor2.visitVarInsn(25, Context.original);
        methodVisitor2.visitVarInsn(25, Context.processValue);
        methodVisitor2.visitJumpInsn(165, label2);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor2.visitJumpInsn(167, label);
        methodVisitor2.visitLabel(label2);
    }

    private void _processKey(MethodVisitor methodVisitor, FieldInfo fieldInfo, Context context) {
        Label label = new Label();
        methodVisitor.visitVarInsn(21, context.var("hasNameFilters"));
        methodVisitor.visitJumpInsn(153, label);
        Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, Context.fieldName);
        String str = "valueOf";
        if (cls == Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            methodVisitor.visitMethodInsn(184, "java/lang/Byte", str, "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            methodVisitor.visitMethodInsn(184, "java/lang/Short", str, "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            methodVisitor.visitMethodInsn(184, "java/lang/Integer", str, "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            methodVisitor.visitMethodInsn(184, "java/lang/Character", str, "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            methodVisitor.visitMethodInsn(184, "java/lang/Long", str, "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            methodVisitor.visitMethodInsn(184, "java/lang/Float", str, "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            methodVisitor.visitMethodInsn(184, "java/lang/Double", str, "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            methodVisitor.visitMethodInsn(184, "java/lang/Boolean", str, "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            methodVisitor.visitVarInsn(25, context.var("decimal"));
        } else if (cls == String.class) {
            methodVisitor.visitVarInsn(25, context.var("string"));
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var(Selection.LIST));
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
        }
        String str2 = JavaBeanSerializer;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(JSONSerializer);
        sb.append(";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        methodVisitor.visitMethodInsn(182, str2, "processKey", sb.toString());
        methodVisitor.visitVarInsn(58, Context.fieldName);
        methodVisitor.visitLabel(label);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0083  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _if_write_null(com.alibaba.fastjson.asm.MethodVisitor r12, com.alibaba.fastjson.util.FieldInfo r13, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context r14) {
        /*
            r11 = this;
            java.lang.Class<?> r0 = r13.fieldClass
            com.alibaba.fastjson.asm.Label r1 = new com.alibaba.fastjson.asm.Label
            r1.<init>()
            com.alibaba.fastjson.asm.Label r2 = new com.alibaba.fastjson.asm.Label
            r2.<init>()
            com.alibaba.fastjson.asm.Label r3 = new com.alibaba.fastjson.asm.Label
            r3.<init>()
            com.alibaba.fastjson.asm.Label r4 = new com.alibaba.fastjson.asm.Label
            r4.<init>()
            r12.visitLabel(r1)
            com.alibaba.fastjson.annotation.JSONField r13 = r13.getAnnotation()
            r1 = 0
            if (r13 == 0) goto L_0x0029
            com.alibaba.fastjson.serializer.SerializerFeature[] r13 = r13.serialzeFeatures()
            int r13 = com.alibaba.fastjson.serializer.SerializerFeature.of(r13)
            goto L_0x002a
        L_0x0029:
            r13 = 0
        L_0x002a:
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            if (r0 != r5) goto L_0x003c
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue
            int r5 = r5.getMask()
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty
            int r6 = r6.getMask()
        L_0x003a:
            r5 = r5 | r6
            goto L_0x0079
        L_0x003c:
            java.lang.Class<java.lang.Number> r5 = java.lang.Number.class
            boolean r5 = r5.isAssignableFrom(r0)
            if (r5 == 0) goto L_0x0051
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue
            int r5 = r5.getMask()
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero
            int r6 = r6.getMask()
            goto L_0x003a
        L_0x0051:
            java.lang.Class<java.util.Collection> r5 = java.util.Collection.class
            boolean r5 = r5.isAssignableFrom(r0)
            if (r5 == 0) goto L_0x0066
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue
            int r5 = r5.getMask()
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty
            int r6 = r6.getMask()
            goto L_0x003a
        L_0x0066:
            java.lang.Class<java.lang.Boolean> r5 = java.lang.Boolean.class
            if (r5 != r0) goto L_0x0077
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue
            int r5 = r5.getMask()
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse
            int r6 = r6.getMask()
            goto L_0x003a
        L_0x0077:
            int r5 = com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES
        L_0x0079:
            r6 = r13 & r5
            r7 = 182(0xb6, float:2.55E-43)
            java.lang.String r8 = "out"
            r9 = 25
            if (r6 != 0) goto L_0x009f
            int r6 = r14.var(r8)
            r12.visitVarInsn(r9, r6)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r12.visitLdcInsn(r5)
            java.lang.String r5 = SerializeWriter
            java.lang.String r6 = "isEnabled"
            java.lang.String r10 = "(I)Z"
            r12.visitMethodInsn(r7, r5, r6, r10)
            r5 = 153(0x99, float:2.14E-43)
            r12.visitJumpInsn(r5, r2)
        L_0x009f:
            r12.visitLabel(r3)
            int r3 = r14.var(r8)
            r12.visitVarInsn(r9, r3)
            r3 = 21
            java.lang.String r5 = "seperator"
            int r5 = r14.var(r5)
            r12.visitVarInsn(r3, r5)
            java.lang.String r3 = SerializeWriter
            java.lang.String r5 = "write"
            java.lang.String r6 = "(I)V"
            r12.visitMethodInsn(r7, r3, r5, r6)
            r11._writeFieldName(r12, r14)
            int r3 = r14.var(r8)
            r12.visitVarInsn(r9, r3)
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r12.visitLdcInsn(r13)
            java.lang.Class<java.lang.String> r13 = java.lang.String.class
            if (r0 == r13) goto L_0x011e
            java.lang.Class<java.lang.Character> r13 = java.lang.Character.class
            if (r0 != r13) goto L_0x00d7
            goto L_0x011e
        L_0x00d7:
            java.lang.Class<java.lang.Number> r13 = java.lang.Number.class
            boolean r13 = r13.isAssignableFrom(r0)
            if (r13 == 0) goto L_0x00eb
            com.alibaba.fastjson.serializer.SerializerFeature r13 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero
            int r13 = r13.mask
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r12.visitLdcInsn(r13)
            goto L_0x0129
        L_0x00eb:
            java.lang.Class<java.lang.Boolean> r13 = java.lang.Boolean.class
            if (r0 != r13) goto L_0x00fb
            com.alibaba.fastjson.serializer.SerializerFeature r13 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse
            int r13 = r13.mask
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r12.visitLdcInsn(r13)
            goto L_0x0129
        L_0x00fb:
            java.lang.Class<java.util.Collection> r13 = java.util.Collection.class
            boolean r13 = r13.isAssignableFrom(r0)
            if (r13 != 0) goto L_0x0112
            boolean r13 = r0.isArray()
            if (r13 == 0) goto L_0x010a
            goto L_0x0112
        L_0x010a:
            java.lang.Integer r13 = java.lang.Integer.valueOf(r1)
            r12.visitLdcInsn(r13)
            goto L_0x0129
        L_0x0112:
            com.alibaba.fastjson.serializer.SerializerFeature r13 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty
            int r13 = r13.mask
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r12.visitLdcInsn(r13)
            goto L_0x0129
        L_0x011e:
            com.alibaba.fastjson.serializer.SerializerFeature r13 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty
            int r13 = r13.mask
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r12.visitLdcInsn(r13)
        L_0x0129:
            java.lang.String r13 = SerializeWriter
            java.lang.String r0 = "writeNull"
            java.lang.String r1 = "(II)V"
            r12.visitMethodInsn(r7, r13, r0, r1)
            r11._seperator(r12, r14)
            r13 = 167(0xa7, float:2.34E-43)
            r12.visitJumpInsn(r13, r4)
            r12.visitLabel(r2)
            r12.visitLabel(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ASMSerializerFactory._if_write_null(com.alibaba.fastjson.asm.MethodVisitor, com.alibaba.fastjson.util.FieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory$Context):void");
    }

    private void _writeFieldName(MethodVisitor methodVisitor, Context context) {
        String str = "out";
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var(str));
            methodVisitor.visitVarInsn(25, Context.fieldName);
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldNameDirect", "(Ljava/lang/String;)V");
            return;
        }
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitVarInsn(25, Context.fieldName);
        methodVisitor.visitInsn(3);
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
    }

    private void _seperator(MethodVisitor methodVisitor, Context context) {
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _getListFieldItemSer(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo.name);
        String str = "_asm_list_item_ser_";
        sb.append(str);
        methodVisitor.visitFieldInsn(180, access$300, sb.toString(), ObjectSerializer_desc);
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls)));
        String str2 = JSONSerializer;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(Ljava/lang/Class;)");
        sb2.append(ObjectSerializer_desc);
        methodVisitor.visitMethodInsn(182, str2, "getObjectWriter", sb2.toString());
        String access$3002 = context.className;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(fieldInfo.name);
        sb3.append(str);
        methodVisitor.visitFieldInsn(181, access$3002, sb3.toString(), ObjectSerializer_desc);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        String access$3003 = context.className;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo.name);
        sb4.append(str);
        methodVisitor.visitFieldInsn(180, access$3003, sb4.toString(), ObjectSerializer_desc);
    }

    private void _getFieldSer(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo.name);
        String str = "_asm_ser_";
        sb.append(str);
        methodVisitor.visitFieldInsn(180, access$300, sb.toString(), ObjectSerializer_desc);
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        String str2 = JSONSerializer;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(Ljava/lang/Class;)");
        sb2.append(ObjectSerializer_desc);
        methodVisitor.visitMethodInsn(182, str2, "getObjectWriter", sb2.toString());
        String access$3002 = context.className;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(fieldInfo.name);
        sb3.append(str);
        methodVisitor.visitFieldInsn(181, access$3002, sb3.toString(), ObjectSerializer_desc);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        String access$3003 = context.className;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo.name);
        sb4.append(str);
        methodVisitor.visitFieldInsn(180, access$3003, sb4.toString(), ObjectSerializer_desc);
    }
}
