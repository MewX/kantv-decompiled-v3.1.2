package com.alibaba.fastjson.asm;

import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public class TypeCollector {
    private static final Map<String, String> primitives = new HashMap<String, String>() {
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", "S");
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };
    protected MethodCollector collector = null;
    private final String methodName;
    private final Class<?>[] parameterTypes;

    public TypeCollector(String str, Class<?>[] clsArr) {
        this.methodName = str;
        this.parameterTypes = clsArr;
    }

    /* access modifiers changed from: protected */
    public MethodCollector visitMethod(int i, String str, String str2) {
        if (this.collector != null || !str.equals(this.methodName)) {
            return null;
        }
        Type[] argumentTypes = Type.getArgumentTypes(str2);
        int i2 = 0;
        for (Type className : argumentTypes) {
            String className2 = className.getClassName();
            if (className2.equals("long") || className2.equals("double")) {
                i2++;
            }
        }
        if (argumentTypes.length != this.parameterTypes.length) {
            return null;
        }
        for (int i3 = 0; i3 < argumentTypes.length; i3++) {
            if (!correctTypeName(argumentTypes[i3], this.parameterTypes[i3].getName())) {
                return null;
            }
        }
        MethodCollector methodCollector = new MethodCollector(Modifier.isStatic(i) ^ true ? 1 : 0, argumentTypes.length + i2);
        this.collector = methodCollector;
        return methodCollector;
    }

    private boolean correctTypeName(Type type, String str) {
        String className = type.getClassName();
        String str2 = "";
        String str3 = str2;
        while (className.endsWith("[]")) {
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append("[");
            str3 = sb.toString();
            className = className.substring(0, className.length() - 2);
        }
        if (!str3.equals(str2)) {
            if (primitives.containsKey(className)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append((String) primitives.get(className));
                className = sb2.toString();
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str3);
                sb3.append("L");
                sb3.append(className);
                sb3.append(";");
                className = sb3.toString();
            }
        }
        return className.equals(str);
    }

    public String[] getParameterNamesForMethod() {
        MethodCollector methodCollector = this.collector;
        if (methodCollector == null || !methodCollector.debugInfoPresent) {
            return new String[0];
        }
        return this.collector.getResult().split(",");
    }
}
