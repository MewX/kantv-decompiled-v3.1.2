package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;

public class StateVariableTypeDetails implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariableTypeDetails.class.getName());
    private final StateVariableAllowedValueRange allowedValueRange;
    private final String[] allowedValues;
    private final Datatype datatype;
    private final String defaultValue;

    public StateVariableTypeDetails(Datatype datatype2) {
        this(datatype2, null, null, null);
    }

    public StateVariableTypeDetails(Datatype datatype2, String str) {
        this(datatype2, str, null, null);
    }

    public StateVariableTypeDetails(Datatype datatype2, String str, String[] strArr, StateVariableAllowedValueRange stateVariableAllowedValueRange) {
        this.datatype = datatype2;
        this.defaultValue = str;
        this.allowedValues = strArr;
        this.allowedValueRange = stateVariableAllowedValueRange;
    }

    public Datatype getDatatype() {
        return this.datatype;
    }

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public String[] getAllowedValues() {
        if (foundDefaultInAllowedValues(this.defaultValue, this.allowedValues)) {
            return this.allowedValues;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(this.allowedValues));
        arrayList.add(getDefaultValue());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public StateVariableAllowedValueRange getAllowedValueRange() {
        return this.allowedValueRange;
    }

    /* access modifiers changed from: protected */
    public boolean foundDefaultInAllowedValues(String str, String[] strArr) {
        if (str == null || strArr == null) {
            return true;
        }
        for (String equals : strArr) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public List<ValidationError> validate() {
        String[] allowedValues2;
        ArrayList arrayList = new ArrayList();
        if (getDatatype() == null) {
            arrayList.add(new ValidationError(getClass(), "datatype", "Service state variable has no datatype"));
        }
        if (getAllowedValues() != null) {
            String str = "allowedValues";
            if (getAllowedValueRange() != null) {
                arrayList.add(new ValidationError(getClass(), str, "Allowed value list of state variable can not also be restricted with allowed value range"));
            }
            if (!Builtin.STRING.equals(getDatatype().getBuiltin())) {
                Class cls = getClass();
                StringBuilder sb = new StringBuilder();
                sb.append("Allowed value list of state variable only available for string datatype, not: ");
                sb.append(getDatatype());
                arrayList.add(new ValidationError(cls, str, sb.toString()));
            }
            for (String str2 : getAllowedValues()) {
                if (str2.length() > 31) {
                    Logger logger = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("UPnP specification violation, allowed value string must be less than 32 chars: ");
                    sb2.append(str2);
                    logger.warning(sb2.toString());
                }
            }
            if (!foundDefaultInAllowedValues(this.defaultValue, this.allowedValues)) {
                Logger logger2 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("UPnP specification violation, allowed string values don't contain default value: ");
                sb3.append(this.defaultValue);
                logger2.warning(sb3.toString());
            }
        }
        if (getAllowedValueRange() != null) {
            arrayList.addAll(getAllowedValueRange().validate());
        }
        return arrayList;
    }
}
