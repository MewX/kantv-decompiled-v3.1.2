package org.fourthline.cling.model;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.state.StateVariableValue;
import org.seamless.util.Exceptions;
import org.seamless.util.Reflections;

public class DefaultServiceManager<T> implements ServiceManager<T> {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(DefaultServiceManager.class.getName());
    protected final ReentrantLock lock;
    protected PropertyChangeSupport propertyChangeSupport;
    protected final LocalService<T> service;
    protected final Class<T> serviceClass;
    protected T serviceImpl;

    protected class DefaultPropertyChangeListener implements PropertyChangeListener {
        protected DefaultPropertyChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            Logger access$000 = DefaultServiceManager.log;
            StringBuilder sb = new StringBuilder();
            sb.append("Property change event on local service: ");
            sb.append(propertyChangeEvent.getPropertyName());
            access$000.finer(sb.toString());
            String propertyName = propertyChangeEvent.getPropertyName();
            String str = ServiceManager.EVENTED_STATE_VARIABLES;
            if (!propertyName.equals(str)) {
                String[] fromCommaSeparatedList = ModelUtil.fromCommaSeparatedList(propertyChangeEvent.getPropertyName());
                Logger access$0002 = DefaultServiceManager.log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Changed variable names: ");
                sb2.append(Arrays.toString(fromCommaSeparatedList));
                access$0002.fine(sb2.toString());
                try {
                    Collection currentState = DefaultServiceManager.this.getCurrentState(fromCommaSeparatedList);
                    if (!currentState.isEmpty()) {
                        DefaultServiceManager.this.getPropertyChangeSupport().firePropertyChange(str, null, currentState);
                    }
                } catch (Exception e) {
                    Logger access$0003 = DefaultServiceManager.log;
                    Level level = Level.SEVERE;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Error reading state of service after state variable update event: ");
                    sb3.append(Exceptions.unwrap(e));
                    access$0003.log(level, sb3.toString(), e);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public int getLockTimeoutMillis() {
        return 500;
    }

    /* access modifiers changed from: protected */
    public Collection<StateVariableValue> readInitialEventedStateVariableValues() throws Exception {
        return null;
    }

    protected DefaultServiceManager(LocalService<T> localService) {
        this(localService, null);
    }

    public DefaultServiceManager(LocalService<T> localService, Class<T> cls) {
        this.lock = new ReentrantLock(true);
        this.service = localService;
        this.serviceClass = cls;
    }

    /* access modifiers changed from: protected */
    public void lock() {
        try {
            if (!this.lock.tryLock((long) getLockTimeoutMillis(), TimeUnit.MILLISECONDS)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to acquire lock in milliseconds: ");
                sb.append(getLockTimeoutMillis());
                throw new RuntimeException(sb.toString());
            } else if (log.isLoggable(Level.FINEST)) {
                log.finest("Acquired lock");
            }
        } catch (InterruptedException e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to acquire lock:");
            sb2.append(e);
            throw new RuntimeException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void unlock() {
        if (log.isLoggable(Level.FINEST)) {
            log.finest("Releasing lock");
        }
        this.lock.unlock();
    }

    public LocalService<T> getService() {
        return this.service;
    }

    public T getImplementation() {
        lock();
        try {
            if (this.serviceImpl == null) {
                init();
            }
            return this.serviceImpl;
        } finally {
            unlock();
        }
    }

    public PropertyChangeSupport getPropertyChangeSupport() {
        lock();
        try {
            if (this.propertyChangeSupport == null) {
                init();
            }
            return this.propertyChangeSupport;
        } finally {
            unlock();
        }
    }

    public void execute(Command<T> command) throws Exception {
        lock();
        try {
            command.execute(this);
        } finally {
            unlock();
        }
    }

    public Collection<StateVariableValue> getCurrentState() throws Exception {
        StateVariable[] stateVariables;
        lock();
        try {
            Collection<StateVariableValue> readInitialEventedStateVariableValues = readInitialEventedStateVariableValues();
            if (readInitialEventedStateVariableValues != null) {
                log.fine("Obtained initial state variable values for event, skipping individual state variable accessors");
                return readInitialEventedStateVariableValues;
            }
            ArrayList arrayList = new ArrayList();
            for (StateVariable stateVariable : getService().getStateVariables()) {
                if (stateVariable.getEventDetails().isSendEvents()) {
                    StateVariableAccessor accessor = getService().getAccessor(stateVariable);
                    if (accessor != null) {
                        arrayList.add(accessor.read(stateVariable, getImplementation()));
                    } else {
                        throw new IllegalStateException("No accessor for evented state variable");
                    }
                }
            }
            unlock();
            return arrayList;
        } finally {
            unlock();
        }
    }

    /* access modifiers changed from: protected */
    public Collection<StateVariableValue> getCurrentState(String[] strArr) throws Exception {
        lock();
        try {
            ArrayList arrayList = new ArrayList();
            for (String trim : strArr) {
                String trim2 = trim.trim();
                StateVariable stateVariable = getService().getStateVariable(trim2);
                if (stateVariable != null) {
                    if (stateVariable.getEventDetails().isSendEvents()) {
                        StateVariableAccessor accessor = getService().getAccessor(stateVariable);
                        if (accessor == null) {
                            Logger logger = log;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Ignoring evented state variable without accessor: ");
                            sb.append(trim2);
                            logger.warning(sb.toString());
                        } else {
                            arrayList.add(accessor.read(stateVariable, getImplementation()));
                        }
                    }
                }
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring unknown or non-evented state variable: ");
                sb2.append(trim2);
                logger2.fine(sb2.toString());
            }
            return arrayList;
        } finally {
            unlock();
        }
    }

    /* access modifiers changed from: protected */
    public void init() {
        log.fine("No service implementation instance available, initializing...");
        try {
            this.serviceImpl = createServiceInstance();
            this.propertyChangeSupport = createPropertyChangeSupport(this.serviceImpl);
            this.propertyChangeSupport.addPropertyChangeListener(createPropertyChangeListener(this.serviceImpl));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not initialize implementation: ");
            sb.append(e);
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public T createServiceInstance() throws Exception {
        Class<T> cls = this.serviceClass;
        if (cls != null) {
            try {
                return cls.getConstructor(new Class[]{LocalService.class}).newInstance(new Object[]{getService()});
            } catch (NoSuchMethodException unused) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Creating new service implementation instance with no-arg constructor: ");
                sb.append(this.serviceClass.getName());
                logger.fine(sb.toString());
                return this.serviceClass.newInstance();
            }
        } else {
            throw new IllegalStateException("Subclass has to provide service class or override createServiceInstance()");
        }
    }

    /* access modifiers changed from: protected */
    public PropertyChangeSupport createPropertyChangeSupport(T t) throws Exception {
        Method getterMethod = Reflections.getGetterMethod(t.getClass(), "propertyChangeSupport");
        if (getterMethod == null || !PropertyChangeSupport.class.isAssignableFrom(getterMethod.getReturnType())) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Creating new PropertyChangeSupport for service implementation: ");
            sb.append(t.getClass().getName());
            logger.fine(sb.toString());
            return new PropertyChangeSupport(t);
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Service implementation instance offers PropertyChangeSupport, using that: ");
        sb2.append(t.getClass().getName());
        logger2.fine(sb2.toString());
        return (PropertyChangeSupport) getterMethod.invoke(t, new Object[0]);
    }

    /* access modifiers changed from: protected */
    public PropertyChangeListener createPropertyChangeListener(T t) throws Exception {
        return new DefaultPropertyChangeListener();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") Implementation: ");
        sb.append(this.serviceImpl);
        return sb.toString();
    }
}
