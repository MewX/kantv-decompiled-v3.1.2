package org.fourthline.cling.model.state;

import java.lang.reflect.Method;
import org.seamless.util.Reflections;

public class GetterStateVariableAccessor extends StateVariableAccessor {
    private Method getter;

    public GetterStateVariableAccessor(Method method) {
        this.getter = method;
    }

    public Method getGetter() {
        return this.getter;
    }

    public Class<?> getReturnType() {
        return getGetter().getReturnType();
    }

    public Object read(Object obj) throws Exception {
        return Reflections.invoke(getGetter(), obj, new Object[0]);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" Method: ");
        sb.append(getGetter());
        return sb.toString();
    }
}
