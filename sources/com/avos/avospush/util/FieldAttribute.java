package com.avos.avospush.util;

import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import java.lang.reflect.Method;

public class FieldAttribute {
    String aliaName;
    String fieldName;
    Class<?> fieldType;
    Method getterMethod;
    Method setterMethod;

    public FieldAttribute(String str, String str2, Method method, Method method2, Class<?> cls) {
        this.aliaName = str2;
        this.fieldName = str;
        this.getterMethod = method;
        this.setterMethod = method2;
        this.fieldType = cls;
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public void setFieldName(String str) {
        this.fieldName = str;
    }

    public Method getGetterMethod() {
        return this.getterMethod;
    }

    public void setGetterMethod(Method method) {
        this.getterMethod = method;
    }

    public Method getSetterMethod() {
        return this.setterMethod;
    }

    public void setSetterMethod(Method method) {
        this.setterMethod = method;
    }

    public String getAliaName() {
        return AVUtils.isBlankString(this.aliaName) ? this.fieldName : this.aliaName;
    }

    public void setAliaName(String str) {
        this.aliaName = str;
    }

    public Class<?> getFieldType() {
        return this.fieldType;
    }

    public void setFieldType(Class<?> cls) {
        this.fieldType = cls;
    }

    public Object get(Object obj) {
        try {
            if (this.getterMethod != null) {
                return this.getterMethod.invoke(obj, new Object[0]);
            }
            throw new RuntimeException();
        } catch (Exception unused) {
            if (AVOSCloud.isDebugLogEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to invoke getter:");
                sb.append(this.fieldName);
                avlog.d(sb.toString());
            }
            return null;
        }
    }

    public void set(Object obj, Object obj2) {
        try {
            if (this.setterMethod != null) {
                this.setterMethod.invoke(obj, new Object[]{obj2});
                return;
            }
            throw new RuntimeException();
        } catch (Exception unused) {
            if (AVOSCloud.isDebugLogEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to invoke setter:");
                sb.append(this.fieldName);
                avlog.d(sb.toString());
            }
        }
    }
}
