package org.fourthline.cling.model.types.csv;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.Datatype.Default;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Reflections;

public abstract class CSV<T> extends ArrayList<T> {
    protected final Builtin datatype = getBuiltinDatatype();

    public CSV() {
    }

    public CSV(String str) throws InvalidValueException {
        addAll(parseString(str));
    }

    /* access modifiers changed from: protected */
    public List parseString(String str) throws InvalidValueException {
        String[] fromCommaSeparatedList = ModelUtil.fromCommaSeparatedList(str);
        ArrayList arrayList = new ArrayList();
        for (String valueOf : fromCommaSeparatedList) {
            arrayList.add(this.datatype.getDatatype().valueOf(valueOf));
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public Builtin getBuiltinDatatype() throws InvalidValueException {
        Class cls = (Class) Reflections.getTypeArguments(ArrayList.class, getClass()).get(0);
        Default byJavaType = Default.getByJavaType(cls);
        if (byJavaType != null) {
            return byJavaType.getBuiltinType();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No built-in UPnP datatype for Java type of CSV: ");
        sb.append(cls);
        throw new InvalidValueException(sb.toString());
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            arrayList.add(this.datatype.getDatatype().getString(it.next()));
        }
        return ModelUtil.toCommaSeparatedList(arrayList.toArray(new Object[arrayList.size()]));
    }
}
