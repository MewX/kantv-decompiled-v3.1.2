package com.alibaba.fastjson.util;

import com.alibaba.fastjson.annotation.JSONField;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public class FieldInfo implements Comparable<FieldInfo> {
    public final String[] alternateNames;
    public final Class<?> declaringClass;
    public final Field field;
    public final boolean fieldAccess;
    private final JSONField fieldAnnotation;
    public final Class<?> fieldClass;
    public final boolean fieldTransient;
    public final Type fieldType;
    public final String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final boolean jsonDirect;
    public final String label;
    public final Method method;
    private final JSONField methodAnnotation;
    public final String name;
    public final char[] name_chars;
    private int ordinal = 0;
    public final int parserFeatures;
    public final int serialzeFeatures;
    public final boolean unwrapped;

    public FieldInfo(String str, Class<?> cls, Class<?> cls2, Type type, Field field2, int i, int i2, int i3) {
        this.name = str;
        this.declaringClass = cls;
        this.fieldClass = cls2;
        this.fieldType = type;
        this.method = null;
        this.field = field2;
        this.ordinal = i;
        this.serialzeFeatures = i2;
        this.parserFeatures = i3;
        this.isEnum = cls2.isEnum();
        if (field2 != null) {
            int modifiers = field2.getModifiers();
            this.fieldAccess = (modifiers & 1) != 0 || this.method == null;
            this.fieldTransient = Modifier.isTransient(modifiers);
        } else {
            this.fieldTransient = false;
            this.fieldAccess = false;
        }
        this.name_chars = genFieldNameChars();
        if (field2 != null) {
            TypeUtils.setAccessible(field2);
        }
        this.label = "";
        this.fieldAnnotation = null;
        this.methodAnnotation = null;
        this.getOnly = false;
        this.jsonDirect = false;
        this.unwrapped = false;
        this.format = null;
        this.alternateNames = new String[0];
    }

    public FieldInfo(String str, Method method2, Field field2, Class<?> cls, Type type, int i, int i2, int i3, JSONField jSONField, JSONField jSONField2, String str2) {
        boolean z;
        Type type2;
        boolean z2;
        Class<?> cls2;
        Type type3;
        Class<Object> cls3;
        if (field2 != null) {
            String name2 = field2.getName();
            if (name2.equals(str)) {
                str = name2;
            }
        }
        this.name = str;
        this.method = method2;
        this.field = field2;
        this.ordinal = i;
        this.serialzeFeatures = i2;
        this.parserFeatures = i3;
        this.fieldAnnotation = jSONField;
        this.methodAnnotation = jSONField2;
        boolean z3 = true;
        if (field2 != null) {
            int modifiers = field2.getModifiers();
            this.fieldAccess = (modifiers & 1) != 0 || method2 == null;
            this.fieldTransient = Modifier.isTransient(modifiers) || TypeUtils.isTransient(method2);
        } else {
            this.fieldAccess = false;
            this.fieldTransient = false;
        }
        if (str2 == null || str2.length() <= 0) {
            this.label = "";
        } else {
            this.label = str2;
        }
        JSONField annotation = getAnnotation();
        String str3 = null;
        if (annotation != null) {
            String format2 = annotation.format();
            if (format2.trim().length() != 0) {
                str3 = format2;
            }
            z = annotation.jsonDirect();
            this.unwrapped = annotation.unwrapped();
            this.alternateNames = annotation.alternateNames();
        } else {
            this.unwrapped = false;
            this.alternateNames = new String[0];
            z = false;
        }
        this.format = str3;
        this.name_chars = genFieldNameChars();
        if (method2 != null) {
            TypeUtils.setAccessible(method2);
        }
        if (field2 != null) {
            TypeUtils.setAccessible(field2);
        }
        if (method2 != null) {
            Class<Object>[] parameterTypes = method2.getParameterTypes();
            if (parameterTypes.length == 1) {
                cls3 = parameterTypes[0];
                type2 = method2.getGenericParameterTypes()[0];
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Object.class) {
                cls3 = parameterTypes[0];
                type2 = cls3;
            } else {
                cls3 = method2.getReturnType();
                type2 = method2.getGenericReturnType();
                z2 = true;
                this.declaringClass = method2.getDeclaringClass();
                cls2 = cls3;
            }
            z2 = false;
            this.declaringClass = method2.getDeclaringClass();
            cls2 = cls3;
        } else {
            cls2 = field2.getType();
            type2 = field2.getGenericType();
            this.declaringClass = field2.getDeclaringClass();
            z2 = Modifier.isFinal(field2.getModifiers());
        }
        this.getOnly = z2;
        if (!z || cls2 != String.class) {
            z3 = false;
        }
        this.jsonDirect = z3;
        if (cls != 0 && cls2 == Object.class && (type2 instanceof TypeVariable)) {
            Type inheritGenericType = getInheritGenericType(cls, type, (TypeVariable) type2);
            if (inheritGenericType != null) {
                this.fieldClass = TypeUtils.getClass(inheritGenericType);
                this.fieldType = inheritGenericType;
                this.isEnum = cls2.isEnum();
                return;
            }
        }
        if (!(type2 instanceof Class)) {
            if (type == 0) {
                type = cls;
            }
            type3 = getFieldType(cls, type, type2);
            if (type3 != type2) {
                if (type3 instanceof ParameterizedType) {
                    cls2 = TypeUtils.getClass(type3);
                } else if (type3 instanceof Class) {
                    cls2 = TypeUtils.getClass(type3);
                }
            }
        } else {
            type3 = type2;
        }
        this.fieldType = type3;
        this.fieldClass = cls2;
        this.isEnum = cls2.isEnum();
    }

    /* access modifiers changed from: protected */
    public char[] genFieldNameChars() {
        int length = this.name.length();
        char[] cArr = new char[(length + 3)];
        String str = this.name;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        return cArr;
    }

    public <T extends Annotation> T getAnnation(Class<T> cls) {
        if (cls == JSONField.class) {
            return getAnnotation();
        }
        T t = null;
        Method method2 = this.method;
        if (method2 != null) {
            t = method2.getAnnotation(cls);
        }
        if (t == null) {
            Field field2 = this.field;
            if (field2 != null) {
                t = field2.getAnnotation(cls);
            }
        }
        return t;
    }

    public static Type getFieldType(Class<?> cls, Type type, Type type2) {
        ParameterizedType parameterizedType;
        TypeVariable[] typeVariableArr;
        if (!(cls == null || type == null)) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type fieldType2 = getFieldType(cls, type, genericComponentType);
                return genericComponentType != fieldType2 ? Array.newInstance(TypeUtils.getClass(fieldType2), 0).getClass() : type2;
            } else if (!TypeUtils.isGenericParamType(type)) {
                return type2;
            } else {
                if (type2 instanceof TypeVariable) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) TypeUtils.getGenericParamType(type);
                    TypeVariable typeVariable = (TypeVariable) type2;
                    TypeVariable[] typeParameters = TypeUtils.getClass(parameterizedType2).getTypeParameters();
                    for (int i = 0; i < typeParameters.length; i++) {
                        if (typeParameters[i].getName().equals(typeVariable.getName())) {
                            return parameterizedType2.getActualTypeArguments()[i];
                        }
                    }
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                    Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                    if (type instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) type;
                        typeVariableArr = cls.getTypeParameters();
                    } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                        typeVariableArr = cls.getSuperclass().getTypeParameters();
                    } else {
                        typeVariableArr = type.getClass().getTypeParameters();
                        parameterizedType = parameterizedType3;
                    }
                    if (getArgument(actualTypeArguments, typeVariableArr, parameterizedType.getActualTypeArguments())) {
                        return new ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType());
                    }
                }
            }
        }
        return type2;
    }

    private static boolean getArgument(Type[] typeArr, TypeVariable[] typeVariableArr, Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < typeArr.length; i++) {
            ParameterizedType parameterizedType = typeArr[i];
            if (parameterizedType instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = parameterizedType;
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                if (getArgument(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i] = new ParameterizedTypeImpl(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType());
                    z = true;
                }
            } else if (parameterizedType instanceof TypeVariable) {
                boolean z2 = z;
                for (int i2 = 0; i2 < typeVariableArr.length; i2++) {
                    if (parameterizedType.equals(typeVariableArr[i2])) {
                        typeArr[i] = typeArr2[i2];
                        z2 = true;
                    }
                }
                z = z2;
            }
        }
        return z;
    }

    private static Type getInheritGenericType(Class<?> cls, Type type, TypeVariable<?> typeVariable) {
        Type[] typeArr;
        Type type2 = null;
        Class<?> cls2 = typeVariable.getGenericDeclaration() instanceof Class ? (Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            typeArr = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            Type[] typeArr2 = null;
            while (cls != null && cls != Object.class && cls != cls2) {
                Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof ParameterizedType) {
                    Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                    getArgument(actualTypeArguments, cls.getTypeParameters(), typeArr2);
                    typeArr2 = actualTypeArguments;
                }
                cls = cls.getSuperclass();
            }
            typeArr = typeArr2;
        }
        if (typeArr == null) {
            return null;
        }
        TypeVariable[] typeParameters = cls2.getTypeParameters();
        int i = 0;
        while (true) {
            if (i >= typeParameters.length) {
                break;
            } else if (typeVariable.equals(typeParameters[i])) {
                type2 = typeArr[i];
                break;
            } else {
                i++;
            }
        }
        return type2;
    }

    public String toString() {
        return this.name;
    }

    public Member getMember() {
        Method method2 = this.method;
        if (method2 != null) {
            return method2;
        }
        return this.field;
    }

    /* access modifiers changed from: protected */
    public Class<?> getDeclaredClass() {
        Method method2 = this.method;
        if (method2 != null) {
            return method2.getDeclaringClass();
        }
        Field field2 = this.field;
        if (field2 != null) {
            return field2.getDeclaringClass();
        }
        return null;
    }

    public int compareTo(FieldInfo fieldInfo) {
        int i = this.ordinal;
        int i2 = fieldInfo.ordinal;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int compareTo = this.name.compareTo(fieldInfo.name);
        if (compareTo != 0) {
            return compareTo;
        }
        Class declaredClass = getDeclaredClass();
        Class declaredClass2 = fieldInfo.getDeclaredClass();
        if (!(declaredClass == null || declaredClass2 == null || declaredClass == declaredClass2)) {
            if (declaredClass.isAssignableFrom(declaredClass2)) {
                return -1;
            }
            if (declaredClass2.isAssignableFrom(declaredClass)) {
                return 1;
            }
        }
        Field field2 = this.field;
        boolean z = false;
        boolean z2 = field2 != null && field2.getType() == this.fieldClass;
        Field field3 = fieldInfo.field;
        if (field3 != null && field3.getType() == fieldInfo.fieldClass) {
            z = true;
        }
        if (z2 && !z) {
            return 1;
        }
        if (z && !z2) {
            return -1;
        }
        if (fieldInfo.fieldClass.isPrimitive() && !this.fieldClass.isPrimitive()) {
            return 1;
        }
        if (this.fieldClass.isPrimitive() && !fieldInfo.fieldClass.isPrimitive()) {
            return -1;
        }
        String str = "java.";
        if (fieldInfo.fieldClass.getName().startsWith(str) && !this.fieldClass.getName().startsWith(str)) {
            return 1;
        }
        if (!this.fieldClass.getName().startsWith(str) || fieldInfo.fieldClass.getName().startsWith(str)) {
            return this.fieldClass.getName().compareTo(fieldInfo.fieldClass.getName());
        }
        return -1;
    }

    public JSONField getAnnotation() {
        JSONField jSONField = this.fieldAnnotation;
        if (jSONField != null) {
            return jSONField;
        }
        return this.methodAnnotation;
    }

    public String getFormat() {
        return this.format;
    }

    public Object get(Object obj) throws IllegalAccessException, InvocationTargetException {
        Method method2 = this.method;
        if (method2 != null) {
            return method2.invoke(obj, new Object[0]);
        }
        return this.field.get(obj);
    }

    public void set(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        Method method2 = this.method;
        if (method2 != null) {
            method2.invoke(obj, new Object[]{obj2});
            return;
        }
        this.field.set(obj, obj2);
    }

    public void setAccessible() throws SecurityException {
        Method method2 = this.method;
        if (method2 != null) {
            TypeUtils.setAccessible(method2);
        } else {
            TypeUtils.setAccessible(this.field);
        }
    }
}
