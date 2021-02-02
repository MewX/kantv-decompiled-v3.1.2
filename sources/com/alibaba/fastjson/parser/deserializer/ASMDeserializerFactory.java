package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.SymbolTable;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.avos.avoscloud.AVException;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

public class ASMDeserializerFactory implements Opcodes {
    static final String DefaultJSONParser = ASMUtils.type(DefaultJSONParser.class);
    static final String JSONLexerBase = ASMUtils.type(JSONLexerBase.class);
    public final ASMClassLoader classLoader;
    protected final AtomicLong seed = new AtomicLong();

    static class Context {
        static final int fieldName = 3;
        static final int parser = 1;
        static final int type = 2;
        /* access modifiers changed from: private */
        public final JavaBeanInfo beanInfo;
        /* access modifiers changed from: private */
        public final String className;
        /* access modifiers changed from: private */
        public final Class<?> clazz;
        /* access modifiers changed from: private */
        public FieldInfo[] fieldInfoList;
        /* access modifiers changed from: private */
        public int variantIndex = -1;
        private final Map<String, Integer> variants = new HashMap();

        public Context(String str, ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, int i) {
            this.className = str;
            this.clazz = javaBeanInfo.clazz;
            this.variantIndex = i;
            this.beanInfo = javaBeanInfo;
            this.fieldInfoList = javaBeanInfo.fields;
        }

        public Class<?> getInstClass() {
            Class<?> cls = this.beanInfo.builderClass;
            return cls == null ? this.clazz : cls;
        }

        public int var(String str, int i) {
            if (((Integer) this.variants.get(str)) == null) {
                this.variants.put(str, Integer.valueOf(this.variantIndex));
                this.variantIndex += i;
            }
            return ((Integer) this.variants.get(str)).intValue();
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
    }

    public ASMDeserializerFactory(ClassLoader classLoader2) {
        this.classLoader = classLoader2 instanceof ASMClassLoader ? (ASMClassLoader) classLoader2 : new ASMClassLoader(classLoader2);
    }

    public ObjectDeserializer createJavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) throws Exception {
        Class<?> cls = javaBeanInfo.clazz;
        if (!cls.isPrimitive()) {
            StringBuilder sb = new StringBuilder();
            sb.append("FastjsonASMDeserializer_");
            sb.append(this.seed.incrementAndGet());
            sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(cls.getSimpleName());
            String sb2 = sb.toString();
            String name = ASMDeserializerFactory.class.getPackage().getName();
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
            ClassWriter classWriter = new ClassWriter();
            classWriter.visit(49, 33, sb4, ASMUtils.type(JavaBeanDeserializer.class), null);
            _init(classWriter, new Context(sb4, parserConfig, javaBeanInfo, 3));
            _createInstance(classWriter, new Context(sb4, parserConfig, javaBeanInfo, 3));
            _deserialze(classWriter, new Context(sb4, parserConfig, javaBeanInfo, 5));
            _deserialzeArrayMapping(classWriter, new Context(sb4, parserConfig, javaBeanInfo, 4));
            byte[] byteArray = classWriter.toByteArray();
            return (ObjectDeserializer) this.classLoader.defineClassPublic(sb6, byteArray, 0, byteArray.length).getConstructor(new Class[]{ParserConfig.class, JavaBeanInfo.class}).newInstance(new Object[]{parserConfig, javaBeanInfo});
        }
        StringBuilder sb7 = new StringBuilder();
        sb7.append("not support type :");
        sb7.append(cls.getName());
        throw new IllegalArgumentException(sb7.toString());
    }

    private void _setFlag(MethodVisitor methodVisitor, Context context, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("_asm_flag_");
        sb.append(i / 32);
        String sb2 = sb.toString();
        methodVisitor.visitVarInsn(21, context.var(sb2));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(128);
        methodVisitor.visitVarInsn(54, context.var(sb2));
    }

    private void _isFlag(MethodVisitor methodVisitor, Context context, int i, Label label) {
        StringBuilder sb = new StringBuilder();
        sb.append("_asm_flag_");
        sb.append(i / 32);
        methodVisitor.visitVarInsn(21, context.var(sb.toString()));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(126);
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _deserialzeArrayMapping(ClassWriter classWriter, Context context) {
        int i;
        FieldInfo[] fieldInfoArr;
        int i2;
        int i3;
        Context context2 = context;
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(DefaultJSONParser);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        MethodWriter methodWriter = new MethodWriter(classWriter, 1, "deserialzeArrayMapping", sb.toString(), null, null);
        defineVarLexer(context2, methodWriter);
        _createInstance(context2, (MethodVisitor) methodWriter);
        FieldInfo[] fieldInfoArr2 = context.beanInfo.sortedFields;
        int length = fieldInfoArr2.length;
        int i4 = 0;
        while (true) {
            String str = "ch";
            String str2 = "(I)V";
            String str3 = "()C";
            String str4 = "lexer";
            if (i4 < length) {
                boolean z = i4 == length + -1;
                int i5 = z ? 93 : 44;
                FieldInfo fieldInfo = fieldInfoArr2[i4];
                Class<?> cls = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                String str5 = "_asm";
                if (cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE) {
                    fieldInfoArr = fieldInfoArr2;
                    i = length;
                    String str6 = str5;
                    i2 = i4;
                    methodWriter.visitVarInsn(25, context2.var(str4));
                    methodWriter.visitVarInsn(16, i5);
                    methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(fieldInfo.name);
                    sb2.append(str6);
                    methodWriter.visitVarInsn(54, context2.var(sb2.toString()));
                } else {
                    fieldInfoArr = fieldInfoArr2;
                    if (cls == Byte.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                        methodWriter.visitMethodInsn(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(fieldInfo.name);
                        sb3.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb3.toString()));
                        Label label = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label);
                        methodWriter.visitInsn(1);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(fieldInfo.name);
                        sb4.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb4.toString()));
                        methodWriter.visitLabel(label);
                    } else if (cls == Short.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                        methodWriter.visitMethodInsn(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(fieldInfo.name);
                        sb5.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb5.toString()));
                        Label label2 = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label2);
                        methodWriter.visitInsn(1);
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(fieldInfo.name);
                        sb6.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb6.toString()));
                        methodWriter.visitLabel(label2);
                    } else if (cls == Integer.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                        methodWriter.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(fieldInfo.name);
                        sb7.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb7.toString()));
                        Label label3 = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label3);
                        methodWriter.visitInsn(1);
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(fieldInfo.name);
                        sb8.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb8.toString()));
                        methodWriter.visitLabel(label3);
                    } else if (cls == Long.TYPE) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append(fieldInfo.name);
                        sb9.append(str5);
                        methodWriter.visitVarInsn(55, context2.var(sb9.toString(), 2));
                    } else if (cls == Long.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                        methodWriter.visitMethodInsn(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        StringBuilder sb10 = new StringBuilder();
                        sb10.append(fieldInfo.name);
                        sb10.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb10.toString()));
                        Label label4 = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label4);
                        methodWriter.visitInsn(1);
                        StringBuilder sb11 = new StringBuilder();
                        sb11.append(fieldInfo.name);
                        sb11.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb11.toString()));
                        methodWriter.visitLabel(label4);
                    } else if (cls == Boolean.TYPE) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanBoolean", "(C)Z");
                        StringBuilder sb12 = new StringBuilder();
                        sb12.append(fieldInfo.name);
                        sb12.append(str5);
                        methodWriter.visitVarInsn(54, context2.var(sb12.toString()));
                    } else if (cls == Float.TYPE) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                        StringBuilder sb13 = new StringBuilder();
                        sb13.append(fieldInfo.name);
                        sb13.append(str5);
                        methodWriter.visitVarInsn(56, context2.var(sb13.toString()));
                    } else if (cls == Float.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                        methodWriter.visitMethodInsn(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                        StringBuilder sb14 = new StringBuilder();
                        sb14.append(fieldInfo.name);
                        sb14.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb14.toString()));
                        Label label5 = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label5);
                        methodWriter.visitInsn(1);
                        StringBuilder sb15 = new StringBuilder();
                        sb15.append(fieldInfo.name);
                        sb15.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb15.toString()));
                        methodWriter.visitLabel(label5);
                    } else if (cls == Double.TYPE) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                        StringBuilder sb16 = new StringBuilder();
                        sb16.append(fieldInfo.name);
                        sb16.append(str5);
                        methodWriter.visitVarInsn(57, context2.var(sb16.toString(), 2));
                    } else if (cls == Double.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                        methodWriter.visitMethodInsn(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                        StringBuilder sb17 = new StringBuilder();
                        sb17.append(fieldInfo.name);
                        sb17.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb17.toString()));
                        Label label6 = new Label();
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                        methodWriter.visitLdcInsn(Integer.valueOf(5));
                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label6);
                        methodWriter.visitInsn(1);
                        StringBuilder sb18 = new StringBuilder();
                        sb18.append(fieldInfo.name);
                        sb18.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb18.toString()));
                        methodWriter.visitLabel(label6);
                    } else if (cls == Character.TYPE) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                        methodWriter.visitInsn(3);
                        methodWriter.visitMethodInsn(182, "java/lang/String", "charAt", "(I)C");
                        StringBuilder sb19 = new StringBuilder();
                        sb19.append(fieldInfo.name);
                        sb19.append(str5);
                        methodWriter.visitVarInsn(54, context2.var(sb19.toString()));
                    } else if (cls == String.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                        StringBuilder sb20 = new StringBuilder();
                        sb20.append(fieldInfo.name);
                        sb20.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb20.toString()));
                    } else if (cls == BigDecimal.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanDecimal", "(C)Ljava/math/BigDecimal;");
                        StringBuilder sb21 = new StringBuilder();
                        sb21.append(fieldInfo.name);
                        sb21.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb21.toString()));
                    } else if (cls == Date.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanDate", "(C)Ljava/util/Date;");
                        StringBuilder sb22 = new StringBuilder();
                        sb22.append(fieldInfo.name);
                        sb22.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb22.toString()));
                    } else if (cls == UUID.class) {
                        methodWriter.visitVarInsn(25, context2.var(str4));
                        methodWriter.visitVarInsn(16, i5);
                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanUUID", "(C)Ljava/util/UUID;");
                        StringBuilder sb23 = new StringBuilder();
                        sb23.append(fieldInfo.name);
                        sb23.append(str5);
                        methodWriter.visitVarInsn(58, context2.var(sb23.toString()));
                    } else {
                        if (cls.isEnum()) {
                            Label label7 = new Label();
                            Label label8 = new Label();
                            Label label9 = new Label();
                            Label label10 = new Label();
                            i = length;
                            i3 = i4;
                            methodWriter.visitVarInsn(25, context2.var(str4));
                            String str7 = str5;
                            methodWriter.visitMethodInsn(182, JSONLexerBase, "getCurrent", str3);
                            methodWriter.visitInsn(89);
                            methodWriter.visitVarInsn(54, context2.var(str));
                            methodWriter.visitLdcInsn(Integer.valueOf(110));
                            methodWriter.visitJumpInsn(Opcodes.IF_ICMPEQ, label10);
                            methodWriter.visitVarInsn(21, context2.var(str));
                            methodWriter.visitLdcInsn(Integer.valueOf(34));
                            methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label7);
                            methodWriter.visitLabel(label10);
                            methodWriter.visitVarInsn(25, context2.var(str4));
                            methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(cls)));
                            methodWriter.visitVarInsn(25, 1);
                            String str8 = DefaultJSONParser;
                            StringBuilder sb24 = new StringBuilder();
                            sb24.append("()");
                            sb24.append(ASMUtils.desc(SymbolTable.class));
                            methodWriter.visitMethodInsn(182, str8, "getSymbolTable", sb24.toString());
                            methodWriter.visitVarInsn(16, i5);
                            String str9 = JSONLexerBase;
                            StringBuilder sb25 = new StringBuilder();
                            sb25.append("(Ljava/lang/Class;");
                            sb25.append(ASMUtils.desc(SymbolTable.class));
                            sb25.append("C)Ljava/lang/Enum;");
                            methodWriter.visitMethodInsn(182, str9, "scanEnum", sb25.toString());
                            methodWriter.visitJumpInsn(167, label9);
                            methodWriter.visitLabel(label7);
                            methodWriter.visitVarInsn(21, context2.var(str));
                            methodWriter.visitLdcInsn(Integer.valueOf(48));
                            methodWriter.visitJumpInsn(161, label8);
                            methodWriter.visitVarInsn(21, context2.var(str));
                            methodWriter.visitLdcInsn(Integer.valueOf(57));
                            methodWriter.visitJumpInsn(163, label8);
                            _getFieldDeser(context2, methodWriter, fieldInfo);
                            methodWriter.visitTypeInsn(192, ASMUtils.type(EnumDeserializer.class));
                            methodWriter.visitVarInsn(25, context2.var(str4));
                            methodWriter.visitVarInsn(16, i5);
                            methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                            methodWriter.visitMethodInsn(182, ASMUtils.type(EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                            methodWriter.visitJumpInsn(167, label9);
                            methodWriter.visitLabel(label8);
                            methodWriter.visitVarInsn(25, 0);
                            methodWriter.visitVarInsn(25, context2.var(str4));
                            methodWriter.visitVarInsn(16, i5);
                            String type2 = ASMUtils.type(JavaBeanDeserializer.class);
                            StringBuilder sb26 = new StringBuilder();
                            sb26.append("(L");
                            sb26.append(JSONLexerBase);
                            sb26.append(";C)Ljava/lang/Enum;");
                            methodWriter.visitMethodInsn(182, type2, "scanEnum", sb26.toString());
                            methodWriter.visitLabel(label9);
                            methodWriter.visitTypeInsn(192, ASMUtils.type(cls));
                            StringBuilder sb27 = new StringBuilder();
                            sb27.append(fieldInfo.name);
                            sb27.append(str7);
                            methodWriter.visitVarInsn(58, context2.var(sb27.toString()));
                        } else {
                            i = length;
                            String str10 = str5;
                            i3 = i4;
                            if (Collection.class.isAssignableFrom(cls)) {
                                Class<String> collectionItemClass = TypeUtils.getCollectionItemClass(type);
                                if (collectionItemClass == String.class) {
                                    if (cls == List.class || cls == Collections.class || cls == ArrayList.class) {
                                        methodWriter.visitTypeInsn(187, ASMUtils.type(ArrayList.class));
                                        methodWriter.visitInsn(89);
                                        methodWriter.visitMethodInsn(183, ASMUtils.type(ArrayList.class), "<init>", "()V");
                                    } else {
                                        methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(cls)));
                                        methodWriter.visitMethodInsn(184, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                                    }
                                    StringBuilder sb28 = new StringBuilder();
                                    sb28.append(fieldInfo.name);
                                    sb28.append(str10);
                                    methodWriter.visitVarInsn(58, context2.var(sb28.toString()));
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    StringBuilder sb29 = new StringBuilder();
                                    sb29.append(fieldInfo.name);
                                    sb29.append(str10);
                                    methodWriter.visitVarInsn(25, context2.var(sb29.toString()));
                                    methodWriter.visitVarInsn(16, i5);
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "scanStringArray", "(Ljava/util/Collection;C)V");
                                    Label label11 = new Label();
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                                    methodWriter.visitLdcInsn(Integer.valueOf(5));
                                    methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label11);
                                    methodWriter.visitInsn(1);
                                    StringBuilder sb30 = new StringBuilder();
                                    sb30.append(fieldInfo.name);
                                    sb30.append(str10);
                                    methodWriter.visitVarInsn(58, context2.var(sb30.toString()));
                                    methodWriter.visitLabel(label11);
                                } else {
                                    Label label12 = new Label();
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                    methodWriter.visitVarInsn(54, context2.var("token"));
                                    methodWriter.visitVarInsn(21, context2.var("token"));
                                    methodWriter.visitLdcInsn(Integer.valueOf(i3 == 0 ? 14 : 16));
                                    methodWriter.visitJumpInsn(Opcodes.IF_ICMPEQ, label12);
                                    methodWriter.visitVarInsn(25, 1);
                                    methodWriter.visitVarInsn(21, context2.var("token"));
                                    methodWriter.visitMethodInsn(182, DefaultJSONParser, "throwException", str2);
                                    methodWriter.visitLabel(label12);
                                    Label label13 = new Label();
                                    Label label14 = new Label();
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "getCurrent", str3);
                                    methodWriter.visitVarInsn(16, 91);
                                    methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label13);
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "next", str3);
                                    methodWriter.visitInsn(87);
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitLdcInsn(Integer.valueOf(14));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "setToken", str2);
                                    methodWriter.visitJumpInsn(167, label14);
                                    methodWriter.visitLabel(label13);
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitLdcInsn(Integer.valueOf(14));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "nextToken", str2);
                                    methodWriter.visitLabel(label14);
                                    i2 = i3;
                                    _newCollection(methodWriter, cls, i2, false);
                                    methodWriter.visitInsn(89);
                                    StringBuilder sb31 = new StringBuilder();
                                    sb31.append(fieldInfo.name);
                                    sb31.append(str10);
                                    methodWriter.visitVarInsn(58, context2.var(sb31.toString()));
                                    _getCollectionFieldItemDeser(context2, methodWriter, fieldInfo, collectionItemClass);
                                    methodWriter.visitVarInsn(25, 1);
                                    methodWriter.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(collectionItemClass)));
                                    methodWriter.visitVarInsn(25, 3);
                                    String type3 = ASMUtils.type(JavaBeanDeserializer.class);
                                    StringBuilder sb32 = new StringBuilder();
                                    sb32.append("(Ljava/util/Collection;");
                                    sb32.append(ASMUtils.desc(ObjectDeserializer.class));
                                    sb32.append("L");
                                    sb32.append(DefaultJSONParser);
                                    sb32.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                                    methodWriter.visitMethodInsn(184, type3, "parseArray", sb32.toString());
                                }
                            } else {
                                i2 = i3;
                                if (cls.isArray()) {
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitLdcInsn(Integer.valueOf(14));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "nextToken", str2);
                                    methodWriter.visitVarInsn(25, 1);
                                    methodWriter.visitVarInsn(25, 0);
                                    methodWriter.visitLdcInsn(Integer.valueOf(i2));
                                    methodWriter.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                                    methodWriter.visitMethodInsn(182, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                                    methodWriter.visitTypeInsn(192, ASMUtils.type(cls));
                                    StringBuilder sb33 = new StringBuilder();
                                    sb33.append(fieldInfo.name);
                                    sb33.append(str10);
                                    methodWriter.visitVarInsn(58, context2.var(sb33.toString()));
                                } else {
                                    Label label15 = new Label();
                                    Label label16 = new Label();
                                    if (cls == Date.class) {
                                        methodWriter.visitVarInsn(25, context2.var(str4));
                                        methodWriter.visitMethodInsn(182, JSONLexerBase, "getCurrent", str3);
                                        methodWriter.visitLdcInsn(Integer.valueOf(49));
                                        methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label15);
                                        methodWriter.visitTypeInsn(187, ASMUtils.type(Date.class));
                                        methodWriter.visitInsn(89);
                                        methodWriter.visitVarInsn(25, context2.var(str4));
                                        methodWriter.visitVarInsn(16, i5);
                                        methodWriter.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                                        methodWriter.visitMethodInsn(183, ASMUtils.type(Date.class), "<init>", "(J)V");
                                        StringBuilder sb34 = new StringBuilder();
                                        sb34.append(fieldInfo.name);
                                        sb34.append(str10);
                                        methodWriter.visitVarInsn(58, context2.var(sb34.toString()));
                                        methodWriter.visitJumpInsn(167, label16);
                                    }
                                    methodWriter.visitLabel(label15);
                                    _quickNextToken(context2, methodWriter, 14);
                                    _deserObject(context, methodWriter, fieldInfo, cls, i2);
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                    methodWriter.visitLdcInsn(Integer.valueOf(15));
                                    methodWriter.visitJumpInsn(Opcodes.IF_ICMPEQ, label16);
                                    methodWriter.visitVarInsn(25, 0);
                                    methodWriter.visitVarInsn(25, context2.var(str4));
                                    if (!z) {
                                        methodWriter.visitLdcInsn(Integer.valueOf(16));
                                    } else {
                                        methodWriter.visitLdcInsn(Integer.valueOf(15));
                                    }
                                    String type4 = ASMUtils.type(JavaBeanDeserializer.class);
                                    StringBuilder sb35 = new StringBuilder();
                                    sb35.append("(");
                                    sb35.append(ASMUtils.desc(JSONLexer.class));
                                    sb35.append("I)V");
                                    methodWriter.visitMethodInsn(183, type4, "check", sb35.toString());
                                    methodWriter.visitLabel(label16);
                                }
                            }
                        }
                        i2 = i3;
                    }
                    i = length;
                    i2 = i4;
                }
                i4 = i2 + 1;
                fieldInfoArr2 = fieldInfoArr;
                length = i;
            } else {
                _batchSet(context2, methodWriter, false);
                Label label17 = new Label();
                Label label18 = new Label();
                Label label19 = new Label();
                Label label20 = new Label();
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "getCurrent", str3);
                methodWriter.visitInsn(89);
                methodWriter.visitVarInsn(54, context2.var(str));
                methodWriter.visitVarInsn(16, 44);
                methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label18);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "next", str3);
                methodWriter.visitInsn(87);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitLdcInsn(Integer.valueOf(16));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "setToken", str2);
                methodWriter.visitJumpInsn(167, label20);
                methodWriter.visitLabel(label18);
                methodWriter.visitVarInsn(21, context2.var(str));
                methodWriter.visitVarInsn(16, 93);
                methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label19);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "next", str3);
                methodWriter.visitInsn(87);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitLdcInsn(Integer.valueOf(15));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "setToken", str2);
                methodWriter.visitJumpInsn(167, label20);
                methodWriter.visitLabel(label19);
                methodWriter.visitVarInsn(21, context2.var(str));
                methodWriter.visitVarInsn(16, 26);
                methodWriter.visitJumpInsn(Opcodes.IF_ICMPNE, label17);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "next", str3);
                methodWriter.visitInsn(87);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitLdcInsn(Integer.valueOf(20));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "setToken", str2);
                methodWriter.visitJumpInsn(167, label20);
                methodWriter.visitLabel(label17);
                methodWriter.visitVarInsn(25, context2.var(str4));
                methodWriter.visitLdcInsn(Integer.valueOf(16));
                methodWriter.visitMethodInsn(182, JSONLexerBase, "nextToken", str2);
                methodWriter.visitLabel(label20);
                methodWriter.visitVarInsn(25, context2.var("instance"));
                methodWriter.visitInsn(176);
                methodWriter.visitMaxs(5, context.variantIndex);
                methodWriter.visitEnd();
                return;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:127:0x0e51  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _deserialze(com.alibaba.fastjson.asm.ClassWriter r30, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context r31) {
        /*
            r29 = this;
            r8 = r29
            r9 = r31
            com.alibaba.fastjson.util.FieldInfo[] r0 = r31.fieldInfoList
            int r0 = r0.length
            if (r0 != 0) goto L_0x000c
            return
        L_0x000c:
            com.alibaba.fastjson.util.FieldInfo[] r0 = r31.fieldInfoList
            int r1 = r0.length
            r10 = 0
            r2 = 0
        L_0x0013:
            if (r2 >= r1) goto L_0x003d
            r3 = r0[r2]
            java.lang.Class<?> r4 = r3.fieldClass
            java.lang.reflect.Type r3 = r3.fieldType
            java.lang.Class r5 = java.lang.Character.TYPE
            if (r4 != r5) goto L_0x0020
            return
        L_0x0020:
            java.lang.Class<java.util.Collection> r5 = java.util.Collection.class
            boolean r4 = r5.isAssignableFrom(r4)
            if (r4 == 0) goto L_0x003a
            boolean r4 = r3 instanceof java.lang.reflect.ParameterizedType
            if (r4 == 0) goto L_0x0039
            java.lang.reflect.ParameterizedType r3 = (java.lang.reflect.ParameterizedType) r3
            java.lang.reflect.Type[] r3 = r3.getActualTypeArguments()
            r3 = r3[r10]
            boolean r3 = r3 instanceof java.lang.Class
            if (r3 == 0) goto L_0x0039
            goto L_0x003a
        L_0x0039:
            return
        L_0x003a:
            int r2 = r2 + 1
            goto L_0x0013
        L_0x003d:
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r31.beanInfo
            com.alibaba.fastjson.util.FieldInfo[] r1 = r0.sortedFields
            r9.fieldInfoList = r1
            com.alibaba.fastjson.asm.MethodWriter r7 = new com.alibaba.fastjson.asm.MethodWriter
            r13 = 1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "(L"
            r1.append(r2)
            java.lang.String r2 = DefaultJSONParser
            r1.append(r2)
            java.lang.String r2 = ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"
            r1.append(r2)
            java.lang.String r15 = r1.toString()
            r16 = 0
            r17 = 0
            java.lang.String r14 = "deserialze"
            r11 = r7
            r12 = r30
            r11.<init>(r12, r13, r14, r15, r16, r17)
            com.alibaba.fastjson.asm.Label r11 = new com.alibaba.fastjson.asm.Label
            r11.<init>()
            com.alibaba.fastjson.asm.Label r12 = new com.alibaba.fastjson.asm.Label
            r12.<init>()
            com.alibaba.fastjson.asm.Label r13 = new com.alibaba.fastjson.asm.Label
            r13.<init>()
            com.alibaba.fastjson.asm.Label r14 = new com.alibaba.fastjson.asm.Label
            r14.<init>()
            r8.defineVarLexer(r9, r7)
            com.alibaba.fastjson.asm.Label r1 = new com.alibaba.fastjson.asm.Label
            r1.<init>()
            java.lang.String r15 = "lexer"
            int r2 = r9.var(r15)
            r6 = 25
            r7.visitVarInsn(r6, r2)
            java.lang.String r2 = JSONLexerBase
            r5 = 182(0xb6, float:2.55E-43)
            java.lang.String r3 = "token"
            java.lang.String r4 = "()I"
            r7.visitMethodInsn(r5, r2, r3, r4)
            r2 = 14
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r7.visitLdcInsn(r2)
            r2 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r2, r1)
            int r0 = r0.parserFeatures
            com.alibaba.fastjson.parser.Feature r2 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean
            int r2 = r2.mask
            r0 = r0 & r2
            r4 = 4
            if (r0 != 0) goto L_0x00dc
            int r0 = r9.var(r15)
            r7.visitVarInsn(r6, r0)
            r0 = 21
            r7.visitVarInsn(r0, r4)
            com.alibaba.fastjson.parser.Feature r0 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean
            int r0 = r0.mask
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r2 = "isEnabled"
            java.lang.String r3 = "(II)Z"
            r7.visitMethodInsn(r5, r0, r2, r3)
            r0 = 153(0x99, float:2.14E-43)
            r7.visitJumpInsn(r0, r1)
        L_0x00dc:
            r7.visitVarInsn(r6, r10)
            r3 = 1
            r7.visitVarInsn(r6, r3)
            r0 = 2
            r7.visitVarInsn(r6, r0)
            r2 = 3
            r7.visitVarInsn(r6, r2)
            r7.visitInsn(r3)
            r0 = 183(0xb7, float:2.56E-43)
            java.lang.String r10 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r2 = "(L"
            r4.append(r2)
            java.lang.String r2 = DefaultJSONParser
            r4.append(r2)
            java.lang.String r2 = ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            java.lang.String r4 = "deserialzeArrayMapping"
            r7.visitMethodInsn(r0, r10, r4, r2)
            r0 = 176(0xb0, float:2.47E-43)
            r7.visitInsn(r0)
            r7.visitLabel(r1)
            int r0 = r9.var(r15)
            r7.visitVarInsn(r6, r0)
            com.alibaba.fastjson.parser.Feature r0 = com.alibaba.fastjson.parser.Feature.SortFeidFastMatch
            int r0 = r0.mask
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r1 = "isEnabled"
            java.lang.String r2 = "(I)Z"
            r7.visitMethodInsn(r5, r0, r1, r2)
            r0 = 153(0x99, float:2.14E-43)
            r7.visitJumpInsn(r0, r12)
            int r0 = r9.var(r15)
            r7.visitVarInsn(r6, r0)
            java.lang.Class r0 = r31.clazz
            java.lang.String r0 = r0.getName()
            r7.visitLdcInsn(r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r1 = "scanType"
            java.lang.String r2 = "(Ljava/lang/String;)I"
            r7.visitMethodInsn(r5, r0, r1, r2)
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r0)
            r0 = 159(0x9f, float:2.23E-43)
            r7.visitJumpInsn(r0, r12)
            r7.visitVarInsn(r6, r3)
            java.lang.String r0 = DefaultJSONParser
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "()"
            r1.append(r2)
            java.lang.Class<com.alibaba.fastjson.parser.ParseContext> r2 = com.alibaba.fastjson.parser.ParseContext.class
            java.lang.String r2 = com.alibaba.fastjson.util.ASMUtils.desc(r2)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "getContext"
            r7.visitMethodInsn(r5, r0, r2, r1)
            java.lang.String r0 = "mark_context"
            int r0 = r9.var(r0)
            r10 = 58
            r7.visitVarInsn(r10, r0)
            r0 = 3
            r7.visitInsn(r0)
            java.lang.String r0 = "matchedCount"
            int r0 = r9.var(r0)
            r4 = 54
            r7.visitVarInsn(r4, r0)
            r8._createInstance(r9, r7)
            r7.visitVarInsn(r6, r3)
            java.lang.String r0 = DefaultJSONParser
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "()"
            r1.append(r2)
            java.lang.Class<com.alibaba.fastjson.parser.ParseContext> r2 = com.alibaba.fastjson.parser.ParseContext.class
            java.lang.String r2 = com.alibaba.fastjson.util.ASMUtils.desc(r2)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "getContext"
            r7.visitMethodInsn(r5, r0, r2, r1)
            java.lang.String r0 = "context"
            int r0 = r9.var(r0)
            r7.visitVarInsn(r10, r0)
            r7.visitVarInsn(r6, r3)
            java.lang.String r0 = "context"
            int r0 = r9.var(r0)
            r7.visitVarInsn(r6, r0)
            java.lang.String r0 = "instance"
            int r0 = r9.var(r0)
            r7.visitVarInsn(r6, r0)
            r0 = 3
            r7.visitVarInsn(r6, r0)
            java.lang.String r0 = DefaultJSONParser
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "("
            r1.append(r2)
            java.lang.Class<com.alibaba.fastjson.parser.ParseContext> r2 = com.alibaba.fastjson.parser.ParseContext.class
            java.lang.String r2 = com.alibaba.fastjson.util.ASMUtils.desc(r2)
            r1.append(r2)
            java.lang.String r2 = "Ljava/lang/Object;Ljava/lang/Object;)"
            r1.append(r2)
            java.lang.Class<com.alibaba.fastjson.parser.ParseContext> r2 = com.alibaba.fastjson.parser.ParseContext.class
            java.lang.String r2 = com.alibaba.fastjson.util.ASMUtils.desc(r2)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "setContext"
            r7.visitMethodInsn(r5, r0, r2, r1)
            java.lang.String r0 = "childContext"
            int r0 = r9.var(r0)
            r7.visitVarInsn(r10, r0)
            int r0 = r9.var(r15)
            r7.visitVarInsn(r6, r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r2 = "I"
            java.lang.String r1 = "matchStat"
            r10 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r10, r0, r1, r2)
            r0 = 4
            java.lang.Integer r10 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r10)
            r0 = 159(0x9f, float:2.23E-43)
            r7.visitJumpInsn(r0, r13)
            r0 = 3
            r7.visitInsn(r0)
            int r10 = r9.var(r1)
            r7.visitIntInsn(r4, r10)
            com.alibaba.fastjson.util.FieldInfo[] r10 = r31.fieldInfoList
            int r10 = r10.length
            r3 = 0
        L_0x0247:
            if (r3 >= r10) goto L_0x026c
            r7.visitInsn(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "_asm_flag_"
            r0.append(r5)
            int r5 = r3 / 32
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r7.visitVarInsn(r4, r0)
            int r3 = r3 + 32
            r0 = 3
            r5 = 182(0xb6, float:2.55E-43)
            goto L_0x0247
        L_0x026c:
            int r0 = r9.var(r15)
            r7.visitVarInsn(r6, r0)
            com.alibaba.fastjson.parser.Feature r0 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty
            int r0 = r0.mask
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r3 = "isEnabled"
            java.lang.String r5 = "(I)Z"
            r6 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r6, r0, r3, r5)
            java.lang.String r0 = "initStringFieldAsEmpty"
            int r0 = r9.var(r0)
            r7.visitIntInsn(r4, r0)
            r0 = 0
        L_0x0293:
            java.lang.String r6 = "_asm"
            if (r0 >= r10) goto L_0x03dd
            com.alibaba.fastjson.util.FieldInfo[] r3 = r31.fieldInfoList
            r3 = r3[r0]
            java.lang.Class<?> r5 = r3.fieldClass
            java.lang.Class r4 = java.lang.Boolean.TYPE
            if (r5 == r4) goto L_0x03a7
            java.lang.Class r4 = java.lang.Byte.TYPE
            if (r5 == r4) goto L_0x03a7
            java.lang.Class r4 = java.lang.Short.TYPE
            if (r5 == r4) goto L_0x03a7
            java.lang.Class r4 = java.lang.Integer.TYPE
            if (r5 != r4) goto L_0x02b1
            goto L_0x03a7
        L_0x02b1:
            java.lang.Class r4 = java.lang.Long.TYPE
            if (r5 != r4) goto L_0x02e0
            r4 = 9
            r7.visitInsn(r4)
            r4 = 55
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = r3.name
            r5.append(r3)
            r5.append(r6)
            java.lang.String r3 = r5.toString()
            r5 = 2
            int r3 = r9.var(r3, r5)
            r7.visitVarInsn(r4, r3)
        L_0x02d5:
            r26 = r11
            r23 = r12
            r24 = r13
            r25 = r14
        L_0x02dd:
            r4 = 3
            goto L_0x03cd
        L_0x02e0:
            java.lang.Class r4 = java.lang.Float.TYPE
            if (r5 != r4) goto L_0x0304
            r4 = 11
            r7.visitInsn(r4)
            r4 = 56
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = r3.name
            r5.append(r3)
            r5.append(r6)
            java.lang.String r3 = r5.toString()
            int r3 = r9.var(r3)
            r7.visitVarInsn(r4, r3)
            goto L_0x02d5
        L_0x0304:
            java.lang.Class r4 = java.lang.Double.TYPE
            if (r5 != r4) goto L_0x0329
            r4 = 14
            r7.visitInsn(r4)
            r4 = 57
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = r3.name
            r5.append(r3)
            r5.append(r6)
            java.lang.String r3 = r5.toString()
            r5 = 2
            int r3 = r9.var(r3, r5)
            r7.visitVarInsn(r4, r3)
            goto L_0x02d5
        L_0x0329:
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            if (r5 != r4) goto L_0x0376
            com.alibaba.fastjson.asm.Label r4 = new com.alibaba.fastjson.asm.Label
            r4.<init>()
            r23 = r12
            com.alibaba.fastjson.asm.Label r12 = new com.alibaba.fastjson.asm.Label
            r12.<init>()
            r24 = r13
            r13 = 21
            r25 = r14
            java.lang.String r14 = "initStringFieldAsEmpty"
            int r14 = r9.var(r14)
            r7.visitVarInsn(r13, r14)
            r13 = 153(0x99, float:2.14E-43)
            r7.visitJumpInsn(r13, r12)
            r8._setFlag(r7, r9, r0)
            int r13 = r9.var(r15)
            r14 = 25
            r7.visitVarInsn(r14, r13)
            java.lang.String r13 = JSONLexerBase
            java.lang.String r14 = "stringDefaultValue"
            r26 = r11
            java.lang.String r11 = "()Ljava/lang/String;"
            r8 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r8, r13, r14, r11)
            r8 = 167(0xa7, float:2.34E-43)
            r7.visitJumpInsn(r8, r4)
            r7.visitLabel(r12)
            r8 = 1
            r7.visitInsn(r8)
            r7.visitLabel(r4)
            goto L_0x0382
        L_0x0376:
            r26 = r11
            r23 = r12
            r24 = r13
            r25 = r14
            r8 = 1
            r7.visitInsn(r8)
        L_0x0382:
            r4 = 192(0xc0, float:2.69E-43)
            java.lang.String r5 = com.alibaba.fastjson.util.ASMUtils.type(r5)
            r7.visitTypeInsn(r4, r5)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r3 = r3.name
            r4.append(r3)
            r4.append(r6)
            java.lang.String r3 = r4.toString()
            int r3 = r9.var(r3)
            r4 = 58
            r7.visitVarInsn(r4, r3)
            goto L_0x02dd
        L_0x03a7:
            r26 = r11
            r23 = r12
            r24 = r13
            r25 = r14
            r4 = 3
            r7.visitInsn(r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = r3.name
            r5.append(r3)
            r5.append(r6)
            java.lang.String r3 = r5.toString()
            int r3 = r9.var(r3)
            r5 = 54
            r7.visitVarInsn(r5, r3)
        L_0x03cd:
            int r0 = r0 + 1
            r4 = 54
            r8 = r29
            r12 = r23
            r13 = r24
            r14 = r25
            r11 = r26
            goto L_0x0293
        L_0x03dd:
            r26 = r11
            r23 = r12
            r24 = r13
            r25 = r14
            r4 = 3
            r8 = 0
        L_0x03e7:
            if (r8 >= r10) goto L_0x0efc
            com.alibaba.fastjson.util.FieldInfo[] r0 = r31.fieldInfoList
            r5 = r0[r8]
            java.lang.Class<?> r11 = r5.fieldClass
            java.lang.reflect.Type r0 = r5.fieldType
            com.alibaba.fastjson.asm.Label r3 = new com.alibaba.fastjson.asm.Label
            r3.<init>()
            java.lang.Class r12 = java.lang.Boolean.TYPE
            java.lang.String r13 = "[C"
            java.lang.String r14 = "_asm_prefix__"
            if (r11 != r12) goto L_0x0458
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldBoolean"
            java.lang.String r12 = "([C)Z"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = r5.name
            r0.append(r5)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r5 = 54
            r7.visitVarInsn(r5, r0)
        L_0x044c:
            r13 = 182(0xb6, float:2.55E-43)
            r14 = 58
            r12 = r29
            r28 = r3
            r27 = r10
            goto L_0x0dad
        L_0x0458:
            java.lang.Class r12 = java.lang.Byte.TYPE
            if (r11 != r12) goto L_0x04a9
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = r5.name
            r0.append(r5)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r5 = 54
            r7.visitVarInsn(r5, r0)
            goto L_0x044c
        L_0x04a9:
            java.lang.Class<java.lang.Byte> r12 = java.lang.Byte.class
            if (r11 != r12) goto L_0x0549
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Byte"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(B)Ljava/lang/Byte;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r11 = 1
            r7.visitInsn(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x0549:
            java.lang.Class r12 = java.lang.Short.TYPE
            if (r11 != r12) goto L_0x059b
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = r5.name
            r0.append(r5)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r5 = 54
            r7.visitVarInsn(r5, r0)
            goto L_0x044c
        L_0x059b:
            java.lang.Class<java.lang.Short> r12 = java.lang.Short.class
            if (r11 != r12) goto L_0x063b
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Short"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(S)Ljava/lang/Short;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r11 = 1
            r7.visitInsn(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x063b:
            java.lang.Class r12 = java.lang.Integer.TYPE
            if (r11 != r12) goto L_0x068d
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = r5.name
            r0.append(r5)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r5 = 54
            r7.visitVarInsn(r5, r0)
            goto L_0x044c
        L_0x068d:
            java.lang.Class<java.lang.Integer> r12 = java.lang.Integer.class
            if (r11 != r12) goto L_0x072d
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldInt"
            java.lang.String r12 = "([C)I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Integer"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(I)Ljava/lang/Integer;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r11 = 1
            r7.visitInsn(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x072d:
            java.lang.Class r12 = java.lang.Long.TYPE
            if (r11 != r12) goto L_0x0780
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldLong"
            java.lang.String r12 = "([C)J"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 55
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            r11 = 2
            int r5 = r9.var(r5, r11)
            r7.visitVarInsn(r0, r5)
            goto L_0x044c
        L_0x0780:
            java.lang.Class<java.lang.Long> r12 = java.lang.Long.class
            if (r11 != r12) goto L_0x0820
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldLong"
            java.lang.String r12 = "([C)J"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Long"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(J)Ljava/lang/Long;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r11 = 1
            r7.visitInsn(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x0820:
            java.lang.Class r12 = java.lang.Float.TYPE
            if (r11 != r12) goto L_0x0872
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldFloat"
            java.lang.String r12 = "([C)F"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 56
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r7.visitVarInsn(r0, r5)
            goto L_0x044c
        L_0x0872:
            java.lang.Class<java.lang.Float> r12 = java.lang.Float.class
            if (r11 != r12) goto L_0x0912
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldFloat"
            java.lang.String r12 = "([C)F"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Float"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(F)Ljava/lang/Float;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r11 = 1
            r7.visitInsn(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x0912:
            java.lang.Class r12 = java.lang.Double.TYPE
            if (r11 != r12) goto L_0x0965
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldDouble"
            java.lang.String r12 = "([C)D"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 57
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            r11 = 2
            int r5 = r9.var(r5, r11)
            r7.visitVarInsn(r0, r5)
            goto L_0x044c
        L_0x0965:
            java.lang.Class<java.lang.Double> r12 = java.lang.Double.class
            if (r11 != r12) goto L_0x0a05
            int r0 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r0)
            r0 = 0
            r7.visitVarInsn(r11, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = r5.name
            r11.append(r12)
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r11, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r11 = "scanFieldDouble"
            java.lang.String r12 = "([C)D"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r11, r12)
            r0 = 184(0xb8, float:2.58E-43)
            java.lang.String r11 = "java/lang/Double"
            java.lang.String r12 = "valueOf"
            java.lang.String r13 = "(D)Ljava/lang/Double;"
            r7.visitMethodInsn(r0, r11, r12, r13)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r11 = r5.name
            r0.append(r11)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r11 = 58
            r7.visitVarInsn(r11, r0)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            int r11 = r9.var(r15)
            r12 = 25
            r7.visitVarInsn(r12, r11)
            java.lang.String r11 = JSONLexerBase
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r11, r1, r2)
            r11 = 5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r7.visitLdcInsn(r11)
            r11 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r11, r0)
            r12 = 1
            r7.visitInsn(r12)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r5 = r5.name
            r11.append(r5)
            r11.append(r6)
            java.lang.String r5 = r11.toString()
            int r5 = r9.var(r5)
            r11 = 58
            r7.visitVarInsn(r11, r5)
            r7.visitLabel(r0)
            goto L_0x044c
        L_0x0a05:
            r12 = 1
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            if (r11 != r4) goto L_0x0a58
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldString"
            java.lang.String r11 = "([C)Ljava/lang/String;"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0a58:
            java.lang.Class<java.util.Date> r4 = java.util.Date.class
            if (r11 != r4) goto L_0x0aaa
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldDate"
            java.lang.String r11 = "([C)Ljava/util/Date;"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0aaa:
            java.lang.Class<java.util.UUID> r4 = java.util.UUID.class
            if (r11 != r4) goto L_0x0afc
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldUUID"
            java.lang.String r11 = "([C)Ljava/util/UUID;"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0afc:
            java.lang.Class<java.math.BigDecimal> r4 = java.math.BigDecimal.class
            if (r11 != r4) goto L_0x0b4e
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldDecimal"
            java.lang.String r11 = "([C)Ljava/math/BigDecimal;"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0b4e:
            java.lang.Class<java.math.BigInteger> r4 = java.math.BigInteger.class
            if (r11 != r4) goto L_0x0ba0
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldBigInteger"
            java.lang.String r11 = "([C)Ljava/math/BigInteger;"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0ba0:
            java.lang.Class<int[]> r4 = int[].class
            if (r11 != r4) goto L_0x0bf2
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldIntArray"
            java.lang.String r11 = "([C)[I"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0bf2:
            java.lang.Class<float[]> r4 = float[].class
            if (r11 != r4) goto L_0x0c44
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldFloatArray"
            java.lang.String r11 = "([C)[F"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0c44:
            java.lang.Class<float[][]> r4 = float[][].class
            if (r11 != r4) goto L_0x0c96
            int r0 = r9.var(r15)
            r4 = 25
            r7.visitVarInsn(r4, r0)
            r0 = 0
            r7.visitVarInsn(r4, r0)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r11 = r5.name
            r4.append(r11)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r4, r13)
            java.lang.String r0 = JSONLexerBase
            java.lang.String r4 = "scanFieldFloatArray2"
            java.lang.String r11 = "([C)[[F"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r11)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            goto L_0x044c
        L_0x0c96:
            boolean r4 = r11.isEnum()
            if (r4 == 0) goto L_0x0d2b
            r4 = 0
            r12 = 25
            r7.visitVarInsn(r12, r4)
            int r0 = r9.var(r15)
            r7.visitVarInsn(r12, r0)
            r7.visitVarInsn(r12, r4)
            java.lang.String r0 = r31.className
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r12 = r5.name
            r4.append(r12)
            r4.append(r14)
            java.lang.String r4 = r4.toString()
            r12 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r12, r0, r4, r13)
            r12 = r29
            r12._getFieldDeser(r9, r7, r5)
            java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> r0 = com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.type(r0)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r13 = "(L"
            r4.append(r13)
            java.lang.String r13 = JSONLexerBase
            r4.append(r13)
            java.lang.String r13 = ";[C"
            r4.append(r13)
            java.lang.Class<com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> r13 = com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class
            java.lang.String r13 = com.alibaba.fastjson.util.ASMUtils.desc(r13)
            r4.append(r13)
            java.lang.String r13 = ")Ljava/lang/Enum;"
            r4.append(r13)
            java.lang.String r4 = r4.toString()
            java.lang.String r13 = "scanEnum"
            r14 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r14, r0, r13, r4)
            r0 = 192(0xc0, float:2.69E-43)
            java.lang.String r4 = com.alibaba.fastjson.util.ASMUtils.type(r11)
            r7.visitTypeInsn(r0, r4)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = r5.name
            r0.append(r4)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r4 = 58
            r7.visitVarInsn(r4, r0)
            r28 = r3
            r27 = r10
            r13 = 182(0xb6, float:2.55E-43)
            r14 = 58
            goto L_0x0dad
        L_0x0d2b:
            r12 = r29
            java.lang.Class<java.util.Collection> r4 = java.util.Collection.class
            boolean r4 = r4.isAssignableFrom(r11)
            if (r4 == 0) goto L_0x0ebe
            int r4 = r9.var(r15)
            r27 = r10
            r10 = 25
            r7.visitVarInsn(r10, r4)
            r4 = 0
            r7.visitVarInsn(r10, r4)
            java.lang.String r4 = r31.className
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r28 = r3
            java.lang.String r3 = r5.name
            r10.append(r3)
            r10.append(r14)
            java.lang.String r3 = r10.toString()
            r10 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r10, r4, r3, r13)
            java.lang.Class r10 = com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(r0)
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            if (r10 != r0) goto L_0x0e84
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.desc(r11)
            com.alibaba.fastjson.asm.Type r0 = com.alibaba.fastjson.asm.Type.getType(r0)
            r7.visitLdcInsn(r0)
            java.lang.String r0 = JSONLexerBase
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "([CLjava/lang/Class;)"
            r3.append(r4)
            java.lang.Class<java.util.Collection> r4 = java.util.Collection.class
            java.lang.String r4 = com.alibaba.fastjson.util.ASMUtils.desc(r4)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "scanFieldStringArray"
            r13 = 182(0xb6, float:2.55E-43)
            r7.visitMethodInsn(r13, r0, r4, r3)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = r5.name
            r0.append(r3)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.var(r0)
            r14 = 58
            r7.visitVarInsn(r14, r0)
        L_0x0dad:
            int r0 = r9.var(r15)
            r3 = 25
            r7.visitVarInsn(r3, r0)
            java.lang.String r0 = JSONLexerBase
            r4 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r4, r0, r1, r2)
            com.alibaba.fastjson.asm.Label r0 = new com.alibaba.fastjson.asm.Label
            r0.<init>()
            r5 = 158(0x9e, float:2.21E-43)
            r7.visitJumpInsn(r5, r0)
            r12._setFlag(r7, r9, r8)
            r7.visitLabel(r0)
            int r0 = r9.var(r15)
            r7.visitVarInsn(r3, r0)
            java.lang.String r0 = JSONLexerBase
            r7.visitFieldInsn(r4, r0, r1, r2)
            r0 = 89
            r7.visitInsn(r0)
            int r0 = r9.var(r1)
            r3 = 54
            r7.visitVarInsn(r3, r0)
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r0)
            r0 = 159(0x9f, float:2.23E-43)
            r4 = r26
            r7.visitJumpInsn(r0, r4)
            int r0 = r9.var(r15)
            r3 = 25
            r7.visitVarInsn(r3, r0)
            java.lang.String r0 = JSONLexerBase
            r3 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r3, r0, r1, r2)
            r0 = 158(0x9e, float:2.21E-43)
            r3 = r28
            r7.visitJumpInsn(r0, r3)
            r0 = 21
            java.lang.String r5 = "matchedCount"
            int r5 = r9.var(r5)
            r7.visitVarInsn(r0, r5)
            r0 = 4
            r7.visitInsn(r0)
            r5 = 96
            r7.visitInsn(r5)
            java.lang.String r5 = "matchedCount"
            int r5 = r9.var(r5)
            r10 = 54
            r7.visitVarInsn(r10, r5)
            int r5 = r9.var(r15)
            r11 = 25
            r7.visitVarInsn(r11, r5)
            java.lang.String r5 = JSONLexerBase
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r5, r1, r2)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)
            r7.visitLdcInsn(r5)
            r0 = 159(0x9f, float:2.23E-43)
            r5 = r25
            r7.visitJumpInsn(r0, r5)
            r7.visitLabel(r3)
            int r0 = r27 + -1
            if (r8 != r0) goto L_0x0e6f
            int r0 = r9.var(r15)
            r3 = 25
            r7.visitVarInsn(r3, r0)
            java.lang.String r0 = JSONLexerBase
            r11 = 180(0xb4, float:2.52E-43)
            r7.visitFieldInsn(r11, r0, r1, r2)
            r18 = 4
            java.lang.Integer r0 = java.lang.Integer.valueOf(r18)
            r7.visitLdcInsn(r0)
            r0 = 160(0xa0, float:2.24E-43)
            r7.visitJumpInsn(r0, r4)
        L_0x0e6f:
            r22 = r1
            r17 = r2
            r14 = r4
            r13 = r5
            r20 = r6
            r10 = r7
            r30 = r15
            r7 = 25
            r15 = 182(0xb6, float:2.55E-43)
            r18 = 54
            r21 = 180(0xb4, float:2.52E-43)
            goto L_0x0ee8
        L_0x0e84:
            r13 = r25
            r4 = r26
            r3 = 25
            r14 = 58
            r18 = 4
            r19 = 54
            r21 = 180(0xb4, float:2.52E-43)
            r0 = r29
            r22 = r1
            r1 = r31
            r17 = r2
            r14 = 3
            r2 = r7
            r14 = 1
            r20 = 25
            r3 = r4
            r14 = r4
            r30 = r15
            r15 = 4
            r18 = 54
            r4 = r5
            r15 = 182(0xb6, float:2.55E-43)
            r5 = r11
            r20 = r6
            r11 = 25
            r6 = r10
            r10 = r7
            r7 = r8
            r0._deserialze_list_obj(r1, r2, r3, r4, r5, r6, r7)
            int r0 = r27 + -1
            if (r8 != r0) goto L_0x0ebb
            r12._deserialize_endCheck(r9, r10, r14)
        L_0x0ebb:
            r7 = 25
            goto L_0x0ee8
        L_0x0ebe:
            r22 = r1
            r17 = r2
            r20 = r6
            r27 = r10
            r30 = r15
            r13 = r25
            r14 = r26
            r15 = 182(0xb6, float:2.55E-43)
            r18 = 54
            r21 = 180(0xb4, float:2.52E-43)
            r10 = r7
            r7 = 25
            r0 = r29
            r1 = r31
            r2 = r10
            r3 = r14
            r4 = r5
            r5 = r11
            r6 = r8
            r0._deserialze_obj(r1, r2, r3, r4, r5, r6)
            int r0 = r27 + -1
            if (r8 != r0) goto L_0x0ee8
            r12._deserialize_endCheck(r9, r10, r14)
        L_0x0ee8:
            int r8 = r8 + 1
            r15 = r30
            r7 = r10
            r25 = r13
            r26 = r14
            r2 = r17
            r6 = r20
            r1 = r22
            r10 = r27
            r4 = 3
            goto L_0x03e7
        L_0x0efc:
            r12 = r29
            r27 = r10
            r13 = r25
            r14 = r26
            r15 = 182(0xb6, float:2.55E-43)
            r10 = r7
            r7 = 25
            r10.visitLabel(r13)
            java.lang.Class r0 = r31.clazz
            boolean r0 = r0.isInterface()
            if (r0 != 0) goto L_0x0f27
            java.lang.Class r0 = r31.clazz
            int r0 = r0.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isAbstract(r0)
            if (r0 != 0) goto L_0x0f27
            r12._batchSet(r9, r10)
        L_0x0f27:
            r0 = r24
            r10.visitLabel(r0)
            r12._setContext(r9, r10)
            java.lang.String r0 = "instance"
            int r0 = r9.var(r0)
            r10.visitVarInsn(r7, r0)
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r31.beanInfo
            java.lang.reflect.Method r0 = r0.buildMethod
            if (r0 == 0) goto L_0x0f68
            java.lang.Class r1 = r31.getInstClass()
            java.lang.String r1 = com.alibaba.fastjson.util.ASMUtils.type(r1)
            java.lang.String r2 = r0.getName()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "()"
            r3.append(r4)
            java.lang.Class r0 = r0.getReturnType()
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.desc(r0)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r10.visitMethodInsn(r15, r1, r2, r0)
        L_0x0f68:
            r0 = 176(0xb0, float:2.47E-43)
            r10.visitInsn(r0)
            r10.visitLabel(r14)
            r12._batchSet(r9, r10)
            r0 = 0
            r10.visitVarInsn(r7, r0)
            r0 = 1
            r10.visitVarInsn(r7, r0)
            r0 = 2
            r10.visitVarInsn(r7, r0)
            r0 = 3
            r10.visitVarInsn(r7, r0)
            java.lang.String r0 = "instance"
            int r0 = r9.var(r0)
            r10.visitVarInsn(r7, r0)
            r0 = 21
            r1 = 4
            r10.visitVarInsn(r0, r1)
            int r0 = r27 / 32
            if (r27 == 0) goto L_0x0f9c
            int r1 = r27 % 32
            if (r1 == 0) goto L_0x0f9c
            int r0 = r0 + 1
        L_0x0f9c:
            r1 = 1
            if (r0 != r1) goto L_0x0fa4
            r1 = 4
            r10.visitInsn(r1)
            goto L_0x0fa9
        L_0x0fa4:
            r1 = 16
            r10.visitIntInsn(r1, r0)
        L_0x0fa9:
            r1 = 188(0xbc, float:2.63E-43)
            r2 = 10
            r10.visitIntInsn(r1, r2)
            r1 = 0
        L_0x0fb1:
            if (r1 >= r0) goto L_0x0fee
            r2 = 89
            r10.visitInsn(r2)
            if (r1 != 0) goto L_0x0fbf
            r2 = 3
            r10.visitInsn(r2)
            goto L_0x0fcc
        L_0x0fbf:
            r2 = 1
            if (r1 != r2) goto L_0x0fc7
            r2 = 4
            r10.visitInsn(r2)
            goto L_0x0fcc
        L_0x0fc7:
            r2 = 16
            r10.visitIntInsn(r2, r1)
        L_0x0fcc:
            r2 = 21
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "_asm_flag_"
            r3.append(r4)
            r3.append(r1)
            java.lang.String r3 = r3.toString()
            int r3 = r9.var(r3)
            r10.visitVarInsn(r2, r3)
            r2 = 79
            r10.visitInsn(r2)
            int r1 = r1 + 1
            goto L_0x0fb1
        L_0x0fee:
            java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> r0 = com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class
            java.lang.String r0 = com.alibaba.fastjson.util.ASMUtils.type(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "(L"
            r1.append(r2)
            java.lang.String r2 = DefaultJSONParser
            r1.append(r2)
            java.lang.String r2 = ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "parseRest"
            r10.visitMethodInsn(r15, r0, r2, r1)
            r0 = 192(0xc0, float:2.69E-43)
            java.lang.Class r1 = r31.clazz
            java.lang.String r1 = com.alibaba.fastjson.util.ASMUtils.type(r1)
            r10.visitTypeInsn(r0, r1)
            r0 = 176(0xb0, float:2.47E-43)
            r10.visitInsn(r0)
            r0 = r23
            r10.visitLabel(r0)
            r0 = 0
            r10.visitVarInsn(r7, r0)
            r0 = 1
            r10.visitVarInsn(r7, r0)
            r0 = 2
            r10.visitVarInsn(r7, r0)
            r0 = 3
            r10.visitVarInsn(r7, r0)
            r0 = 21
            r1 = 4
            r10.visitVarInsn(r0, r1)
            r0 = 183(0xb7, float:2.56E-43)
            java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> r1 = com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class
            java.lang.String r1 = com.alibaba.fastjson.util.ASMUtils.type(r1)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "(L"
            r2.append(r3)
            java.lang.String r3 = DefaultJSONParser
            r2.append(r3)
            java.lang.String r3 = ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "deserialze"
            r10.visitMethodInsn(r0, r1, r3, r2)
            r0 = 176(0xb0, float:2.47E-43)
            r10.visitInsn(r0)
            r0 = 10
            int r1 = r31.variantIndex
            r10.visitMaxs(r0, r1)
            r10.visitEnd()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory._deserialze(com.alibaba.fastjson.asm.ClassWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory$Context):void");
    }

    private void defineVarLexer(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        String str = "lexer";
        methodVisitor.visitFieldInsn(180, DefaultJSONParser, str, ASMUtils.desc(JSONLexer.class));
        methodVisitor.visitTypeInsn(192, JSONLexerBase);
        methodVisitor.visitVarInsn(58, context.var(str));
    }

    private void _createInstance(Context context, MethodVisitor methodVisitor) {
        Constructor<?> constructor = context.beanInfo.defaultConstructor;
        String str = "instance";
        if (Modifier.isPublic(constructor.getModifiers())) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(context.getInstClass()));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(constructor.getDeclaringClass()), "<init>", "()V");
            methodVisitor.visitVarInsn(58, context.var(str));
            return;
        }
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, ASMUtils.type(JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
        String type = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        sb.append(DefaultJSONParser);
        sb.append(";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
        methodVisitor.visitMethodInsn(183, type, "createInstance", sb.toString());
        methodVisitor.visitTypeInsn(192, ASMUtils.type(context.getInstClass()));
        methodVisitor.visitVarInsn(58, context.var(str));
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor) {
        _batchSet(context, methodVisitor, true);
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor, boolean z) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            Label label = new Label();
            if (z) {
                _isFlag(methodVisitor, context, i, label);
            }
            _loadAndSet(context, methodVisitor, context.fieldInfoList[i]);
            if (z) {
                methodVisitor.visitLabel(label);
            }
        }
    }

    private void _loadAndSet(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Class<?> cls = fieldInfo.fieldClass;
        Type type = fieldInfo.fieldType;
        String str = "instance";
        String str2 = "_asm";
        if (cls == Boolean.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb = new StringBuilder();
            sb.append(fieldInfo.name);
            sb.append(str2);
            methodVisitor.visitVarInsn(21, context.var(sb.toString()));
            _set(context, methodVisitor, fieldInfo);
        } else if (cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE || cls == Character.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(fieldInfo.name);
            sb2.append(str2);
            methodVisitor.visitVarInsn(21, context.var(sb2.toString()));
            _set(context, methodVisitor, fieldInfo);
        } else if (cls == Long.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb3 = new StringBuilder();
            sb3.append(fieldInfo.name);
            sb3.append(str2);
            methodVisitor.visitVarInsn(22, context.var(sb3.toString(), 2));
            if (fieldInfo.method != null) {
                methodVisitor.visitMethodInsn(182, ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), ASMUtils.desc(fieldInfo.method));
                if (!fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                    methodVisitor.visitInsn(87);
                    return;
                }
                return;
            }
            methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
        } else if (cls == Float.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb4 = new StringBuilder();
            sb4.append(fieldInfo.name);
            sb4.append(str2);
            methodVisitor.visitVarInsn(23, context.var(sb4.toString()));
            _set(context, methodVisitor, fieldInfo);
        } else if (cls == Double.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb5 = new StringBuilder();
            sb5.append(fieldInfo.name);
            sb5.append(str2);
            methodVisitor.visitVarInsn(24, context.var(sb5.toString(), 2));
            _set(context, methodVisitor, fieldInfo);
        } else if (cls == String.class) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb6 = new StringBuilder();
            sb6.append(fieldInfo.name);
            sb6.append(str2);
            methodVisitor.visitVarInsn(25, context.var(sb6.toString()));
            _set(context, methodVisitor, fieldInfo);
        } else if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb7 = new StringBuilder();
            sb7.append(fieldInfo.name);
            sb7.append(str2);
            methodVisitor.visitVarInsn(25, context.var(sb7.toString()));
            _set(context, methodVisitor, fieldInfo);
        } else if (Collection.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var(str));
            if (TypeUtils.getCollectionItemClass(type) == String.class) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append(fieldInfo.name);
                sb8.append(str2);
                methodVisitor.visitVarInsn(25, context.var(sb8.toString()));
                methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
            } else {
                StringBuilder sb9 = new StringBuilder();
                sb9.append(fieldInfo.name);
                sb9.append(str2);
                methodVisitor.visitVarInsn(25, context.var(sb9.toString()));
            }
            _set(context, methodVisitor, fieldInfo);
        } else {
            methodVisitor.visitVarInsn(25, context.var(str));
            StringBuilder sb10 = new StringBuilder();
            sb10.append(fieldInfo.name);
            sb10.append(str2);
            methodVisitor.visitVarInsn(25, context.var(sb10.toString()));
            _set(context, methodVisitor, fieldInfo);
        }
    }

    private void _set(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        if (method != null) {
            methodVisitor.visitMethodInsn(method.getDeclaringClass().isInterface() ? 185 : 182, ASMUtils.type(fieldInfo.declaringClass), method.getName(), ASMUtils.desc(method));
            if (!fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                methodVisitor.visitInsn(87);
                return;
            }
            return;
        }
        methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
    }

    private void _setContext(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("context"));
        String str = DefaultJSONParser;
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(ASMUtils.desc(ParseContext.class));
        sb.append(")V");
        methodVisitor.visitMethodInsn(182, str, "setContext", sb.toString());
        Label label = new Label();
        String str2 = "childContext";
        methodVisitor.visitVarInsn(25, context.var(str2));
        methodVisitor.visitJumpInsn(Opcodes.IFNULL, label);
        methodVisitor.visitVarInsn(25, context.var(str2));
        methodVisitor.visitVarInsn(25, context.var("instance"));
        methodVisitor.visitFieldInsn(181, ASMUtils.type(ParseContext.class), "object", "Ljava/lang/Object;");
        methodVisitor.visitLabel(label);
    }

    private void _deserialize_endCheck(Context context, MethodVisitor methodVisitor, Label label) {
        methodVisitor.visitIntInsn(21, context.var("matchedCount"));
        methodVisitor.visitJumpInsn(Opcodes.IFLE, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(Integer.valueOf(13));
        methodVisitor.visitJumpInsn(Opcodes.IF_ICMPNE, label);
        _quickNextTokenComma(context, methodVisitor);
    }

    private void _deserialze_list_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, Class<?> cls2, int i) {
        String str;
        String str2;
        Context context2 = context;
        MethodVisitor methodVisitor2 = methodVisitor;
        Label label2 = label;
        FieldInfo fieldInfo2 = fieldInfo;
        Class<?> cls3 = cls;
        Class<?> cls4 = cls2;
        int i2 = i;
        Label label3 = new Label();
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor2.visitJumpInsn(153, label3);
        _setFlag(methodVisitor2, context2, i2);
        Label label4 = new Label();
        String str3 = "lexer";
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        String str4 = "token";
        String str5 = "()I";
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(8));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label4);
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitLdcInsn(Integer.valueOf(16));
        String str6 = "(I)V";
        String str7 = "nextToken";
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str7, str6);
        methodVisitor2.visitJumpInsn(167, label3);
        methodVisitor2.visitLabel(label4);
        Label label5 = new Label();
        Label label6 = new Label();
        Label label7 = new Label();
        Label label8 = label3;
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(21));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label6);
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitLdcInsn(Integer.valueOf(14));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str7, str6);
        _newCollection(methodVisitor2, cls3, i2, true);
        methodVisitor2.visitJumpInsn(167, label5);
        methodVisitor2.visitLabel(label6);
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(14));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPEQ, label7);
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str5);
        Integer valueOf = Integer.valueOf(12);
        methodVisitor2.visitLdcInsn(valueOf);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label2);
        _newCollection(methodVisitor2, cls3, i2, false);
        StringBuilder sb = new StringBuilder();
        FieldInfo fieldInfo3 = fieldInfo;
        String str8 = str7;
        sb.append(fieldInfo3.name);
        String str9 = "_asm";
        sb.append(str9);
        methodVisitor2.visitVarInsn(58, context2.var(sb.toString()));
        Class<?> cls5 = cls2;
        String str10 = str8;
        _getCollectionFieldItemDeser(context2, methodVisitor2, fieldInfo3, cls5);
        String str11 = str4;
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(cls2)));
        methodVisitor2.visitInsn(3);
        Integer num = valueOf;
        String str12 = str6;
        methodVisitor2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        String type = ASMUtils.type(ObjectDeserializer.class);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(L");
        sb2.append(DefaultJSONParser);
        sb2.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor2.visitMethodInsn(185, type, "deserialze", sb2.toString());
        methodVisitor2.visitVarInsn(58, context2.var("list_item_value"));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(fieldInfo3.name);
        sb3.append(str9);
        methodVisitor2.visitVarInsn(25, context2.var(sb3.toString()));
        methodVisitor2.visitVarInsn(25, context2.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor2.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            methodVisitor2.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor2.visitInsn(87);
        Label label9 = label8;
        methodVisitor2.visitJumpInsn(167, label9);
        methodVisitor2.visitLabel(label7);
        _newCollection(methodVisitor2, cls3, i2, false);
        methodVisitor2.visitLabel(label5);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo3.name);
        sb4.append(str9);
        methodVisitor2.visitVarInsn(58, context2.var(sb4.toString()));
        boolean isPrimitive2 = ParserConfig.isPrimitive2(fieldInfo3.fieldClass);
        _getCollectionFieldItemDeser(context2, methodVisitor2, fieldInfo3, cls5);
        if (isPrimitive2) {
            methodVisitor2.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "getFastMatchToken", str5);
            methodVisitor2.visitVarInsn(54, context2.var("fastMatchToken"));
            methodVisitor2.visitVarInsn(25, context2.var(str3));
            methodVisitor2.visitVarInsn(21, context2.var("fastMatchToken"));
            str = str10;
            str2 = str12;
            methodVisitor2.visitMethodInsn(182, JSONLexerBase, str, str2);
        } else {
            str = str10;
            str2 = str12;
            methodVisitor2.visitInsn(87);
            methodVisitor2.visitLdcInsn(num);
            methodVisitor2.visitVarInsn(54, context2.var("fastMatchToken"));
            _quickNextToken(context2, methodVisitor2, 12);
        }
        methodVisitor2.visitVarInsn(25, 1);
        String str13 = DefaultJSONParser;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("()");
        sb5.append(ASMUtils.desc(ParseContext.class));
        methodVisitor2.visitMethodInsn(182, str13, "getContext", sb5.toString());
        methodVisitor2.visitVarInsn(58, context2.var("listContext"));
        methodVisitor2.visitVarInsn(25, 1);
        StringBuilder sb6 = new StringBuilder();
        sb6.append(fieldInfo3.name);
        sb6.append(str9);
        methodVisitor2.visitVarInsn(25, context2.var(sb6.toString()));
        methodVisitor2.visitLdcInsn(fieldInfo3.name);
        String str14 = DefaultJSONParser;
        StringBuilder sb7 = new StringBuilder();
        sb7.append("(Ljava/lang/Object;Ljava/lang/Object;)");
        sb7.append(ASMUtils.desc(ParseContext.class));
        methodVisitor2.visitMethodInsn(182, str14, "setContext", sb7.toString());
        methodVisitor2.visitInsn(87);
        Label label10 = new Label();
        Label label11 = new Label();
        methodVisitor2.visitInsn(3);
        methodVisitor2.visitVarInsn(54, context2.var("i"));
        methodVisitor2.visitLabel(label10);
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        String str15 = str11;
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str15, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(15));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPEQ, label11);
        methodVisitor2.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb8 = new StringBuilder();
        Label label12 = label9;
        sb8.append(fieldInfo3.name);
        sb8.append("_asm_list_item_deser__");
        Label label13 = label11;
        methodVisitor2.visitFieldInsn(180, access$300, sb8.toString(), ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(cls2)));
        methodVisitor2.visitVarInsn(21, context2.var("i"));
        methodVisitor2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        String type2 = ASMUtils.type(ObjectDeserializer.class);
        StringBuilder sb9 = new StringBuilder();
        sb9.append("(L");
        sb9.append(DefaultJSONParser);
        sb9.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor2.visitMethodInsn(185, type2, "deserialze", sb9.toString());
        methodVisitor2.visitVarInsn(58, context2.var("list_item_value"));
        methodVisitor2.visitIincInsn(context2.var("i"), 1);
        StringBuilder sb10 = new StringBuilder();
        sb10.append(fieldInfo3.name);
        sb10.append(str9);
        methodVisitor2.visitVarInsn(25, context2.var(sb10.toString()));
        methodVisitor2.visitVarInsn(25, context2.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor2.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            methodVisitor2.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor2.visitInsn(87);
        methodVisitor2.visitVarInsn(25, 1);
        StringBuilder sb11 = new StringBuilder();
        sb11.append(fieldInfo3.name);
        sb11.append(str9);
        methodVisitor2.visitVarInsn(25, context2.var(sb11.toString()));
        methodVisitor2.visitMethodInsn(182, DefaultJSONParser, "checkListResolve", "(Ljava/util/Collection;)V");
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str15, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(16));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label10);
        if (isPrimitive2) {
            methodVisitor2.visitVarInsn(25, context2.var(str3));
            methodVisitor2.visitVarInsn(21, context2.var("fastMatchToken"));
            methodVisitor2.visitMethodInsn(182, JSONLexerBase, str, str2);
        } else {
            _quickNextToken(context2, methodVisitor2, 12);
        }
        methodVisitor2.visitJumpInsn(167, label10);
        methodVisitor2.visitLabel(label13);
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitVarInsn(25, context2.var("listContext"));
        String str16 = DefaultJSONParser;
        StringBuilder sb12 = new StringBuilder();
        sb12.append("(");
        sb12.append(ASMUtils.desc(ParseContext.class));
        sb12.append(")V");
        methodVisitor2.visitMethodInsn(182, str16, "setContext", sb12.toString());
        methodVisitor2.visitVarInsn(25, context2.var(str3));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str15, str5);
        methodVisitor2.visitLdcInsn(Integer.valueOf(15));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label);
        _quickNextTokenComma(context, methodVisitor);
        methodVisitor2.visitLabel(label12);
    }

    private void _quickNextToken(Context context, MethodVisitor methodVisitor, int i) {
        Label label = new Label();
        Label label2 = new Label();
        String str = "lexer";
        methodVisitor.visitVarInsn(25, context.var(str));
        String str2 = "()C";
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "getCurrent", str2);
        if (i == 12) {
            methodVisitor.visitVarInsn(16, 123);
        } else if (i == 14) {
            methodVisitor.visitVarInsn(16, 91);
        } else {
            throw new IllegalStateException();
        }
        methodVisitor.visitJumpInsn(Opcodes.IF_ICMPNE, label);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", str2);
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        String str3 = "(I)V";
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", str3);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", str3);
        methodVisitor.visitLabel(label2);
    }

    private void _quickNextTokenComma(Context context, MethodVisitor methodVisitor) {
        Context context2 = context;
        MethodVisitor methodVisitor2 = methodVisitor;
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        Label label5 = new Label();
        String str = "lexer";
        methodVisitor2.visitVarInsn(25, context2.var(str));
        String str2 = "()C";
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, "getCurrent", str2);
        methodVisitor2.visitInsn(89);
        String str3 = "ch";
        methodVisitor2.visitVarInsn(54, context2.var(str3));
        methodVisitor2.visitVarInsn(16, 44);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label2);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        String str4 = "next";
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str2);
        methodVisitor2.visitInsn(87);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitLdcInsn(Integer.valueOf(16));
        String str5 = "(I)V";
        String str6 = "setToken";
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str6, str5);
        methodVisitor2.visitJumpInsn(167, label5);
        methodVisitor2.visitLabel(label2);
        methodVisitor2.visitVarInsn(21, context2.var(str3));
        methodVisitor2.visitVarInsn(16, AVException.INVALID_EMAIL_ADDRESS);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label3);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str2);
        methodVisitor2.visitInsn(87);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitLdcInsn(Integer.valueOf(13));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str6, str5);
        methodVisitor2.visitJumpInsn(167, label5);
        methodVisitor2.visitLabel(label3);
        methodVisitor2.visitVarInsn(21, context2.var(str3));
        methodVisitor2.visitVarInsn(16, 93);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label4);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str4, str2);
        methodVisitor2.visitInsn(87);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitLdcInsn(Integer.valueOf(15));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str6, str5);
        methodVisitor2.visitJumpInsn(167, label5);
        methodVisitor2.visitLabel(label4);
        methodVisitor2.visitVarInsn(21, context2.var(str3));
        methodVisitor2.visitVarInsn(16, 26);
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitLdcInsn(Integer.valueOf(20));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, str6, str5);
        methodVisitor2.visitJumpInsn(167, label5);
        methodVisitor2.visitLabel(label);
        methodVisitor2.visitVarInsn(25, context2.var(str));
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, "nextToken", "()V");
        methodVisitor2.visitLabel(label5);
    }

    private void _getCollectionFieldItemDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo.name);
        String str = "_asm_list_item_deser__";
        sb.append(str);
        methodVisitor.visitFieldInsn(180, access$300, sb.toString(), ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        String str2 = DefaultJSONParser;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("()");
        sb2.append(ASMUtils.desc(ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str2, "getConfig", sb2.toString());
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(cls)));
        String type = ASMUtils.type(ParserConfig.class);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("(Ljava/lang/reflect/Type;)");
        sb3.append(ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, type, "getDeserializer", sb3.toString());
        String access$3002 = context.className;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo.name);
        sb4.append(str);
        methodVisitor.visitFieldInsn(181, access$3002, sb4.toString(), ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        String access$3003 = context.className;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(fieldInfo.name);
        sb5.append(str);
        methodVisitor.visitFieldInsn(180, access$3003, sb5.toString(), ASMUtils.desc(ObjectDeserializer.class));
    }

    private void _newCollection(MethodVisitor methodVisitor, Class<?> cls, int i, boolean z) {
        String str = "()V";
        String str2 = "<init>";
        if (cls.isAssignableFrom(ArrayList.class) && !z) {
            String str3 = "java/util/ArrayList";
            methodVisitor.visitTypeInsn(187, str3);
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, str3, str2, str);
        } else if (cls.isAssignableFrom(LinkedList.class) && !z) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(LinkedList.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(LinkedList.class), str2, str);
        } else if (cls.isAssignableFrom(HashSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(HashSet.class), str2, str);
        } else if (cls.isAssignableFrom(TreeSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(TreeSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(TreeSet.class), str2, str);
        } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(LinkedHashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(LinkedHashSet.class), str2, str);
        } else if (z) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(HashSet.class), str2, str);
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            methodVisitor.visitMethodInsn(184, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
    }

    private void _deserialze_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, int i) {
        Context context2 = context;
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo fieldInfo2 = fieldInfo;
        Label label2 = new Label();
        Label label3 = new Label();
        methodVisitor2.visitVarInsn(25, context2.var("lexer"));
        methodVisitor2.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo2.name);
        sb.append("_asm_prefix__");
        methodVisitor2.visitFieldInsn(180, access$300, sb.toString(), "[C");
        methodVisitor2.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor2.visitJumpInsn(Opcodes.IFNE, label2);
        methodVisitor2.visitInsn(1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(fieldInfo2.name);
        sb2.append("_asm");
        methodVisitor2.visitVarInsn(58, context2.var(sb2.toString()));
        methodVisitor2.visitJumpInsn(167, label3);
        methodVisitor2.visitLabel(label2);
        int i2 = i;
        _setFlag(methodVisitor2, context2, i2);
        String str = "matchedCount";
        methodVisitor2.visitVarInsn(21, context2.var(str));
        methodVisitor2.visitInsn(4);
        methodVisitor2.visitInsn(96);
        methodVisitor2.visitVarInsn(54, context2.var(str));
        _deserObject(context, methodVisitor, fieldInfo, cls, i2);
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitMethodInsn(182, DefaultJSONParser, "getResolveStatus", "()I");
        methodVisitor2.visitLdcInsn(Integer.valueOf(1));
        methodVisitor2.visitJumpInsn(Opcodes.IF_ICMPNE, label3);
        methodVisitor2.visitVarInsn(25, 1);
        String str2 = DefaultJSONParser;
        StringBuilder sb3 = new StringBuilder();
        String str3 = "()";
        sb3.append(str3);
        sb3.append(ASMUtils.desc(ResolveTask.class));
        methodVisitor2.visitMethodInsn(182, str2, "getLastResolveTask", sb3.toString());
        String str4 = "resolveTask";
        methodVisitor2.visitVarInsn(58, context2.var(str4));
        methodVisitor2.visitVarInsn(25, context2.var(str4));
        methodVisitor2.visitVarInsn(25, 1);
        String str5 = DefaultJSONParser;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str3);
        sb4.append(ASMUtils.desc(ParseContext.class));
        methodVisitor2.visitMethodInsn(182, str5, "getContext", sb4.toString());
        methodVisitor2.visitFieldInsn(181, ASMUtils.type(ResolveTask.class), "ownerContext", ASMUtils.desc(ParseContext.class));
        methodVisitor2.visitVarInsn(25, context2.var(str4));
        methodVisitor2.visitVarInsn(25, 0);
        methodVisitor2.visitLdcInsn(fieldInfo2.name);
        String type = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("(Ljava/lang/String;)");
        sb5.append(ASMUtils.desc(FieldDeserializer.class));
        methodVisitor2.visitMethodInsn(182, type, "getFieldDeserializer", sb5.toString());
        methodVisitor2.visitFieldInsn(181, ASMUtils.type(ResolveTask.class), "fieldDeserializer", ASMUtils.desc(FieldDeserializer.class));
        methodVisitor2.visitVarInsn(25, 1);
        methodVisitor2.visitLdcInsn(Integer.valueOf(0));
        methodVisitor2.visitMethodInsn(182, DefaultJSONParser, "setResolveStatus", "(I)V");
        methodVisitor2.visitLabel(label3);
    }

    private void _deserObject(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls, int i) {
        Context context2 = context;
        MethodVisitor methodVisitor2 = methodVisitor;
        FieldInfo fieldInfo2 = fieldInfo;
        _getFieldDeser(context, methodVisitor, fieldInfo);
        Label label = new Label();
        Label label2 = new Label();
        String str = "_asm";
        String str2 = "(L";
        String str3 = "deserialze";
        String str4 = "(I)Ljava/lang/reflect/Type;";
        String str5 = "getFieldType";
        if ((fieldInfo2.parserFeatures & Feature.SupportArrayToBean.mask) != 0) {
            methodVisitor2.visitInsn(89);
            methodVisitor2.visitTypeInsn(Opcodes.INSTANCEOF, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor2.visitJumpInsn(153, label);
            methodVisitor2.visitTypeInsn(192, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor2.visitVarInsn(25, 1);
            if (fieldInfo2.fieldType instanceof Class) {
                methodVisitor2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo2.fieldClass)));
            } else {
                methodVisitor2.visitVarInsn(25, 0);
                methodVisitor2.visitLdcInsn(Integer.valueOf(i));
                methodVisitor2.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), str5, str4);
            }
            methodVisitor2.visitLdcInsn(fieldInfo2.name);
            methodVisitor2.visitLdcInsn(Integer.valueOf(fieldInfo2.parserFeatures));
            String type = ASMUtils.type(JavaBeanDeserializer.class);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(DefaultJSONParser);
            sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            methodVisitor2.visitMethodInsn(182, type, str3, sb.toString());
            methodVisitor2.visitTypeInsn(192, ASMUtils.type(cls));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(fieldInfo2.name);
            sb2.append(str);
            methodVisitor2.visitVarInsn(58, context2.var(sb2.toString()));
            methodVisitor2.visitJumpInsn(167, label2);
            methodVisitor2.visitLabel(label);
        }
        methodVisitor2.visitVarInsn(25, 1);
        if (fieldInfo2.fieldType instanceof Class) {
            methodVisitor2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo2.fieldClass)));
        } else {
            methodVisitor2.visitVarInsn(25, 0);
            methodVisitor2.visitLdcInsn(Integer.valueOf(i));
            methodVisitor2.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), str5, str4);
        }
        methodVisitor2.visitLdcInsn(fieldInfo2.name);
        String type2 = ASMUtils.type(ObjectDeserializer.class);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        sb3.append(DefaultJSONParser);
        sb3.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor2.visitMethodInsn(185, type2, str3, sb3.toString());
        methodVisitor2.visitTypeInsn(192, ASMUtils.type(cls));
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo2.name);
        sb4.append(str);
        methodVisitor2.visitVarInsn(58, context2.var(sb4.toString()));
        methodVisitor2.visitLabel(label2);
    }

    private void _getFieldDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        String access$300 = context.className;
        StringBuilder sb = new StringBuilder();
        sb.append(fieldInfo.name);
        String str = "_asm_deser__";
        sb.append(str);
        methodVisitor.visitFieldInsn(180, access$300, sb.toString(), ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        String str2 = DefaultJSONParser;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("()");
        sb2.append(ASMUtils.desc(ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str2, "getConfig", sb2.toString());
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        String type = ASMUtils.type(ParserConfig.class);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("(Ljava/lang/reflect/Type;)");
        sb3.append(ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, type, "getDeserializer", sb3.toString());
        String access$3002 = context.className;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(fieldInfo.name);
        sb4.append(str);
        methodVisitor.visitFieldInsn(181, access$3002, sb4.toString(), ASMUtils.desc(ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        String access$3003 = context.className;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(fieldInfo.name);
        sb5.append(str);
        methodVisitor.visitFieldInsn(180, access$3003, sb5.toString(), ASMUtils.desc(ObjectDeserializer.class));
    }

    private void _init(ClassWriter classWriter, Context context) {
        String str;
        String str2;
        ClassWriter classWriter2 = classWriter;
        int length = context.fieldInfoList.length;
        int i = 0;
        while (true) {
            str = "[C";
            str2 = "_asm_prefix__";
            if (i >= length) {
                break;
            }
            FieldInfo fieldInfo = context.fieldInfoList[i];
            StringBuilder sb = new StringBuilder();
            sb.append(fieldInfo.name);
            sb.append(str2);
            new FieldWriter(classWriter, 1, sb.toString(), str).visitEnd();
            i++;
        }
        for (FieldInfo fieldInfo2 : context.fieldInfoList) {
            Class<?> cls = fieldInfo2.fieldClass;
            if (!cls.isPrimitive()) {
                if (Collection.class.isAssignableFrom(cls)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(fieldInfo2.name);
                    sb2.append("_asm_list_item_deser__");
                    new FieldWriter(classWriter, 1, sb2.toString(), ASMUtils.desc(ObjectDeserializer.class)).visitEnd();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(fieldInfo2.name);
                    sb3.append("_asm_deser__");
                    new FieldWriter(classWriter, 1, sb3.toString(), ASMUtils.desc(ObjectDeserializer.class)).visitEnd();
                }
            }
        }
        StringBuilder sb4 = new StringBuilder();
        String str3 = "(";
        sb4.append(str3);
        sb4.append(ASMUtils.desc(ParserConfig.class));
        sb4.append(ASMUtils.desc(JavaBeanInfo.class));
        String str4 = ")V";
        sb4.append(str4);
        MethodWriter methodWriter = new MethodWriter(classWriter, 1, "<init>", sb4.toString(), null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        String type = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sb5 = new StringBuilder();
        sb5.append(str3);
        sb5.append(ASMUtils.desc(ParserConfig.class));
        sb5.append(ASMUtils.desc(JavaBeanInfo.class));
        sb5.append(str4);
        methodWriter.visitMethodInsn(183, type, "<init>", sb5.toString());
        for (FieldInfo fieldInfo3 : context.fieldInfoList) {
            methodWriter.visitVarInsn(25, 0);
            StringBuilder sb6 = new StringBuilder();
            sb6.append("\"");
            sb6.append(fieldInfo3.name);
            sb6.append("\":");
            methodWriter.visitLdcInsn(sb6.toString());
            methodWriter.visitMethodInsn(182, "java/lang/String", "toCharArray", "()[C");
            String access$300 = context.className;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(fieldInfo3.name);
            sb7.append(str2);
            methodWriter.visitFieldInsn(181, access$300, sb7.toString(), str);
        }
        methodWriter.visitInsn(Opcodes.RETURN);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
    }

    private void _createInstance(ClassWriter classWriter, Context context) {
        if (Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            StringBuilder sb = new StringBuilder();
            sb.append("(L");
            sb.append(DefaultJSONParser);
            sb.append(";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
            ClassWriter classWriter2 = classWriter;
            MethodWriter methodWriter = new MethodWriter(classWriter2, 1, "createInstance", sb.toString(), null, null);
            methodWriter.visitTypeInsn(187, ASMUtils.type(context.getInstClass()));
            methodWriter.visitInsn(89);
            methodWriter.visitMethodInsn(183, ASMUtils.type(context.getInstClass()), "<init>", "()V");
            methodWriter.visitInsn(176);
            methodWriter.visitMaxs(3, 3);
            methodWriter.visitEnd();
        }
    }
}
