package org.seamless.statemachine;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

public class StateMachineInvocationHandler implements InvocationHandler {
    public static final String METHOD_ON_ENTRY = "onEntry";
    public static final String METHOD_ON_EXIT = "onExit";
    private static Logger log = Logger.getLogger(StateMachineInvocationHandler.class.getName());
    Object currentState;
    final Class initialStateClass;
    final Map<Class, Object> stateObjects = new ConcurrentHashMap();

    StateMachineInvocationHandler(List<Class<?>> list, Class<?> cls, Class[] clsArr, Object[] objArr) {
        Object obj;
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating state machine with initial state: ");
        sb.append(cls);
        logger.fine(sb.toString());
        this.initialStateClass = cls;
        for (Class cls2 : list) {
            if (clsArr != null) {
                try {
                    obj = cls2.getConstructor(clsArr).newInstance(objArr);
                } catch (NoSuchMethodException e) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("State ");
                    sb2.append(cls2.getName());
                    sb2.append(" has the wrong constructor: ");
                    sb2.append(e);
                    throw new RuntimeException(sb2.toString(), e);
                } catch (Exception e2) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("State ");
                    sb3.append(cls2.getName());
                    sb3.append(" can't be instantiated: ");
                    sb3.append(e2);
                    throw new RuntimeException(sb3.toString(), e2);
                }
            } else {
                obj = cls2.newInstance();
            }
            Logger logger2 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Adding state instance: ");
            sb4.append(obj.getClass().getName());
            logger2.fine(sb4.toString());
            this.stateObjects.put(cls2, obj);
        }
        if (this.stateObjects.containsKey(cls)) {
            this.currentState = this.stateObjects.get(cls);
            synchronized (this) {
                invokeEntryMethod(this.currentState);
            }
            return;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("Initial state not in list of states: ");
        sb5.append(cls);
        throw new RuntimeException(sb5.toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ec, code lost:
        return r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object invoke(java.lang.Object r3, java.lang.reflect.Method r4, java.lang.Object[] r5) throws java.lang.Throwable {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r3 = "getCurrentState"
            java.lang.String r0 = r4.getName()     // Catch:{ all -> 0x00ed }
            boolean r3 = r3.equals(r0)     // Catch:{ all -> 0x00ed }
            if (r3 == 0) goto L_0x0018
            java.lang.Class[] r3 = r4.getParameterTypes()     // Catch:{ all -> 0x00ed }
            int r3 = r3.length     // Catch:{ all -> 0x00ed }
            if (r3 != 0) goto L_0x0018
            java.lang.Object r3 = r2.currentState     // Catch:{ all -> 0x00ed }
            monitor-exit(r2)     // Catch:{ all -> 0x00ed }
            return r3
        L_0x0018:
            java.lang.String r3 = "forceState"
            java.lang.String r0 = r4.getName()     // Catch:{ all -> 0x00ed }
            boolean r3 = r3.equals(r0)     // Catch:{ all -> 0x00ed }
            if (r3 == 0) goto L_0x008a
            java.lang.Class[] r3 = r4.getParameterTypes()     // Catch:{ all -> 0x00ed }
            int r3 = r3.length     // Catch:{ all -> 0x00ed }
            r0 = 1
            if (r3 != r0) goto L_0x008a
            int r3 = r5.length     // Catch:{ all -> 0x00ed }
            if (r3 != r0) goto L_0x008a
            r3 = 0
            r0 = r5[r3]     // Catch:{ all -> 0x00ed }
            if (r0 == 0) goto L_0x008a
            r0 = r5[r3]     // Catch:{ all -> 0x00ed }
            boolean r0 = r0 instanceof java.lang.Class     // Catch:{ all -> 0x00ed }
            if (r0 == 0) goto L_0x008a
            java.util.Map<java.lang.Class, java.lang.Object> r4 = r2.stateObjects     // Catch:{ all -> 0x00ed }
            r0 = r5[r3]     // Catch:{ all -> 0x00ed }
            java.lang.Class r0 = (java.lang.Class) r0     // Catch:{ all -> 0x00ed }
            java.lang.Object r4 = r4.get(r0)     // Catch:{ all -> 0x00ed }
            if (r4 == 0) goto L_0x0071
            java.util.logging.Logger r3 = log     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ed }
            r5.<init>()     // Catch:{ all -> 0x00ed }
            java.lang.String r0 = "Forcing state machine into state: "
            r5.append(r0)     // Catch:{ all -> 0x00ed }
            java.lang.Class r0 = r4.getClass()     // Catch:{ all -> 0x00ed }
            java.lang.String r0 = r0.getName()     // Catch:{ all -> 0x00ed }
            r5.append(r0)     // Catch:{ all -> 0x00ed }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x00ed }
            r3.finer(r5)     // Catch:{ all -> 0x00ed }
            java.lang.Object r3 = r2.currentState     // Catch:{ all -> 0x00ed }
            r2.invokeExitMethod(r3)     // Catch:{ all -> 0x00ed }
            r2.currentState = r4     // Catch:{ all -> 0x00ed }
            r2.invokeEntryMethod(r4)     // Catch:{ all -> 0x00ed }
            r3 = 0
            monitor-exit(r2)     // Catch:{ all -> 0x00ed }
            return r3
        L_0x0071:
            org.seamless.statemachine.TransitionException r4 = new org.seamless.statemachine.TransitionException     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ed }
            r0.<init>()     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = "Can't force to invalid state: "
            r0.append(r1)     // Catch:{ all -> 0x00ed }
            r3 = r5[r3]     // Catch:{ all -> 0x00ed }
            r0.append(r3)     // Catch:{ all -> 0x00ed }
            java.lang.String r3 = r0.toString()     // Catch:{ all -> 0x00ed }
            r4.<init>(r3)     // Catch:{ all -> 0x00ed }
            throw r4     // Catch:{ all -> 0x00ed }
        L_0x008a:
            java.lang.reflect.Method r3 = r2.getMethodOfCurrentState(r4)     // Catch:{ all -> 0x00ed }
            java.util.logging.Logger r4 = log     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ed }
            r0.<init>()     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = "Invoking signal method of current state: "
            r0.append(r1)     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = r3.toString()     // Catch:{ all -> 0x00ed }
            r0.append(r1)     // Catch:{ all -> 0x00ed }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00ed }
            r4.fine(r0)     // Catch:{ all -> 0x00ed }
            java.lang.Object r4 = r2.currentState     // Catch:{ all -> 0x00ed }
            java.lang.Object r3 = r3.invoke(r4, r5)     // Catch:{ all -> 0x00ed }
            if (r3 == 0) goto L_0x00eb
            boolean r4 = r3 instanceof java.lang.Class     // Catch:{ all -> 0x00ed }
            if (r4 == 0) goto L_0x00eb
            r4 = r3
            java.lang.Class r4 = (java.lang.Class) r4     // Catch:{ all -> 0x00ed }
            java.util.Map<java.lang.Class, java.lang.Object> r5 = r2.stateObjects     // Catch:{ all -> 0x00ed }
            boolean r5 = r5.containsKey(r4)     // Catch:{ all -> 0x00ed }
            if (r5 == 0) goto L_0x00eb
            java.util.logging.Logger r5 = log     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ed }
            r0.<init>()     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = "Executing transition to next state: "
            r0.append(r1)     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = r4.getName()     // Catch:{ all -> 0x00ed }
            r0.append(r1)     // Catch:{ all -> 0x00ed }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00ed }
            r5.fine(r0)     // Catch:{ all -> 0x00ed }
            java.lang.Object r5 = r2.currentState     // Catch:{ all -> 0x00ed }
            r2.invokeExitMethod(r5)     // Catch:{ all -> 0x00ed }
            java.util.Map<java.lang.Class, java.lang.Object> r5 = r2.stateObjects     // Catch:{ all -> 0x00ed }
            java.lang.Object r4 = r5.get(r4)     // Catch:{ all -> 0x00ed }
            r2.currentState = r4     // Catch:{ all -> 0x00ed }
            java.lang.Object r4 = r2.currentState     // Catch:{ all -> 0x00ed }
            r2.invokeEntryMethod(r4)     // Catch:{ all -> 0x00ed }
        L_0x00eb:
            monitor-exit(r2)     // Catch:{ all -> 0x00ed }
            return r3
        L_0x00ed:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00ed }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.statemachine.StateMachineInvocationHandler.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }

    private Method getMethodOfCurrentState(Method method) {
        try {
            return this.currentState.getClass().getMethod(method.getName(), method.getParameterTypes());
        } catch (NoSuchMethodException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("State '");
            sb.append(this.currentState.getClass().getName());
            sb.append("' doesn't support signal '");
            sb.append(method.getName());
            sb.append("'");
            throw new TransitionException(sb.toString());
        }
    }

    private void invokeEntryMethod(Object obj) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Trying to invoke entry method of state: ");
        sb.append(obj.getClass().getName());
        logger.fine(sb.toString());
        try {
            obj.getClass().getMethod(METHOD_ON_ENTRY, new Class[0]).invoke(obj, new Object[0]);
        } catch (NoSuchMethodException unused) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No entry method found on state: ");
            sb2.append(obj.getClass().getName());
            logger2.finer(sb2.toString());
        } catch (Exception e) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("State '");
            sb3.append(obj.getClass().getName());
            sb3.append("' entry method threw exception: ");
            sb3.append(e);
            throw new TransitionException(sb3.toString(), e);
        }
    }

    private void invokeExitMethod(Object obj) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Trying to invoking exit method of state: ");
        sb.append(obj.getClass().getName());
        logger.finer(sb.toString());
        try {
            obj.getClass().getMethod(METHOD_ON_EXIT, new Class[0]).invoke(obj, new Object[0]);
        } catch (NoSuchMethodException unused) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No exit method found on state: ");
            sb2.append(obj.getClass().getName());
            logger2.finer(sb2.toString());
        } catch (Exception e) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("State '");
            sb3.append(obj.getClass().getName());
            sb3.append("' exit method threw exception: ");
            sb3.append(e);
            throw new TransitionException(sb3.toString(), e);
        }
    }
}
