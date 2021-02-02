package org.fourthline.cling.model.types;

import java.lang.reflect.ParameterizedType;
import org.fourthline.cling.model.types.Datatype.Builtin;

public abstract class AbstractDatatype<V> implements Datatype<V> {
    private Builtin builtin;

    public V valueOf(String str) throws InvalidValueException {
        return null;
    }

    /* access modifiers changed from: protected */
    public Class<V> getValueType() {
        return (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public boolean isHandlingJavaType(Class cls) {
        return getValueType().isAssignableFrom(cls);
    }

    public Builtin getBuiltin() {
        return this.builtin;
    }

    public void setBuiltin(Builtin builtin2) {
        this.builtin = builtin2;
    }

    public String getString(V v) throws InvalidValueException {
        if (v == null) {
            return "";
        }
        if (isValid(v)) {
            return v.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Value is not valid: ");
        sb.append(v);
        throw new InvalidValueException(sb.toString());
    }

    public boolean isValid(V v) {
        return v == null || getValueType().isAssignableFrom(v.getClass());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }

    public String getDisplayString() {
        if (this instanceof CustomDatatype) {
            return ((CustomDatatype) this).getName();
        }
        if (getBuiltin() != null) {
            return getBuiltin().getDescriptorName();
        }
        return getValueType().getSimpleName();
    }
}
