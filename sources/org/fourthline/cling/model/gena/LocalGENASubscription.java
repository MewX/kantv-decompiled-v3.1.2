package org.fourthline.cling.model.gena;

import java.beans.PropertyChangeListener;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.seamless.util.Exceptions;

public abstract class LocalGENASubscription extends GENASubscription<LocalService> implements PropertyChangeListener {
    private static Logger log = Logger.getLogger(LocalGENASubscription.class.getName());
    final List<URL> callbackURLs;
    final Map<String, Long> lastSentNumericValue = new HashMap();
    final Map<String, Long> lastSentTimestamp = new HashMap();

    public abstract void ended(CancelReason cancelReason);

    protected LocalGENASubscription(LocalService localService, List<URL> list) throws Exception {
        super(localService);
        this.callbackURLs = list;
    }

    public LocalGENASubscription(LocalService localService, Integer num, List<URL> list) throws Exception {
        super(localService);
        setSubscriptionDuration(num);
        log.fine("Reading initial state of local service at subscription time");
        long time = new Date().getTime();
        this.currentValues.clear();
        Collection<StateVariableValue> currentState = ((LocalService) getService()).getManager().getCurrentState();
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Got evented state variable values: ");
        sb.append(currentState.size());
        logger.finer(sb.toString());
        for (StateVariableValue stateVariableValue : currentState) {
            this.currentValues.put(stateVariableValue.getStateVariable().getName(), stateVariableValue);
            if (log.isLoggable(Level.FINEST)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Read state variable value '");
                sb2.append(stateVariableValue.getStateVariable().getName());
                sb2.append("': ");
                sb2.append(stateVariableValue.toString());
                logger2.finer(sb2.toString());
            }
            this.lastSentTimestamp.put(stateVariableValue.getStateVariable().getName(), Long.valueOf(time));
            if (stateVariableValue.getStateVariable().isModeratedNumericType()) {
                this.lastSentNumericValue.put(stateVariableValue.getStateVariable().getName(), Long.valueOf(stateVariableValue.toString()));
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("uuid:");
        sb3.append(UUID.randomUUID());
        this.subscriptionId = sb3.toString();
        this.currentSequence = new UnsignedIntegerFourBytes(0);
        this.callbackURLs = list;
    }

    public synchronized List<URL> getCallbackURLs() {
        return this.callbackURLs;
    }

    public synchronized void registerOnService() {
        ((LocalService) getService()).getManager().getPropertyChangeSupport().addPropertyChangeListener(this);
    }

    public synchronized void establish() {
        established();
    }

    public synchronized void end(CancelReason cancelReason) {
        try {
            ((LocalService) getService()).getManager().getPropertyChangeSupport().removePropertyChangeListener(this);
        } catch (Exception e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Removal of local service property change listener failed: ");
            sb.append(Exceptions.unwrap(e));
            logger.warning(sb.toString());
        }
        ended(cancelReason);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x00d9, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void propertyChange(java.beans.PropertyChangeEvent r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.lang.String r0 = r9.getPropertyName()     // Catch:{ all -> 0x00da }
            java.lang.String r1 = "_EventedStateVariables"
            boolean r0 = r0.equals(r1)     // Catch:{ all -> 0x00da }
            if (r0 != 0) goto L_0x000f
            monitor-exit(r8)
            return
        L_0x000f:
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x00da }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00da }
            r1.<init>()     // Catch:{ all -> 0x00da }
            java.lang.String r2 = "Eventing triggered, getting state for subscription: "
            r1.append(r2)     // Catch:{ all -> 0x00da }
            java.lang.String r2 = r8.getSubscriptionId()     // Catch:{ all -> 0x00da }
            r1.append(r2)     // Catch:{ all -> 0x00da }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00da }
            r0.fine(r1)     // Catch:{ all -> 0x00da }
            java.util.Date r0 = new java.util.Date     // Catch:{ all -> 0x00da }
            r0.<init>()     // Catch:{ all -> 0x00da }
            long r0 = r0.getTime()     // Catch:{ all -> 0x00da }
            java.lang.Object r9 = r9.getNewValue()     // Catch:{ all -> 0x00da }
            java.util.Collection r9 = (java.util.Collection) r9     // Catch:{ all -> 0x00da }
            java.util.Set r2 = r8.moderateStateVariables(r0, r9)     // Catch:{ all -> 0x00da }
            java.util.Map r3 = r8.currentValues     // Catch:{ all -> 0x00da }
            r3.clear()     // Catch:{ all -> 0x00da }
            java.util.Iterator r9 = r9.iterator()     // Catch:{ all -> 0x00da }
        L_0x0045:
            boolean r3 = r9.hasNext()     // Catch:{ all -> 0x00da }
            if (r3 == 0) goto L_0x00af
            java.lang.Object r3 = r9.next()     // Catch:{ all -> 0x00da }
            org.fourthline.cling.model.state.StateVariableValue r3 = (org.fourthline.cling.model.state.StateVariableValue) r3     // Catch:{ all -> 0x00da }
            org.fourthline.cling.model.meta.StateVariable r4 = r3.getStateVariable()     // Catch:{ all -> 0x00da }
            java.lang.String r4 = r4.getName()     // Catch:{ all -> 0x00da }
            boolean r5 = r2.contains(r4)     // Catch:{ all -> 0x00da }
            if (r5 != 0) goto L_0x0045
            java.util.logging.Logger r5 = log     // Catch:{ all -> 0x00da }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x00da }
            r6.<init>()     // Catch:{ all -> 0x00da }
            java.lang.String r7 = "Adding state variable value to current values of event: "
            r6.append(r7)     // Catch:{ all -> 0x00da }
            org.fourthline.cling.model.meta.StateVariable r7 = r3.getStateVariable()     // Catch:{ all -> 0x00da }
            r6.append(r7)     // Catch:{ all -> 0x00da }
            java.lang.String r7 = " = "
            r6.append(r7)     // Catch:{ all -> 0x00da }
            r6.append(r3)     // Catch:{ all -> 0x00da }
            java.lang.String r6 = r6.toString()     // Catch:{ all -> 0x00da }
            r5.fine(r6)     // Catch:{ all -> 0x00da }
            java.util.Map r5 = r8.currentValues     // Catch:{ all -> 0x00da }
            org.fourthline.cling.model.meta.StateVariable r6 = r3.getStateVariable()     // Catch:{ all -> 0x00da }
            java.lang.String r6 = r6.getName()     // Catch:{ all -> 0x00da }
            r5.put(r6, r3)     // Catch:{ all -> 0x00da }
            java.util.Map<java.lang.String, java.lang.Long> r5 = r8.lastSentTimestamp     // Catch:{ all -> 0x00da }
            java.lang.Long r6 = java.lang.Long.valueOf(r0)     // Catch:{ all -> 0x00da }
            r5.put(r4, r6)     // Catch:{ all -> 0x00da }
            org.fourthline.cling.model.meta.StateVariable r5 = r3.getStateVariable()     // Catch:{ all -> 0x00da }
            boolean r5 = r5.isModeratedNumericType()     // Catch:{ all -> 0x00da }
            if (r5 == 0) goto L_0x0045
            java.util.Map<java.lang.String, java.lang.Long> r5 = r8.lastSentNumericValue     // Catch:{ all -> 0x00da }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00da }
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ all -> 0x00da }
            r5.put(r4, r3)     // Catch:{ all -> 0x00da }
            goto L_0x0045
        L_0x00af:
            java.util.Map r9 = r8.currentValues     // Catch:{ all -> 0x00da }
            int r9 = r9.size()     // Catch:{ all -> 0x00da }
            if (r9 <= 0) goto L_0x00d1
            java.util.logging.Logger r9 = log     // Catch:{ all -> 0x00da }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00da }
            r0.<init>()     // Catch:{ all -> 0x00da }
            java.lang.String r1 = "Propagating new state variable values to subscription: "
            r0.append(r1)     // Catch:{ all -> 0x00da }
            r0.append(r8)     // Catch:{ all -> 0x00da }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00da }
            r9.fine(r0)     // Catch:{ all -> 0x00da }
            r8.eventReceived()     // Catch:{ all -> 0x00da }
            goto L_0x00d8
        L_0x00d1:
            java.util.logging.Logger r9 = log     // Catch:{ all -> 0x00da }
            java.lang.String r0 = "No state variable values for event (all moderated out?), not triggering event"
            r9.fine(r0)     // Catch:{ all -> 0x00da }
        L_0x00d8:
            monitor-exit(r8)
            return
        L_0x00da:
            r9 = move-exception
            monitor-exit(r8)
            goto L_0x00de
        L_0x00dd:
            throw r9
        L_0x00de:
            goto L_0x00dd
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.model.gena.LocalGENASubscription.propertyChange(java.beans.PropertyChangeEvent):void");
    }

    /* access modifiers changed from: protected */
    public synchronized Set<String> moderateStateVariables(long j, Collection<StateVariableValue> collection) {
        HashSet hashSet;
        hashSet = new HashSet();
        for (StateVariableValue stateVariableValue : collection) {
            StateVariable stateVariable = stateVariableValue.getStateVariable();
            String name = stateVariableValue.getStateVariable().getName();
            if (stateVariable.getEventDetails().getEventMaximumRateMilliseconds() == 0 && stateVariable.getEventDetails().getEventMinimumDelta() == 0) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Variable is not moderated: ");
                sb.append(stateVariable);
                logger.finer(sb.toString());
            } else if (!this.lastSentTimestamp.containsKey(name)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Variable is moderated but was never sent before: ");
                sb2.append(stateVariable);
                logger2.finer(sb2.toString());
            } else if (stateVariable.getEventDetails().getEventMaximumRateMilliseconds() > 0 && j <= ((Long) this.lastSentTimestamp.get(name)).longValue() + ((long) stateVariable.getEventDetails().getEventMaximumRateMilliseconds())) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Excluding state variable with maximum rate: ");
                sb3.append(stateVariable);
                logger3.finer(sb3.toString());
                hashSet.add(name);
            } else if (stateVariable.isModeratedNumericType() && this.lastSentNumericValue.get(name) != null) {
                long longValue = Long.valueOf(((Long) this.lastSentNumericValue.get(name)).longValue()).longValue();
                long longValue2 = Long.valueOf(stateVariableValue.toString()).longValue();
                long eventMinimumDelta = (long) stateVariable.getEventDetails().getEventMinimumDelta();
                if (longValue2 > longValue && longValue2 - longValue < eventMinimumDelta) {
                    Logger logger4 = log;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Excluding state variable with minimum delta: ");
                    sb4.append(stateVariable);
                    logger4.finer(sb4.toString());
                    hashSet.add(name);
                } else if (longValue2 < longValue && longValue - longValue2 < eventMinimumDelta) {
                    Logger logger5 = log;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Excluding state variable with minimum delta: ");
                    sb5.append(stateVariable);
                    logger5.finer(sb5.toString());
                    hashSet.add(name);
                }
            }
        }
        return hashSet;
    }

    public synchronized void incrementSequence() {
        this.currentSequence.increment(true);
    }

    public synchronized void setSubscriptionDuration(Integer num) {
        this.requestedDurationSeconds = num == null ? 1800 : num.intValue();
        setActualSubscriptionDurationSeconds(this.requestedDurationSeconds);
    }
}
