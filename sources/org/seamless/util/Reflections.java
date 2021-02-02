package org.seamless.util;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class Reflections {
    public static Object invoke(Method method, Object obj, Object... objArr) throws Exception {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not invoke method by reflection: ");
            sb.append(toString(method));
            String sb2 = sb.toString();
            if (objArr != null && objArr.length > 0) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(sb2);
                sb3.append(" with parameters: (");
                sb3.append(toClassNameString(", ", objArr));
                sb3.append(')');
                sb2 = sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb2);
            sb4.append(" on: ");
            sb4.append(obj.getClass().getName());
            throw new IllegalArgumentException(sb4.toString(), e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof Exception) {
                throw ((Exception) e2.getCause());
            }
            throw e2;
        }
    }

    public static Object get(Field field, Object obj) throws Exception {
        boolean isAccessible = field.isAccessible();
        try {
            field.setAccessible(true);
            Object obj2 = field.get(obj);
            field.setAccessible(isAccessible);
            return obj2;
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not get field value by reflection: ");
            sb.append(toString(field));
            sb.append(" on: ");
            sb.append(obj.getClass().getName());
            throw new IllegalArgumentException(sb.toString(), e);
        } catch (Throwable th) {
            field.setAccessible(isAccessible);
            throw th;
        }
    }

    public static Method getMethod(Class cls, String str) {
        Class cls2 = cls;
        while (cls2 != null && cls2 != Object.class) {
            try {
                return cls2.getDeclaredMethod(str, new Class[0]);
            } catch (NoSuchMethodException unused) {
                cls2 = cls2.getSuperclass();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No such method: ");
        sb.append(cls.getName());
        sb.append('.');
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void set(Field field, Object obj, Object obj2) throws Exception {
        String str;
        boolean isAccessible = field.isAccessible();
        try {
            field.setAccessible(true);
            field.set(obj, obj2);
            field.setAccessible(isAccessible);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not set field value by reflection: ");
            sb.append(toString(field));
            sb.append(" on: ");
            sb.append(field.getDeclaringClass().getName());
            String sb2 = sb.toString();
            if (obj2 == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(sb2);
                sb3.append(" with null value");
                str = sb3.toString();
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sb2);
                sb4.append(" with value: ");
                sb4.append(obj2.getClass());
                str = sb4.toString();
            }
            throw new IllegalArgumentException(str, e);
        } catch (Throwable th) {
            field.setAccessible(isAccessible);
            throw th;
        }
    }

    public static String getMethodPropertyName(String str) {
        if (str.startsWith("get")) {
            return decapitalize(str.substring(3));
        }
        if (str.startsWith("is")) {
            return decapitalize(str.substring(2));
        }
        if (str.startsWith("set")) {
            return decapitalize(str.substring(3));
        }
        return null;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class, code=java.lang.Class<java.lang.Object>, for r6v0, types: [java.lang.Class] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.reflect.Method getGetterMethod(java.lang.Class<java.lang.Object> r6, java.lang.String r7) {
        /*
        L_0x0000:
            if (r6 == 0) goto L_0x0054
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            if (r6 == r0) goto L_0x0054
            java.lang.reflect.Method[] r0 = r6.getDeclaredMethods()
            int r1 = r0.length
            r2 = 0
        L_0x000c:
            if (r2 >= r1) goto L_0x004f
            r3 = r0[r2]
            java.lang.String r4 = r3.getName()
            java.lang.Class[] r5 = r3.getParameterTypes()
            int r5 = r5.length
            if (r5 == 0) goto L_0x001c
            goto L_0x004c
        L_0x001c:
            java.lang.String r5 = "get"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L_0x0034
            r5 = 3
            java.lang.String r4 = r4.substring(r5)
            java.lang.String r4 = decapitalize(r4)
            boolean r4 = r4.equals(r7)
            if (r4 == 0) goto L_0x004c
            return r3
        L_0x0034:
            java.lang.String r5 = "is"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L_0x004c
            r5 = 2
            java.lang.String r4 = r4.substring(r5)
            java.lang.String r4 = decapitalize(r4)
            boolean r4 = r4.equals(r7)
            if (r4 == 0) goto L_0x004c
            return r3
        L_0x004c:
            int r2 = r2 + 1
            goto L_0x000c
        L_0x004f:
            java.lang.Class r6 = r6.getSuperclass()
            goto L_0x0000
        L_0x0054:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.getGetterMethod(java.lang.Class, java.lang.String):java.lang.reflect.Method");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class, code=java.lang.Class<java.lang.Object>, for r6v0, types: [java.lang.Class] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<java.lang.reflect.Method> getMethods(java.lang.Class<java.lang.Object> r6, java.lang.Class r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L_0x0005:
            if (r6 == 0) goto L_0x0026
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r6 == r1) goto L_0x0026
            java.lang.reflect.Method[] r1 = r6.getDeclaredMethods()
            int r2 = r1.length
            r3 = 0
        L_0x0011:
            if (r3 >= r2) goto L_0x0021
            r4 = r1[r3]
            boolean r5 = r4.isAnnotationPresent(r7)
            if (r5 == 0) goto L_0x001e
            r0.add(r4)
        L_0x001e:
            int r3 = r3 + 1
            goto L_0x0011
        L_0x0021:
            java.lang.Class r6 = r6.getSuperclass()
            goto L_0x0005
        L_0x0026:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.getMethods(java.lang.Class, java.lang.Class):java.util.List");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class, code=java.lang.Class<java.lang.Object>, for r1v0, types: [java.lang.Class] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.reflect.Field getField(java.lang.Class<java.lang.Object> r1, java.lang.String r2) {
        /*
        L_0x0000:
            if (r1 == 0) goto L_0x0010
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            if (r1 == r0) goto L_0x0010
            java.lang.reflect.Field r1 = r1.getDeclaredField(r2)     // Catch:{ NoSuchFieldException -> 0x000b }
            return r1
        L_0x000b:
            java.lang.Class r1 = r1.getSuperclass()
            goto L_0x0000
        L_0x0010:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.getField(java.lang.Class, java.lang.String):java.lang.reflect.Field");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class, code=java.lang.Class<java.lang.Object>, for r6v0, types: [java.lang.Class] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<java.lang.reflect.Field> getFields(java.lang.Class<java.lang.Object> r6, java.lang.Class r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L_0x0005:
            if (r6 == 0) goto L_0x0026
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r6 == r1) goto L_0x0026
            java.lang.reflect.Field[] r1 = r6.getDeclaredFields()
            int r2 = r1.length
            r3 = 0
        L_0x0011:
            if (r3 >= r2) goto L_0x0021
            r4 = r1[r3]
            boolean r5 = r4.isAnnotationPresent(r7)
            if (r5 == 0) goto L_0x001e
            r0.add(r4)
        L_0x001e:
            int r3 = r3 + 1
            goto L_0x0011
        L_0x0021:
            java.lang.Class r6 = r6.getSuperclass()
            goto L_0x0005
        L_0x0026:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.getFields(java.lang.Class, java.lang.Class):java.util.List");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class<? extends T>, code=java.lang.reflect.Type, for r8v0, types: [java.lang.Class<? extends T>, java.lang.reflect.Type] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T> java.util.List<java.lang.Class<?>> getTypeArguments(java.lang.Class<T> r7, java.lang.reflect.Type r8) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
        L_0x0005:
            java.lang.Class r1 = getClass(r8)
            boolean r1 = r1.equals(r7)
            r2 = 0
            if (r1 != 0) goto L_0x0044
            boolean r1 = r8 instanceof java.lang.Class
            if (r1 == 0) goto L_0x001b
            java.lang.Class r8 = (java.lang.Class) r8
            java.lang.reflect.Type r8 = r8.getGenericSuperclass()
            goto L_0x0005
        L_0x001b:
            r1 = r8
            java.lang.reflect.ParameterizedType r1 = (java.lang.reflect.ParameterizedType) r1
            java.lang.reflect.Type r3 = r1.getRawType()
            java.lang.Class r3 = (java.lang.Class) r3
            java.lang.reflect.Type[] r1 = r1.getActualTypeArguments()
            java.lang.reflect.TypeVariable[] r4 = r3.getTypeParameters()
        L_0x002c:
            int r5 = r1.length
            if (r2 >= r5) goto L_0x0039
            r5 = r4[r2]
            r6 = r1[r2]
            r0.put(r5, r6)
            int r2 = r2 + 1
            goto L_0x002c
        L_0x0039:
            boolean r1 = r3.equals(r7)
            if (r1 != 0) goto L_0x0005
            java.lang.reflect.Type r8 = r3.getGenericSuperclass()
            goto L_0x0005
        L_0x0044:
            boolean r7 = r8 instanceof java.lang.Class
            if (r7 == 0) goto L_0x004f
            java.lang.Class r8 = (java.lang.Class) r8
            java.lang.reflect.TypeVariable[] r7 = r8.getTypeParameters()
            goto L_0x0055
        L_0x004f:
            java.lang.reflect.ParameterizedType r8 = (java.lang.reflect.ParameterizedType) r8
            java.lang.reflect.Type[] r7 = r8.getActualTypeArguments()
        L_0x0055:
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            int r1 = r7.length
        L_0x005b:
            if (r2 >= r1) goto L_0x0076
            r3 = r7[r2]
        L_0x005f:
            boolean r4 = r0.containsKey(r3)
            if (r4 == 0) goto L_0x006c
            java.lang.Object r3 = r0.get(r3)
            java.lang.reflect.Type r3 = (java.lang.reflect.Type) r3
            goto L_0x005f
        L_0x006c:
            java.lang.Class r3 = getClass(r3)
            r8.add(r3)
            int r2 = r2 + 1
            goto L_0x005b
        L_0x0076:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.getTypeArguments(java.lang.Class, java.lang.Class):java.util.List");
    }

    public static Class<?> getClass(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getClass(((ParameterizedType) type).getRawType());
        }
        if (type instanceof GenericArrayType) {
            Class cls = getClass(((GenericArrayType) type).getGenericComponentType());
            if (cls != null) {
                return Array.newInstance(cls, 0).getClass();
            }
        }
        return null;
    }

    public static Object getAndWrap(Field field, Object obj) {
        boolean isAccessible = field.isAccessible();
        try {
            field.setAccessible(true);
            Object obj2 = get(field, obj);
            field.setAccessible(isAccessible);
            return obj2;
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("exception setting: ");
            sb.append(field.getName());
            throw new IllegalArgumentException(sb.toString(), e);
        } catch (Throwable th) {
            field.setAccessible(isAccessible);
            throw th;
        }
    }

    public static void setAndWrap(Field field, Object obj, Object obj2) {
        boolean isAccessible = field.isAccessible();
        try {
            field.setAccessible(true);
            set(field, obj, obj2);
            field.setAccessible(isAccessible);
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("exception setting: ");
            sb.append(field.getName());
            throw new IllegalArgumentException(sb.toString(), e);
        } catch (Throwable th) {
            field.setAccessible(isAccessible);
            throw th;
        }
    }

    public static Object invokeAndWrap(Method method, Object obj, Object... objArr) {
        try {
            return invoke(method, obj, objArr);
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("exception invoking: ");
            sb.append(method.getName());
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public static String toString(Member member) {
        StringBuilder sb = new StringBuilder();
        sb.append(unqualify(member.getDeclaringClass().getName()));
        sb.append('.');
        sb.append(member.getName());
        return sb.toString();
    }

    public static Class classForName(String str) throws ClassNotFoundException {
        try {
            return Thread.currentThread().getContextClassLoader().loadClass(str);
        } catch (Exception unused) {
            return Class.forName(str);
        }
    }

    public static boolean isClassAvailable(String str) {
        try {
            classForName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static Class getCollectionElementType(Type type) {
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length != 0) {
                Type type2 = actualTypeArguments.length == 1 ? actualTypeArguments[0] : actualTypeArguments[1];
                if (type2 instanceof ParameterizedType) {
                    type2 = ((ParameterizedType) type2).getRawType();
                }
                if (type2 instanceof Class) {
                    return (Class) type2;
                }
                throw new IllegalArgumentException("type argument not a class");
            }
            throw new IllegalArgumentException("no type arguments for collection type");
        }
        throw new IllegalArgumentException("collection type not parameterized");
    }

    public static Class getMapKeyType(Type type) {
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length != 0) {
                Type type2 = actualTypeArguments[0];
                if (type2 instanceof Class) {
                    return (Class) type2;
                }
                throw new IllegalArgumentException("type argument not a class");
            }
            throw new IllegalArgumentException("no type arguments for collection type");
        }
        throw new IllegalArgumentException("collection type not parameterized");
    }

    public static Method getSetterMethod(Class cls, String str) {
        Method[] methods;
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            if (name.startsWith("set") && method.getParameterTypes().length == 1 && decapitalize(name.substring(3)).equals(str)) {
                return method;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("no such setter method: ");
        sb.append(cls.getName());
        sb.append('.');
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    public static Method getMethod(Annotation annotation, String str) {
        try {
            return annotation.annotationType().getMethod(str, new Class[0]);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Class, code=java.lang.Class<java.lang.Object>, for r1v0, types: [java.lang.Class] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isInstanceOf(java.lang.Class<java.lang.Object> r1, java.lang.String r2) {
        /*
            if (r2 == 0) goto L_0x0015
        L_0x0002:
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            if (r1 == r0) goto L_0x0013
            boolean r0 = instanceOf(r1, r2)
            if (r0 == 0) goto L_0x000e
            r1 = 1
            return r1
        L_0x000e:
            java.lang.Class r1 = r1.getSuperclass()
            goto L_0x0002
        L_0x0013:
            r1 = 0
            return r1
        L_0x0015:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "name cannot be null"
            r1.<init>(r2)
            goto L_0x001e
        L_0x001d:
            throw r1
        L_0x001e:
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Reflections.isInstanceOf(java.lang.Class, java.lang.String):boolean");
    }

    private static boolean instanceOf(Class cls, String str) {
        if (str.equals(cls.getName())) {
            return true;
        }
        Class[] interfaces = cls.getInterfaces();
        boolean z = false;
        for (int i = 0; i < interfaces.length && !z; i++) {
            z = instanceOf(interfaces[i], str);
        }
        return z;
    }

    public static String toClassNameString(String str, Object... objArr) {
        if (objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(str);
            if (obj == null) {
                sb.append("null");
            } else {
                sb.append(obj.getClass().getName());
            }
        }
        return sb.substring(str.length());
    }

    public static String unqualify(String str) {
        return unqualify(str, '.');
    }

    public static String unqualify(String str, char c) {
        return str.substring(str.lastIndexOf(c) + 1, str.length());
    }

    public static String decapitalize(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0 || (str.length() > 1 && Character.isUpperCase(str.charAt(1)))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }
}
