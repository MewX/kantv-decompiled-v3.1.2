package org.fourthline.cling.model.state;

import java.lang.reflect.Field;
import org.seamless.util.Reflections;

public class FieldStateVariableAccessor extends StateVariableAccessor {
    protected Field field;

    public FieldStateVariableAccessor(Field field2) {
        this.field = field2;
    }

    public Field getField() {
        return this.field;
    }

    public Class<?> getReturnType() {
        return getField().getType();
    }

    public Object read(Object obj) throws Exception {
        return Reflections.get(this.field, obj);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" Field: ");
        sb.append(getField());
        return sb.toString();
    }
}
