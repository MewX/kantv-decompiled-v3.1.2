package org.fourthline.cling.binding.annotations;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.action.ActionExecutor;
import org.fourthline.cling.model.action.MethodActionExecutor;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.ActionArgument.Direction;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.state.GetterStateVariableAccessor;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.Datatype.Default;
import org.seamless.util.Reflections;

public class AnnotationActionBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());
    protected UpnpAction annotation;
    protected Method method;
    protected Map<StateVariable, StateVariableAccessor> stateVariables;
    protected Set<Class> stringConvertibleTypes;

    public AnnotationActionBinder(Method method2, Map<StateVariable, StateVariableAccessor> map, Set<Class> set) {
        this.annotation = (UpnpAction) method2.getAnnotation(UpnpAction.class);
        this.stateVariables = map;
        this.method = method2;
        this.stringConvertibleTypes = set;
    }

    public UpnpAction getAnnotation() {
        return this.annotation;
    }

    public Map<StateVariable, StateVariableAccessor> getStateVariables() {
        return this.stateVariables;
    }

    public Method getMethod() {
        return this.method;
    }

    public Set<Class> getStringConvertibleTypes() {
        return this.stringConvertibleTypes;
    }

    public Action appendAction(Map<Action, ActionExecutor> map) throws LocalServiceBindingException {
        String str;
        if (getAnnotation().name().length() != 0) {
            str = getAnnotation().name();
        } else {
            str = AnnotationLocalServiceBinder.toUpnpActionName(getMethod().getName());
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating action and executor: ");
        sb.append(str);
        logger.fine(sb.toString());
        List createInputArguments = createInputArguments();
        Map createOutputArguments = createOutputArguments();
        createInputArguments.addAll(createOutputArguments.keySet());
        Action action = new Action(str, (ActionArgument[]) createInputArguments.toArray(new ActionArgument[createInputArguments.size()]));
        map.put(action, createExecutor(createOutputArguments));
        return action;
    }

    /* access modifiers changed from: protected */
    public ActionExecutor createExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map) {
        return new MethodActionExecutor(map, getMethod());
    }

    /* access modifiers changed from: protected */
    public List<ActionArgument> createInputArguments() throws LocalServiceBindingException {
        Annotation[] annotationArr;
        ArrayList arrayList = new ArrayList();
        Annotation[][] parameterAnnotations = getMethod().getParameterAnnotations();
        int i = 0;
        int i2 = 0;
        while (i < parameterAnnotations.length) {
            int i3 = i2;
            for (Annotation annotation2 : parameterAnnotations[i]) {
                if (annotation2 instanceof UpnpInputArgument) {
                    UpnpInputArgument upnpInputArgument = (UpnpInputArgument) annotation2;
                    i3++;
                    String name = upnpInputArgument.name();
                    StateVariable findRelatedStateVariable = findRelatedStateVariable(upnpInputArgument.stateVariable(), name, getMethod().getName());
                    if (findRelatedStateVariable != null) {
                        validateType(findRelatedStateVariable, getMethod().getParameterTypes()[i]);
                        arrayList.add(new ActionArgument(name, upnpInputArgument.aliases(), findRelatedStateVariable.getName(), Direction.IN));
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Could not detected related state variable of argument: ");
                        sb.append(name);
                        throw new LocalServiceBindingException(sb.toString());
                    }
                }
            }
            i++;
            i2 = i3;
        }
        if (i2 >= getMethod().getParameterTypes().length || RemoteClientInfo.class.isAssignableFrom(this.method.getParameterTypes()[this.method.getParameterTypes().length - 1])) {
            return arrayList;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Method has parameters that are not input arguments: ");
        sb2.append(getMethod().getName());
        throw new LocalServiceBindingException(sb2.toString());
    }

    /* access modifiers changed from: protected */
    public Map<ActionArgument<LocalService>, StateVariableAccessor> createOutputArguments() throws LocalServiceBindingException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        UpnpAction upnpAction = (UpnpAction) getMethod().getAnnotation(UpnpAction.class);
        if (upnpAction.out().length == 0) {
            return linkedHashMap;
        }
        int i = 0;
        boolean z = true;
        if (upnpAction.out().length <= 1) {
            z = false;
        }
        UpnpOutputArgument[] out = upnpAction.out();
        int length = out.length;
        while (i < length) {
            UpnpOutputArgument upnpOutputArgument = out[i];
            String name = upnpOutputArgument.name();
            StateVariable findRelatedStateVariable = findRelatedStateVariable(upnpOutputArgument.stateVariable(), name, getMethod().getName());
            if (findRelatedStateVariable == null && upnpOutputArgument.getterName().length() > 0) {
                findRelatedStateVariable = findRelatedStateVariable(null, null, upnpOutputArgument.getterName());
            }
            if (findRelatedStateVariable != null) {
                StateVariableAccessor findOutputArgumentAccessor = findOutputArgumentAccessor(findRelatedStateVariable, upnpOutputArgument.getterName(), z);
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Found related state variable for output argument '");
                sb.append(name);
                sb.append("': ");
                sb.append(findRelatedStateVariable);
                logger.finer(sb.toString());
                linkedHashMap.put(new ActionArgument(name, findRelatedStateVariable.getName(), Direction.OUT, !z), findOutputArgumentAccessor);
                i++;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Related state variable not found for output argument: ");
                sb2.append(name);
                throw new LocalServiceBindingException(sb2.toString());
            }
        }
        return linkedHashMap;
    }

    /* access modifiers changed from: protected */
    public StateVariableAccessor findOutputArgumentAccessor(StateVariable stateVariable, String str, boolean z) throws LocalServiceBindingException {
        String str2 = "Declared getter method '";
        if (getMethod().getReturnType().equals(Void.TYPE)) {
            if (str == null || str.length() <= 0) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Action method is void, trying to find existing accessor of related: ");
                sb.append(stateVariable);
                logger.finer(sb.toString());
                return (StateVariableAccessor) getStateVariables().get(stateVariable);
            }
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Action method is void, will use getter method named: ");
            sb2.append(str);
            logger2.finer(sb2.toString());
            Method method2 = Reflections.getMethod(getMethod().getDeclaringClass(), str);
            if (method2 != null) {
                validateType(stateVariable, method2.getReturnType());
                return new GetterStateVariableAccessor(method2);
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str2);
            sb3.append(str);
            sb3.append("' not found on: ");
            sb3.append(getMethod().getDeclaringClass());
            throw new LocalServiceBindingException(sb3.toString());
        } else if (str == null || str.length() <= 0) {
            if (!z) {
                Logger logger3 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Action method is not void, will use the returned instance: ");
                sb4.append(getMethod().getReturnType());
                logger3.finer(sb4.toString());
                validateType(stateVariable, getMethod().getReturnType());
            }
            return null;
        } else {
            Logger logger4 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Action method is not void, will use getter method on returned instance: ");
            sb5.append(str);
            logger4.finer(sb5.toString());
            Method method3 = Reflections.getMethod(getMethod().getReturnType(), str);
            if (method3 != null) {
                validateType(stateVariable, method3.getReturnType());
                return new GetterStateVariableAccessor(method3);
            }
            StringBuilder sb6 = new StringBuilder();
            sb6.append(str2);
            sb6.append(str);
            sb6.append("' not found on return type: ");
            sb6.append(getMethod().getReturnType());
            throw new LocalServiceBindingException(sb6.toString());
        }
    }

    /* access modifiers changed from: protected */
    public StateVariable findRelatedStateVariable(String str, String str2, String str3) throws LocalServiceBindingException {
        StateVariable stateVariable = (str == null || str.length() <= 0) ? null : getStateVariable(str);
        if (stateVariable == null && str2 != null && str2.length() > 0) {
            String upnpStateVariableName = AnnotationLocalServiceBinder.toUpnpStateVariableName(str2);
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Finding related state variable with argument name (converted to UPnP name): ");
            sb.append(upnpStateVariableName);
            logger.finer(sb.toString());
            stateVariable = getStateVariable(str2);
        }
        if (stateVariable == null && str2 != null && str2.length() > 0) {
            String upnpStateVariableName2 = AnnotationLocalServiceBinder.toUpnpStateVariableName(str2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Constants.ARG_TYPE_PREFIX);
            sb2.append(upnpStateVariableName2);
            String sb3 = sb2.toString();
            Logger logger2 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Finding related state variable with prefixed argument name (converted to UPnP name): ");
            sb4.append(sb3);
            logger2.finer(sb4.toString());
            stateVariable = getStateVariable(sb3);
        }
        if (stateVariable != null || str3 == null || str3.length() <= 0) {
            return stateVariable;
        }
        String methodPropertyName = Reflections.getMethodPropertyName(str3);
        if (methodPropertyName == null) {
            return stateVariable;
        }
        Logger logger3 = log;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("Finding related state variable with method property name: ");
        sb5.append(methodPropertyName);
        logger3.finer(sb5.toString());
        return getStateVariable(AnnotationLocalServiceBinder.toUpnpStateVariableName(methodPropertyName));
    }

    /* access modifiers changed from: protected */
    public void validateType(StateVariable stateVariable, Class cls) throws LocalServiceBindingException {
        Default defaultR;
        if (ModelUtil.isStringConvertibleType(getStringConvertibleTypes(), cls)) {
            defaultR = Default.STRING;
        } else {
            defaultR = Default.getByJavaType(cls);
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Expecting '");
        sb.append(stateVariable);
        sb.append("' to match default mapping: ");
        sb.append(defaultR);
        logger.finer(sb.toString());
        String str = "State variable '";
        if (defaultR != null && !stateVariable.getTypeDetails().getDatatype().isHandlingJavaType(defaultR.getJavaType())) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(stateVariable);
            sb2.append("' datatype can't handle action ");
            sb2.append("argument's Java type (change one): ");
            sb2.append(defaultR.getJavaType());
            throw new LocalServiceBindingException(sb2.toString());
        } else if (defaultR != null || stateVariable.getTypeDetails().getDatatype().getBuiltin() == null) {
            log.finer("State variable matches required argument datatype (or can't be validated because it is custom)");
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(stateVariable);
            sb3.append("' should be custom datatype ");
            sb3.append("(action argument type is unknown Java type): ");
            sb3.append(cls.getSimpleName());
            throw new LocalServiceBindingException(sb3.toString());
        }
    }

    /* access modifiers changed from: protected */
    public StateVariable getStateVariable(String str) {
        for (StateVariable stateVariable : getStateVariables().keySet()) {
            if (stateVariable.getName().equals(str)) {
                return stateVariable;
            }
        }
        return null;
    }
}
