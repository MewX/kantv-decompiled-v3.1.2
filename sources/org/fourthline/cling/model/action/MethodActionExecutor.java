package org.fourthline.cling.model.action;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.ErrorCode;

public class MethodActionExecutor extends AbstractActionExecutor {
    private static Logger log = Logger.getLogger(MethodActionExecutor.class.getName());
    protected Method method;

    public MethodActionExecutor(Method method2) {
        this.method = method2;
    }

    public MethodActionExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map, Method method2) {
        super(map);
        this.method = method2;
    }

    public Method getMethod() {
        return this.method;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00d7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void execute(org.fourthline.cling.model.action.ActionInvocation<org.fourthline.cling.model.meta.LocalService> r6, java.lang.Object r7) throws java.lang.Exception {
        /*
            r5 = this;
            java.lang.reflect.Method r0 = r5.method
            java.lang.Object[] r0 = r5.createInputArgumentValues(r6, r0)
            org.fourthline.cling.model.meta.Action r1 = r6.getAction()
            boolean r1 = r1.hasOutputArguments()
            if (r1 != 0) goto L_0x002e
            java.util.logging.Logger r6 = log
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Calling local service method with no output arguments: "
            r1.append(r2)
            java.lang.reflect.Method r2 = r5.method
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r6.fine(r1)
            java.lang.reflect.Method r6 = r5.method
            org.seamless.util.Reflections.invoke(r6, r7, r0)
            return
        L_0x002e:
            java.lang.reflect.Method r1 = r5.method
            java.lang.Class r1 = r1.getReturnType()
            java.lang.Class r2 = java.lang.Void.TYPE
            boolean r1 = r1.equals(r2)
            java.util.logging.Logger r2 = log
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Calling local service method with output arguments: "
            r3.append(r4)
            java.lang.reflect.Method r4 = r5.method
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.fine(r3)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L_0x006d
            java.util.logging.Logger r1 = log
            java.lang.String r4 = "Action method is void, calling declared accessors(s) on service instance to retrieve ouput argument(s)"
            r1.fine(r4)
            java.lang.reflect.Method r1 = r5.method
            org.seamless.util.Reflections.invoke(r1, r7, r0)
            org.fourthline.cling.model.meta.Action r0 = r6.getAction()
            java.lang.Object r7 = r5.readOutputArgumentValues(r0, r7)
        L_0x006a:
            r0 = r7
            r7 = 1
            goto L_0x0098
        L_0x006d:
            boolean r1 = r5.isUseOutputArgumentAccessors(r6)
            if (r1 == 0) goto L_0x0089
            java.util.logging.Logger r1 = log
            java.lang.String r4 = "Action method is not void, calling declared accessor(s) on returned instance to retrieve ouput argument(s)"
            r1.fine(r4)
            java.lang.reflect.Method r1 = r5.method
            java.lang.Object r7 = org.seamless.util.Reflections.invoke(r1, r7, r0)
            org.fourthline.cling.model.meta.Action r0 = r6.getAction()
            java.lang.Object r7 = r5.readOutputArgumentValues(r0, r7)
            goto L_0x006a
        L_0x0089:
            java.util.logging.Logger r1 = log
            java.lang.String r4 = "Action method is not void, using returned value as (single) output argument"
            r1.fine(r4)
            java.lang.reflect.Method r1 = r5.method
            java.lang.Object r7 = org.seamless.util.Reflections.invoke(r1, r7, r0)
            r0 = r7
            r7 = 0
        L_0x0098:
            org.fourthline.cling.model.meta.Action r1 = r6.getAction()
            org.fourthline.cling.model.meta.ActionArgument[] r1 = r1.getOutputArguments()
            if (r7 == 0) goto L_0x00ce
            boolean r7 = r0 instanceof java.lang.Object[]
            if (r7 == 0) goto L_0x00ce
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            java.util.logging.Logger r7 = log
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Accessors returned Object[], setting output argument values: "
            r3.append(r4)
            int r4 = r0.length
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r7.fine(r3)
        L_0x00c1:
            int r7 = r1.length
            if (r2 >= r7) goto L_0x00d6
            r7 = r1[r2]
            r3 = r0[r2]
            r5.setOutputArgumentValue(r6, r7, r3)
            int r2 = r2 + 1
            goto L_0x00c1
        L_0x00ce:
            int r7 = r1.length
            if (r7 != r3) goto L_0x00d7
            r7 = r1[r2]
            r5.setOutputArgumentValue(r6, r7, r0)
        L_0x00d6:
            return
        L_0x00d7:
            org.fourthline.cling.model.action.ActionException r6 = new org.fourthline.cling.model.action.ActionException
            org.fourthline.cling.model.types.ErrorCode r7 = org.fourthline.cling.model.types.ErrorCode.ACTION_FAILED
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Method return does not match required number of output arguments: "
            r0.append(r2)
            int r1 = r1.length
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6.<init>(r7, r0)
            goto L_0x00f2
        L_0x00f1:
            throw r6
        L_0x00f2:
            goto L_0x00f1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.model.action.MethodActionExecutor.execute(org.fourthline.cling.model.action.ActionInvocation, java.lang.Object):void");
    }

    /* access modifiers changed from: protected */
    public boolean isUseOutputArgumentAccessors(ActionInvocation<LocalService> actionInvocation) {
        for (ActionArgument actionArgument : actionInvocation.getAction().getOutputArguments()) {
            if (getOutputArgumentAccessors().get(actionArgument) != null) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public Object[] createInputArgumentValues(ActionInvocation<LocalService> actionInvocation, Method method2) throws ActionException {
        ActionInvocation<LocalService> actionInvocation2 = actionInvocation;
        Method method3 = method2;
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        ArrayList arrayList = new ArrayList();
        ActionArgument[] inputArguments = actionInvocation.getAction().getInputArguments();
        int length = inputArguments.length;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            ActionArgument actionArgument = inputArguments[i];
            Class cls = method2.getParameterTypes()[i2];
            ActionArgumentValue input = actionInvocation2.getInput(actionArgument);
            if (!cls.isPrimitive() || !(input == null || input.toString().length() == 0)) {
                if (input == null) {
                    int i3 = i2 + 1;
                    arrayList.add(i2, null);
                    i2 = i3;
                } else {
                    String actionArgumentValue = input.toString();
                    if (actionArgumentValue.length() <= 0 || !localService.isStringConvertibleType(cls) || cls.isEnum()) {
                        int i4 = i2 + 1;
                        arrayList.add(i2, input.getValue());
                        i2 = i4;
                    } else {
                        try {
                            Class[] clsArr = new Class[1];
                            clsArr[c] = String.class;
                            Constructor constructor = cls.getConstructor(clsArr);
                            Logger logger = log;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Creating new input argument value instance with String.class constructor of type: ");
                            sb.append(cls);
                            logger.finer(sb.toString());
                            Object[] objArr = {actionArgumentValue};
                            int i5 = i2 + 1;
                            arrayList.add(i2, constructor.newInstance(objArr));
                            i2 = i5;
                        } catch (Exception e) {
                            Logger logger2 = log;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Error preparing action method call: ");
                            sb2.append(method3);
                            logger2.warning(sb2.toString());
                            Logger logger3 = log;
                            StringBuilder sb3 = new StringBuilder();
                            String str = "Can't convert input argument string to desired type of '";
                            sb3.append(str);
                            sb3.append(actionArgument.getName());
                            String str2 = "': ";
                            sb3.append(str2);
                            sb3.append(e);
                            logger3.warning(sb3.toString());
                            ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str);
                            sb4.append(actionArgument.getName());
                            sb4.append(str2);
                            sb4.append(e);
                            throw new ActionException(errorCode, sb4.toString());
                        }
                    }
                }
                i++;
                c = 0;
            } else {
                ErrorCode errorCode2 = ErrorCode.ARGUMENT_VALUE_INVALID;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Primitive action method argument '");
                sb5.append(actionArgument.getName());
                sb5.append("' requires input value, can't be null or empty string");
                throw new ActionException(errorCode2, sb5.toString());
            }
        }
        if (method2.getParameterTypes().length > 0 && RemoteClientInfo.class.isAssignableFrom(method2.getParameterTypes()[method2.getParameterTypes().length - 1])) {
            if (actionInvocation2 instanceof RemoteActionInvocation) {
                RemoteActionInvocation remoteActionInvocation = (RemoteActionInvocation) actionInvocation2;
                if (remoteActionInvocation.getRemoteClientInfo() != null) {
                    Logger logger4 = log;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Providing remote client info as last action method input argument: ");
                    sb6.append(method3);
                    logger4.finer(sb6.toString());
                    arrayList.add(i2, remoteActionInvocation.getRemoteClientInfo());
                }
            }
            arrayList.add(i2, null);
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }
}
