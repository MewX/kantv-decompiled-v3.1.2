package com.alibaba.fastjson.util;

import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class ASMUtils {
    public static final boolean IS_ANDROID = isAndroid(JAVA_VM_NAME);
    public static final String JAVA_VM_NAME = System.getProperty("java.vm.name");

    public static boolean isAndroid(String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.contains("dalvik") || lowerCase.contains("lemur")) {
            z = true;
        }
        return z;
    }

    public static String desc(Method method) {
        Class[] parameterTypes = method.getParameterTypes();
        StringBuilder sb = new StringBuilder((parameterTypes.length + 1) << 4);
        sb.append('(');
        for (Class desc : parameterTypes) {
            sb.append(desc(desc));
        }
        sb.append(')');
        sb.append(desc(method.getReturnType()));
        return sb.toString();
    }

    public static String desc(Class<?> cls) {
        if (cls.isPrimitive()) {
            return getPrimitiveLetter(cls);
        }
        if (cls.isArray()) {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(desc(cls.getComponentType()));
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("L");
        sb2.append(type(cls));
        sb2.append(";");
        return sb2.toString();
    }

    public static String type(Class<?> cls) {
        if (cls.isArray()) {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(desc(cls.getComponentType()));
            return sb.toString();
        } else if (!cls.isPrimitive()) {
            return cls.getName().replace('.', '/');
        } else {
            return getPrimitiveLetter(cls);
        }
    }

    public static String getPrimitiveLetter(Class<?> cls) {
        if (Integer.TYPE == cls) {
            return "I";
        }
        if (Void.TYPE == cls) {
            return "V";
        }
        if (Boolean.TYPE == cls) {
            return "Z";
        }
        if (Character.TYPE == cls) {
            return "C";
        }
        if (Byte.TYPE == cls) {
            return "B";
        }
        if (Short.TYPE == cls) {
            return "S";
        }
        if (Float.TYPE == cls) {
            return "F";
        }
        if (Long.TYPE == cls) {
            return "J";
        }
        if (Double.TYPE == cls) {
            return "D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Type: ");
        sb.append(cls.getCanonicalName());
        sb.append(" is not a primitive type");
        throw new IllegalStateException(sb.toString());
    }

    public static Type getMethodType(Class<?> cls, String str) {
        try {
            return cls.getMethod(str, new Class[0]).getGenericReturnType();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean checkName(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < 1 || charAt > 127 || charAt == '.') {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:24|25|26|27) */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0072, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0079, code lost:
        return new java.lang.String[0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x007a, code lost:
        com.alibaba.fastjson.util.IOUtils.close(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x007d, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0074 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String[] lookupParameterNames(java.lang.reflect.AccessibleObject r7) {
        /*
            boolean r0 = IS_ANDROID
            r1 = 0
            if (r0 == 0) goto L_0x0008
            java.lang.String[] r7 = new java.lang.String[r1]
            return r7
        L_0x0008:
            boolean r0 = r7 instanceof java.lang.reflect.Method
            if (r0 == 0) goto L_0x001b
            java.lang.reflect.Method r7 = (java.lang.reflect.Method) r7
            java.lang.Class[] r0 = r7.getParameterTypes()
            java.lang.String r2 = r7.getName()
            java.lang.Class r7 = r7.getDeclaringClass()
            goto L_0x0027
        L_0x001b:
            java.lang.reflect.Constructor r7 = (java.lang.reflect.Constructor) r7
            java.lang.Class[] r0 = r7.getParameterTypes()
            java.lang.Class r7 = r7.getDeclaringClass()
            java.lang.String r2 = "<init>"
        L_0x0027:
            int r3 = r0.length
            if (r3 != 0) goto L_0x002d
            java.lang.String[] r7 = new java.lang.String[r1]
            return r7
        L_0x002d:
            java.lang.ClassLoader r3 = r7.getClassLoader()
            if (r3 != 0) goto L_0x0037
            java.lang.ClassLoader r3 = java.lang.ClassLoader.getSystemClassLoader()
        L_0x0037:
            java.lang.String r7 = r7.getName()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r5 = 46
            r6 = 47
            java.lang.String r7 = r7.replace(r5, r6)
            r4.append(r7)
            java.lang.String r7 = ".class"
            r4.append(r7)
            java.lang.String r7 = r4.toString()
            java.io.InputStream r7 = r3.getResourceAsStream(r7)
            if (r7 != 0) goto L_0x005d
            java.lang.String[] r7 = new java.lang.String[r1]
            return r7
        L_0x005d:
            com.alibaba.fastjson.asm.ClassReader r3 = new com.alibaba.fastjson.asm.ClassReader     // Catch:{ IOException -> 0x0074 }
            r3.<init>(r7)     // Catch:{ IOException -> 0x0074 }
            com.alibaba.fastjson.asm.TypeCollector r4 = new com.alibaba.fastjson.asm.TypeCollector     // Catch:{ IOException -> 0x0074 }
            r4.<init>(r2, r0)     // Catch:{ IOException -> 0x0074 }
            r3.accept(r4)     // Catch:{ IOException -> 0x0074 }
            java.lang.String[] r0 = r4.getParameterNamesForMethod()     // Catch:{ IOException -> 0x0074 }
            com.alibaba.fastjson.util.IOUtils.close(r7)
            return r0
        L_0x0072:
            r0 = move-exception
            goto L_0x007a
        L_0x0074:
            java.lang.String[] r0 = new java.lang.String[r1]     // Catch:{ all -> 0x0072 }
            com.alibaba.fastjson.util.IOUtils.close(r7)
            return r0
        L_0x007a:
            com.alibaba.fastjson.util.IOUtils.close(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.ASMUtils.lookupParameterNames(java.lang.reflect.AccessibleObject):java.lang.String[]");
    }
}
