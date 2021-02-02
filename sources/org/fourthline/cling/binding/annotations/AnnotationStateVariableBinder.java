package org.fourthline.cling.binding.annotations;

import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.AllowedValueProvider;
import org.fourthline.cling.binding.AllowedValueRangeProvider;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.meta.StateVariableAllowedValueRange;
import org.fourthline.cling.model.meta.StateVariableEventDetails;
import org.fourthline.cling.model.meta.StateVariableTypeDetails;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.Datatype.Default;

public class AnnotationStateVariableBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());
    protected StateVariableAccessor accessor;
    protected UpnpStateVariable annotation;
    protected String name;
    protected Set<Class> stringConvertibleTypes;

    public AnnotationStateVariableBinder(UpnpStateVariable upnpStateVariable, String str, StateVariableAccessor stateVariableAccessor, Set<Class> set) {
        this.annotation = upnpStateVariable;
        this.name = str;
        this.accessor = stateVariableAccessor;
        this.stringConvertibleTypes = set;
    }

    public UpnpStateVariable getAnnotation() {
        return this.annotation;
    }

    public String getName() {
        return this.name;
    }

    public StateVariableAccessor getAccessor() {
        return this.accessor;
    }

    public Set<Class> getStringConvertibleTypes() {
        return this.stringConvertibleTypes;
    }

    /* access modifiers changed from: protected */
    public StateVariable createStateVariable() throws LocalServiceBindingException {
        String[] strArr;
        int i;
        boolean z;
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating state variable '");
        sb.append(getName());
        sb.append("' with accessor: ");
        sb.append(getAccessor());
        logger.fine(sb.toString());
        Datatype createDatatype = createDatatype();
        String createDefaultValue = createDefaultValue(createDatatype);
        StateVariableAllowedValueRange stateVariableAllowedValueRange = null;
        String str = "Default value '";
        int i2 = 0;
        if (Builtin.STRING.equals(createDatatype.getBuiltin())) {
            if (getAnnotation().allowedValueProvider() != Void.TYPE) {
                strArr = getAllowedValuesFromProvider();
            } else if (getAnnotation().allowedValues().length > 0) {
                strArr = getAnnotation().allowedValues();
            } else if (getAnnotation().allowedValuesEnum() != Void.TYPE) {
                strArr = getAllowedValues(getAnnotation().allowedValuesEnum());
            } else if (getAccessor() == null || !getAccessor().getReturnType().isEnum()) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Not restricting allowed values (of string typed state var): ");
                sb2.append(getName());
                logger2.finer(sb2.toString());
                strArr = null;
            } else {
                strArr = getAllowedValues(getAccessor().getReturnType());
            }
            if (!(strArr == null || createDefaultValue == null)) {
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    } else if (strArr[i3].equals(createDefaultValue)) {
                        z = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append(createDefaultValue);
                    sb3.append("' is not in allowed values of: ");
                    sb3.append(getName());
                    throw new LocalServiceBindingException(sb3.toString());
                }
            }
        } else {
            strArr = null;
        }
        if (Builtin.isNumeric(createDatatype.getBuiltin())) {
            if (getAnnotation().allowedValueRangeProvider() != Void.TYPE) {
                stateVariableAllowedValueRange = getAllowedRangeFromProvider();
            } else if (getAnnotation().allowedValueMinimum() > 0 || getAnnotation().allowedValueMaximum() > 0) {
                stateVariableAllowedValueRange = getAllowedValueRange(getAnnotation().allowedValueMinimum(), getAnnotation().allowedValueMaximum(), getAnnotation().allowedValueStep());
            } else {
                Logger logger3 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Not restricting allowed value range (of numeric typed state var): ");
                sb4.append(getName());
                logger3.finer(sb4.toString());
            }
            if (!(createDefaultValue == null || stateVariableAllowedValueRange == null)) {
                try {
                    if (!stateVariableAllowedValueRange.isInRange(Long.valueOf(createDefaultValue).longValue())) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(str);
                        sb5.append(createDefaultValue);
                        sb5.append("' is not in allowed range of: ");
                        sb5.append(getName());
                        throw new LocalServiceBindingException(sb5.toString());
                    }
                } catch (Exception unused) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(str);
                    sb6.append(createDefaultValue);
                    sb6.append("' is not numeric (for range checking) of: ");
                    sb6.append(getName());
                    throw new LocalServiceBindingException(sb6.toString());
                }
            }
        }
        boolean sendEvents = getAnnotation().sendEvents();
        if (!sendEvents || getAccessor() != null) {
            if (sendEvents) {
                if (getAnnotation().eventMaximumRateMilliseconds() > 0) {
                    Logger logger4 = log;
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Moderating state variable events using maximum rate (milliseconds): ");
                    sb7.append(getAnnotation().eventMaximumRateMilliseconds());
                    logger4.finer(sb7.toString());
                    i = getAnnotation().eventMaximumRateMilliseconds();
                } else {
                    i = 0;
                }
                if (getAnnotation().eventMinimumDelta() > 0 && Builtin.isNumeric(createDatatype.getBuiltin())) {
                    Logger logger5 = log;
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append("Moderating state variable events using minimum delta: ");
                    sb8.append(getAnnotation().eventMinimumDelta());
                    logger5.finer(sb8.toString());
                    i2 = getAnnotation().eventMinimumDelta();
                }
            } else {
                i = 0;
            }
            return new StateVariable(getName(), new StateVariableTypeDetails(createDatatype, createDefaultValue, strArr, stateVariableAllowedValueRange), new StateVariableEventDetails(sendEvents, i, i2));
        }
        StringBuilder sb9 = new StringBuilder();
        sb9.append("State variable sends events but has no accessor for field or getter: ");
        sb9.append(getName());
        throw new LocalServiceBindingException(sb9.toString());
    }

    /* access modifiers changed from: protected */
    public Datatype createDatatype() throws LocalServiceBindingException {
        String datatype = getAnnotation().datatype();
        if (datatype.length() == 0 && getAccessor() != null) {
            Class returnType = getAccessor().getReturnType();
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Using accessor return type as state variable type: ");
            sb.append(returnType);
            logger.finer(sb.toString());
            if (ModelUtil.isStringConvertibleType(getStringConvertibleTypes(), returnType)) {
                log.finer("Return type is string-convertible, using string datatype");
                return Default.STRING.getBuiltinType().getDatatype();
            }
            Default byJavaType = Default.getByJavaType(returnType);
            if (byJavaType != null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Return type has default UPnP datatype: ");
                sb2.append(byJavaType);
                logger2.finer(sb2.toString());
                return byJavaType.getBuiltinType().getDatatype();
            }
        }
        if ((datatype == null || datatype.length() == 0) && (getAnnotation().allowedValues().length > 0 || getAnnotation().allowedValuesEnum() != Void.TYPE)) {
            log.finer("State variable has restricted allowed values, hence using 'string' datatype");
            datatype = "string";
        }
        if (datatype == null || datatype.length() == 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Could not detect datatype of state variable: ");
            sb3.append(getName());
            throw new LocalServiceBindingException(sb3.toString());
        }
        Logger logger3 = log;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Trying to find built-in UPnP datatype for detected name: ");
        sb4.append(datatype);
        logger3.finer(sb4.toString());
        Builtin byDescriptorName = Builtin.getByDescriptorName(datatype);
        if (byDescriptorName != null) {
            Logger logger4 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Found built-in UPnP datatype: ");
            sb5.append(byDescriptorName);
            logger4.finer(sb5.toString());
            return byDescriptorName.getDatatype();
        }
        throw new LocalServiceBindingException("No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)");
    }

    /* access modifiers changed from: protected */
    public String createDefaultValue(Datatype datatype) throws LocalServiceBindingException {
        if (getAnnotation().defaultValue().length() == 0) {
            return null;
        }
        try {
            datatype.valueOf(getAnnotation().defaultValue());
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Found state variable default value: ");
            sb.append(getAnnotation().defaultValue());
            logger.finer(sb.toString());
            return getAnnotation().defaultValue();
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Default value doesn't match datatype of state variable '");
            sb2.append(getName());
            sb2.append("': ");
            sb2.append(e.getMessage());
            throw new LocalServiceBindingException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public String[] getAllowedValues(Class cls) throws LocalServiceBindingException {
        if (cls.isEnum()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Restricting allowed values of state variable to Enum: ");
            sb.append(getName());
            logger.finer(sb.toString());
            String[] strArr = new String[cls.getEnumConstants().length];
            int i = 0;
            while (i < cls.getEnumConstants().length) {
                Object obj = cls.getEnumConstants()[i];
                if (obj.toString().length() <= 32) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Adding allowed value (converted to string): ");
                    sb2.append(obj.toString());
                    logger2.finer(sb2.toString());
                    strArr[i] = obj.toString();
                    i++;
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Allowed value string (that is, Enum constant name) is longer than 32 characters: ");
                    sb3.append(obj.toString());
                    throw new LocalServiceBindingException(sb3.toString());
                }
            }
            return strArr;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Allowed values type is not an Enum: ");
        sb4.append(cls);
        throw new LocalServiceBindingException(sb4.toString());
    }

    /* access modifiers changed from: protected */
    public StateVariableAllowedValueRange getAllowedValueRange(long j, long j2, long j3) throws LocalServiceBindingException {
        if (j2 >= j) {
            StateVariableAllowedValueRange stateVariableAllowedValueRange = new StateVariableAllowedValueRange(j, j2, j3);
            return stateVariableAllowedValueRange;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Allowed value range maximum is smaller than minimum: ");
        sb.append(getName());
        throw new LocalServiceBindingException(sb.toString());
    }

    /* access modifiers changed from: protected */
    public String[] getAllowedValuesFromProvider() throws LocalServiceBindingException {
        Class allowedValueProvider = getAnnotation().allowedValueProvider();
        if (AllowedValueProvider.class.isAssignableFrom(allowedValueProvider)) {
            try {
                return ((AllowedValueProvider) allowedValueProvider.newInstance()).getValues();
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Allowed value provider can't be instantiated: ");
                sb.append(getName());
                throw new LocalServiceBindingException(sb.toString(), e);
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Allowed value provider is not of type ");
            sb2.append(AllowedValueProvider.class);
            sb2.append(": ");
            sb2.append(getName());
            throw new LocalServiceBindingException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public StateVariableAllowedValueRange getAllowedRangeFromProvider() throws LocalServiceBindingException {
        Class allowedValueRangeProvider = getAnnotation().allowedValueRangeProvider();
        if (AllowedValueRangeProvider.class.isAssignableFrom(allowedValueRangeProvider)) {
            try {
                AllowedValueRangeProvider allowedValueRangeProvider2 = (AllowedValueRangeProvider) allowedValueRangeProvider.newInstance();
                return getAllowedValueRange(allowedValueRangeProvider2.getMinimum(), allowedValueRangeProvider2.getMaximum(), allowedValueRangeProvider2.getStep());
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Allowed value range provider can't be instantiated: ");
                sb.append(getName());
                throw new LocalServiceBindingException(sb.toString(), e);
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Allowed value range provider is not of type ");
            sb2.append(AllowedValueRangeProvider.class);
            sb2.append(": ");
            sb2.append(getName());
            throw new LocalServiceBindingException(sb2.toString());
        }
    }
}
